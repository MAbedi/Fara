unit BudgetList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids,
  ImgList, Filter_ADO_Const, FaraConsts, DBActns, ActnList, Buttons, Dm,
  GlobalPro, filter_ADO, StrUtils, FilterClass_ADO, Resource, Commitments,
  BudgetApproved, search2, sort2, Menus, MMESSAGE, ppBands, ppCache, ppClass,
  ppDB, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppCtrls,
  ppVar, ppPrnabl, ppTypes, ppDesignLayer, System.ImageList, System.Actions,
  System.Math;

type
  TBudgetListF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    srcBudgets: TDataSource;
    qryBudgets: TADOQuery;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    btnOther: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    btnFilter: TBitBtn;
    BitBtn5: TBitBtn;
    qryBudgetsBudgetID: TIntegerField;
    qryBudgetsInterfaceID: TIntegerField;
    qryBudgetsBudgetSerial: TIntegerField;
    qryBudgetsBudgetDate: TStringField;
    qryBudgetsNote_L1: TStringField;
    qryBudgetsNote_L2: TStringField;
    qryBudgetsCompanyCode: TIntegerField;
    qryBudgetsYearID: TIntegerField;
    qryBudgetsStatus: TWordField;
    qryInterfaceName: TADOQuery;
    qryBudgets_CompanyName: TStringField;
    qryBudgets_InterfaceName: TStringField;
    actFilter: TAction;
    actShowBudget: TAction;
    actSort: TAction;
    PopStatus: TPopupMenu;
    s1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    actChangeStatus: TAction;
    f1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actSendToExcel: TAction;
    PopPrint: TPopupMenu;
    v1: TMenuItem;
    N7: TMenuItem;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppShape2: TppShape;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    procedure qryBudgetsStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBudgetsStatusSetText(Sender: TField; const Text: string);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actShowBudgetExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure actChangeStatusExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLabel2GetText(Sender: TObject; var Text: string);
    procedure ppDBText6GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    FormType: Integer;
    procedure UpdateList;
    procedure StatusClick(Sender: TObject);

  public
    { Public declarations }
  end;

var
  BudgetListF: TBudgetListF;

implementation

{$R *.dfm}

procedure TBudgetListF.actChangeStatusExecute(Sender: TObject);
var
  MenuTag, ParentTag: Integer;
begin
  inherited;
  MenuTag := (Sender as TAction).Tag;
  ParentTag := StrToInt((Sender as TAction).Hint);
  try
    case ParentTag of
      0:
        begin
          if qryBudgetsStatus.AsInteger = MenuTag then
          begin
            Warn('سطر جاری در وضعیت مورد در خواست قرار دارد', mtInformation);
            Exit;
          end;
          try
            Dmf.adcAccounting.Execute
              (Format('update acc.budgets set status=%d where BudgetID=%d',
              [MenuTag, qryBudgetsBudgetID.AsInteger]));
          finally
            BigMessage('تغییر وضعیت انجام شد', 1);
          end;
        end;
      1:
        begin
          qryBudgets.Filtered := False;
          qryBudgets.Filter := Format('Status<>%d', [MenuTag]);
          qryBudgets.Filtered := True;
          if qryBudgets.RecordCount = 0 then
          begin
            Warn('سطری برای تغییر وضعیت وجود ندارد', mtInformation);
            Exit;
          end;
          with qryBudgets do
            try
              First;
              while not Eof do
              begin
                Dmf.adcAccounting.Execute
                  (Format('update acc.budgets set status=%d where BudgetID=%d',
                  [MenuTag, qryBudgetsBudgetID.AsInteger]));
                Next;
              end;
            finally
              BigMessage('تغییر وضعیت انجام شد', 1);
            end;
        end;
    end;

  finally
    qryBudgets.Filtered := False;
    qryBudgets.Requery;
  end;
end;

procedure TBudgetListF.actFilterExecute(Sender: TObject);
var
  Sqltext: string;
begin
  inherited;
  Sqltext :=
    Format('select min(BudgetSerial),max(BudgetSerial) from acc.Budgets inner join acc.Interfaces'
    + ' on acc.Budgets.interfaceid=acc.Interfaces.interfaceid where ' +
    'acc.Interfaces.budgeteffect=%D', [FormType]);

  with TfilterF.Create2(self, myParams) do
    try

      if FormType = 2 then
        AddItem(Dmf.adcAccounting, 'Status', 'وضعيت', '', ftUnknown, dvDefaults,
          'true', '', ciCheck, strLookUpBudgetStatus);

      // AddItem(Dmf.adcAccounting, 'YearID', 'سال مالی ', 'سال', ftInteger,
      // dvMinMax, '', '', ciSimple, '',
      // 'Select Min(YearID),max(YearID) from acc.Budgets');

      AddItem(Dmf.adcAccounting, 'CompanyCode', 'كد شركت ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
        'Select Min(CompanyCode),max(CompanyCode) from acc.Budgets');

      // AddItem(Dmf.adcAccounting, 'BudgetDate', 'تاريخ فرم', 'تاريخ', ftDate,
      // dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
      // ''',''' + APPBank.endYear + '''');
      AddItemFilter(GetFilter, TBudgetDate);

      AddItem(Dmf.adcAccounting, 'BudgectSerial', 'شماره فرم ', 'شماره',
        ftInteger, dvMinMax, '', '', ciSimple, '', Sqltext);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end
      else if (myParams.FindParam('BudgetDate') <> nil) then
        abort;

    finally
      Free;
    end;
end;

procedure TBudgetListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  ppDBPipeline1.RangeBegin := rbFirstRecord;
  ppDBPipeline1.RangeEnd := reLastRecord;
  InitReportFile(ppReport1, 'BudgetList', DBGrid1, ppDBPipeline1);
end;

procedure TBudgetListF.UpdateList;
begin
  with qryBudgets do
  begin
    Close;

    Parameters.ParamByName('UserAdmin').value := ifthen(User.PowerAdmin, 1, 0);
    Parameters.ParamByName('UserID').value := User.ID;

    Parameters.ParamByName('SerialFrom').value :=
      GetcFrom(myParams.ParamValues['BudgectSerial'], ftInteger);
    Parameters.ParamByName('SerialTo').value :=
      GetcTo(myParams.ParamValues['BudgectSerial'], ftInteger);

    Parameters.ParamByName('CompanyFrom').value :=
      GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
    Parameters.ParamByName('CompanyTo').value :=
      GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);

    Parameters.ParamByName('DateFrom').value :=
      GetcFrom(myParams.ParamValues['BudgetDate'], ftDate);
    Parameters.ParamByName('DateTo').value :=
      GetcTo(myParams.ParamValues['BudgetDate'], ftDate);

    Parameters.ParamByName('YearFrom').value := APPBank.Year;
    // GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearTo').value := APPBank.Year;
    // GetcTo(myParams.ParamValues['YearID'], ftInteger);

    if FormType = 2 then
      Parameters.ParamByName('Status1').value :=
        GetcFrom(myParams.ParamValues['Status'], ftString)
    else
      Parameters.ParamByName('Status1').value := 0;

    Parameters.ParamByName('budgeteffect').value := FormType;

    open;
  end;

end;

procedure TBudgetListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgets);
end;

procedure TBudgetListF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetListF.actShowBudgetExecute(Sender: TObject);
begin
  inherited;
  if FormType = 2 then
    CommitmentsF.FindBudget(qryBudgetsBudgetID.AsInteger);
  if FormType = 1 then
    BudgetApprovedF.FindBudget(qryBudgetsBudgetID.AsInteger);
end;

procedure TBudgetListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgets);
end;

procedure TBudgetListF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  PopStatus.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TBudgetListF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  BitBtn2.Click;
end;

procedure TBudgetListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TBudgetListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5);
end;

procedure TBudgetListF.FormShow(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('BudgetDate') = nil then
    begin
      Close;
      Exit;
    end;
  BitBtn4.Visible := ((FormType = 2) and (APPBank.StatusYear = 0));
  DBGrid1.Columns[7].Visible := FormType = 2;
  if FormType = 1 then
  begin
    DBGrid1.Fields[3].DisplayLabel := 'نوع مصوب';
    self.Caption := 'لیست مصوبات';
  end
  else
  begin
    self.Caption := 'لیست تعهدات';
    DBGrid1.Fields[3].DisplayLabel := 'نوع تعهد';
  end;

end;

procedure TBudgetListF.N2Click(Sender: TObject);
begin
  inherited;
  StatusClick(Sender);
end;

procedure TBudgetListF.ppDBText6GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    0:
      Text := 'ـــ';
    2:
      Text := 'بررسی شده';
    1:
      Text := 'بررسی نشده';
    3:
      Text := 'تایید شده';
  end;
end;

procedure TBudgetListF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TBudgetListF.ppLabel2GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := self.Caption;
end;

procedure TBudgetListF.qryBudgetsStatusGetText(Sender: TField; var Text: string;
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

procedure TBudgetListF.qryBudgetsStatusSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'بررسی شده' then
    Sender.AsInteger := 2;
  if Text = 'بررسی نشده' then
    Sender.AsInteger := 1;
  if Text = 'تایید شده' then
    Sender.AsInteger := 3;
end;

procedure TBudgetListF.StatusClick(Sender: TObject);
begin
  inherited;
  actChangeStatus.Tag := (Sender as TMenuItem).Tag;
  actChangeStatus.Hint := IntToStr((Sender as TMenuItem).Parent.Tag);
  actChangeStatus.Execute;
end;

end.
