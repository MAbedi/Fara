unit RequestCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DM, Grids,
  Vcl.DBGrids, DB, ADODB, searchCode2_ADO, searchCode_ADO, sndkey32, MMESSAGE,
  GlobalPro, sort2, search2, System.Actions;

type
  TRequestCashF = class(TTemplate4F)
    qryRequest: TADOQuery;
    qryRequestRequestID: TIntegerField;
    qryRequestBudgetID: TIntegerField;
    qryRequestBudgetItemID: TIntegerField;
    qryRequestPayType: TWordField;
    qryRequestPrice: TBCDField;
    qryRequestNote_L1: TStringField;
    qryRequestNote_L2: TStringField;
    qryRequestFormID: TIntegerField;
    qryRequestYearID: TIntegerField;
    qryRequestServerID: TIntegerField;
    qryRequestCompanyID: TIntegerField;
    qryRequest_CompanyName: TStringField;
    qryRequest_CashType: TIntegerField;
    qryRequest_Amount: TCurrencyField;
    srcRequest: TDataSource;
    qryLookUp: TADOQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    pnlOk: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlNew: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetDelete1: TDataSetDelete;
    qryCompanies: TADOQuery;
    qryRequest_CompanyID: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSearch_: TAction;
    actSort: TAction;
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryRequestBeforePost(DataSet: TDataSet);
    procedure qryRequestAfterInsert(DataSet: TDataSet);
    procedure srcRequestStateChange(Sender: TObject);
    procedure qryRequestBeforeDelete(DataSet: TDataSet);
    procedure MyGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure MySetText(Sender: TField; const Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
  private
    qry_Forms: TADOQuery;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    procedure enter(qryForms: TADOQuery);
    { Public declarations }
  end;

var
  RequestCashF: TRequestCashF;

implementation

{$R *.dfm}

procedure TRequestCashF.enter(qryForms: TADOQuery);
begin
  if qryForms.State in dsEditModes then
  begin
    Warn('ایتدا فرم جاری تایید شود.');
    Exit;
  end;
  RequestCashF := TRequestCashF.Create(Application);
  with RequestCashF do
  begin
    try
      qry_Forms := qryForms;
      with qryRequest, Parameters do
      begin
        Close;
        ParamByName('FormID').Value := qryForms.FieldByName('FormID').AsInteger;
        ParamByName('YearID').Value := qryForms.FieldByName('YearID').AsInteger;
        ParamByName('ServerID').Value := qryForms.FieldByName('ServerID')
          .AsInteger;
        Open;
      end;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TRequestCashF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRequestCashF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 8, True);
end;

procedure TRequestCashF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRequest);
end;

procedure TRequestCashF.actSortExecute(Sender: TObject);
begin
  inherited;
  Sort2F.ShowSort(qryRequest);
end;

procedure TRequestCashF.DBGrid1EditButtonClick(Sender: TObject);
var
  i: Integer;
  sqlText: string;
  Results: array [0 .. 6] of string;
begin
  inherited;
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
        if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'تعهدات تایید شده',
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
        if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'ردیف تعهد', sqlText,
          ['', 'کد بودجه', 'مبلغ', 'نوع مبلغ', 'واحد اجرایی', 'نوع عامل هزینه',
          'نام مشتری'], Results, [0, 60, 5, 60, 65, 80, 180], alLeft) then
          qryRequestBudgetItemID.AsInteger := StrToInt(Results[0]);
      end;
  end;

end;

procedure TRequestCashF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TRequestCashF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
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
          8:
            nextIndex := 9;
          9:
            nextIndex := -1;

        end;
      end;

    #32:
      begin
        Key := #0;
        if aGrid.HelpContext = 0 then
          if curIndex in [0, 1] then
            DBGrid1EditButtonClick(Sender);
        if aGrid.HelpContext = 1 then
          if curIndex = 0 then
            DBGrid1EditButtonClick(Sender);
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
      sendkey(VK_DOWN, [], False);
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

procedure TRequestCashF.qryRequestAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormID').AsInteger := qry_Forms.FieldByName('FormID')
    .AsInteger;
  DataSet.FieldByName('YearID').AsInteger := qry_Forms.FieldByName('YearID')
    .AsInteger;
  DataSet.FieldByName('ServerID').AsInteger := qry_Forms.FieldByName('ServerID')
    .AsInteger;
end;

procedure TRequestCashF.qryRequestBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
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

procedure TRequestCashF.MyGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  INX: Shortint;
begin
  inherited;
  INX := ColumnIndexByFieldName(DBGrid1, Sender.FieldName);
  if INX <> -1 then
    Text := DBGrid1.Columns[INX].PickList[Sender.AsInteger]
end;

procedure TRequestCashF.MySetText(Sender: TField; const Text: String);
var
  INX: Shortint;
begin
  inherited;
  INX := ColumnIndexByFieldName(DBGrid1, Sender.FieldName);
  if INX <> -1 then
    Sender.AsInteger := DBGrid1.Columns[INX].PickList.IndexOf(Text)
end;

procedure TRequestCashF.srcRequestStateChange(Sender: TObject);
begin
  inherited;
  pnlNew.Visible := not(qryRequest.State in dsEditModes);
  pnlOk.Visible := not pnlNew.Visible;
  btnClose.Cancel := pnlNew.Visible;
end;

end.
