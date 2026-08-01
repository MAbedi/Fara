unit InvoiceEmission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, Menus, CheckLst, StrUtils, Math,
  System.ImageList, System.Actions;

type
  TInvoiceEmissionF = class(Ttemplate2MDIF)
    dbgrdAssignment: TDBGrid;
    dbgrdBespoke: TDBGrid;
    qryAssignment: TADOQuery;
    dsAssignment: TDataSource;
    qryAssignmentReciptID: TIntegerField;
    qryAssignmentReciptNumber: TIntegerField;
    qryAssignmentReciptDate: TStringField;
    qryAssignmentReciptState: TWordField;
    qryAssignmentReciptNote: TStringField;
    qryAssignmentEntity: TFloatField;
    qryAssignmentAcceptEntity: TFloatField;
    qryAssignmentRollbackEntity: TFloatField;
    qryAssignmentStoreID: TSmallintField;
    qryAssignmentc_StoreName: TStringField;
    qryBespoke: TADOQuery;
    dsBespoke: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    lblMiscue: TLabel;
    dbgrdMiscue: TDBGrid;
    dsMiscue: TDataSource;
    qryMiscue: TADOQuery;
    actInvoiceEmission: TAction;
    actAssignmentShow: TAction;
    actBespokeShow: TAction;
    actElaboration: TAction;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    btnDelDriver: TBitBtn;
    btnExportSell: TBitBtn;
    btnSend: TBitBtn;
    BitBtn2: TBitBtn;
    qryBespokeReciptID: TIntegerField;
    qryBespokeReciptNumber: TIntegerField;
    qryBespokeReciptDate: TStringField;
    qryBespokeReciptState: TWordField;
    qryBespokeEntity: TFloatField;
    qryBespokeAcceptEntity: TFloatField;
    qryBespokeRollbackEntity: TFloatField;
    qryBespokeReciptNote: TStringField;
    qryBespokeStoreID: TSmallintField;
    qryBespokec_StoreName: TStringField;
    qryBespokePersonID1: TIntegerField;
    qryBespokeCustName: TStringField;
    qryBespokePersonID2: TIntegerField;
    qryBespokeCustName2: TStringField;
    qryMiscuec_StuffName: TStringField;
    qryMiscueAcceptEntity: TFloatField;
    qryMiscueRollbackEntity: TFloatField;
    qryMiscueEntity: TFloatField;
    qryinit: TADOQuery;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    AllMenu: TMenuItem;
    qryBespoke_Row: TIntegerField;
    qryBespokeWeight: TFloatField;
    qryMiscueAcceptWeight: TFloatField;
    qryMiscueRollbackWeight: TFloatField;
    qryMiscueWeight: TFloatField;
    Panel1: TPanel;
    medtDate: TMaskEdit;
    lblDate: TLabel;
    chklstSecondType: TCheckListBox;
    pmSend: TPopupMenu;
    AllSend: TMenuItem;
    qryAssignment_Row: TIntegerField;
    qryBespokeName: TStringField;
    Image3: TImage;
    Image2: TImage;
    qryBespokeSelected: TIntegerField;
    qryAssignmentEntityFactor: TFloatField;
    qryAssignmentPersonID3: TIntegerField;
    qryAssignmentCustName: TStringField;
    qryBespokeIntegerField: TIntegerField;
    qryBespokeCustName3: TStringField;
    qryAssignmentAidDate: TStringField;
    qryAssignmentServerID: TIntegerField;
    qryAssignmentYearID: TIntegerField;
    qryBespokeServerID: TIntegerField;
    qryBespokeYearID: TIntegerField;
    qryMiscueStuffCode: TLargeintField;
    qryAssignmentAidNumber: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryAssignmentAfterScroll(DataSet: TDataSet);
    procedure actInvoiceEmissionExecute(Sender: TObject);
    procedure ALLStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actElaborationExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAssignmentShowExecute(Sender: TObject);
    procedure actBespokeShowExecute(Sender: TObject);
    procedure AllMenuClick(Sender: TObject);
    procedure btnSendExcelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryBespokeCalcFields(DataSet: TDataSet);
    procedure chklstSecondTypeClick(Sender: TObject);
    procedure AllSendClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure dbgrdBespokeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdBespokeDblClick(Sender: TObject);
    procedure qryAssignmentBeforeScroll(DataSet: TDataSet);
    procedure qryBespokeBeforeScroll(DataSet: TDataSet);
    procedure dbgrdAssignmentKeyPress(Sender: TObject; var Key: Char);
  private
    SQL_Bespoke: String;
    SelectedInvoiceEmission: Boolean;
    procedure UpdateList;
    procedure InitForm;
    procedure Selected;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceEmissionF: TInvoiceEmissionF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, Elaboration, mmessage,
  FormFunctions, search2, sort2;

{$R *.dfm}

procedure TInvoiceEmissionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'number', '', 'شماره', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      AddItem(DMf.adcBSell, 'storeId', 'انبار', 'كدانبار', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      // 'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ','Select Min(n_StoreID),max(n_StoreID) from Stores');
      AddItem(DMf.adcBSell, 'PersonID3', 'راننده', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT  CustID, CustName FROM  Customers9 ',
        'SELECT -999999999,999999999  ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TInvoiceEmissionF.UpdateList;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    dbgrdAssignment,qryAssignment);
  with qryAssignment Do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('PersonID3From').Value :=
      GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
    Parameters.ParamByName('PersonID3To').Value :=
      GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('YearID2').Value := APPBank.Year;
    // AND ( Recipts.ServerID =  :ServerID   )    Parameters.ParamByName('ServerID').Value:=opt.ServerID;
    Active := True;
  end; // with
end;

procedure TInvoiceEmissionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;

end;

procedure TInvoiceEmissionF.qryAssignmentAfterScroll(DataSet: TDataSet);
begin
  inherited;
  medtDate.Text := qryAssignment.FieldByName('ReciptDate').AsString;
  qryMiscue.Active := False;
  with qryBespoke Do
  begin
    Active := False;
    Parameters.ParamByName('masetr').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;

    Active := True;
  end; // with
  with qryMiscue Do
  begin
    Active := False;
    Parameters.ParamByName('Havaleh').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('Master').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;

    Parameters.ParamByName('YearID2').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID2').Value := DataSet.FieldByName('ServerID')
      .AsInteger;

    // Warn('ReciptID = '+DataSet.FieldByName('ReciptID').AsString);
    // Warn('YearID = '+DataSet.FieldByName('YearID').AsString);
    // Warn('ServerID = '+DataSet.FieldByName('ServerID').AsString);
    Active := True;
    actInvoiceEmission.Enabled := (RecordCount = 0) or
      (SelectedInvoiceEmission);
    dbgrdMiscue.Visible := RecordCount > 0;
    lblMiscue.Visible := dbgrdMiscue.Visible;
    chklstSecondType.Enabled := not dbgrdMiscue.Visible;
    actElaboration.Visible := dbgrdMiscue.Visible;
  end; // with
end;

procedure TInvoiceEmissionF.actInvoiceEmissionExecute(Sender: TObject);
var
  qry: TADOQuery;
  RestartStore: Boolean;
  Txt, ReciptNumbers: String;
  ReciptNumber: Integer;
  MaxReciptDate: String;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text :=
      'SELECT MAX(ReciptDate) FROM Recipts WHERE ReciptType = :ReciptType';
    SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
      [APPBank.Year, opt.ServerID]));

    Parameters.ParamByName('ReciptType').Value := pmSend.Tag;
    Open;
    MaxReciptDate := Fields[0].AsString;
    if MaxReciptDate = EmptyStr then
      MaxReciptDate := qryAssignment.FieldByName('ReciptDate').AsString;
    Close;
  end;

  // 2014 Sep 27 at 6:53 PM    شرکت گنج دانه همدان-- صدور فاکتور فروش در عملیات پخش
  // درخواست ایمیل شبانیان
  // if not((medtDate.Text >= qryAssignment.FieldByName('ReciptDate').AsString) and
  // (medtDate.Text <= var_glb_CurrentDate) and
  // (medtDate.Text >= MaxReciptDate)) then
  // begin
  // Warn('تاريخ فرم حتما ما بين تاريخ حواله فروش و تاريخ روز باشد.‏' + #13 +
  // 'بزرگترين تاريخ ثبت شده در فرمهاي مورد نظر' + #13 + MaxReciptDate + #13 +
  // 'ميباشد كه از آن نيز نبايد كوچكتر باشد.‏');
  // FlashAControl(medtDate);
  // Exit;
  // end;

  with qryinit do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value := pmSend.Tag;
    Open;
    RestartStore := FieldByName('RestartFormNumberOnStore').AsInteger = 1;
    Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
      FieldByName('ReciptType').AsString + ')';
    IF RestartStore THEN
      Txt := Txt + 'AND(StoreID=' +
        IntToStr(qryAssignment.FieldByName('StoreID').AsInteger) + ')';
    Txt := Txt + Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
      [APPBank.Year, opt.ServerID]);

  end;
  qry := TADOQuery.Create(Self);
  with qry do
    try
      BigMessageProgBar('در حال صدور ' + qryinit.FieldByName('ReciptCaption')
        .AsString + '...', qryBespoke.RecordCount + 1);
      Connection := DMf.adcBSell;
      with qryBespoke do
      begin
        First;
        DisableControls;
        while not Eof do
        begin
          if FieldByName('selected').AsInteger = 1 then
            if (FieldByName('Weight').AsInteger <> 0) or
              (FieldByName('Entity').AsInteger <> 0) then
            begin
              ReciptNumber := GetANewCode(Self.Name, Txt, 'ReciptNumber');
              qry.SQL.Text := 'UPDATE    Recipts';
              qry.SQL.Add
                ('SET AidNumber = ReciptNumber , AidDate = ReciptDate , ');
              qry.SQL.Add('ReciptType = ' + IntToStr(pmSend.Tag) +
                ', ReciptNumber = :ReciptNumber , ReciptState = 2 ');
              qry.SQL.Add(', ReciptDate = :ReciptDate');
              qry.SQL.Add('WHERE ( ReciptID = :ReciptID )');
              qry.SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
                [APPBank.Year, opt.ServerID]));
              qry.Parameters.ParamByName('ReciptNumber').Value := ReciptNumber;
              qry.Parameters.ParamByName('ReciptDate').Value := medtDate.Text;
              ReciptNumbers := ReciptNumbers + IntToStr(ReciptNumber) + ', ';
              qry.Parameters.ParamByName('ReciptID').Value :=
                FieldByName('ReciptID').AsInteger;
              qry.ExecSQL;
            end
            else
            begin
              qry.SQL.Text := 'UPDATE    Recipts';
              qry.SQL.Add('SET  ReciptState = 3');
              qry.SQL.Add('WHERE (ReciptID = :ReciptID )');
              qry.SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
                [APPBank.Year, opt.ServerID]));
              qry.Parameters.ParamByName('ReciptID').Value :=
                FieldByName('ReciptID').AsInteger;
              qry.ExecSQL;
            end;
          GoProgressBar(FieldByName('ReciptNumber').AsString);
          Next;
        end;
        EnableControls;
      end;

      qry.SQL.Text := 'UPDATE    Recipts';
      qry.SQL.Add('SET  ReciptState = 2');
      qry.SQL.Add('WHERE ( ReciptID = :ReciptID )');
      qry.SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
        [APPBank.Year, opt.ServerID]));
      qry.Parameters.ParamByName('ReciptID').Value :=
        qryAssignment.FieldByName('ReciptID').AsInteger;
      qry.ExecSQL;
    finally
      CloseMessage;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
      Free;
      Warn(' فرم به تاريخ ' + medtDate.Text + '‌ و شماره فرم ' + ReciptNumbers +
        ' ثبت شد.', mtInformation);
      qryBespoke.Requery;
    end;
end;

procedure TInvoiceEmissionF.ALLStateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TInvoiceEmissionF.actElaborationExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TElaborationF, ElaborationF, Self);
  with ElaborationF.qryMaster Do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      qryMiscue.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end; // with
  with ElaborationF.qryElaboration Do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      qryMiscue.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('StuffCode2').Value :=
      qryMiscue.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('master').Value :=
      qryAssignment.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('master2').Value :=
      qryBespoke.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qryAssignment.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryAssignment.FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with

end;

procedure TInvoiceEmissionF.FormCreate(Sender: TObject);
begin
  inherited;
  SelectedInvoiceEmission := DMf.ReadBankConfig('SelectedInvoiceEmission',
    '0') = '1';
  setColumns2(dbgrdBespoke, SelectedInvoiceEmission, 'Selected');
  if not SelectedInvoiceEmission then
  begin
    dbgrdBespoke.OnDblClick := nil;
    dbgrdBespoke.OnDrawColumnCell := nil;
  end;
  SQL_Bespoke := qryBespoke.SQL.Text;
  InitForm;
  with qryinit do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value := 12;
    Open;
  end;
end;

procedure TInvoiceEmissionF.InitForm;
var
  Kind: Integer;
  NewItem: TMenuItem;
begin
  Entity_Weight(dbgrdAssignment);
  Entity_Weight(dbgrdBespoke);
  Entity_Weight(dbgrdMiscue);
  pmSend.Items.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptType,ReciptCaption FROM ReciptTypes ';
    SQL.Add('WHERE (ReciptType <> 11) AND (SellEffect = 1)');
    Active := True;
    while not Eof do
      with NewItem do
      begin
        NewItem := TMenuItem.Create(pmSend);
        Caption := Fields[1].AsString;
        OnClick := AllSendClick;
        Tag := Fields[0].AsInteger;
        pmSend.Items.Add(NewItem);
        Next;
      end;
  end; // while
  if pmSend.Items.Count <= 1 then
    btnSend.Action := actInvoiceEmission;

  chklstSecondType.Clear;
  with qryinit do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value := 10;
    Open;
    chklstSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    setColumns2(dbgrdBespoke, chklstSecondType.Visible, 'Name');
    if not chklstSecondType.Visible then
      Exit;
    Kind := FieldByName('FormKindSerial').AsInteger;
  end;
  if Kind <> 0 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
        IntToStr(Kind) + ')ORDER BY Code';
      Active := True;
      while not Eof do
      begin
        chklstSecondType.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    end; // with
end;

procedure TInvoiceEmissionF.actAssignmentShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryAssignment, Self);
end;

procedure TInvoiceEmissionF.actBespokeShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryBespoke, Self);
end;

procedure TInvoiceEmissionF.AllMenuClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    1:
      qry := qryAssignment;
    2:
      qry := qryBespoke;
  else
    qry := qryMiscue;
  end;
  case AllMenu.Tag of
    1:
      dataToExcel(qry);
    2:
      search2F.ShowSearch(qry);
    3:
      sort2F.ShowSort(qry);
  end;
end;

procedure TInvoiceEmissionF.btnSendExcelClick(Sender: TObject);
begin
  inherited;
  AllMenu.Tag := (Sender as TBitBtn).Tag;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInvoiceEmissionF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrdAssignment, 10);
  SetColSize(dbgrdBespoke, 8);
  SetColSize(dbgrdMiscue, 1);
end;

procedure TInvoiceEmissionF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(dbgrdAssignment);
  SaveColWidth(dbgrdBespoke);
  SaveColWidth(dbgrdMiscue);
end;

procedure TInvoiceEmissionF.qryBespokeCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_row').AsInteger := abs(DataSet.RecNo)
end;

procedure TInvoiceEmissionF.chklstSecondTypeClick(Sender: TObject);
var
  i: Byte;
  s: String;
begin
  inherited;
  s := '';
  for i := 0 to chklstSecondType.Items.Count - 1 do
  begin
    if chklstSecondType.Checked[i] then
      s := s + IntToStr(Integer(chklstSecondType.Items.Objects[i])) + ','
  end;
  s := LeftStr(s, length(s) - 1);
  With qryBespoke do
  begin
    Close;
    if s <> EmptyStr then
      SQL.Text := StringReplace(SQL_Bespoke, 'WHERE ', 'WHERE SecondType in (' +
        s + ') AND ', [rfReplaceAll])
    else
      SQL.Text := SQL_Bespoke;
    Open;
  end;
end;

procedure TInvoiceEmissionF.AllSendClick(Sender: TObject);
begin
  inherited;
  pmSend.Tag := (Sender as TMenuItem).Tag;
  actInvoiceEmission.Execute
end;

procedure TInvoiceEmissionF.btnSendClick(Sender: TObject);
begin
  inherited;
  pmSend.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInvoiceEmissionF.dbgrdBespokeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DataCol = 0 then
  begin
    dbgrdBespoke.Canvas.Rectangle(Rect);
    if qryBespoke.FieldByName('selected').AsInteger = 1 then
      // Column.Field.AsInteger = 1
      dbgrdBespoke.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      dbgrdBespoke.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;

end;

procedure TInvoiceEmissionF.Selected;
begin
  with qryBespoke do
  begin
    Edit;
    FieldByName('selected').AsInteger :=
      IfThen(FieldByName('selected').AsInteger = 0, 1, 0);
    Post;
  end;
end;

procedure TInvoiceEmissionF.dbgrdBespokeDblClick(Sender: TObject);
begin
  inherited;
  Selected
end;

procedure TInvoiceEmissionF.qryAssignmentBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryMiscue.Active := False;
  qryBespoke.Active := False;
end;

procedure TInvoiceEmissionF.qryBespokeBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryMiscue.Active := False;
end;

procedure TInvoiceEmissionF.dbgrdAssignmentKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, (Sender as TDBGrid).DataSource.DataSet.FieldByName
    ('ReciptNumber'));
end;

end.
