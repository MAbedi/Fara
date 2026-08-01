unit DocRelated2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, SumDBGrid, Math, System.Actions,CedarDbgrid;

type
  TDocRelated2F = class(TTemplate4F)
    DBGrid1: TDBGrid;
    newPanel: TPanel;
    btnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    btnDel: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryDocReleted: TADOQuery;
    qryDocReletedDebit: TBCDField;
    qryDocReletedCredit: TFMTBCDField;
    srcDocReleted: TDataSource;
    qryDocReletedItemID: TIntegerField;
    qryDocReletedID: TIntegerField;
    qryDocReletedSerial: TIntegerField;
    qryDocReletedYearID: TIntegerField;
    qryDocReletedCompanyCode: TIntegerField;
    lblBedBes: TLabel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryDocReletedRelatedID: TIntegerField;
    qryDocReleted_Desc: TStringField;
    SumGrid1: TSumGrid;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    lblRemain: TLabel;
    procedure srcDocReletedStateChange(Sender: TObject);
    procedure qryDocReletedBeforePost(DataSet: TDataSet);
    procedure qryDocReletedAfterInsert(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryDocReletedAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryDocReletedBeforeEdit(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    // FormType:Integer;
    aDebit: Currency;
    aCredit: Currency;
    Cloned: TADOQuery;
    FNote: String;
    FID: Integer;
    FCm: Integer;
    FSN: Integer;
    function CalBedBes(IsRowCheck: Boolean): Boolean;
    procedure initForm;
    procedure AnalyzeUnequalRows(grdAnalyze: TCedarDbgrid; RelatedID: Integer);
    { Private declarations }
  public
    procedure enter(CompanyCode: Integer; ID: Integer; grdAnalyze: TCedarDbgrid;
      RelatedID: Integer);
    { Public declarations }
  end;

var
  DocRelated2F: TDocRelated2F;

implementation

uses Dm, GlobalPro, search2, sort2;

{$R *.dfm}

function TDocRelated2F.CalBedBes(IsRowCheck: Boolean): Boolean;
var
  Bed, Bes, Mandeh: Extended;
begin
  if qryDocReleted.RecordCount = 0 then
  begin
    Result := False;
    Exit;
  end;

  Bed := 0;
  Bes := 0;
  // Mandeh := 0;
  Cloned.Clone(qryDocReleted, ltReadOnly);
  Cloned.Filter := Format('itemID<>%d',
    [qryDocReleted.fieldbyname('itemID').AsInteger]);
  Cloned.Filtered := True;
  Cloned.First;
  with Cloned do
    while not Eof do
    begin
      Bed := Bed + fieldbyname('Debit').AsCurrency;
      Bes := Bes + fieldbyname('Credit').AsCurrency;
      Next;
    end;

  Mandeh := (Bed - Bes) + (qryDocReleted.fieldbyname('Debit').AsCurrency -
    qryDocReleted.fieldbyname('Credit').AsCurrency);
  Result := Abs(Mandeh) <> Abs(aDebit - aCredit);
  if IsRowCheck then
  begin
    Result := False;
    lblRemain.Caption := Format('مانده = %m',
      [Abs(aDebit - aCredit) - Abs(Mandeh)]);
  end;

end;

procedure TDocRelated2F.srcDocReletedStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDocReleted.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'DocRelated','');
end;

procedure TDocRelated2F.qryDocReletedBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.fieldbyname('Debit').AsCurrency < 0) or
    (DataSet.fieldbyname('Credit').AsCurrency < 0) then
  begin
    Warn('مبلغ منفي معتبر نيست.');
    Abort;
  end; // if

  if (DataSet.fieldbyname('Debit').AsCurrency > 0) and
    (DataSet.fieldbyname('Credit').AsCurrency > 0) then
  begin
    Warn('مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.');
    Abort;
  end; // if
  if (DataSet.fieldbyname('Debit').AsCurrency + DataSet.fieldbyname('Credit')
    .AsCurrency) = 0 then
  begin
    Warn('مبلغ وارد نشده ');
    Abort;
  end; // if

  CalBedBes(True);

end;

procedure TDocRelated2F.qryDocReletedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('ItemID').AsInteger :=
    GetANewCode('','DocRelated', 'ItemID',dmf.adcAccounting);
  DataSet.fieldbyname('ID').AsInteger := FID;
  DataSet.fieldbyname('_Desc').AsString := FNote;
  DataSet.fieldbyname('YearId').AsInteger := APPBank.Year;
  DataSet.fieldbyname('CompanyCode').AsInteger := FCm;
  DataSet.fieldbyname('serial').AsInteger := FSN;
  DataSet.fieldbyname('Debit').AsCurrency := 0;
  DataSet.fieldbyname('Credit').AsCurrency := 0;
  DataSet.fieldbyname('RelatedID').AsCurrency := 0
end;

procedure TDocRelated2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 0);
end;

procedure TDocRelated2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  Cloned.Free;
end;

procedure TDocRelated2F.enter(CompanyCode: Integer; ID: Integer;
  grdAnalyze: TCedarDbgrid; RelatedID: Integer);
begin
  with TDocRelated2F.Create(Application) do
    try
      FCm := CompanyCode;
      FID := ID;
      initForm;
      if grdAnalyze <> nil then
      begin
        if grdAnalyze.SelectedRows.Count > 2 then
        begin
          Warn('مجاز به انتخاب چند سطر نابرابر نیستید');
          Abort;
        end;
        AnalyzeUnequalRows(grdAnalyze, RelatedID);
      end;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TDocRelated2F.initForm;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := Dmf.adcAccounting;
      SQL.Text :=
        Format('Select Debt, Credit, Comment_L1, Serial From acc.Documents ' +
        'Where YearId = %d And ID = %d And CompanyCode = %d',
        [APPBank.Year, FID, FCm]);
      Open;
      aDebit := Fields[0].AsCurrency;
      aCredit := Fields[1].AsCurrency;
      FNote := Fields[2].AsString;
      FSN := Fields[3].AsInteger;

    finally
      Free;
    end;
  lblBedBes.Caption := Format('بدهكار : %S  بستانكار :‌ %S  ',
    [CurrToStrF(aDebit, ffCurrency, 0), CurrToStrF(aCredit, ffCurrency, 0)]);

  with qryDocReleted do
  begin
    Close;
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Parameters.ParamByName('CompanyCode').Value := FCm;
    Parameters.ParamByName('Id').Value := FID;
    Parameters.ParamByName('Sn').Value := FSN;
    Parameters.ParamByName('Note').Value := FNote;
    Open;
  end;
end;

procedure TDocRelated2F.qryDocReletedAfterPost(DataSet: TDataSet);
begin
  inherited;
  // qryDocReleted.Requery;
  // qryDocReleted.Last;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
end;

procedure TDocRelated2F.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if CalBedBes(False) then
  begin
    Warn('جمع مبالغ وارد شده برابر با مبلغ سند نمی باشد. ');
    CanClose := False;
  end;

end;

procedure TDocRelated2F.FormCreate(Sender: TObject);
begin
  inherited;
  Cloned := TADOQuery.Create(Self);
end;

procedure TDocRelated2F.qryDocReletedBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.fieldbyname('RelatedID').AsInteger <> 0 then
  begin
    Warn('قبلا ارتباط داده شده است' + #13 + #10 +
      'اول حذف ارتباط كنيد بعد مبلغ را تغيير دهيد');
    Abort;
  end;
end;

procedure TDocRelated2F.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDocRelated2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDocReleted);
end;

procedure TDocRelated2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocReleted);
end;

procedure TDocRelated2F.AnalyzeUnequalRows(grdAnalyze: TCedarDbgrid;
  RelatedID: Integer);
var
  i, intItemID, intGreatAnalizeType, intAnalizeType, intLessID, intlessItemID,
    intDelItemID: Integer;
  curGreatPrice, curDiffrence, curDebit, curCredit: Currency;
  qryAnalyze: TADOQuery;
  Bed: Boolean;

begin
  if grdAnalyze.DataSource.DataSet is TADOQuery then
    qryAnalyze := grdAnalyze.DataSource.DataSet as TADOQuery;
  try
    with qryAnalyze do
    begin
      curGreatPrice := 0;
      curDiffrence := 0;
      Bed := False;

      for i := 0 to grdAnalyze.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdAnalyze.SelectedRows.Items[i]));
        curDiffrence :=
          Abs((fieldbyname('Debt').AsCurrency + fieldbyname('Credit')
          .AsCurrency) - curDiffrence);
        if curGreatPrice < fieldbyname('Debt').AsCurrency +
          fieldbyname('Credit').AsCurrency then
        begin
          if fieldbyname('Debt').AsInteger = 0 then
            Bed := False
          else
            Bed := True;

          curGreatPrice := fieldbyname('Debt').AsCurrency +
            fieldbyname('Credit').AsCurrency;
          FID := fieldbyname('ID').AsInteger;
          FNote := fieldbyname('Comment_L1').AsString;
          FSN := fieldbyname('serial').AsInteger;
          intGreatAnalizeType := fieldbyname('AnalizeType').AsInteger;
          intDelItemID := fieldbyname('ItemID').AsInteger;
        end
      end;

      if Bed then
      begin
        curDebit := curDiffrence;
        curCredit := 0;
      end
      else
      begin
        curDebit := 0;
        curCredit := curDiffrence;
      end;

      for i := 0 to grdAnalyze.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdAnalyze.SelectedRows.Items[i]));
        if FID <> fieldbyname('ID').AsInteger then
        begin
          intLessID := fieldbyname('ID').AsInteger;
          intAnalizeType := fieldbyname('AnalizeType').AsInteger;
          intlessItemID := fieldbyname('ItemID').AsInteger;
        end;
      end;

    end;

    with qryDocReleted do
    begin
      Insert;
      fieldbyname('Debit').AsCurrency := curDebit;
      fieldbyname('Credit').AsCurrency := curCredit;
      Post;

      Insert;
      fieldbyname('Debit').AsCurrency := IfThen(curDebit = 0, 0,
        Abs(curDebit - curGreatPrice));
      fieldbyname('Credit').AsCurrency := IfThen(curCredit = 0, 0,
        Abs(curCredit - curGreatPrice));
      intItemID := fieldbyname('ItemID').AsInteger;
      Post;

      initForm;
    end;

    Dmf.adcAccounting.Execute
      (Format('UPDATE Acc.DocRelated SET RelatedID = %d FROM  Acc.DocRelated WHERE  (ItemID = %d)',
      [RelatedID, intItemID]));

    case intAnalizeType of
      1:
        Dmf.adcAccounting.Execute
          (Format('UPDATE Acc.Documents SET RelatedID = %d' +
          ' WHERE (CompanyCode = %d) AND (ID = %D) AND (YearID = %d)',
          [RelatedID, FCm, intLessID, APPBank.Year]));

      2:
        Dmf.adcAccounting.Execute
          (Format('UPDATE Acc.DocRelated SET RelatedID = %d FROM  Acc.DocRelated WHERE  (ItemID = %d)',
          [RelatedID, intlessItemID]));
    end;

    if intGreatAnalizeType = 2 then
    begin
      Dmf.adcAccounting.Execute
        (Format('DELETE FROM Acc.DocRelated WHERE (ItemID = %d)',
        [intDelItemID]));
    end;
    qryDocReleted.Requery();

  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در ارتباط');
    end;
  end;
  qryAnalyze.Requery();
  qryAnalyze.Locate('ID', FID, []);

end;

end.
