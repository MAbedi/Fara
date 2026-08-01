unit DocRelated;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, SumDBGrid, System.Actions;

type
  TDocRelatedF = class(TTemplate4F)
    newPanel: TPanel;
    btnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    btnDel: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryDocReleted: TADOQuery;
    srcDocReleted: TDataSource;
    lblBedBes: TLabel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryDocReletedID: TIntegerField;
    qryDocReletedRelatedID: TIntegerField;
    qryDocReletedBed: TBCDField;
    qryDocReletedBes: TBCDField;
    qryDocReletedRow: TIntegerField;
    qryDocReletedYearID: TIntegerField;
    qryDocReletedServerID: TIntegerField;
    qryDocReletedParentID: TIntegerField;
    qryDocReletedKind: TWordField;
    qryDocReletedGroupType: TWordField;
    DBGrid1: TDBGrid;
    SumGrid1: TSumGrid;
    qryDocReletedNote: TStringField;
    qryDocReletedFormItemID: TIntegerField;
    procedure srcDocReletedStateChange(Sender: TObject);
    procedure qryDocReletedBeforePost(DataSet: TDataSet);
    procedure qryDocReletedAfterInsert(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryDocReletedAfterPost(DataSet: TDataSet);
    procedure qryDocReletedBeforeEdit(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    // FormType: Integer;
    QrySource: TADOQuery;
    aGroupType: Integer;
    aBed, aBes, BedBes: Currency;
    function CalBedBes: Boolean;
    procedure initForm;
    procedure MainValue;
    { Private declarations }
  public
    procedure enter(CurrentQry: TADOQuery; GroupType: Integer;
      Bed_Bes: Currency);
    { Public declarations }
  end;

var
  DocRelatedF: TDocRelatedF;

implementation

uses Dm, GlobalPro, search2, sort2, Math;

{$R *.dfm}

function TDocRelatedF.CalBedBes: Boolean;
var
  Bed, Bes: Currency;
begin
  Bed := 0;
  Bes := 0;
  qryDocReleted.First;
  with qryDocReleted do
    while not Eof do
    begin
      Bed := Bed + fieldbyname('bed').AsCurrency;
      Bes := Bes + fieldbyname('bes').AsCurrency;
      Next;
    end;
  Result := ABS(Bed - Bes) = ABS(aBed - aBes)
end;

procedure TDocRelatedF.srcDocReletedStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDocReleted.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TDocRelatedF.qryDocReletedBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.fieldbyname('bed').AsCurrency < 0) or
    (DataSet.fieldbyname('bes').AsCurrency < 0) then
  begin
    Warn('مبلغ منفی معتبر نيست.');
    Abort;
  end; // if

  if (DataSet.fieldbyname('bed').AsCurrency > 0) and
    (DataSet.fieldbyname('bes').AsCurrency > 0) then
  begin
    Warn('مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.');
    Abort;
  end; // if
  if (DataSet.fieldbyname('bed').AsCurrency + DataSet.fieldbyname('bes')
    .AsCurrency) = 0 then
  begin
    Warn('مبلغ وارد نشده ');
    Abort;
  end;

end;

procedure TDocRelatedF.qryDocReletedAfterInsert(DataSet: TDataSet);
var
  Bed, Bes: Currency;
begin
  inherited;
  DataSet.fieldbyname('ID').AsInteger :=
    GetANewCode(Self.Name, 'Related', 'ID');
  DataSet.fieldbyname('Row').AsInteger :=
    GetANewCode(Self.Name, 'Related', 'Row');
  DataSet.fieldbyname('ParentID').AsInteger := QrySource.fieldbyname('ReciptID')
    .AsInteger;
  DataSet.fieldbyname('Kind').AsInteger := QrySource.fieldbyname('Kind')
    .AsInteger;

  if (QrySource.fieldbyname('Kind').AsInteger = 2) and
    (QrySource.FindField('FormItemID') <> nil) then
    DataSet.fieldbyname('FormItemID').AsInteger :=
      QrySource.fieldbyname('FormItemID').AsInteger;

  qryDocReleted.Parameters.ParamByName('Note').Value :=
    QrySource.fieldbyname('ReciptCaption').AsString;
  DataSet.fieldbyname('YearId').AsInteger := QrySource.fieldbyname('YearID')
    .AsInteger;
  // DataSet.FieldByName('CompanyCode').AsInteger := aCm;

  DataSet.fieldbyname('GroupType').AsInteger := aGroupType;
  DataSet.fieldbyname('ServerID').AsInteger := QrySource.fieldbyname('ServerId')
    .AsInteger;
  Bed := CalcSumFileds(qryDocReleted, 'Bed');
  Bes := CalcSumFileds(qryDocReleted, 'bes');

  DataSet.fieldbyname('bed').AsCurrency := aBed - Bed;
  DataSet.fieldbyname('bes').AsCurrency := aBes - Bes;
  DataSet.fieldbyname('RelatedID').AsCurrency := 0
end;

procedure TDocRelatedF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 0);
end;

procedure TDocRelatedF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDocRelatedF.enter(CurrentQry: TADOQuery; GroupType: Integer;
  Bed_Bes: Currency);
begin
  with TDocRelatedF.Create(Application) do
    try
      BedBes := Bed_Bes;
      QrySource := CurrentQry;
      aGroupType := GroupType;
      initForm;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TDocRelatedF.initForm;
begin
  MainValue;
  with qryDocReleted do
  begin
    Close;
    Parameters.ParamByName('YearId').Value := QrySource.fieldbyname('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerId').Value :=
      QrySource.fieldbyname('ServerID').AsInteger;
    Parameters.ParamByName('Kind').Value := QrySource.fieldbyname('Kind')
      .AsInteger;
    Parameters.ParamByName('GroupType').Value := aGroupType;
    Parameters.ParamByName('ParentID').Value :=
      QrySource.fieldbyname('ReciptID').AsInteger;

    Parameters.ParamByName('FormItemID').Value :=
      QrySource.fieldbyname('FormItemID').AsInteger;

    Parameters.ParamByName('Note').Value :=
      QrySource.fieldbyname('ReciptCaption').AsString;

    Open;

    if BedBes <> 0 then
    begin
      Insert;
      if BedBes < 0 then
      begin
        qryDocReletedBed.AsCurrency := 0;
        qryDocReletedBes.AsCurrency := ABS(BedBes);
      end
      else
      begin
        qryDocReletedBed.AsCurrency := ABS(BedBes);
        qryDocReletedBes.AsCurrency := 0;
      end;
      BedBes := 0;
    end;
  end;
end;

procedure TDocRelatedF.qryDocReletedAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryDocReleted.Requery;
  // qryDocReleted.Last;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
end;

procedure TDocRelatedF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (not CalBedBes) and (qryDocReleted.RecordCount > 0) then
  begin
    Warn('جمع مبالغ وارد شده بزرگتر از مبلغ سند مي باشد ');
    CanClose := False;
  end;

end;

procedure TDocRelatedF.qryDocReletedBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.fieldbyname('RelatedID').AsInteger <> 0 then
  begin
    Warn('قبلا ارتباط داده شده است' + #13 + #10 +
      'اول حذف ارتباط كنيد بعد مبلغ را تغيير دهيد');
    Abort;
  end;
end;

procedure TDocRelatedF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDocRelatedF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDocReleted);
end;

procedure TDocRelatedF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocReleted);
end;

procedure TDocRelatedF.MainValue;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  with qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT bed,bes FROM dbo.AllAccount(10 ,-1 ,-1 ,-1 ,:PersonIDFrom ,:PersonIDTo,:DateFrom ,:DateTo , '
        + ':DateFromRemain,:YearIDFrom,:YearIDTo,:SellsMethodFrom,:SellsMethodTo,:SellsEmporiumFrom ,:SellsEmporiumTo,DEFAULT) AS AllAcc ';
      Parameters := QrySource.Parameters;
      SQL.Add(Format('where (FormID = %d )',
        [QrySource.fieldbyname('ReciptID').AsInteger]));

      SQL.Add(Format('AND (FormItemID = %d )',
        [QrySource.fieldbyname('FormItemID').AsInteger]));

      Open;
      aBed := fieldbyname('bed').AsCurrency;
      aBes := fieldbyname('bes').AsCurrency;

      lblBedBes.Caption := Format('بدهكار : %S  بستانكار :‌ %S  ',
        [CurrToStrF(aBed, ffCurrency, 0), CurrToStrF(aBes, ffCurrency, 0)]);
    finally
      Free;
    end;
end;

end.
