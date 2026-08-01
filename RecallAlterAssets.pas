// mahmood  1401/09/27
unit RecallAlterAssets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DB, ADODB, ComCtrls, DBActns, ActnList,
  StrUtils, StdCtrls, Buttons, ExtCtrls, DBCtrls, Provider, DBClient, Math,
  System.Actions, FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Filter_ADO_Const, Vcl.Imaging.jpeg;

type
  TRecallAlterAssetsF = class(TTemplate4F)
    qryDetail_Item: TADOQuery;
    srcDetail_Item: TDataSource;
    actSearch: TAction;
    BitBtn1: TBitBtn;
    actSearch2: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    qryDetail_Item_checked: TFMTBCDField;
    DBGrid2: TCedarDbgrid;
    actFilter: TAction;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    qryDetail_ItemSerial: TIntegerField;
    qryDetail_ItemAlterDate: TStringField;
    qryDetail_ItemAlterPrice: TBCDField;
    qryDetail_ItemAlterDepValue: TBCDField;
    qryDetail_ItemAlterDepValueInYear: TBCDField;
    qryDetail_ItemAlterNote: TMemoField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure qryDetail_ItemAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure InsertAmval(qryA: TADOQuery);
  public
    { Public declarations }

    procedure SelectRecall(qryItems,qryReciptsRegulates: TADOQuery);
  end;

var
  RecallAlterAssetsF: TRecallAlterAssetsF;

implementation

uses searchCode_ADO, DM, GlobalPro, search2, sort2, FaraConsts, FormFunctions,
  filter_ADO, MMESSAGE;

{$R *.dfm}
{ TRecallAlterAssetsF }

procedure TRecallAlterAssetsF.SelectRecall(qryItems,qryReciptsRegulates: TADOQuery);
var
  b: Boolean;
begin
  RecallAlterAssetsF := TRecallAlterAssetsF.Create(Application);
  with RecallAlterAssetsF do
    try
      With qryDetail_Item DO
      begin
        Active := False;
        Parameters.ParamByName('ReciptItemsID').Value :=
          qryItems.FieldByName('ID').AsLargeInt;
        Active := True;
      end;

      if ShowModal = mrOk then
      begin
        BigMessage('لطفا صبر کنید....', 0);
        InsertAmval(qryReciptsRegulates)
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRecallAlterAssetsF.InsertAmval(qryA: TADOQuery);
begin
  With qryDetail_Item do
  begin
    while not Eof do
    begin
      if qryDetail_Item_checked.AsInteger = 1 then
      begin

        qryA.Insert;
        qryA.FieldByName('RegPrice').AsCurrency :=
          FieldByName('AlterPrice').AsCurrency;

        qryA.FieldByName('RegDate').AsString :=
          FieldByName('AlterDate').AsString;

        qryA.FieldByName('RegNote').AsString :=
          FieldByName('AlterNote').AsString;

        qryA.Post;

      end;
      Next;
    end;

  end;
end;

procedure TRecallAlterAssetsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetail_ItemSerial);
end;

procedure TRecallAlterAssetsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetail_Item.FieldByName(opt.SearchCode));
end;

procedure TRecallAlterAssetsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk
end;

procedure TRecallAlterAssetsF.FormCreate(Sender: TObject);
begin
  inherited;
  Width := StrToInt(ReadConfig(APPID, Self.Name + '_Width', IntToStr(Width)));

end;

procedure TRecallAlterAssetsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, Self.Name + '_Width', IntToStr(Width));

end;

procedure TRecallAlterAssetsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItemFilter(GetFilter, TFilterYearID);

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        // UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRecallAlterAssetsF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetail_Item);
end;

procedure TRecallAlterAssetsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail_Item);

end;

procedure TRecallAlterAssetsF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck(True);
  end; // if

end;

procedure TRecallAlterAssetsF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryDetail_Item do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      ifthen(FieldByName('_Checked').AsInteger = 1, 0, 1);
    Post;
  end; // with
end;

procedure TRecallAlterAssetsF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallAlterAssetsF.qryDetail_ItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with qryDetail_Item do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger := 1;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with

end;

end.
