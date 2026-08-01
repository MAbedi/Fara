{ -----------------------------------------------------------------------------
  Unit Name: RecallCnt_Contracts2
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallCnt_Contracts2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider, DBCtrls,
  Menus, DM, System.Actions;

type
  TRecallCnt_Contracts2F = class(TTemplate5F)
    qryOperations_Items: TADOQuery;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    StatusBar1: TStatusBar;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    actRptCardex: TAction;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    BitBtn9: TBitBtn;
    ActPerFactor: TAction;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    spl1: TSplitter;
    pnlMaster: TPanel;
    pnlMaster1: TPanel;
    btnSort: TBitBtn;
    btnSearch: TBitBtn;
    dbgrdMaster: TDBGrid;
    qryMasterCaseNo: TIntegerField;
    qryMasterContractTopic: TWideStringField;
    qryMasterInsertDate: TDateTimeField;
    qryMasterContractNo: TStringField;
    qryMasterContractDate: TStringField;
    qryMasterEmployerId: TIntegerField;
    qryMasterUpperCaseNo: TIntegerField;
    qryMasterContractsStatus: TWordField;
    qryMasterRefInsuranceNo: TStringField;
    qryMasterFromType: TIntegerField;
    qryMasterFromDate: TStringField;
    qryMasterAidNo: TStringField;
    qryMasterAidDate: TStringField;
    qryMasterNote: TStringField;
    qryMasterTechnicalCode: TStringField;
    qryMasterPercent1: TBCDField;
    qryMasterPercent2: TBCDField;
    qryMasterOrderDeliveryTime: TIntegerField;
    qryMasterMaximumLife: TIntegerField;
    qryMasterMarginSafety: TIntegerField;
    qryMasterPercent3: TBCDField;
    qryOperations_: TADOQuery;
    srcOperations_: TDataSource;
    qryOperations__Checked: TFMTBCDField;
    qryOperations_OperationId: TLargeintField;
    qryOperations_UnitName: TStringField;
    qryOperations_StuffName: TStringField;
    qryOperations_Percent1: TBCDField;
    qryOperations_Percent2: TBCDField;
    qryOperations_Percent3: TBCDField;
    qryOperations_BasePrice: TBCDField;
    qryOperations_Amount: TBCDField;
    qryOperations_OverheadPrice: TBCDField;
    qryOperations_TotalPrice: TBCDField;
    qryOperations_StuffCount: TIntegerField;
    qryOperations_ContractOperationNote: TWideStringField;
    qryOperations_DiscountPercent: TBCDField;
    qryOperations_StuffCode: TLargeintField;
    qryOperations_LeadTime: TIntegerField;
    qryOperations_UnitCode: TWordField;
    qryOperations_NumberOfUnit: TFloatField;
    qryOperations_Basis4CalculationFormRow: TIntegerField;
    qryOperations_ContractOperationId: TIntegerField;
    qryOpt_Families: TADOQuery;
    qryMasterCustName: TStringField;
    qryOperations_StName1: TStringField;
    qryOperations_carton: TFloatField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure dbgrdMasterKeyPress(Sender: TObject; var Key: Char);
    procedure btnSortClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure qryContractsInsertDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryOperations_AfterScroll(DataSet: TDataSet);
  private
    qrySum: TADOQuery;
    countChecked, countUnchecked: Integer;
    qryinit, qryContracts, qryOperations, qryOperationItems, qryOptFamilies
      : TADOQuery;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure CalculateSumChecks;
    procedure UpdateList;
    procedure MakeSQLqry;
  protected

    { Private declarations }
  public
    function SelectRecall(qryContract, qryOperation, qryOperationItem,
      qryOptFamilie, qryini: TADOQuery): Boolean;
    { Public declarations }
  end;

var
  RecallCnt_Contracts2F: TRecallCnt_Contracts2F;

implementation

uses StrUtils, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO, Math,
  ReciptsFunctions, MMESSAGE, FaraDesktopAlert, shamsiDate, ManagGridColumns,
  FormFunctions;

{$R *.dfm}

procedure TRecallCnt_Contracts2F.MakeSQLqry;
begin
  myParams.Clear;
  actFilter.Execute;
end;

function TRecallCnt_Contracts2F.SelectRecall(qryContract, qryOperation,
  qryOperationItem, qryOptFamilie, qryini: TADOQuery): Boolean;
var
  ContractOperationId: Integer;
begin
  qryContract.DisableControls;
  qryOperation.DisableControls;
  qryOperationItem.DisableControls;
  RecallCnt_Contracts2F := TRecallCnt_Contracts2F.Create(Application);
  try
    with RecallCnt_Contracts2F do
    begin
      qryinit := qryini;
      qryContracts := qryContract;
      qryOperations := qryOperation;
      qryOperationItems := qryOperationItem;
      qryOptFamilies := qryOptFamilie;
      Entity_Weight(DBGrid1);
      MakeSQLqry;

      if myParams.FindParam('ContractDate') = nil then
        Close;
      if ShowModal = mrOk then
      begin
        with qryOperations_ do
        begin
//          DBGrid1.SearchPanel.SearchingText := EmptyStr;
          Filter := '_checked = 1';
          Filtered := True;
          DisableControls;
          First;
          if qryContracts.State in [dsInsert] then
          begin
            qryContracts.FieldByName('EmployerId').AsInteger :=
              qryMaster.FieldByName('EmployerId').AsInteger;
            qryContracts.FieldByName('ContractNo').AsString :=
              qryMaster.FieldByName('ContractNo').AsString;
            qryContracts.FieldByName('ContractTopic').AsString :=
              qryMaster.FieldByName('ContractTopic').AsString;
            qryContracts.FieldByName('OrderDeliveryTime').AsString :=
              qryMaster.FieldByName('OrderDeliveryTime').AsString;
            qryContracts.FieldByName('MaximumLife').AsString :=
              qryMaster.FieldByName('MaximumLife').AsString;
            qryContracts.FieldByName('MarginSafety').AsString :=
              qryMaster.FieldByName('MarginSafety').AsString;
            qryContracts.FieldByName('Percent1').AsFloat :=
              qryMaster.FieldByName('Percent1').AsFloat;
            qryContracts.FieldByName('Percent2').AsFloat :=
              qryMaster.FieldByName('Percent2').AsFloat;
            qryContracts.FieldByName('Percent3').AsFloat :=
              qryMaster.FieldByName('Percent3').AsFloat;
            qryContracts.FieldByName('Note').AsString :=
              qryMaster.FieldByName('Note').AsString;
          end;

          ContractOperationId := GetANewCode('', 'Cnt.ContractOperations',
            'ContractOperationId');
          Add2InProcess(qryMaster.Connection, '', 'Cnt.ContractOperations',
            'ContractOperationId',
            IntToStr(ContractOperationId + qryOperations_.RecordCount));

          while not eof do
          begin
            qryOperations.Insert;
            qryOperations.FieldByName('ContractOperationId').AsInteger :=
              ContractOperationId;
            inc(ContractOperationId);
            begin

              qryOperations.FieldByName('OperationId').AsInteger :=
                qryOperations_.FieldByName('OperationId').AsInteger;
              qryOperations.FieldByName('Percent1').AsFloat :=
                qryOperations_.FieldByName('Percent1').AsFloat;
              qryOperations.FieldByName('Percent2').AsFloat :=
                qryOperations_.FieldByName('Percent2').AsFloat;
              qryOperations.FieldByName('Percent3').AsFloat :=
                qryOperations_.FieldByName('Percent3').AsFloat;
              qryOperations.FieldByName('BasePrice').AsCurrency :=
                qryOperations_.FieldByName('BasePrice').AsCurrency;
              qryOperations.FieldByName('OverheadPrice').AsCurrency :=
                qryOperations_.FieldByName('OverheadPrice').AsCurrency;
              qryOperations.FieldByName('TotalPrice').AsCurrency :=
                qryOperations_.FieldByName('TotalPrice').AsCurrency;

              qryOperations.FieldByName('ContractOperationNote').AsString :=
                qryOperations_.FieldByName('ContractOperationNote').AsString;
              qryOperations.FieldByName('DiscountPercent').AsInteger :=
                qryOperations_.FieldByName('DiscountPercent').AsInteger;
              qryOperations.FieldByName('LeadTime').AsInteger :=
                qryOperations_.FieldByName('LeadTime').AsInteger;

            end;
            qryOperationItems.Open;
            while not qryOperations_Items.eof do
            begin
              qryOperationItems.Insert;
              qryOperationItems.FieldByName('ItemKind').AsInteger :=
                qryOperations_Items.FieldByName('ItemKind').AsInteger;

              qryOperationItems.FieldByName('IUnitCode').AsInteger :=
                qryOperations_Items.FieldByName('IUnitCode').AsInteger;

              qryOperationItems.FieldByName('IStuffCount').AsInteger :=
                qryOperations_Items.FieldByName('IStuffCount').AsInteger;

              qryOperationItems.FieldByName('IStuffCode').AsLargeInt :=
                qryOperations_Items.FieldByName('IStuffCode').AsLargeInt;

              qryOperationItems.FieldByName('IAmount').AsCurrency :=
                qryOperations_Items.FieldByName('IAmount').AsCurrency;

              qryOperationItems.FieldByName('INote').AsString :=
                qryOperations_Items.FieldByName('INote').AsString;

              qryOperationItems.FieldByName('IBuyEffect').AsInteger :=
                qryOperations_Items.FieldByName('IBuyEffect').AsInteger;
              qryOperationItems.FieldByName('ISellEffect').AsInteger :=
                qryOperations_Items.FieldByName('ISellEffect').AsInteger;

              qryOperations_Items.Next;
            end;

            qryOptFamilies.Open;
            while not qryOpt_Families.eof do
            begin
              qryOptFamilies.Insert;
              qryOptFamilies.FieldByName('FStuffCode').AsLargeInt :=
                qryOpt_Families.FieldByName('FStuffCode').AsLargeInt;

              qryOpt_Families.Next;
            end;

            qryContracts.Post;
            Next;
            qryContracts.Edit;
          end; // while

        end; //
      end; // if
    end; // with
    Result := True;
  finally
    qryContract.EnableControls;
    qryOperation.EnableControls;
    qryOperationItem.EnableControls;
    RecallCnt_Contracts2F.Free;
  end; // try
end;

procedure TRecallCnt_Contracts2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(dbgrdMaster, 3);
end;

procedure TRecallCnt_Contracts2F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryOperations__Checked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TRecallCnt_Contracts2F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallCnt_Contracts2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryOpt_Families do
  begin
    Active := False;
    Parameters.ParamByName('EmployerId').Value := qryMasterEmployerId.AsInteger;
    Active := True;
  end;
  with qryOperations_Items do
  begin
    Active := False;
    Parameters.ParamByName('EmployerId').Value := qryMasterEmployerId.AsInteger;
    Active := True;
  end;
  with qryOperations_ do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryMaster.FieldByName('CaseNo')
      .AsInteger;
    Active := True;
  end;
end;

procedure TRecallCnt_Contracts2F.qryOperations_AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryOperations_Items do
  begin
    Filter := 'ContractOperationId = ' +
      qryOperations_ContractOperationId.AsString;
    Filtered := True;
  end;
  with qryOpt_Families do
  begin
    Filter := 'ContractOperationId = ' +
      qryOperations_ContractOperationId.AsString;
    Filtered := True;
  end;

end;

procedure TRecallCnt_Contracts2F.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryOperations_ do
  begin
    Edit;
    if FieldByName('_Checked').AsInteger = 1 then
      FieldByName('_Checked').AsInteger := 0
    else
      FieldByName('_Checked').AsInteger := 1;
    Post;
  end; // with
  if CalculateSummary then
    CalculateSumChecks;
end;

procedure TRecallCnt_Contracts2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallCnt_Contracts2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOperations_);
end;

procedure TRecallCnt_Contracts2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOperations_);
end;

procedure TRecallCnt_Contracts2F.btnSearchClick(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TRecallCnt_Contracts2F.btnSortClick(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);
end;

procedure TRecallCnt_Contracts2F.FormCreate(Sender: TObject);
begin
  inherited;
  qrySum := TADOQuery.Create(Self);
  qryOperations_StName1.DisplayLabel := GetStName(1);
end;

procedure TRecallCnt_Contracts2F.FormDestroy(Sender: TObject);
begin
  inherited;
  qrySum.Free;
  SaveColWidth(DBGrid1);
  SaveColWidth(dbgrdMaster);
end;

procedure TRecallCnt_Contracts2F.CalculateSumChecks;
begin
  with qrySum do
  begin
    Clone(qryOperations_);
    First;
    countChecked := 0;
    countUnchecked := 0;
    while not eof do
    begin
      if FieldByName('_checked').AsInteger = 1 then
      begin
        inc(countChecked);
      end
      else
      begin
        inc(countUnchecked);
      end;
      Next;
    end;
    Close;
  end;
  StatusBar1.Panels[1].Text := 'تعداد فرم‌هاي انتخاب شده = ' +
    IntToStr(countChecked);
  StatusBar2.Panels[1].Text := 'تعداد فرم‌هاي باقيمانده     = ' +
    IntToStr(countUnchecked);
end;

procedure TRecallCnt_Contracts2F.dbgrdMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMasterCaseNo);
end;

procedure TRecallCnt_Contracts2F.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallCnt_Contracts2F.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryOperations_ do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger := 1;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallCnt_Contracts2F.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qryOperations_ do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      if FieldByName('_Checked').AsInteger = 1 then
        FieldByName('_Checked').AsInteger := 0
      else
        FieldByName('_Checked').AsInteger := 1;
      Post;
      Next;
    end;
    // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallCnt_Contracts2F.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TRecallCnt_Contracts2F.actFilterExecute(Sender: TObject);
var
  SQLTxt: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
        SQLTxt := Format('WHERE (YearID BETWEEN %d AND %d)',
          [opt.DefaultYear, APPBank.Year]);

      AddItem(DMf.adcBSell, 'ContractDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select min(ContractDate),max(ContractDate) from Cnt.Contracts '
        + SQLTxt);

      AddItem(DMf.adcBSell, 'EmployerId', 'کد طرف قرارداد', 'کد ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT Cnt.Contracts.EmployerId, Customers.CustName ' +
        'FROM Cnt.Contracts INNER JOIN ' +
        'Customers ON Cnt.Contracts.EmployerId = Customers.CustID',
        'select Min(EmployerId),Max(EmployerId) From Cnt.Contracts ');

      AddItem(DMf.adcBSell, 'ContractNo', 'شماره قرارداد', 'شماره ', ftString,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ContractNo),Max(ContractNo) From Cnt.Contracts ' + SQLTxt);

      AddItem(DMf.adcBSell, 'CaseNo', 'شناسه قرارداد', 'شناسه  ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(CaseNo),Max(CaseNo) From Cnt.Contracts ');

      AddItem(DMf.adcBSell, 'OperationId', 'نام كالا', 'كد كالا', ftLargeint,
        dvMinMax, '', '', ciLookup, SQL_StuffCoding,
        'Select Min(OperationId),max(OperationId) from Cnt.ContractOperations');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRecallCnt_Contracts2F.UpdateList;
begin
  with qryOperations_ do
  begin
    Active := False;
    Parameters.ParamByName('OperationIdForm').Value :=
      GetcFrom(myParams.ParamValues['OperationId'], ftLargeint);
    Parameters.ParamByName('OperationIdTO').Value :=
      GetcTo(myParams.ParamValues['OperationId'], ftLargeint);
  end;
  with qryMaster do
  begin
    Active := False;

    Parameters.ParamByName('FromType').Value :=
      qryinit.FieldByName('ReciptType').AsString;

    Parameters.ParamByName('ContractNoForm').Value :=
      GetcFrom(myParams.ParamValues['ContractNo'], ftString);
    Parameters.ParamByName('ContractNoTO').Value :=
      GetcTo(myParams.ParamValues['ContractNo'], ftString);

    Parameters.ParamByName('CaseNoFrom').Value :=
      GetcFrom(myParams.ParamValues['CaseNo'], ftInteger);
    Parameters.ParamByName('CaseNoTO').Value :=
      GetcTo(myParams.ParamValues['CaseNo'], ftInteger);

    Parameters.ParamByName('ContractDateForm').Value :=
      GetcFrom(myParams.ParamValues['ContractDate'], ftDate);
    Parameters.ParamByName('ContractDateTO').Value :=
      GetcTo(myParams.ParamValues['ContractDate'], ftDate);

    Parameters.ParamByName('EmployerIdForm').Value :=
      GetcFrom(myParams.ParamValues['EmployerId'], ftInteger);
    Parameters.ParamByName('EmployerIdTO').Value :=
      GetcTo(myParams.ParamValues['EmployerId'], ftInteger);

    if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
    begin
      Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end
    else
    begin
      Parameters.ParamByName('YearIDFrom').Value := 1300;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end;
    Active := True
  end;
end;

procedure TRecallCnt_Contracts2F.qryContractsInsertDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)]);
end;

end.
