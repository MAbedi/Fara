unit DocCopy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, Mask,
  DB, ADODB, DBCtrls,  CedarDbGrid   ,   FormFunctions,

  CheckLst, zAPIBalloon, DBClient, Provider, Grids, Vcl.DBGrids,
  ComCtrls, System.Actions;

type

  TDocCopyF = class(TTemplate4F)
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
    pnll: TPanel;
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
    FSerial: Integer;
    FCompany: Integer;
    FLastRow: Integer;
    FDataSet: TDataSet;
    FDBGrid: TcedarDBGrid;
    BankNameID: Integer;
    procedure AddRecodrd;
    procedure ReomoveRecord;
    Procedure CreateClient;
    function saveDoc: Boolean;
    procedure initCombo;
    procedure InitcmbCompany;

  public
    procedure CopyFromDoc(aGrid: TcedarDBGrid; Sn: Integer; Cn: Integer;
      RowNum: Integer);
    { Public declarations }
  end;

var
  DocCopyF: TDocCopyF;

const
  DocType = 101;

implementation

uses GlobalPro, Dm, mmessage, Mymostafa, searchCode_ADO, MaliYear, FaraConsts;
{$R *.dfm}
{ TDocCopyF }

procedure TDocCopyF.CopyFromDoc(aGrid: TcedarDBGrid; Sn: Integer; Cn: Integer;
  RowNum: Integer);
begin
  with TDocCopyF.Create(Application) do
    try
      FSerial := Sn;
      FCompany := Cn;
      FLastRow := RowNum;
      FDBGrid := aGrid;
      FDataSet := aGrid.DataSource.DataSet;
      initCombo;
      ShowModal;
    finally
      free;
    end; // try
end;

procedure TDocCopyF.CreateClient;
var
  i: SmallInt;
begin
  CliSelDoc.FieldDefs.Clear;
  with qryDocs do
  begin
    for i := 0 to FieldCount - 1 do
      CliSelDoc.FieldDefs.Add(Fields[i].FieldName, Fields[i].DataType,
        Fields[i].Size);
  end;
  CliSelDoc.CreateDataSet;
  CliSelDoc.Open;
end;

procedure TDocCopyF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  IncludeBtn.Click;
end;

procedure TDocCopyF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  actSelectAll.Hint := (Sender as TDBGrid).Name
end;

procedure TDocCopyF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ExcludeBtn.Click;
end;

procedure TDocCopyF.ExAllBtnClick(Sender: TObject);
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

procedure TDocCopyF.ExcludeBtnClick(Sender: TObject);
begin
  inherited;
  ReomoveRecord;
  DBGrid2.SelectedRows.Clear;
end;

procedure TDocCopyF.IncAllBtnClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // if qryDocs.IsEmpty then
  // begin
  // Warn('„Ê—œÌ »—«Ì «‰ Œ«» ‰„Ì »«‘œ');
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

procedure TDocCopyF.IncludeBtnClick(Sender: TObject);
begin
  inherited;
  if qryDocs.IsEmpty then
  begin
    Warn('„Ê—œÌ »—«Ì «‰ Œ«» ‰„Ì »«‘œ');
    Exit;
  end;

  AddRecodrd;
end;

procedure TDocCopyF.initCombo;
begin
  CmbBankName.Clear;
  BankNameID := -1;
  with Dmf.qryGlbTmpTmp do
  begin
    Active := False;
    // mary   SQL.Text:='SELECT CompanyName,MaliYear';
    SQL.Text := 'SELECT bankname,sid,MaliYear';
    SQL.Add('FROM Sections');
    SQL.Add('WHERE SysID = ' + IntToStr(sysid) + '  OR SysID=40');
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

procedure TDocCopyF.InitcmbCompany;
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
  // cmbCompany.AddItem('Â„Â ‘—ò  Â«', TObject(-1000));
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

procedure TDocCopyF.qryDocsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not CliSelDoc.Active then
    CreateClient;
  SetColSize(DBGrid1, 0, False);
  SetColSize(DBGrid2, 0, False);

end;

procedure TDocCopyF.qryDocsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.Hint := DBGrid1.Columns[0].Field.AsString;
end;

procedure TDocCopyF.ReomoveRecord;
begin
  CliSelDoc.Delete;
end;

procedure TDocCopyF.srcSelDocDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ExcludeBtn.Enabled := CliSelDoc.RecordCount > 0;
  ExAllBtn.Enabled := ExcludeBtn.Enabled;
  actDocCopy.Enabled := ExcludeBtn.Enabled;
  lblCount.Caption := ' ⁄œ«œ „Ê«—œ «‰ Œ«» ‘œÂ : ' +
    IntToStr(CliSelDoc.RecordCount);
end;

procedure TDocCopyF.actDocCopyExecute(Sender: TObject);
begin
  inherited;
  if saveDoc then
    BigMessage('”‰œ »« „Ê›ﬁÌ  ﬂÅÌ ‘œ.', 1);
end;

procedure TDocCopyF.CliSelDocAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid2.Hint := DBGrid2.Columns[0].Field.AsString;
end;

procedure TDocCopyF.CmbBankNameChange(Sender: TObject);
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

procedure TDocCopyF.cmbCompanyChange(Sender: TObject); { edit by mehdi }
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

function TDocCopyF.saveDoc: Boolean;
var
  i: Byte;
  tmpEvent: TDataSetNotifyEvent;
  rown: SmallInt;
begin
  Result := True;
  with CliSelDoc do
    try
      First;
      rown := FLastRow;
      // BigMessageProgBar('œ— Õ«· ﬂÅÌ ”‰œ Õ”«»œ«—Ì', RecordCount);
      pbDoc.Position := 0;
      pbDoc.Step := 1;
      pbDoc.Min := 0;
      pbDoc.Max := RecordCount;
      FDataSet.DisableControls;
      DisableControls;
      OffDataSetEvents(FDataSet);
      FDataSet.BeforePost := nil;
      while not Eof do
      begin
        Inc(rown);
        FDataSet.Append;

        // for i := 0 to FieldCount - 1 do
        // if FDataSet.FindField(Fields[i].FieldName) <> nil then
        // if not((pfinkey in FDataS*1et.FieldByName(Fields[i].FieldName)
        // .ProviderFlags) or (LowerCase(Fields[i].FieldName)
        // = 'rowguid')) then
        // FDataSet.FieldByName(Fields[i].FieldName).AsString :=
        // FieldByName(Fields[i].FieldName).AsString;

        for i := 0 to FDBGrid.Columns.Count - 1 do
          if FDBGrid.Columns[i].Visible and not(FDBGrid.Columns[i].ReadOnly) and
            (FDBGrid.Columns[i].Field.FieldKind <> fkLookup) then
            FDBGrid.Columns[i].Field.AsString :=
              FieldByName(FDBGrid.Columns[i].FieldName).AsString;

        try

          FDataSet.FieldByName('Serial').AsInteger := FSerial;
          FDataSet.FieldByName('YearId').AsInteger := APPBank.Year;
          FDataSet.FieldByName('CompanyCode').AsInteger := FCompany;
          FDataSet.FieldByName('Row').AsInteger := rown;

    
          pbDoc.StepIt;
          FDataSet.Post;
        except
          On E: Exception do
          begin
            add2log(E.message);
            Warn('«‘ﬂ«· œ— ﬂÅÌ ”‰œ');
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
      OnDataSetEvents(FDataSet);
      CliSelDoc.Close;
      CliSelDoc.Open;
      pbDoc.Position := 100;
      Warn('ﬂÅÌ ”‰œ «‰Ã«„ ‘œ', mtInformation);
      // FDataSet.BeforePost := tmpEvent;
    end; // try
end;

procedure TDocCopyF.actSearchExecute(Sender: TObject);
var
  Results: array [0 .. 7] of String;
  Sqltxt: string;
begin
  inherited;
  if qryDocs.IsEmpty then
  begin
    Warn('”‰œÌ «‰ Œ«» ‰‘œÂ «” .');
    Exit;
  end;
  Sqltxt := 'SELECT id,TopicCode, DetailCode, CTopicCode, CTopicCode2, Comment_L1, Debt, Credit '
    + ' FROM acc.Documents WHERE  Serial =' + qryDocs.FieldByName('serial')
    .AsString + 'And YearID = ' + cmbYear.Text;

  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'Ã” ÃÊÌ ”‰œ', Sqltxt,
    ['', 'ﬂœ Õ”«»', 'ﬂœ  ›’Ì·Ì', '„.Â“Ì‰Â1', '„.Â“Ì‰Â2', '‘—Õ  ”‰œ', '»œÂﬂ«—',
    '»” «‰ﬂ«—'], Results, [0, 50, 50, 50, 50, 250, 50, 50], alLeft) then
    qryDocs.Locate('id', Results[0], []);

end;

procedure TDocCopyF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  if ActiveControl = DBGrid2 then
    DBGridSelectAll(DBGrid2)
  else
    DBGridSelectAll(DBGrid1)

end;

procedure TDocCopyF.actSelectDocExecute(Sender: TObject); { edit by mehdi }
var
  Results: array [0 .. 7] of String;
  Sqltxt: string;
  aWhere: string;
  i: Integer;
begin
  inherited;
  // i := Integer(TObject(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  if cmbYear.ItemIndex = -1 then
  begin
    Warn('”«· „«·Ì «‰ Œ«» ‰‘œÂ «” ');
    FlashAControl(cmbYear);
    Exit;
  end;
  Sqltxt := 'SELECT  acc.DocGroups.Serial ,acc.DocGroups.CompanyCode , acc.DocGroups.SecondaryDocNo, '
    + 'acc.DocGroups.PrimaryDocNo, acc.DocGroups.DocDate,acc.DocGroups.DocTopic_L1, '
    + ' acc.DocTypes.DocTypeName_L1,' +
    ' case when ( status=1 ) then ''ÅÌ‘ ‰ÊÌ”''' +
    '  when ( status=2 ) then ''„Êﬁ ''' + ' when ( status=2 ) then ''ﬁÿ⁄Ì''' +
    ' when ( status=2 ) then ''œ«∆„''  end as statusName,' +
    'acc.Companies.CompanyName_L1 ' +
    ' FROM acc.DocGroups INNER JOIN acc.Companies ON acc.DocGroups.CompanyCode = '
    + 'acc.Companies.CompanyCode INNER JOIN ' +
    ' acc.DocTypes ON acc.DocGroups.DocTypeCode = ' +
    ' acc.DocTypes.DocTypeCode ';
  aWhere := 'where acc.DocGroups.YearID= ' + cmbYear.Text +
    'and acc.DocGroups.CompanyCode= ' + IntToStr(FCompany);
  if not Dmf.CheckLevel(AccessPermanent, DocType, False) then
    Add2Filter(aWhere, 'acc.DocGroups.Status <> 2');
  if not Dmf.CheckLevel(AccessCertain, DocType, False) then
    Add2Filter(aWhere, 'acc.DocGroups.Status <> 3');
  Sqltxt := Sqltxt + aWhere;
  if searchCode_ADOF.SearchCode2(adcYears, 'Ã” ÃÊÌ ”‰œ', Sqltxt,
    ['', '', '‘„«—Â ›—⁄Ì', '‘„«—Â ”‰œ', ' «—ÌŒ', '‘—Õ ”‰œ', '‰Ê⁄ ”‰œ',
    'Ê÷⁄Ì  ”‰œ'], Results, [0, 0, 50, 50, 50, 250, 50, 50], alLeft) then
    with qryDocs do
    begin
      Active := False;
      Parameters.ParamByName('YearId').Value := cmbYear.Text;
      Parameters.ParamByName('serial').Value := Results[0];
      Parameters.ParamByName('CompanyFrom').Value := Results[1];
      Parameters.ParamByName('CompanyTo').Value := Results[1];
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

      Active := True;
      TCurrencyField(FieldByName('Debt')).currency := True;
      TCurrencyField(FieldByName('Credit')).currency := True;

    end;

end;

procedure TDocCopyF.actselectReverseExecute(Sender: TObject);
begin
  inherited;
  if ActiveControl = DBGrid2 then
    DBGridSelectAll(DBGrid2, True)
  else
    DBGridSelectAll(DBGrid1, True)
end;

procedure TDocCopyF.adcYearsBeforeConnect(Sender: TObject);
begin
  inherited;
  assignServerName(adcYears, FBankName);
end;

procedure TDocCopyF.AddRecodrd;
var
  Id, Serial, YearId, Company: Integer;
  i: SmallInt;
begin
  Id := qryDocs.FieldByName('ID').AsInteger;;
  Serial := qryDocs.FieldByName('Serial').AsInteger;
  YearId := qryDocs.FieldByName('YearId').AsInteger;
  Company := qryDocs.FieldByName('CompanyCode').AsInteger;
  With CliSelDoc Do
  begin
    if Locate('ID;Serial;YearId;CompanyCode',
      VarArrayOf([Id, Serial, YearId, Company]), []) then
      Exit;
    Append;
    for i := 0 to qryDocs.FieldCount - 1 do
      FieldByName(qryDocs.Fields[i].FieldName).AsString :=
        qryDocs.Fields[i].AsString;
    Post;
  end;

end;

procedure TDocCopyF.btnSelectAllClick(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid2);
end;

procedure TDocCopyF.btnselectReverseClick(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid2, True);
end;

end.
