unit StuffCodingItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar, sndkey32,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, System.Actions;

type
  TStuffCodingItemsF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryStuffCodingItems: TADOQuery;
    srcStuffCodingItems: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SumGrid1: TSumGrid;
    qryStuffCodingItemsStuffCodingItemID: TAutoIncField;
    qryStuffCodingItemsStuffCode: TLargeintField;
    qryStuffCodingItemsLength_: TFMTBCDField;
    qryStuffCodingItemsWidth: TFMTBCDField;
    qryStuffCodingItemsThickness: TFMTBCDField;
    qryStuffCodingItemsWeight_: TFMTBCDField;
    qryStuffCodingItemsBarcode: TWideStringField;
    qryStuffCodingItemsDescription_: TStringField;
    GroupBox2: TGroupBox;
    dbmmoDescription_: TDBMemo;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryStuffCodingItemsAlternativeStuffCode: TStringField;
    procedure qryStuffCodingItemsAfterInsert(DataSet: TDataSet);
    procedure srcStuffCodingItemsStateChange(Sender: TObject);
    procedure qryStuffCodingItemsAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryStuffCodingItemsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    qryStuffCoding: TADOQuery;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    function enter(qry_StuffCoding: TADOQuery): TModalResult;
  end;

var
  StuffCodingItemsF: TStuffCodingItemsF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions;

{$R *.dfm}

function TStuffCodingItemsF.enter(qry_StuffCoding: TADOQuery): TModalResult;
begin
  Result := mrNone;
  StuffCodingItemsF := TStuffCodingItemsF.Create(Application);
  with StuffCodingItemsF do
    try
      qryStuffCoding := qry_StuffCoding;
      SetLookUpCash(qryStuffCodingItems);
      InitForm;
      Result := ShowModal;
    finally
      Free;
    end;
end;

procedure TStuffCodingItemsF.qryStuffCodingItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StuffCode').AsLargeInt :=
    qryStuffCoding.FieldByName('c_StuffCode').AsLargeInt;
end;

procedure TStuffCodingItemsF.InitForm;
begin
  with qryStuffCodingItems do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      qryStuffCoding.FieldByName('c_StuffCode').AsLargeInt;
    Active := True;
  end;
  DBGrid1.SelectedIndex:=1;
  SetColSize(DBGrid1, 7);
end;

procedure TStuffCodingItemsF.srcStuffCodingItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffCodingItems.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
end;

procedure TStuffCodingItemsF.qryStuffCodingItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
end;

procedure TStuffCodingItemsF.qryStuffCodingItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ Ã“¡ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TStuffCodingItemsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TStuffCodingItemsF.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TStuffCodingItemsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TStuffCodingItemsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;

          6:
            nextIndex := -1;
        else
          nextIndex := nextIndex + 1;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0] then

    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          if ((qryStuffCodingItems.State in dsEditModes)) then
            qryStuffCodingItems.Post;
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 1;

        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 2, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TStuffCodingItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

end.
