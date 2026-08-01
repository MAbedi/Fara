unit RptBudget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, ADODB, SumDBGrid, Grids, DBGrids, StdCtrls, CheckLst, ImgList,
  DBActns, ActnList, Buttons, ExtCtrls, DBCtrls, ppParameter, Menus, filter_ADO,
  Dm, FilterClass_ADO, GlobalPro, StrUtils, sort2, search2, ComCtrls;

type
  TRptBudgetF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    CheckListBox2: TCheckListBox;
    GroupBox2: TGroupBox;
    CheckListBox3: TCheckListBox;
    GroupBox3: TGroupBox;
    CheckListBox1: TCheckListBox;
    GroupBox4: TGroupBox;
    CheckListBox4: TCheckListBox;
    DBGrid1: TDBGrid;
    qryBudgets: TADOQuery;
    srcBudgets: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn1: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    actFilter: TAction;
    actSendToExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    PopOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actSort: TAction;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    actQryFiltering: TAction;
    qryBudgetsBudgetID: TIntegerField;
    qryBudgetsBudgetDate: TStringField;
    qryBudgetsBudgetTopicID: TIntegerField;
    qryBudgetsBed: TBCDField;
    qryBudgetsBes: TSmallintField;
    qryBudgetsCustomerID: TIntegerField;
    qryBudgetsCashtype: TWordField;
    qryBudgetsCompanyCode: TIntegerField;
    qryBudgetsCtype: TWordField;
    qryBudgetsCostCode: TStringField;
    qryBudgetsStatus: TWordField;
    qryBudgetsBudgetSerial: TIntegerField;
    _qryCompony: TADOQuery;
    _qryBudject: TADOQuery;
    _qryCustomers: TADOQuery;
    _qryCustomersCustID: TIntegerField;
    _qryCustomersCustName: TStringField;
    _qryCost: TADOQuery;
    _qryCostKeyID: TStringField;
    _qryCostreciptnumber: TIntegerField;
    _qryCostCaption: TStringField;
    qryBudgets_BudgetName: TStringField;
    qryBudgets_CompanyName: TStringField;
    qryBudgets_CustomerName: TStringField;
    qryBudgetsCostType: TWordField;
    Button1: TButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actQryFilteringExecute(Sender: TObject);
    procedure CheckListBox2ClickCheck(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryBudgetsCtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBudgetsCostTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBudgetsCashtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBudgetsBesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBudgetsStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    QryFilterString: string;
    MyStr: array [0 .. 3] of string;
    procedure UpdateFilter(Sender: TObject);
    procedure UpdateStatusLable;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBudgetF: TRptBudgetF;

implementation

{$R *.dfm}

procedure TRptBudgetF.actFilterExecute(Sender: TObject);
var
  mehdi: string;
begin
  inherited;
  mehdi := Sender.ClassName;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(Dmf.adcAccounting, 'CostType', 'عامل هزینه', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT State, CASE State WHEN 1 THEN ''سفارشات'' WHEN 2 THEN ''رسید انبار'' WHEN 3 THEN ''قرارداد ها'' END'
        + ' AS StateName FROM ( SELECT 1 AS State UNION SELECT 2 UNION SELECT 3) AS Temp'
        + ' ORDER BY State');

      if (Sender is TAction) then
        AddItem(Dmf.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM UTil.maliYear');

      AddItem(Dmf.adcAccounting, 'BudgetDate', 'تاريخ فرم', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'select min(BudgetDate),max(BudgetDate) from acc.Budgets');

      AddItem(Dmf.adcAccounting, 'CustID', 'شخص', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT  CustID, CustName FROM  dbo.Customers  ',
        'Select Min(CustomerID),max(CustomerID) from acc.BudgetItems');

      AddItem(Dmf.adcAccounting, 'CompanyCode', 'محل تامین', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
        'Select Min(CompanyCode),max(CompanyCode) from acc.BudgetItems');

      AddItem(Dmf.adcAccounting, 'BudgetTopicID', 'کد بودجه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'select BudgetTopicID,BudgetCaption_L1,BudgetCaption_L2 from acc.BudgetTopics',
        'select min(BudgetTopicID),max(BudgetTopicID) from acc.BudgetItems');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter(Sender);
      end;
    finally
      Free;
    end;
end;

procedure TRptBudgetF.UpdateFilter(Sender: TObject);
begin
  with qryBudgets do
  begin
    Close;

    Parameters.ParamByName('budgetidFrom').value :=
      GetcFrom(myParams.ParamValues['BudgetTopicID'], ftInteger);
    Parameters.ParamByName('budgetidTo').value :=
      GetcTo(myParams.ParamValues['BudgetTopicID'], ftInteger);

    Parameters.ParamByName('CompanyFrom').value :=
      GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
    Parameters.ParamByName('CompanyTo').value :=
      GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);

    Parameters.ParamByName('custidFrom').value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('custidTo').value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);

    Parameters.ParamByName('DateFrom').value :=
      GetcFrom(myParams.ParamValues['BudgetDate'], ftDate);
    Parameters.ParamByName('DateTo').value :=
      GetcTo(myParams.ParamValues['BudgetDate'], ftDate);

    Parameters.ParamByName('CostType').value :=
      GetcFrom(myParams.ParamValues['CostType'], ftString);

    if (Sender is TAction) then
    begin
      Parameters.ParamByName('yearidFrom').value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('yearidTo').value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('yearidFrom').value := APPBank.Year;
      Parameters.ParamByName('yearidTo').value := APPBank.Year;
    end;

    try
      Open;
    finally
      UpdateStatusLable;
    end;
  end;
end;

procedure TRptBudgetF.actOtherExecute(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptBudgetF.actQryFilteringExecute(Sender: TObject);
var
  B: Boolean;
  i: Integer;
  AmountStr, EfficacyStr, CreditStr, StatusStr: string;
begin
  inherited;
  case (Sender as TCheckListBox).Tag of
    0:
      begin
        AmountStr := '';
        B := True;
        for i := 0 to (Sender as TCheckListBox).Count - 1 do
          if (Sender as TCheckListBox).Checked[i] then
            if AmountStr <> '' then
              AmountStr := AmountStr + ' or CashType=' + IntToStr(i + 1)
            else
              AmountStr := 'CashType=' + IntToStr(i + 1)
          else
            B := False;

        if B then
          AmountStr := '';

        MyStr[0] := AmountStr;
      end;

    1:
      begin
        EfficacyStr := '';
        B := True;
        for i := 0 to (Sender as TCheckListBox).Count - 1 do
          if (Sender as TCheckListBox).Checked[i] then
            if EfficacyStr <> '' then
              EfficacyStr := EfficacyStr + ' or bes=' + ifthen(i = 0, '1', '-1')
            else
              EfficacyStr := 'bes=' + ifthen(i = 0, '1', '-1')
          else
            B := False;

        if B then
          EfficacyStr := '';

        MyStr[1] := EfficacyStr;
      end;

    2:
      begin
        CreditStr := '';
        B := True;
        for i := 0 to (Sender as TCheckListBox).Count - 1 do
          if (Sender as TCheckListBox).Checked[i] then
            if CreditStr <> '' then
              CreditStr := CreditStr + ' or CType=' + IntToStr(i + 1)
            else
              CreditStr := 'CType=' + IntToStr(i + 1)
          else
            B := False;

        if B then
          CreditStr := '';

        MyStr[2] := CreditStr;
      end;

    3:
      begin
        StatusStr := '';
        B := True;
        for i := 0 to (Sender as TCheckListBox).Count - 1 do
          if (Sender as TCheckListBox).Checked[i] then
            if StatusStr <> '' then
              StatusStr := StatusStr + ' or Status=' + IntToStr(i + 1)
            else
              StatusStr := 'Status=' + IntToStr(i + 1)
          else
            B := False;

        if B then
          StatusStr := '';

        MyStr[3] := StatusStr;
      end;
  end;
  QryFilterString := '';
  for i := 0 to Length(MyStr) - 1 do
    if MyStr[i] <> '' then
      QryFilterString := QryFilterString + ' and ' + MyStr[i];
  if QryFilterString <> '' then
    QryFilterString := Copy(QryFilterString, 5, Length(QryFilterString));
  qryBudgets.Filter := QryFilterString;
  qryBudgets.Filtered := True;
  UpdateStatusLable;
end;

procedure TRptBudgetF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgets);
end;

procedure TRptBudgetF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptBudgetF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgets);
end;

procedure TRptBudgetF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  actFilterExecute(Sender);
end;

procedure TRptBudgetF.CheckListBox2ClickCheck(Sender: TObject);
begin
  inherited;
  actQryFilteringExecute(Sender);
end;

procedure TRptBudgetF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptBudgetF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True);
end;

procedure TRptBudgetF.FormShow(Sender: TObject);
begin
  inherited;
  QryFilterString := '';
  try
    actFilterExecute(Sender);
  finally
    if myParams.FindParam('BudgetDate') = nil then
      Close;
  end;
end;

procedure TRptBudgetF.qryBudgetsBesGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی'
  end;
end;

procedure TRptBudgetF.qryBudgetsCashtypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی'
  end;
end;

procedure TRptBudgetF.qryBudgetsCostTypeGetText(Sender: TField;
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

procedure TRptBudgetF.qryBudgetsCtypeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'اعتباری';
    2:
      Text := 'فاقد اعتبار'
  end;
end;

procedure TRptBudgetF.qryBudgetsStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    2:
      Text := 'بررسی شده';
    1:
      Text := 'بررسی نشده';
    3:
      Text := 'تایید شده';
  end;
end;

procedure TRptBudgetF.UpdateStatusLable;
var
  SumBed: Currency;
begin
  inherited;
  Label2.Caption := IntToStr(qryBudgets.RecordCount);
  with qryBudgets do
    try
      SumBed := 0;
      DisableControls;
      First;
      while not Eof do
      begin
        SumBed := SumBed + qryBudgetsBed.AsCurrency;
        Next;
      end;
    finally
      Label4.Caption := CurrToStr(SumBed);
      EnableControls;
    end;
end;

end.
