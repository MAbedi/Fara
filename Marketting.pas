unit Marketting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, StrUtils, Math,
  Grids, Vcl.DBGrids, DB, ADODB, Provider, DBClient, FaraConsts, System.ImageList,
  System.Actions;

type
  TMarkettingF = class(Ttemplate2MDIF)
    grdCustomers: TDBGrid;
    btnFilter: TBitBtn;
    btnSearch: TBitBtn;
    btnWorkPlaning: TBitBtn;
    actFilter: TAction;
    actWorkPlaning: TAction;
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersTEl: TStringField;
    qryCustomersFax: TStringField;
    qryCustomersEmail: TStringField;
    qryCustomersAddress: TStringField;
    Image2: TImage;
    Image3: TImage;
    qryCustomersMobile: TStringField;
    btnShow: TBitBtn;
    actShow: TAction;
    qryCustomers_Checked: TFMTBCDField;
    qryCustomersMaxDate: TStringField;
    qryCustomersTelInterView: TIntegerField;
    qryCustomersSMSInterView: TIntegerField;
    qryCustomersMailInterView: TIntegerField;
    qryCustomersFaxInterview: TIntegerField;
    btnSelectAll: TBitBtn;
    actSelectAll: TAction;
    btnRevertAll: TBitBtn;
    qryCustomersCustomerGrpName: TStringField;
    procedure grdCustomersDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdCustomersDblClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actWorkPlaningExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure btnRevertAllClick(Sender: TObject);
  private
    FRevertAll: Boolean;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MarkettingF: TMarkettingF;

implementation

uses DM, filter_ADO, FilterClass_ADO, Filters, GlobalPro, search2, WorkPlanning,
  CustGroups, Customers, Customers2;

{$R *.dfm}

procedure TMarkettingF.actFilterExecute(Sender: TObject);
var
  lookupSql, MinMaxSql: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      lookupSql := 'SELECT CustID,CustName' +
        ' FROM Customers INNER JOIN CustomersGroup ON CustomersGroup.CustomerGrpID = customers.CustomerGrpID'
        + ' WHERE GroupType IN (0,19) ';
      MinMaxSql := 'SELECT MIN(CustID),MAX(CustID)' +
        ' FROM Customers INNER JOIN CustomersGroup ON CustomersGroup.CustomerGrpID = customers.CustomerGrpID'
        + ' WHERE GroupType IN (0,19)';
      AddItem(dmf.adcBSell, 'CustID', 'مشتری', 'کد', ftinteger, dvMinMax, '0',
        '0', cilookup, lookupSql, MinMaxSql);

      lookupSql :=
        'SELECT CustomerGrpID,CustomerGrpName FROM CustomersGroup WHERE GroupType IN (0,19) ORDER BY CustomerGrpName';
      AddItem(dmf.adcBSell, 'GrpID', 'گروه مشتری', '', ftString, dvDefaults,
        '-1', '-1', ciCheck, lookupSql, '');

      if (ShowModal = mrOk) then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TMarkettingF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustomers);
end;

procedure TMarkettingF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryCustomers do
  begin
    First;
    DisableControls;
    while not eof do
    begin
      Edit;
      if FRevertAll then
        qryCustomers_Checked.AsInteger :=
          ifthen(qryCustomers_Checked.AsInteger = 0, 1, 0)
      else
        qryCustomers_Checked.AsInteger := 1;
      Post;
      Next;
    end;
    EnableControls;
  end;
  FRevertAll := False;
end;

procedure TMarkettingF.actShowExecute(Sender: TObject);
begin
  inherited;
  Customers2F.Enter(qryCustomers.FieldByName('CustID').AsInteger);
end;

procedure TMarkettingF.actWorkPlaningExecute(Sender: TObject);
begin
  inherited;
  with qryCustomers do
  begin
    Filter := '_Checked =1';
    DisableControls;
    Filtered := True;
    try
      if RecordCount = 0 then
      begin
        Warn('حداقل یک مشتری باید انتخاب شود');
        Abort;
      end;
    finally
      Filtered := False;
      EnableControls;
    end;
  end;
  WorkPlanningF.Enter(qryCustomers);
end;

procedure TMarkettingF.btnRevertAllClick(Sender: TObject);
begin
  inherited;
  FRevertAll := True;
  actSelectAll.Execute;
end;

procedure TMarkettingF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdCustomers);
end;

procedure TMarkettingF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdCustomers, 2);
end;

procedure TMarkettingF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('CustID') = nil then
    Close;
end;

procedure TMarkettingF.grdCustomersDblClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dseditmodes) then
    qryCustomers.Edit;
  with qryCustomers do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      ifthen(FieldByName('_Checked').AsInteger = 0, 1, 0);
    Post;
  end; // with
end;

procedure TMarkettingF.grdCustomersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  grdCustomers.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    grdCustomers.Canvas.Rectangle(Rect);
    if qryCustomers.FieldByName('_Checked').AsInteger = 1 then
      grdCustomers.Canvas.Draw(Column.Width - Rect.Left, Rect.Top,
        Image3.Picture.Graphic)
    else
      grdCustomers.Canvas.Draw(Column.Width - Rect.Left, Rect.Top,
        Image2.Picture.Graphic)
  end; // if
end;

procedure TMarkettingF.UpdateList;
begin
  with qryCustomers do
  begin
    Close;
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftinteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftinteger);
    // Parameters.ParamByName('GrpIDFrom').Value :=
    if GetcFrom(myParams.ParamValues['GrpID'], ftString) <> '' then
      SQL.text := StringReplace(SQL.text, ':GrpIDFrom',
        GetcFrom(myParams.ParamValues['GrpID'], ftString), [rfReplaceAll])
    else
      Parameters.ParamByName('GrpIDFrom').Value := -1;

    Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
    Parameters.ParamByName('UserID').Value := User.id;

    Open;
  end;
end;

end.
