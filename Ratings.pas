unit Ratings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TRatingsF = class(Ttemplate2MDIF)
    qryRatings: TADOQuery;
    srcRatings: TDataSource;
    qryRatingItems: TADOQuery;
    srcRatingItems: TDataSource;
    qryRatingItemsID: TAutoIncField;
    qryRatingItemsRatingID: TIntegerField;
    qryRatingItemsRatingRow: TIntegerField;
    qryRatingItemsCalcBase: TFloatField;
    qryRatingItemsCalcConst: TFloatField;
    qryRatingItemsCalcCo: TFloatField;
    qryRatingItemsStuffCode: TLargeintField;
    qryRatingItemsStuffCount: TIntegerField;
    grdRatingItems: TDBGrid;
    pnlItem: TPanel;
    Label8: TLabel;
    BtnDelete2: TBitBtn;
    BitBtn9: TBitBtn;
    btn1: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    DBNavigator1: TDBNavigator;
    qryRatingsRatingID: TIntegerField;
    qryRatingsCalcType: TWordField;
    qryRatingsCalcNumber: TIntegerField;
    qryRatingsCalcDate: TStringField;
    qryRatingsRunDate: TStringField;
    qryRatingsCodeFrom: TLargeintField;
    qryRatingsCodeTo: TLargeintField;
    qryRatingsCalcState: TWordField;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtCalcNumber: TDBEdit;
    edtCalcDate: TDBEdit;
    edtRunDateFram: TDBEdit;
    edtCodeFrom: TDBEdit;
    edtCodeTo: TDBEdit;
    edtCalcState: TDBEdit;
    Label1: TLabel;
    edtRunDateTo: TDBEdit;
    qryRatingsRNote: TWideStringField;
    qryRatingItemsRINote: TWideStringField;
    grpItemNote: TGroupBox;
    dbmmoRNote: TDBMemo;
    qryRatingItemsGrade: TWideStringField;
    qryFn_CBF_: TADOQuery;
    qryRatingsCalcBasedOnCode: TStringField;
    qryWageFormula: TADOQuery;
    qryRatings_CalcBasedOnCode: TStringField;
    qryRatingsQryCalcBased: TStringField;
    qryRatingItemsStuffCodeBase: TLargeintField;
    qryRatingItemsCustIDBase: TIntegerField;
    dbrgrpCalcKind: TDBRadioGroup;
    qryRatingsCalcKind: TWordField;
    Panel4: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnDataSetDelete1_: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    btnCalcBasedFormula: TBitBtn;
    btnCodeFrom: TSpeedButton;
    btnCodeTo: TSpeedButton;
    lblNameForm: TLabel;
    lblNmaeTo: TLabel;
    procedure srcRatingsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryRatingsAfterInsert(DataSet: TDataSet);
    procedure qryRatingItemsAfterInsert(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure grdRatingItemsEnter(Sender: TObject);
    procedure qryRatingsAfterPost(DataSet: TDataSet);
    procedure qryRatingsAfterScroll(DataSet: TDataSet);
    procedure btnCalcBasedFormulaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryRatingItemsBeforeEdit(DataSet: TDataSet);
    procedure btnCodeFromClick(Sender: TObject);
  private
    CalcType: Integer;
    TsFn_CBF_: TStrings;
    procedure InitForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RatingsF: TRatingsF;

implementation

uses
  DM, FormFunctions, GlobalPro, CalcBasedFormula, FaraConsts;

{$R *.dfm}

procedure TRatingsF.btnCalcBasedFormulaClick(Sender: TObject);
var
  qry: TADOQuery;
  SName: string;
begin
  inherited;
  if qryRatings.State in dsEditModes then
    qryRatings.Post;

  TsFn_CBF_ := TStringList.Create;
  with qryFn_CBF_ do
  begin
    Close;
    SQL.Text := 'SELECT name';
    SQL.Add('FROM sys.sysobjects');
    SQL.Add('WHERE (xtype IN (N''FN'', N''IF'', N''TF''))');

    case qryRatingsCalcKind.AsInteger of
      0:
        SQL.Add('AND (name LIKE N''%Fn_CBF_Customer%'')');
      1:
        SQL.Add('AND (name LIKE N''%Fn_CBF_StuffCode%'')');
    else
      SQL.Add('AND (name LIKE N''%Fn_CBF_%'')');
    end;
    Open;
    while not Eof do
    begin
      TsFn_CBF_.Add('qry' + Fields[0].AsString);

      SName := 'qry' + Fields[0].AsString;
      qry := TADOQuery(RatingsF.FindComponent(SName));
      if qry = nil then
        qry := TADOQuery.Create(Self);
      qry.Name := SName;
      qry.Connection := theMainConnection;
      qry.SQL.Text := 'SELECT * from dbo.%s(:CodeFrom , :CodeTo)';
      qry.SQL.Text := Format(qry.SQL.Text, [Fields[0].AsString]);
      qry.Parameters.ParamByName('CodeFrom').Value :=
        qryRatingsCodeFrom.AsLargeInt;
      qry.Parameters.ParamByName('CodeTo').Value := qryRatingsCodeTo.AsLargeInt;
      qry.Open;
      Next;
    end;
  end;
  CalcBasedFormulaF.ShowCalc(qryRatingItems, TsFn_CBF_, srcRatings);
end;

procedure TRatingsF.InitForm;
var
  id: Integer;
  i: Integer;
  qry: TADOQuery;
begin
  CalcType := var_glb_gParam;
  case CalcType of
    0:
      Caption := 'رتبه بندی کالا و مشتری';
//    1:
//      Caption := 'رتبه بندی مشتری';
//    2:
//      Caption := 'پورسانت';
//    3:
//      Caption := 'تخفیف';
  end;
  Caption := 'محاسبات ' + Caption;
  with qryRatings do
  begin
    AfterScroll := nil;
    Close;
    Parameters.ParamByName('CalcType').Value := CalcType;
    Open;
    AfterScroll := qryRatingsAfterScroll;
    Last;
  end;
  id := ColumnIndexByFieldName(grdRatingItems, 'Grade');
  grdRatingItems.Columns[id].PickList.Clear;
  for i := 0 to High(Grade) do
    grdRatingItems.Columns[id].PickList.Add(Grade[i]);

end;

procedure TRatingsF.grdRatingItemsEnter(Sender: TObject);
begin
  inherited;
  grdRatingItems.SelectedIndex := 1
end;

procedure TRatingsF.btnCodeFromClick(Sender: TObject);
var
  id: string;
  Name: string;
begin
  inherited;
  if dbrgrpCalcKind.ItemIndex = 1 then
    SpeedButtonCustomers(qryRatings.FieldByName((Sender as TSpeedButton)
      .Hint), id, Name)
  else
    SpeedButtonStuffCoding(qryRatings, (Sender as TSpeedButton).Hint,
      '0,3', Name);

  if (Sender as TSpeedButton).Hint = btnCodeFrom.Hint then
    lblNameForm.Caption := Name
  else
    lblNmaeTo.Caption := Name

end;

procedure TRatingsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TRatingsF.FormDestroy(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if qryFn_CBF_.Active then
    with qryFn_CBF_ do
    begin
      First;
      while not Eof do
      begin
        qry := TADOQuery(RatingsF.FindComponent('qry' + Fields[0].AsString));
        qry.Free;
        Next;
      end;
    end;
  TsFn_CBF_.Free;
end;

procedure TRatingsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdRatingItems, 3, True, CalcType.ToString);
end;

procedure TRatingsF.qryRatingItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RatingID').AsInteger := qryRatingsRatingID.AsInteger;
  DataSet.FieldByName('RatingRow').AsInteger := DataSet.RecordCount + 1;
end;

procedure TRatingsF.qryRatingItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryRatings.State in dsEditModes) then
    qryRatings.Edit;
end;

procedure TRatingsF.qryRatingsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RatingID').AsInteger :=
    GetANewCode(Self.Name + CalcType.ToString, 'Ratings', 'RatingID');
  DataSet.FieldByName('CalcNumber').AsInteger :=
    GetANewCode(Self.Name + CalcType.ToString, 'Ratings', 'CalcNumber');

  DataSet.FieldByName('CalcDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('RunDate').AsString := var_glb_CurrentDate;

  DataSet.FieldByName('CalcType').AsInteger := CalcType;
end;

procedure TRatingsF.qryRatingsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryRatingItems.UpdateBatch(arAll);
end;

procedure TRatingsF.qryRatingsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryRatingItems do
  begin
    Active := False;
    Parameters.ParamByName('RatingID').Value := qryRatingsRatingID.AsInteger;
    Active := True;
  end;
end;

procedure TRatingsF.srcRatingsStateChange(Sender: TObject);
begin
  inherited;
  qryRatingItems.Filtered := False;

  okPanel.Visible := qryRatings.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  pnlItem.Visible := okPanel.Visible;

  FreeReservedCodes(DMf.adcBSell, 'Ratings', 'CalcNumber',
    Self.Name + CalcType.ToString);
  FreeReservedCodes(DMf.adcBSell, 'Ratings', 'RatingID',
    Self.Name + CalcType.ToString);
end;

end.
