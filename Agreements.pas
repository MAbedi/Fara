unit Agreements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DB, ADODB, StrUtils, Math,
  System.ImageList, System.Actions, Vcl.Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TAgreementsF = class(Ttemplate2MDIF)
    tbc1: TTabControl;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    srcCustomers: TDataSource;
    qryAgreements: TADOQuery;
    srcAgreements: TDataSource;
    qryAgreementsAgreementsID: TAutoIncField;
    qryAgreementsPersonID1: TIntegerField;
    qryAgreementsRate: TBCDField;
    qryAgreementsYearID: TIntegerField;
    qryAgreementsAgreementsDate: TStringField;
    qryAgreementsAgrState: TWordField;
    pnlok: TPanel;
    btn5: TBitBtn;
    btn6: TBitBtn;
    pnlNew: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    actFilter: TAction;
    actSearchCust: TAction;
    qryStuffCoding: TADOQuery;
    qryAgreements_StuffName: TStringField;
    btnSearch_: TBitBtn;
    btnSearch_1: TBitBtn;
    actSort: TAction;
    btnSearch_2: TBitBtn;
    actExcel: TAction;
    actSelected: TAction;
    btnSelected: TBitBtn;
    btnExcel: TBitBtn;
    actGetFromExcel: TAction;
    qryAgreementsStuffCode: TLargeintField;
    qryAgreementsAgrAmount: TFloatField;
    qryAgreementsSellsMethod: TIntegerField;
    qryAgreements_SellsMethod: TStringField;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    actGetFormYear: TAction;
    Action11: TMenuItem;
    actCopyPaste: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    chkAll: TCheckBox;
    pnlMaster: TPanel;
    btnFilter: TBitBtn;
    btnshowChart: TBitBtn;
    qryAgreementsPersonID1D: TIntegerField;
    qryAgreements_PersonID1D: TStringField;
    qryCustomersLP: TADOQuery;
    qryInitForm: TADOQuery;
    qryAgreementsDiscountPercent: TFloatField;
    grdAgreements: TCedarDbgrid;
    grdCustomer: TCedarDbgrid;
    qryAgreements_VendorBarcode: TStringField;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    qryAgreementsTaxCoA: TFloatField;
    actCopy4NewCust: TAction;
    N4: TMenuItem;
    procedure tbc1Change(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure actSearchCustExecute(Sender: TObject);
    procedure srcAgreementsStateChange(Sender: TObject);
    procedure qryAgreementsAfterInsert(DataSet: TDataSet);
    procedure qryAgreementsAgrStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAgreementsAgrStateSetText(Sender: TField; const Text: String);
    procedure grdAgreementsEditButtonClick(Sender: TObject);
    procedure grdAgreementsKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure qryAgreementsBeforePost(DataSet: TDataSet);
    procedure actSelectedExecute(Sender: TObject);
    procedure actGetFromExcelExecute(Sender: TObject);
    procedure qryAgreementsBeforeDelete(DataSet: TDataSet);
    procedure actGetFormYearExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure chkAllClick(Sender: TObject);
    procedure grdCustomerKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure grdCustomerSearchPanelSearchEditChange(Grid: TCustomDBGridEh;
      SearchEdit: TDBGridSearchPanelTextEditEh);
    procedure grdCustomerCellClick(Column: TColumnEh);
    procedure actCopy4NewCustExecute(Sender: TObject);
  private
    AgrStateID: Integer;
    aType: Integer;
    procedure UpdateFilter;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function CheckDuplicate: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AgreementsF: TAgreementsF;

implementation

uses DM, search2, searchCode_ADO, GlobalPro, sndkey32, FilterClass_ADO,
  Filters, filter_ADO, sort2, selected, GetExcel, MMESSAGE, FaraConsts;

{$R *.dfm}

procedure TAgreementsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin

  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := IfThen(aDataSet.FieldByName('_StuffName')
              .AsString = EmptyStr, -2, 1);
          1:
            nextIndex := 2;
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
            nextIndex := 8;
          8:
            nextIndex := 9;
          9:
            nextIndex := 11;
          10:
            nextIndex := 11;
          11:
            nextIndex := 12;
          12:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
          ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
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
      grdAgreementsEditButtonClick(Sender);
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < (Sender as TCedarDbgrid).Columns.Count) and
      (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
      ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
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

procedure TAgreementsF.tbc1Change(Sender: TObject);
begin
  inherited;
  aType := 0;
  case (Sender as TTabControl).TabIndex of
    0:
      aType := 0;
    1:
      aType := 4;
    2:
      aType := 3;
    3:
      aType := 9;
  end;
  with qryCustomers do
    try
      Close;
      Parameters.ParamByName('type').Value := aType;
      Open;
    finally

    end;
end;

procedure TAgreementsF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAgreements do
  begin
    Close;
    if not chkAll.Checked then
    begin
      Parameters.ParamByName('CustID').Value := DataSet.FieldByName('CustID')
        .AsInteger;
    end;
    Open;
  end;
end;

procedure TAgreementsF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TAgreementsF.actSearchCustExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustomers);
end;

procedure TAgreementsF.srcAgreementsStateChange(Sender: TObject);
begin
  inherited;
  pnlok.Visible := qryAgreements.State in dseditmodes;
  pnlNew.Visible := not pnlok.Visible;
  BtnReject.Cancel := pnlNew.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  grdCustomer.Enabled := pnlNew.Visible;
end;

procedure TAgreementsF.qryAgreementsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  grdAgreements.SelectedIndex := 0;
  if not chkAll.Checked then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryCustomers.FieldByName('CustID').AsInteger;
  DataSet.FieldByName('AgreementsDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('Rate').AsInteger := 0;
  DataSet.FieldByName('YearId').AsInteger := APPBank.Year;
  DataSet.FieldByName('AgrState').AsInteger := 0;
end;

procedure TAgreementsF.qryAgreementsAgrStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := grdAgreements.Columns[AgrStateID].PickList[Sender.AsInteger];
end;

procedure TAgreementsF.qryAgreementsAgrStateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := grdAgreements.Columns[AgrStateID].PickList.IndexOf(Text);
end;

procedure TAgreementsF.grdAgreementsEditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  TmpChar: Char;
  sqlText: String;
  Results: array [0 .. 1] of String;
  i: Integer;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  i := (Sender as TCedarDbgrid).SelectedIndex;

  if grdAgreements.Columns[i].FieldName = 'StuffCode' then
  Begin
    sqlText :=
      'SELECT DISTINCT  StuffCoding.c_StuffCode,StuffCoding.c_StuffName' +
      ' FROM StuffCoding INNER JOIN' +
      ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN'
      + ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID' +
      ' WHERE (Stores.StoreKind IN (1, 2))';

    if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'كالاها', sqlText,
      ['كد ', 'شرح'], Results, [80, 250], alLeft) then
    begin
      aDataSet.FieldByName('StuffCode').AsString := Results[0];
      TmpChar := #13;
      gridkeyenter(Sender, TmpChar);
    end; // if
  end;

  if grdAgreements.Columns[i].FieldName = 'PersonID1D' then
  begin
    if qryInitForm.FieldByName('Customer2DetailKind').AsString = EmptyStr then
      Warn('مشتري 2 در Detail ارتباط داده نشده');
    sqlText := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
      ' WHERE GroupType IN(' +
      Trim(qryInitForm.FieldByName('Customer2DetailKind').AsString) + ')';

    if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشخصات مشتری', sqlText,
      ['کد', 'نام مشتری'], Results, [50, 150], alLeft) then
    begin
      aDataSet.FieldByName('PersonID1D').AsString := Results[0];
    end; // if
  end;

end;

procedure TAgreementsF.grdAgreementsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TAgreementsF.grdCustomerCellClick(Column: TColumnEh);
begin
  inherited;

  // if (qryCustomers.AfterScroll = nil) then
  begin
    qryCustomers.AfterScroll := qryCustomersAfterScroll;
    if qryAgreements.Parameters.ParamByName('CustID').Value <>
      qryCustomers.FieldByName('CustID').AsInteger then
      qryCustomersAfterScroll(qryCustomers);
  end;

end;

procedure TAgreementsF.grdCustomerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustomersCustID)
end;

procedure TAgreementsF.grdCustomerSearchPanelSearchEditChange
  (Grid: TCustomDBGridEh; SearchEdit: TDBGridSearchPanelTextEditEh);
begin
  inherited;
  if SearchEdit.Text <> '' then
  begin
    qryCustomers.AfterScroll := nil;
    // grdCustomer.AutoScroll := False;  // اضافه کن
  end
  else
  begin
    qryCustomers.AfterScroll := qryCustomersAfterScroll;
    // grdCustomer.AutoScroll := True;   // برگردون
  end;
end;

procedure TAgreementsF.FormCreate(Sender: TObject);
begin
  inherited;
  aType := 0;
  SetLookUpCash(qryAgreements);
  AgrStateID := ColumnIndexByFieldName(grdAgreements,
    qryAgreementsAgrState.FieldName);

  with qryInitForm do
  begin
    Open;
    qryAgreements.FieldByName('PersonID1D').DisplayLabel :=
      FieldByName('Person2DetailCaption').AsString;
    qryAgreements.FieldByName('_PersonID1D').DisplayLabel := 'نام ' +
      FieldByName('Person2DetailCaption').AsString;
  end;

end;

procedure TAgreementsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBSell, 'PersonID', ' مشتري ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT DISTINCT CustID , CustName FROM Vu_CustomersGroups ',
        'SELECT Min(CustID),Max(CustID) From Customers');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TAgreementsF.UpdateFilter;
begin
  grdCustomer.Visible := not chkAll.Checked;
  setColumns2(grdAgreements, chkAll.Checked, 'PersonID1');
  with qryAgreements do
  begin
    Close;
    SQL.Text := 'Select * from Agreements';
    SQL.Add('where (YearID between :YearIDFrom and :YearIdTo)');
    Parameters.ParamByName('YearIdFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIdTo').Value := APPBank.Year;
    if chkAll.Checked then
    begin
      Open;
      exit;
    end
    else
    begin
      SQL.Add('and (PersonID1 = :CustID)');
    end;
  end;

  with qryCustomers do
  begin
    Close;
    SQL.Text := 'SELECT DISTINCT v.CustID, v.CustName';
    SQL.Add('FROM Vu_CustomersGroups AS v ');
    if RadioGroup1.ItemIndex = 1 then
      SQL.Add('INNER JOIN Agreements ON v.CustID = Agreements.PersonID1');
    SQL.Add('WHERE (v.CustID BETWEEN :CustFrom AND :CustTo )');
    SQL.Add('AND (v.GroupType = :Type )');
    Parameters.ParamByName('CustFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('CustTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('type').Value := aType;
    Open;
  end;
end;

procedure TAgreementsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonID') = nil then
      Close;
end;

procedure TAgreementsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAgreements);
end;

procedure TAgreementsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAgreementsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAgreements);
end;

function TAgreementsF.CheckDuplicate: Boolean;
begin
  with DMf.qryTmpTmp do
    try
      Close;
      SQL.Text := 'SELECT  Count(AgreementsID) FROM Agreements';
      SQL.Add('WHERE (PersonID1 = :CustID)  AND (yearID = :YearID)');
      SQL.Add('AND (AgreementsDate=:Date) AND (StuffCode = :StuffCode) AND (AgreementsID <> :ID) ');

      if qryAgreementsPersonID1D.AsInteger <> 0 then
      begin
        SQL.Add('AND (PersonID1D = :PersonID1D )');
        Parameters.ParamByName('PersonID1D').Value :=
          qryAgreements.FieldByName('PersonID1D').AsLargeInt;
      end;

      Parameters.ParamByName('StuffCode').Value :=
        qryAgreements.FieldByName('StuffCode').AsLargeInt;
      Parameters.ParamByName('CustID').Value :=
        qryCustomers.FieldByName('CustID').AsInteger;
      Parameters.ParamByName('YearID').Value :=
        qryAgreements.FieldByName('YearID').AsInteger;
      Parameters.ParamByName('Date').Value :=
        qryAgreements.FieldByName('AgreementsDate').AsString;
      Parameters.ParamByName('ID').Value := qryAgreements.FieldByName
        ('AgreementsID').AsInteger;
      Open;
      Result := Fields[0].AsInteger > 0;
    finally
      Close;
    end;
end;

procedure TAgreementsF.chkAllClick(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TAgreementsF.qryAgreementsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('StuffCode').IsNull then
  begin
    DataSet.Cancel;
    Abort;
  end;
  if (CheckDuplicate) then
    if get_response
      ('اطلاعات تکراري در يک محدوده تاريخ تاريخي مي باشد ، آيا نسبت به ثبت مطمئن هستيد ؟')
      <> mrYes then
      Abort;
end;

procedure TAgreementsF.actSelectedExecute(Sender: TObject);
var
  sqlText: String;
  stlResult: TStringList;
  i: Integer;
begin
  inherited;
  sqlText := 'SELECT DISTINCT  StuffCoding.c_StuffCode,StuffCoding.c_StuffName'
    + ' FROM StuffCoding INNER JOIN' +
    ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN'
    + ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID' +
    ' WHERE (Stores.StoreKind IN (1, 2))';
  stlResult := TStringList.Create;
  try
    qryAgreements.BeforePost := nil;
    stlResult.Text := selectedF.ShowSelect(DMf.adcBSell, 'انتخاب گروهي',
      sqlText, ['كد كالا', 'نام كالا'], alLeft, [50, 350]);
    if stlResult.Text <> EmptyStr then
    begin
      stlResult.Text := StringReplace(stlResult.Text, ',', #13, [rfReplaceAll]);
      for i := 0 to stlResult.Count - 1 do
        with qryAgreements do
        begin
          Insert;
          FieldByName('StuffCode').AsString := stlResult[i];
          Post;
        end;
    end;
  finally
    qryAgreements.BeforePost := qryAgreementsBeforePost;
    FreeAndNil(stlResult);
  end;
end;

procedure TAgreementsF.actGetFromExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryAgreements);
end;

procedure TAgreementsF.actGetFormYearExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if User.level < 50 then
  begin
    Warn('محدویت سطح دسترسی' + #13#10 + '50');
    exit;
  end;

  s := 'آيا برای فراخوانی اطلاعات از سال قبل مطمئن هستيد ؟' + #13 +
    'از سال %d  به سال %d';
  s := Format(s, [APPBank.Year - 1, APPBank.Year]);
  if get_response(s) <> mrYes then
    Abort;
  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT COUNT(YearID) FROM Agreements WHERE (YearID = :YearIDTo)';
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
    if Fields[0].AsInteger > 0 then
    begin
      Warn('در این سال مالی اطلاعات از قبل وجود دارد')
    end
    else
    begin
      BigMessage('لطفا صبر کنید....', 0);
      CommandTimeout := 0;
      Active := false;
      SQL.Text := 'INSERT INTO Agreements';
      SQL.Add('(PersonID1, StuffCode, Rate, YearID, AgreementsDate, AgrState, AgrAmount, SellsMethod, PersonID1D, DiscountPercent,TaxCoA)');
      // SQL.Add('SELECT PersonID1, StuffCode, Rate, :YearIDTo AS YearID, AgreementsDate, AgrState, AgrAmount, SellsMethod');
      SQL.Add('SELECT PersonID1, StuffCode,  MAX(Rate) AS Rate, :YearIDTo AS YearID, MAX(AgreementsDate) AS AgreementsDate');
      // new
      SQL.Add(', AgrState, MAX(AgrAmount) AS AgrAmount , SellsMethod, PersonID1D, DiscountPercent,TaxCoA');
      // new
      SQL.Add('FROM Agreements AS Agreements_1');
      SQL.Add('WHERE (YearID = :YearIDFrom) '); // AND (AgrState = 0)
      SQL.Add('GROUP BY PersonID1, StuffCode,  AgrState,  SellsMethod'); // new
      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year - 1;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
      Warn(ExecSQL.ToString + 'مورد انجام شد.');;
      CloseMessage;
      CommandTimeout := 30;
      qryAgreements.Requery();
    end;
    Active := false;
  end;
end;

procedure TAgreementsF.actCopy4NewCustExecute(Sender: TObject);
var
  s: string;
  PersonID1: Integer;
begin
  inherited;
  if User.level < 50 then
  begin
    Warn('محدویت سطح دسترسی' + #13#10 + '50');
    exit;
  end;
  s := 'آيا برای کپی کالای سطر جاری برای مشتری جدید مطمئن هستيد ؟';
  if get_response(s) <> mrYes then
    Abort;

  PersonID1 := StrToInt(Trim(get_box('مشتری جدید',
    'کد مشتری جدید را براي كپي سطر جاري وارد كنيد', '0', false, '999999999')));

  if PersonID1 <> 0 then
  begin
    s := s + #13 + 'کد مشتری %d برای کالای %d به تاریخ امروز';
    s := Format(s, [PersonID1, qryAgreementsStuffCode.AsLargeInt]);
    if get_response(s) = mrYes then
      with DMf.qryTmpTmp do
      begin
        BigMessage('لطفا صبر کنید....', 0);
        CommandTimeout := 0;
        Active := false;
        SQL.Text := 'INSERT INTO Agreements';
        SQL.Add('(PersonID1, StuffCode, Rate, YearID, AgreementsDate');

        SQL.Add(', AgrState, AgrAmount, SellsMethod, PersonID1D, DiscountPercent,TaxCoA)');

        SQL.Add('SELECT :PersonID1, StuffCode, Rate AS Rate, YearID, dbo.MiladiToShamsi(GETDATE()) AS AgreementsDate');

        SQL.Add(', 0 AS AgrState, AgrAmount, SellsMethod, PersonID1D, DiscountPercent,TaxCoA');
        SQL.Add('FROM Agreements');
        SQL.Add('WHERE (AgreementsID = :AgreementsID ) ');

        Parameters.ParamByName('PersonID1').Value := PersonID1;
        Parameters.ParamByName('AgreementsID').Value :=
          qryAgreementsAgreementsID.AsInteger;
        Warn(ExecSQL.ToString + 'مورد انجام شد.');;
        CloseMessage;
        CommandTimeout := 30;
        qryAgreements.Requery();

        Active := false;
      end;
  end;

end;

procedure TAgreementsF.actCopyPasteExecute(Sender: TObject);
var
  s: string;
  Rate: Integer;
begin
  inherited;
  if User.level < 50 then
  begin
    Warn('محدویت سطح دسترسی' + #13#10 + '50');
    exit;
  end;
  s := 'آيا برای کپی کالای سطر جاری با قیمت جدید برای مشتری جاری و سایر مشتریان مطمئن هستيد ؟';
  if get_response(s) <> mrYes then
    Abort;

  Rate := StrToInt(Trim(get_box('قیمت جدید',
    'قیمت جدید را براي كپي سطر جاري وارد كنيد', '0', false, '999999999')));

  if Rate <> 0 then
  begin
    s := s + #13 + 'قیمت %d برای کالای %d به تاریخ امروز';
    s := Format(s, [Rate, qryAgreementsStuffCode.AsLargeInt]);
    if get_response(s) = mrYes then
      with DMf.qryTmpTmp do
      begin
        BigMessage('لطفا صبر کنید....', 0);
        CommandTimeout := 0;
        Active := false;
        SQL.Text := 'INSERT INTO Agreements';
        SQL.Add('(PersonID1, StuffCode, Rate, YearID, AgreementsDate');

        SQL.Add(', AgrState, AgrAmount, SellsMethod, PersonID1D, DiscountPercent,TaxCoA)');

        SQL.Add('SELECT PersonID1, StuffCode, :Rate AS Rate, YearID, dbo.MiladiToShamsi(GETDATE()) AS AgreementsDate');

        SQL.Add(', 0 AS AgrState, AgrAmount, SellsMethod, PersonID1D, DiscountPercent,TaxCoA');
        SQL.Add('FROM Agreements');
        SQL.Add('WHERE (YearID = :YearID ) AND (StuffCode = :StuffCode) AND (AgreementsDate = :AgreementsDate )');

        Parameters.ParamByName('Rate').Value := Rate;
        Parameters.ParamByName('YearID').Value := qryAgreementsYearID.AsInteger;
        Parameters.ParamByName('StuffCode').Value :=
          qryAgreementsStuffCode.AsLargeInt;
        Parameters.ParamByName('AgreementsDate').Value :=
          qryAgreementsAgreementsDate.AsString;
        Warn(ExecSQL.ToString + 'مورد انجام شد.');;
        CloseMessage;
        CommandTimeout := 30;
        qryAgreements.Requery();

        Active := false;
      end;
  end;

end;

procedure TAgreementsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdAgreements);
end;

procedure TAgreementsF.qryAgreementsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد ؟') <> mrYes then
    Abort;
end;

end.
