{ -----------------------------------------------------------------------------
  Unit Name: GetFirstEntity
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit GetFirstEntity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, ADODB,
  DB, Menus, StrUtils, CheckLst, Math, uAppUsageLogger;

type
  TSearchItem = class
    BankName: String;
    caption: String;
    Year: Integer;
  end; // tSearchItem

  TGetFirstEntityF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    spGetFirstEntity: TADOStoredProc;
    qry: TADOQuery;
    PopupMenu1: TPopupMenu;
    N121: TMenuItem;
    N21: TMenuItem;
    grpS: TGroupBox;
    grp2: TGroupBox;
    Panel5: TPanel;
    btnCachir: TBitBtn;
    chklstGetCheck: TCheckListBox;
    btnGetCheck: TBitBtn;
    pnlBank: TPanel;
    Label1: TLabel;
    cmbBank: TComboBox;
    pnlYear: TPanel;
    lblYear: TLabel;
    cmbYear: TComboBox;
    btnCust2: TBitBtn;
    popGetFirstEntity: TPopupMenu;
    GetFirstEntity: TMenuItem;
    GetFirstEntityMalek: TMenuItem;
    pnl1: TPanel;
    btnStore: TBitBtn;
    btnCust: TBitBtn;
    mnuGetFirstEntityUseUnitID: TMenuItem;
    mnuGetFirstEntityControlCode: TMenuItem;
    chkMultiYare: TCheckBox;
    chkSellsEmporium: TCheckBox;
    btnRemainsEarly: TBitBtn;
    grpMandeh: TGroupBox;
    chkBank1: TCheckBox;
    chkCash2: TCheckBox;
    chkLoan7: TCheckBox;
    chkSupplier17: TCheckBox;
    procedure btnStoreClick(Sender: TObject);
    procedure cmbBankChange(Sender: TObject);
    procedure btnCustClick(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure cmbYearChange(Sender: TObject);
    procedure cmbAllEnter(Sender: TObject);
    procedure btnCachirClick(Sender: TObject);
    procedure btnGetCheckClick(Sender: TObject);
    procedure chklstGetCheckClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetFirstEntityClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chkMultiYareClick(Sender: TObject);
    procedure btnRemainsEarlyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FOpenTime: TDateTime;
    sitem: TSearchItem;
    GroupType1, GroupType2, GroupType7, GroupType17: string;
    procedure assignCombo;
    function GetCheckList(ChkLstBox: TCheckListBox; btn: TBitBtn): String;
    procedure AllClick(AllYear: Boolean);
    procedure CallAllAccount(TypeDocs: string; GroupType12, AllYear: Boolean);
    procedure CheckExistsFirstEntity;
    procedure CheckExistsCheck;
    { Private declarations }
  public
    procedure enter(CallFromRemainEarly: Boolean);
    { Public declarations }
  end;

var
  GetFirstEntityF: TGetFirstEntityF;

implementation

uses GlobalPro, DM, mmessage, main, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TGetFirstEntityF.enter(CallFromRemainEarly: Boolean);
begin
  GetFirstEntityF := TGetFirstEntityF.Create(Application);
  with GetFirstEntityF do
  begin
    try
      assignCombo;
      btnStore.Visible := (mainf.Menu = mainf.Mnu2Store) or
        (mainf.Menu = mainf.Mnu13Store) or (mainf.Menu = mainf.Mnu24Maneger);

      btnCust.Visible := CallFromRemainEarly or btnStore.Visible;
      btnRemainsEarly.Visible := CallFromRemainEarly;

      grpS.Visible := btnStore.Visible or btnCust.Visible;

      grp2.Visible := (mainf.Menu = mainf.Mnu0Coffer) or
        (mainf.Menu = mainf.Mnu24Maneger);
      grpMandeh.Visible := grp2.Visible;
      if not grp2.Visible then
        Height := Height - grp2.Height;

      if grp2.Visible then
        caption := 'انتقال اطلاعات خزانه داري';
      Width := 506;

      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TGetFirstEntityF.assignCombo;
var
  qry: TADOQuery;
  i: Integer;
begin
  qry := TADOQuery.Create(DMf);
  i := 0;
  with qry do
  begin
    try
      Connection := DMf.adcFaraSystem;
      SQL.Text := 'Select * from Sections';
      SQL.Add('where (sysid=:sysid)or(sysid=40)');
      // and(BankName<>'''+APPBank.Name+''')');
      SQL.Add('order by createdate');
      Parameters.ParamByName('SYSID').Value := SYSID;
      Active := True;
      while not Eof do
      begin
        sitem := TSearchItem.Create;
        sitem.caption := Format('سال مالي %.2d - %s - %s',
          [FieldByName('MaliYear').AsInteger, FieldByName('BankName').AsString,
          FieldByName('CompanyName').AsString]);
        sitem.BankName := FieldByName('BankName').AsString;
        cmbBank.Items.AddObject(sitem.caption, sitem);
        if APPBank.Name = FieldByName('BankName').AsString then
          i := cmbBank.Items.Count - 1;

        Next;
      end; // while
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
  if cmbBank.Items.Count > 0 then
    cmbBank.ItemIndex := i;
  cmbBankChange(cmbBank);
end;

procedure TGetFirstEntityF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(caption, FOpenTime);
  CloseMessage;
end;

procedure TGetFirstEntityF.FormDestroy(Sender: TObject);
begin
  sitem.Free;
end;

procedure TGetFirstEntityF.FormShow(Sender: TObject);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(caption, FOpenTime);

end;

procedure TGetFirstEntityF.btnStoreClick(Sender: TObject);
begin
  popGetFirstEntity.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetFirstEntityF.cmbBankChange(Sender: TObject);
begin
  sitem := TSearchItem(cmbBank.Items.Objects[cmbBank.ItemIndex]);
  InitCombos(cmbYear,
    'SELECT YearID,STR(YearID) + '' - از '' + StartYear + '' تا '' + EndYear ' +
    'FROM ' + sitem.BankName + '.Util.MaliYear');

  cmbYear.Visible := cmbYear.Items.Count > 1;
  lblYear.Visible := cmbYear.Visible;
  pnlYear.Visible := cmbYear.Visible;
  chklstGetCheck.Visible := cmbYear.Visible;
  if not cmbYear.Visible then
  begin
    cmbYear.ItemIndex := 0;
    sitem.Year := Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
  end;

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Count(YearID) FROM Util.MaliYear';
    Active := True;
    chkMultiYare.Checked := not((cmbYear.Items.Count = 1) and
      (Fields[0].AsInteger = 1));
    Active := False;
  end;

  btnGetCheck.Visible := chkMultiYare.Checked;
  btnCachir.Visible := not btnGetCheck.Visible;
end;

procedure TGetFirstEntityF.btnCustClick(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetFirstEntityF.btnCachirClick(Sender: TObject);
begin
  if cmbYear.ItemIndex < 0 then
    sitem.Year := APPBank.Year - 1
  else
    sitem.Year := Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
  Warn(IntToStr(UpDateBankChsh(sitem.Year, qry, sitem.BankName)) + ' ثبت شد.',
    mtInformation);
end;

procedure TGetFirstEntityF.CheckExistsCheck;
begin
  with qry do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) AS Expr1';
    SQL.Add('FROM Forms');
    SQL.Add('WHERE (FormType IN (21,22,24,73,54,28,74,108,121,184)) AND (YearID = :YearID) AND (ServerID = :ServerID)');
    Parameters.ParamByName('ServerID').Value := opt.ServerID;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    if Fields[0].AsInteger > 0 then
      if get_response(' چکهای ابتدای سال در سیستم وجود دارند' + sLineBreak +
        'آيا براي انتقال دوباره مطمئن هستيد؟') <> mrYes then
        Abort;
    Active := False;
  end;
end;

procedure TGetFirstEntityF.btnGetCheckClick(Sender: TObject);
begin
  CheckExistsCheck;

  BigMessageProgBar('در حال انتقال اطلاعات ...  ', 2);
  with TADOStoredProc.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      ProcedureName := 'USP_NEWYEARE_check;1';
      Parameters.Refresh;

      Parameters.ParamByName('@chkBank1').Value :=
        IfThen(chkBank1.Checked, 1, -1);
      Parameters.ParamByName('@chkCash2').Value :=
        IfThen(chkCash2.Checked, 2, -1);
      Parameters.ParamByName('@chkLoan7').Value :=
        IfThen(chkLoan7.Checked, 7, -1);
      Parameters.ParamByName('@chkSupplier17').Value :=
        IfThen(chkSupplier17.Checked, 17, -1);

      Parameters.ParamByName('@BAcheck').Value :=
        IfThen(chklstGetCheck.Checked[0], 1, 0);
      Parameters.ParamByName('@Scheck').Value :=
        IfThen(chklstGetCheck.Checked[1], 1, 0);
      Parameters.ParamByName('@Bcheck').Value :=
        IfThen(chklstGetCheck.Checked[2], 1, 0);
      Parameters.ParamByName('@Tcheck').Value :=
        IfThen(chklstGetCheck.Checked[3], 1, 0);

      Parameters.ParamByName('@Socheck').Value :=
        IfThen(chklstGetCheck.Checked[4], 1, 0);

      Parameters.ParamByName('@VagozarBeMoshtaricheck').Value :=
        IfThen(chklstGetCheck.Checked[5], 1, 0);

      Parameters.ParamByName('@DaryafteSofte').Value :=
        IfThen(chklstGetCheck.Checked[6], 1, 0);

      Parameters.ParamByName('@DaryafteZemanatNaame').Value :=
        IfThen(chklstGetCheck.Checked[7], 1, 0);

      Parameters.ParamByName('@assigned_legal').Value :=
        IfThen(chklstGetCheck.Checked[8], 1, 0);

      Parameters.ParamByName('@yearidfrom').Value := sitem.Year;
      Parameters.ParamByName('@yearidto').Value := APPBank.Year;
      ExecProc;
    finally
      Free;
    end;
  Warn('اطلاعات منتقل شد.‏', mtInformation);
  CloseMessage
end;

procedure TGetFirstEntityF.btnRemainsEarlyClick(Sender: TObject);
begin
  BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 0);
  with qry do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM RemainsEarly';
    SQL.Add('FROM RemainsEarly INNER JOIN');
    SQL.Add('Customers ON RemainsEarly.PersonID1 = Customers.CustID INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    SQL.Add('WHERE (RemainsEarly.YearID = ' + IntToStr(APPBank.Year) + ') ');
    BigMessage(IntToStr(ExecSQL) + ' حذف شد.', 2);
    SQL.Text := 'UPDATE Customers';
    SQL.Add('SET FirstBalance = 0');
    SQL.Add('FROM Customers INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    BigMessage(IntToStr(ExecSQL) + ' مانده ابتداي سال مشتريان صفر شد.', 2);
    BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 0);

    SQL.Text := 'INSERT INTO RemainsEarly';
    SQL.Add('(YearID, PersonID1, Rate, InfoKind, Note,');
    SQL.Add(' SellsEmporium, ArzRemain, ArzTypeID)');

    SQL.Add('SELECT R.YearID, R.PersonID1, R.Rate, R.InfoKind,');
    SQL.Add(' isnull(R.Note,'''') + '' فراخوانی'' AS Note,');
    SQL.Add(' R.SellsEmporium, R.ArzRemain, R.ArzTypeID');
    SQL.Add('FROM  ' + sitem.BankName + '.dbo.RemainsEarly AS R INNER JOIN');
    SQL.Add('Customers ON R.PersonID1 = Customers.CustID INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    SQL.Add('WHERE (R.YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    BigMessage(IntToStr(ExecSQL) + ' ثبت شد.', 2);

    CloseMessage;
  end; // with
end;

procedure TGetFirstEntityF.chklstGetCheckClick(Sender: TObject);
begin
  GetCheckList((Sender as TCheckListBox), btnGetCheck)
end;

procedure TGetFirstEntityF.chkMultiYareClick(Sender: TObject);
begin
  btnGetCheck.Visible := chkMultiYare.Checked;
end;

function TGetFirstEntityF.GetCheckList(ChkLstBox: TCheckListBox;
  btn: TBitBtn): String;
var
  i: Integer;
begin
  btn.Enabled := False;
  Result := '';
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    if ChkLstBox.Checked[i] then
    begin
      Result := Result + '1,';
      btn.Enabled := True;
    end
    else
      Result := Result + '0,';
  end;
  // Result:=LeftStr(Result,length(Result)-1);
end;

procedure TGetFirstEntityF.CheckExistsFirstEntity;
begin
  with qry do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) AS Expr1';
    SQL.Add('FROM Recipts');
    SQL.Add('WHERE (ReciptType = 1) AND (YearID = :YearID) AND (ServerID = :ServerID)');
    Parameters.ParamByName('ServerID').Value := opt.ServerID;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    if Fields[0].AsInteger > 0 then
      if get_response(' فرمهای موجودی اول دوره انبار در سیستم وجود دارند' +
        sLineBreak + 'آيا براي انتقال دوباره مطمئن هستيد؟') <> mrYes then
        Abort;
    Active := False;
  end;
end;

procedure TGetFirstEntityF.GetFirstEntityClick(Sender: TObject);
begin
  CheckExistsFirstEntity;
  BigMessageProgBar('در حال انتقال اطلاعات ...  ', 2);
  With spGetFirstEntity do
  begin
    ProcedureName := (Sender as TMenuItem).Hint;
    Parameters.Refresh;
    Parameters.ParamByName('@OldBankName').Value := sitem.BankName + '.dbo';
    Parameters.ParamByName('@YearNo').Value := APPBank.Year;
    Parameters.ParamByName('@ServerID').Value := opt.ServerID;
    Parameters.ParamByName('@YearID').Value := APPBank.Year;
    Parameters.ParamByName('@YearIDFrom').Value := sitem.Year;
    ExecProc;
    Active := False;
  end; // With
  CloseMessage;
  Warn('اطلاعات منتقل شد.‏', mtInformation);
end;

procedure TGetFirstEntityF.CallAllAccount(TypeDocs: string;
  GroupType12, AllYear: Boolean);
begin

  with qry do
  begin
    SQL.Text := 'INSERT INTO RemainsEarly';
    SQL.Add('(PersonID1, YearID, Rate, Note, InfoKind');

    if chkSellsEmporium.Checked then
      SQL.Add(', SellsEmporium');

    SQL.Add(', ArzRemain, ArzTypeID');

    SQL.Add(')SELECT yc.CustomerID1,');
    SQL.Add(IntToStr(APPBank.Year) + ' AS YearID,');
    SQL.Add('SUM(yc.bed - yc.bes) AS balance,');
    SQL.Add('''ابتداي سال انتقالي'' AS Note, 0 AS InfoKind');

    if chkSellsEmporium.Checked then
      SQL.Add(', yc.SellsEmporium');

    SQL.Add(',SUM(yc.Arzbed-yc.Arzbes) ArzRemain, yc.ArzTypeID');

    SQL.Add('FROM ' + sitem.BankName + '.dbo.AllAccount(' + TypeDocs +
      ', DEFAULT, DEFAULT, '''', DEFAULT, '''',');
    if AllYear then
    begin
      SQL.Add('0, ' + IntToStr(sitem.Year) +
        ', DEFAULT, DEFAULT, DEFAULT, DEFAULT ,DEFAULT ) AS yc INNER JOIN');
    end
    else
    begin
      SQL.Add(IntToStr(sitem.Year) + ', ' + IntToStr(sitem.Year) +
        ', DEFAULT, DEFAULT, DEFAULT, DEFAULT ,DEFAULT ) AS yc INNER JOIN');
    end;

    SQL.Add('dbo.Customers ON dbo.Customers.CustID = yc.CustomerID1 INNER JOIN');
    SQL.Add('dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID');
    if GroupType12 then
      SQL.Add('WHERE ( (dbo.CustomersGroup.GroupType IN (1, 2)))')
    else
      SQL.Add('WHERE (NOT (dbo.CustomersGroup.GroupType IN (1, 2)))');

    SQL.Add('GROUP BY yc.CustomerID1');

    if chkSellsEmporium.Checked then
      SQL.Add(', yc.SellsEmporium');
    SQL.Add(', yc.ArzTypeID');

  end;
end;

procedure TGetFirstEntityF.AllClick(AllYear: Boolean);
var
  FnName, GroupType: string;
  chkGroupType: Boolean;
begin
  chkGroupType := chkBank1.Checked or chkCash2.Checked or chkLoan7.Checked or
    chkSupplier17.Checked;
  GroupType := '-1';
  if chkBank1.Checked then
    GroupType := GroupType1 + ',1';
  if chkCash2.Checked then
    GroupType := GroupType2 + ',2';
  if chkLoan7.Checked then
    GroupType := GroupType7 + ',7';
  if chkSupplier17.Checked then
    GroupType := GroupType17 + ',17';

  BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 0);
  if AllYear then
    FnName := '.dbo.YearCustomerSellPrice'
  else
    FnName := '.dbo.YearCustomer';

  BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 0);
  with qry do
  begin
    Active := False;
    if chkMultiYare.Checked then
    begin
      SQL.Text := 'DELETE FROM RemainsEarly';
      SQL.Add('FROM RemainsEarly INNER JOIN');
      SQL.Add('Customers ON RemainsEarly.PersonID1 = Customers.CustID INNER JOIN');
      SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
      SQL.Add('WHERE (RemainsEarly.YearID = ' + IntToStr(APPBank.Year) + ') ');
      if not chkGroupType then
        SQL.Add('AND (NOT (CustomersGroup.GroupType IN (' + GroupType + ')))');

      BigMessage(IntToStr(ExecSQL) + ' حذف شد.', 2);

      SQL.Text := 'UPDATE Customers';
      SQL.Add('SET FirstBalance = 0');
      SQL.Add('FROM Customers INNER JOIN');
      SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
      if not chkGroupType then
        SQL.Add('WHERE (NOT (CustomersGroup.GroupType IN (' + GroupType
          + ')))');
      BigMessage(IntToStr(ExecSQL) + ' مانده ابتداي سال مشتريان صفر شد.', 2);

      BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 0);
      CallAllAccount('10, - 1, - 1, - 1', False, AllYear);
      BigMessage(IntToStr(ExecSQL) + ' ثبت شد.', 2);
      if chkGroupType then
      begin
        CallAllAccount('2,  1, 2, 10', True, AllYear);
        BigMessage(IntToStr(ExecSQL) + ' ثبت شد.', 2);
      end;

    end
    else
    begin
      // SQL.Text := 'UPDATE Customers';
      // SQL.Add('SET Customers.FirstBalance =isnull((SELECT ' + sitem.BankName +
      // FnName + '.balance');
      // SQL.Add('FROM ' + sitem.BankName + FnName);
      // SQL.Add('WHERE ' + sitem.BankName + FnName +
      // '.PersonID1 = Customers.CustID),0)');
      // SQL.Add('WHERE (CustID IN');
      // SQL.Add('(SELECT Customers_1.CustID');
      // SQL.Add('FROM Customers AS Customers_1 INNER JOIN');
      // SQL.Add('CustomersGroup ON Customers_1.CustomerGrpID = CustomersGroup.CustomerGrpID');
      // if not chkGroupType then
      // SQL.Add('WHERE (NOT (CustomersGroup.GroupType IN (' + GroupType
      // + ')))))');
      // IntToStr(ExecSQL) +
      BigMessage(' ثبت غیر فعال شده.', 2);
      // Warn(IntToStr(ExecSQL) + ' ثبت شد.', mtInformation);
    end;
    CloseMessage;
  end; // with
end;

procedure TGetFirstEntityF.N121Click(Sender: TObject);
begin
  AllClick(False);
  // BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 1);
  // with qry do
  // begin
  // Active := False;
  // if multiYare then
  // begin
  // SQL.Text := 'DELETE FROM RemainsEarly';
  // SQL.Add('WHERE (YearID = ' + IntToStr(APPBank.Year) + ')');
  // BigMessage(IntToStr(ExecSQL) + ' حذف شد.', 2);
  //
  // SQL.Text := 'UPDATE Customers';
  // SQL.Add('SET FirstBalance = 0');
  // SQL.Add('FROM Customers INNER JOIN');
  // SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
  // SQL.Add('WHERE (NOT (CustomersGroup.GroupType IN (1, 2)))');
  // BigMessage(IntToStr(ExecSQL) + ' مانده ابتداي سال مشتريان صفر شد.', 2);
  //
  // SQL.Text := 'INSERT INTO RemainsEarly';
  // SQL.Add('(PersonID1, YearID, Rate, Note, InfoKind, SellsEmporium)');
  //
  // SQL.Add('SELECT yc.CustomerID1,');
  // SQL.Add(IntToStr(APPBank.Year) + ' AS YearID,');
  // SQL.Add('SUM(yc.bed - yc.bes) AS balance,');
  // SQL.Add('''ابتداي سال انتقالي'' AS Note, 0 AS InfoKind, yc.SellsEmporium');
  // SQL.Add('FROM ' + sitem.BankName +
  // '.dbo.All Account(10, - 1, - 1, - 1, DEFAULT, DEFAULT, '''', DEFAULT, '''',');
  // SQL.Add(IntToStr(sitem.Year) + ', ' + IntToStr(sitem.Year) +
  // ', DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT) AS yc INNER JOIN');
  // SQL.Add('dbo.Customers ON dbo.Customers.CustID = yc.CustomerID1 INNER JOIN');
  // SQL.Add('dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID');
  // SQL.Add('WHERE (NOT (dbo.CustomersGroup.GroupType IN (1, 2)))');
  // SQL.Add('GROUP BY yc.CustomerID1, yc.SellsEmporium');
  //
  // end
  // else
  // begin
  // SQL.Text := 'UPDATE Customers';
  // SQL.Add('SET Customers.FirstBalance =isnull((SELECT ' + sitem.BankName +
  // '.dbo.YearCustomer.balance');
  // SQL.Add('FROM ' + sitem.BankName + '.dbo.YearCustomer');
  // SQL.Add('WHERE ' + sitem.BankName +
  // '.dbo.YearCustomer.PersonID1 = Customers.CustID),0)');
  // SQL.Add('WHERE (CustID IN');
  // SQL.Add('(SELECT Customers_1.CustID');
  // SQL.Add('FROM Customers AS Customers_1 INNER JOIN');
  // SQL.Add('CustomersGroup ON Customers_1.CustomerGrpID = CustomersGroup.CustomerGrpID');
  // SQL.Add('WHERE (NOT (CustomersGroup.GroupType IN (1, 2)))))');
  //
  // end;
  // Warn(IntToStr(ExecSQL) + ' ثبت شد.', mtInformation);
  // CloseMessage;
  // end; // with
end;

procedure TGetFirstEntityF.N21Click(Sender: TObject);
begin
  AllClick(True);
  // BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 1);
  // with qry do
  // begin
  // Active := False;
  // if multiYare then
  // begin
  // SQL.Text := 'DELETE FROM RemainsEarly';
  // SQL.Add('WHERE (YearID = ' + IntToStr(APPBank.Year) + ')');
  // BigMessage(IntToStr(ExecSQL) + ' حذف شد.', 2);
  //
  // SQL.Text := 'UPDATE Customers';
  // SQL.Add('SET FirstBalance = 0');
  // SQL.Add('FROM Customers INNER JOIN');
  // SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
  // SQL.Add('WHERE (NOT (CustomersGroup.GroupType IN (1, 2)))');
  // BigMessage(IntToStr(ExecSQL) + ' مانده ابتداي سال مشتريان صفر شد.', 2);
  //
  // SQL.Text := 'INSERT INTO RemainsEarly';
  // SQL.Add('(PersonID1, YearID, Rate, Note, InfoKind, SellsEmporium)');
  //
  // SQL.Add('SELECT yc.CustomerID1,');
  // SQL.Add(IntToStr(APPBank.Year) + ' AS YearID,');
  // SQL.Add('SUM(yc.bed - yc.bes) AS balance,');
  // SQL.Add('''ابتداي سال انتقالي'' AS Note, 0 AS InfoKind, yc.SellsEmporium');
  // SQL.Add('FROM ' + sitem.BankName +
  // '.dbo.All Account(10, - 1, - 1, - 1, DEFAULT, DEFAULT, '''', DEFAULT, '''',');
  // SQL.Add('0, ' + IntToStr(sitem.Year) +
  // ', DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT) AS yc INNER JOIN');
  // SQL.Add('dbo.Customers ON dbo.Customers.CustID = yc.CustomerID1 INNER JOIN');
  // SQL.Add('dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID');
  // SQL.Add('WHERE (NOT (dbo.CustomersGroup.GroupType IN (1, 2)))');
  // SQL.Add('GROUP BY yc.CustomerID1, yc.SellsEmporium');
  //
  // end
  // else
  // begin
  // SQL.Text := 'UPDATE Customers';
  // SQL.Add('SET Customers.FirstBalance =isnull((SELECT ' + sitem.BankName +
  // '.dbo.YearCustomerSellPrice.balance');
  // SQL.Add('FROM ' + sitem.BankName + '.dbo.YearCustomerSellPrice');
  // SQL.Add('WHERE ' + sitem.BankName +
  // '.dbo.YearCustomerSellPrice.PersonID1 = Customers.CustID),0)');
  // SQL.Add('WHERE (CustID IN');
  // SQL.Add('(SELECT Customers_1.CustID');
  // SQL.Add('FROM Customers AS Customers_1 INNER JOIN');
  // SQL.Add('CustomersGroup ON Customers_1.CustomerGrpID = CustomersGroup.CustomerGrpID');
  // SQL.Add('WHERE (NOT (CustomersGroup.GroupType IN (1, 2)))))');
  // end;
  // Warn(IntToStr(ExecSQL) + ' ثبت شد.', mtInformation);
  // CloseMessage;
  // end; // with
end;

procedure TGetFirstEntityF.cmbYearChange(Sender: TObject);
begin
  sitem.Year := Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
end;

procedure TGetFirstEntityF.cmbAllEnter(Sender: TObject);
begin
  (Sender as TComboBox).DroppedDown := True;
end;

end.
