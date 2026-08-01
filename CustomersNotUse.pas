unit CustomersNotUse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, DBCtrls, Mask, Menus, System.Actions, ToolCtrlsEh, DBGridEhToolCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, DBGridEhGrouping,
  DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCustomersNotUseF = class(TTemplate4F)
    srcCustomers: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    edtCustID: TDBEdit;
    grd1: TCedarDbgrid;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    qryCustomersModifyDate: TDateTimeField;
    actDeleteAll: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure qryCustomers1AfterEdit(DataSet: TDataSet);
    procedure qryCustomers1BeforeDelete(DataSet: TDataSet);
    procedure actDeleteAllExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomersNotUseF: TCustomersNotUseF;

implementation

uses DM, GlobalPro, MMESSAGE;

{$R *.dfm}

procedure TCustomersNotUseF.actDeleteAllExecute(Sender: TObject);
var
  i: Integer;
begin
  if grd1.SelectedRows.Count > 0 then
    if get_response('آيا براي حذف نمودن سطر‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  try
    qryCustomers.DisableControls;
    qryCustomers.BeforeDelete:=nil;
    with grd1.DataSource.DataSet do
      for i := 0 to grd1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grd1.SelectedRows.Items[i]));
        qryCustomers.Delete;
      end;
  finally
    qryCustomers.EnableControls;
    qryCustomers.BeforeDelete:=qryCustomers1BeforeDelete;
    BigMessage('انجام شد.',1);
  end;

end;

procedure TCustomersNotUseF.FormCreate(Sender: TObject);
begin
  inherited;
  BigMessage('درحال بررسی کدینگ ها لطفا صبر کنید...', 0);
  with qryCustomers do
    try

      Close;
      SQL.Text := 'SELECT CustID, CustName, ModifyDate, LastUser, FirstUser';
      SQL.Add('FROM Customers C');
      SQL.Add('WHERE(NOT EXISTS(SELECT F.PersonID1 FROM ActionPlans F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID2 FROM ActionPlans F WHERE(F.PersonID2 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID FROM Acts F WHERE(F.PersonID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM Agreements F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.BankID FROM CheckBook F WHERE(F.BankID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM ChkListCustomer F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.EmployerId FROM Cnt.Contracts F WHERE(F.EmployerId = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.WorkShopId FROM Cnt.Contracts F WHERE(F.WorkShopId = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Cnt.RunSchedules F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Costs F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM Customers F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID3 FROM Customers F WHERE(F.PersonID3 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM CustomersActivity F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM CustomersBroker F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID2 FROM CustomersBroker F WHERE(F.PersonID2 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM CustomersInterView F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM CustomersManag F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM CustomersMasir F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM CustomersOtherGroups F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustomerID2 FROM FormItems F WHERE(F.CustomerID2 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustomerID1 FROM Forms F WHERE(F.CustomerID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustomerID2 FROM Forms F WHERE(F.CustomerID2 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustomerID3 FROM Forms F WHERE(F.CustomerID3 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustomerID4 FROM Forms F WHERE(F.CustomerID4 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Insurances F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID1 FROM Machin.Delivery F WHERE(F.CustID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Machin.MachineStop F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID1 FROM Machin.Maintenance F WHERE(F.CustID1 = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID2 FROM Machin.Maintenance F WHERE(F.CustID2 = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID3 FROM Machin.Maintenance F WHERE(F.CustID3 = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM NeGOtiations F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Proforma F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM ReciptItems F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM Recipts F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID2 FROM Recipts F WHERE(F.PersonID2 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID3 FROM Recipts F WHERE(F.PersonID3 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID4 FROM Recipts F WHERE(F.PersonID4 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID5 FROM Recipts F WHERE(F.PersonID5 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM ReciptsPayments F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM ReciptsRegulates F WHERE(F.CustID = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM ReciptsRegulation F WHERE(F.CustID = C.CustID )))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM RemainsEarly F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.OrderId FROM ScheduleWorksItems F WHERE(F.OrderId = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Severable F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID1 FROM Tozin F WHERE(F.PersonID1 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID2 FROM Tozin F WHERE(F.PersonID2 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID3 FROM Tozin F WHERE(F.PersonID3 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID4 FROM Tozin F WHERE(F.PersonID4 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID5 FROM Tozin F WHERE(F.PersonID5 = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonID FROM Tsh.FunctionOther F WHERE(F.PersonID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CaseId FROM Tsh.Functions F WHERE(F.CaseId = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.PersonId FROM Tsh.Functions F WHERE(F.PersonId = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.Productionprocess FROM Tsh.Functions F WHERE(F.Productionprocess = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.WorkShopId FROM Tsh.Functions F WHERE(F.WorkShopId = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Tsh.GroupsPerson F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM Tsh.WorkGroupsPerson F WHERE(F.CustID = C.CustID)))');
      SQL.Add('AND (NOT EXISTS(SELECT F.CustID FROM UseOthers F WHERE(F.CustID = C.CustID)))');

      if optSub.Subsys[18] = '1' { Accounting.Active }
      then
        SQL.Add('AND (NOT EXISTS(SELECT F.DetailCode FROM acc.Documents F WHERE(F.DetailCode = C.CustID)))');

      Open;

    finally
      BigMessage('انجام شد', 1);

    end;
end;

procedure TCustomersNotUseF.qryCustomers1AfterEdit(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TCustomersNotUseF.qryCustomers1BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين  کد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

end.
