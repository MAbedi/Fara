unit RequestCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, StrUtils, sndkey32,
  Mask, DBCtrls, Grids, DBGrids, Dm, DB, ADODB, searchCode_L1_L2,
  FaraConsts, MMESSAGE, GlobalPro, System.ImageList, System.Actions;

type
  TRequestCashF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    qryRequest: TADOQuery;
    srcRequest: TDataSource;
    qryLookUp: TADOQuery;

    qryRequestRequestID: TIntegerField;
    qryRequestBudgetID: TIntegerField;
    qryRequestBudgetItemID: TIntegerField;
    qryRequestNote_L1: TStringField;
    qryRequestNote_L2: TStringField;
    qryRequestFormID: TIntegerField;
    qryRequestYearID: TIntegerField;
    qryRequestServerID: TIntegerField;
    qryRequest_CompanyName: TStringField;
    qryRequest_CashType: TIntegerField;
    qryRequest_Amount: TCurrencyField;
    qryLookUpCustomers: TADOQuery;
    Panel4: TPanel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel5: TPanel;
    DBMemo1: TDBMemo;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn3: TBitBtn;
    qry_Forms: TADOQuery;
    qry_FormItems: TADOQuery;
    qryRequestPayType: TWordField;
    qryRequestPrice: TBCDField;
    src_Forms: TDataSource;
    qry_FormsFormID: TIntegerField;
    qry_FormsFormType: TWordField;
    qry_FormsFormNumber: TIntegerField;
    qry_FormsFormDate: TStringField;
    qry_FormsCustomerID1: TIntegerField;
    qry_FormsCustomerID2: TIntegerField;
    qry_FormsCustomerID3: TIntegerField;
    qry_FormsAmount: TBCDField;
    qry_FormsFomNote: TStringField;
    qry_FormsFormState: TWordField;
    qry_FormsFirstUser: TStringField;
    qry_FormsLastUser: TStringField;
    qry_FormsModifyDate: TDateTimeField;
    qry_FormsServerID: TIntegerField;
    qry_FormsYearID: TIntegerField;
    qry_FormsSellsEmporium: TIntegerField;
    qry_FormsCostFactorsType: TWordField;
    qry_FormsCostFactorsCode: TStringField;
    pnlNew: TPanel;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    pnlOk: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    src_FormItems: TDataSource;
    qry_FormItemsFormItemID: TIntegerField;
    qry_FormItemsFormID: TIntegerField;
    qry_FormItemsRow: TIntegerField;
    qry_FormItemsCustomerID2: TIntegerField;
    qry_FormItemsItemAmount: TBCDField;
    qry_FormItemsItemNote: TStringField;
    qry_FormItemsFirstUser: TStringField;
    qry_FormItemsLastUser: TStringField;
    qry_FormItemsCheckState: TWordField;
    qry_FormItemsServerID: TIntegerField;
    qry_FormItemsYearID: TIntegerField;
    qry_FormItems_CustName: TStringField;
    qry_Forms_CompanyName: TStringField;
    qry_Forms_CustName: TStringField;
    qryRequestCompanyID: TIntegerField;
    Label7: TLabel;
    _BudgetType: TADOQuery;
    qrylookupReciptType: TWordField;
    qrylookupReciptCaption: TStringField;
    srcBudgetType: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    procedure qryRequestPayTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryRequestPayTypeSetText(Sender: TField; const Text: string);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qry_FormItemsCheckStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qry_FormItemsCheckStateSetText(Sender: TField;
      const Text: string);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qry_FormsAfterInsert(DataSet: TDataSet);
    procedure qry_FormsAfterEdit(DataSet: TDataSet);
    procedure qryRequestAfterInsert(DataSet: TDataSet);
    procedure qry_FormItemsAfterInsert(DataSet: TDataSet);
    procedure qry_FormItemsAfterEdit(DataSet: TDataSet);
    procedure qry_FormsAfterPost(DataSet: TDataSet);
    procedure src_FormsStateChange(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure qry_FormsCostFactorsTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qry_FormsCostFactorsTypeSetText(Sender: TField;
      const Text: string);
    procedure qry_FormsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_FormsBeforePost(DataSet: TDataSet);
    procedure qry_FormsAfterCancel(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryRequestBeforePost(DataSet: TDataSet);
    procedure qry_FormItemsBeforePost(DataSet: TDataSet);
  private
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequestCashF: TRequestCashF;
  FormType: Integer;

implementation

{$R *.dfm}

procedure TRequestCashF.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies ';
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    if not(qry_Forms.State in [dsedit]) then
      qry_Forms.Edit;
    qry_Forms['SellsEmporium'] := Results[0];
  end; // if
end;

procedure TRequestCashF.BitBtn2Click(Sender: TObject);
var
  Txt: string;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT CustID, CustName, CustName_L2  FROM  Customers where CustID<>0';
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'اشخاص', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    if not(qry_Forms.State in [dsedit]) then
      qry_Forms.Edit;
    qry_Forms['CustomerID2'] := Results[0];
  end;
end;

procedure TRequestCashF.BitBtn3Click(Sender: TObject);
var
  sqlText: string;
  CostType: Integer;
  Results: array [0 .. 5] of String;
begin
  inherited;
  sqlText :=
    Format(' select recipts.reciptnumber, stores.c_storename, customers.custname,'
    + ' Ltrim(recipts.yearid) +''_''+ Ltrim(recipts.serverid) +''_''+ Ltrim(recipts.reciptid) as KeyID,'
    + ' stores.c_storename +''_''+ customers.custname + case when ((lookups.name is not null) and (lookups.name<>''''))'
    + ' then ''_''+ lookups.name else '''' end as Caption' +
    ' from customers inner join recipts on customers.custid = recipts.personid1 inner join stores'
    + ' on recipts.storeid = stores.n_storeid left outer join lookups' +
    ' on recipts.secondtype = lookups.lookupid where (recipts.yearid =%d)and(recipts.recipttype =%d)',
    [APPBank.Year, qry_FormsCostFactorsType.AsInteger]);
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'عامل هزینه', sqlText,
    ['کد', 'نام ', 'caption', '', ''], Results, [80, 200, 200, 0, 0],
    alLeft) then
    qry_FormsCostFactorsCode.AsString := Results[3];
end;

procedure TRequestCashF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn1.Click;
end;

procedure TRequestCashF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn2.Click;
end;

procedure TRequestCashF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn3.Click;
end;

procedure TRequestCashF.DBGrid1EditButtonClick(Sender: TObject);
var
  Txt: string;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  if not(qry_Forms.State in dsEditModes) then
    Exit;
  if not((Sender as TDBGrid).DataSource.State in dsEditModes) then
    (Sender as TDBGrid).DataSource.Edit;
  if (Sender as TDBGrid).SelectedIndex = 0 then
  begin
    Txt := 'SELECT CustID, CustName, CustName_L2  FROM  dbo.Customers where CustID<>0';
    s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'اشخاص', Txt,
      ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
    if s then
    begin
      if not(qry_FormItems.State in [dsedit]) then
        qry_FormItems.Edit;
      qry_FormItems['CustomerID2'] := Results[0];
    end;
  end;
end;

procedure TRequestCashF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  gridkeyenter(Sender, Key);
end;

procedure TRequestCashF.DBGrid2EditButtonClick(Sender: TObject);
var
  i: Integer;
  sqlText: string;
  Results: array [0 .. 6] of string;
begin
  inherited;
  if not(qry_Forms.State in dsEditModes) then
    Exit;
  if not((Sender as TDBGrid).DataSource.State in dsEditModes) then
    (Sender as TDBGrid).DataSource.Edit;
  i := (Sender as TDBGrid).SelectedIndex;
  case i of
    0:
      begin
        sqlText :=
          ' SELECT Acc.Budgets.BudgetID, Acc.Budgets.BudgetSerial, Acc.Budgets.BudgetDate, Acc.Interfaces.InterfaceCaption_L1, '
          + ' Acc.Budgets.CompanyCode,' +
          ' CASE WHEN Acc.Budgets.Status = 3 THEN ''تاييد شده'' END AS Status '
          + ' FROM Acc.Budgets INNER JOIN' +
          ' Acc.Interfaces ON Acc.Budgets.InterfaceID = Acc.Interfaces.InterfaceID '
          + ' WHERE (Acc.Interfaces.BudgetEffect = 2) AND (Acc.Budgets.Status = 3) ';
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'تعهدات تایید شده',
          sqlText, ['', 'شماره تهعد', 'تاریخ', 'نوع تعهد', 'واحد اجرایی',
          'وضعیت'], Results, [0, 70, 30, 100, 65, 100], alLeft) then
          qryRequestBudgetID.AsInteger := StrToInt(Results[0]);
      end;
    1:
      begin
        sqlText :=
          Format(' SELECT Acc.BudgetItems.BudgetItemID, Acc.BudgetItems.BudgetTopicID, Acc.BudgetItems.Bed, CASE'
          + ' Acc.BudgetItems.Cashtype WHEN 1 THEN ''نقدي'' WHEN 2 THEN ''غيرنقدي'' END AS Cashtype,'
          + ' Acc.BudgetItems.CompanyCode, CASE Acc.BudgetItems.CostType WHEN 1 THEN ''سفارشات'' WHEN 2 THEN '''
          + ' رسيد انبار'' WHEN 3 THEN ''قرارداد'' END AS CostType, Customers.CustName'
          + ' FROM Acc.BudgetItems LEFT OUTER JOIN' +
          ' Customers ON Acc.BudgetItems.CustomerID = Customers.CustID ' +
          ' WHERE (Acc.BudgetItems.Bes = 1) AND (Acc.BudgetItems.Ctype = 1) AND (Acc.BudgetItems.BudgetID = %d)',
          [qryRequestBudgetID.AsInteger]);
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'ردیف تعهد',
          sqlText, ['', 'کد بودجه', 'مبلغ', 'نوع مبلغ', 'واحد اجرایی',
          'نوع عامل هزینه', 'نام مشتری'], Results, [0, 60, 5, 60, 65, 80, 180],
          alLeft) then
          qryRequestBudgetItemID.AsInteger := StrToInt(Results[0]);
      end;
  end;

end;

procedure TRequestCashF.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TRequestCashF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TRequestCashF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with _BudgetType do
  begin
    Close;
    SQL.Text := StringReplace(SQL.Text, '$', opta.BudgetType, [rfReplaceAll]);
    Open;
  end;
  with qry_Forms do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    // Parameters.ParamByName('CompanyID').Value := opta.DefaultCompany;  --AND (SellsEmporium = :CompanyID)
    Parameters.ParamByName('ServerID').Value := opta.BsellServerID;
    Parameters.ParamByName('FormType').Value := FormType;
    Open;
    Last;
  end;
end;

procedure TRequestCashF.qryRequestAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('YearID').AsInteger := qry_FormsYearID.AsInteger;
  DataSet.FieldByName('ServerID').AsInteger := qry_FormsServerID.AsInteger;
  DataSet.FieldByName('FormID').AsInteger := qry_FormsFormID.AsInteger;
  DataSet.FieldByName('CompanyID').AsInteger := opta.DefaultCompany;
end;

procedure TRequestCashF.qryRequestBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qryRequestBudgetID.AsString = EmptyStr) and
    (DataSet.State = dsInsert) then
  begin
    DataSet.Cancel;
    DBGrid1.SelectedIndex := 0;
    Abort;
  end;
end;

procedure TRequestCashF.qryRequestPayTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'چک';
    2:
      Text := 'وجه نقد';
    3:
      Text := 'تهاتر';
  end;
end;

procedure TRequestCashF.qryRequestPayTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'چک' then
    Sender.AsInteger := 1;

  if Text = 'وجه نقد' then
    Sender.AsInteger := 2;

  if Text = 'تهاتر' then
    Sender.AsInteger := 3;
end;

procedure TRequestCashF.qry_FormItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TRequestCashF.qry_FormItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormItemID').AsInteger :=
    GetANewCode
    ('',Format('select max(FormItemID) from dbo.FormItems where (YearID = %d) AND'
    + ' (ServerID = %d) and (FormID = %d)', [APPBank.Year, opta.BsellServerID,
    qry_FormsFormID.AsInteger]), 'FormItemID',dmf.adcAccounting);
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('YearID').AsInteger := qry_FormsYearID.AsInteger;
  DataSet.FieldByName('ServerID').AsInteger := qry_FormsServerID.AsInteger;
  DataSet.FieldByName('FormID').AsInteger := qry_FormsFormID.AsInteger;
  DataSet.FieldByName('row').AsInteger := Abs(DataSet.RecNo);
end;

procedure TRequestCashF.qry_FormItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(qry_FormItems_CustName.AsString) = '' then
  begin
    DataSet.Cancel;
    Abort;
  end;

end;

procedure TRequestCashF.qry_FormItemsCheckStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'خیر';
    1:
      Text := 'بله';
  end;
end;

procedure TRequestCashF.qry_FormItemsCheckStateSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'خیر' then
    Sender.AsInteger := 0
  else if Text = 'بله' then
    Sender.AsInteger := 1;
end;

procedure TRequestCashF.qry_FormsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryRequest.CancelBatch;
  qry_FormItems.CancelBatch;
end;

procedure TRequestCashF.qry_FormsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
end;

procedure TRequestCashF.qry_FormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Amount').AsInteger := 0;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('CostFactorsType').AsInteger := 1;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('ServerID').AsInteger := opta.BsellServerID;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('FormID').AsInteger :=
    GetANewCode
    ('',Format('select max(FormID) from dbo.Forms where (YearID = %d) AND (ServerID = %d)',
    [APPBank.Year, opta.BsellServerID]), 'FormID',dmf.adcAccounting);
  DataSet.FieldByName('FormNumber').AsInteger :=
    GetANewCode
    ('',Format('select max(FormNumber) from dbo.Forms where (YearID = %d) AND (ServerID = %d)'
    + ' and (FormType = 100)', [APPBank.Year, opta.BsellServerID]),
    'FormNumber',dmf.adcAccounting);
  DBEdit3.SetFocus;
end;

procedure TRequestCashF.qry_FormsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryRequest.UpdateBatch;
  qry_FormItems.UpdateBatch;
  BigMessage('ثبت شد', 1);
end;

procedure TRequestCashF.qry_FormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRequest, Parameters do
  begin
    Close;
    ParamByName('FormID').Value := qry_FormsFormID.AsInteger;
    ParamByName('YearID').Value := qry_FormsYearID.AsInteger;
    ParamByName('ServerID').Value := qry_FormsServerID.AsInteger;
    Open;
  end;
  with qry_FormItems, Parameters do
  begin
    Close;
    ParamByName('FormID').Value := qry_FormsFormID.AsInteger;
    ParamByName('YearID').Value := qry_FormsYearID.AsInteger;
    ParamByName('ServerID').Value := qry_FormsServerID.AsInteger;
    Open;
  end;
end;

procedure TRequestCashF.qry_FormsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryRequest.State in dsEditModes then
    if Trim(qryRequestBudgetID.AsString) <> '' then
      qryRequest.Post
    else
      qryRequest.Cancel;

  with qry_FormItems do
  begin
    if State in dsEditModes then
      if Trim(qry_FormItems_CustName.AsString) <> '' then
        Post
      else
        Cancel;
  end;

end;

procedure TRequestCashF.qry_FormsCostFactorsTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'سفارشات';
    2:
      Text := 'رسید انبار';
    3:
      Text := 'قرارداد';

  end;
end;

procedure TRequestCashF.qry_FormsCostFactorsTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;

  if Text = 'سفارشات' then
    Sender.AsInteger := 1
  else if Text = 'رسید انبار' then
    Sender.AsInteger := 2
  else if Text = 'قرارداد' then
    Sender.AsInteger := 3;
end;

procedure TRequestCashF.src_FormsStateChange(Sender: TObject);
begin
  inherited;
  pnlNew.Visible := not(qry_Forms.State in dsEditModes);
  pnlOk.Visible := not pnlNew.Visible;
  BtnReject.Cancel := pnlNew.Visible;
end;

procedure TRequestCashF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  aGrid: TDBGrid;
begin
  aGrid := (Sender as TDBGrid);
  curIndex := aGrid.SelectedIndex;
  nextIndex := curIndex;

  case Key of
    #13:
      begin
        Key := #0;
        aDataSet := aGrid.DataSource.DataSet;
        case curIndex of
          0:
            if aDataSet.FindField('BudgetID') <> nil then
            begin
              if Trim(aDataSet.FindField('BudgetID').AsString) = '' then
                nextIndex := 0
              else
                nextIndex := 1;
            end
            else
              nextIndex := 1;

          1:
            if aDataSet.FindField('BudgetItemID') <> nil then
            begin
              if Trim(aDataSet.FieldByName('BudgetItemID').AsString) = '' then
                Exit
              else
                nextIndex := 2;
            end
            else
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
        end;
      end;

    #32:
      begin
        if aGrid.HelpContext = 0 then
          if curIndex in [0, 1] then
          begin
            Key := #0;
            DBGrid2EditButtonClick(Sender);
          end;
        if aGrid.HelpContext = 1 then
          if curIndex = 0 then
          begin
            Key := #0;
            DBGrid1EditButtonClick(Sender);
          end;
      end;
  end;

  if nextIndex >= 0 then
    while (nextIndex < aGrid.Columns.Count) and
      (not(aGrid.Columns[nextIndex].Visible) OR
      (aGrid.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);

  if nextIndex <> curIndex then
  begin
    if (nextIndex > aGrid.Columns.Count - 1) then
      nextIndex := -1;
    if nextIndex = -1 then
    begin
      sendkey(VK_DOWN, [], false);
      aGrid.SelectedIndex := 0;
      Exit;
    end;
    aGrid.SelectedIndex := nextIndex;
  end;

  if ((nextIndex = 5) and (aGrid.HelpContext = 0)) or
    ((nextIndex = 4) and (aGrid.HelpContext = 1)) then
  begin
    aGrid.EditorMode := True;
    keybd_event(VK_MENU, MapVirtualKey(VK_MENU, 0), 0, 0);
    keybd_event(VK_DOWN, MapVirtualKey(VK_DOWN, 0), 0, 0);
    keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
    keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
  end;
end;

end.
