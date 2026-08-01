{ -----------------------------------------------------------------------------
  Unit Name: StuffCodingSpecialSearch
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit StuffCodingSpecialSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, SumDBGrid, Mask, System.Actions,
  FarsiReportBuilde;

type
  TStuffCodingSpecialSearchF = class(TTemplate5F)
    qrySpecialSearch: TADOQuery;
    srcSpecialSearch: TDataSource;
    BitBtn1: TBitBtn;
    ImgNotChecked: TImage;
    ImgChecked: TImage;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    Panel4: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    BitBtn6: TBitBtn;
    qrySpecialSearchchecked: TIntegerField;
    qrySpecialSearchc_StuffName: TStringField;
    qrySpecialSearchStuffSize: TStringField;
    qrySpecialSearchStuffDiameter: TFloatField;
    qrySpecialSearchStuffAlloy: TStringField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    qryReciptsUnitSellPrice: TFMTBCDField;
    SumGrid1: TSumGrid;
    DBGrid3: TDBGrid;
    qryRecipts10: TADOQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    BCDField1: TBCDField;
    srcRecipts10: TDataSource;
    qryRecipts10Name: TStringField;
    MskStuffCode: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MskStuffName: TMaskEdit;
    Label3: TLabel;
    MskStuffSize: TMaskEdit;
    Label4: TLabel;
    MskStuffDiameter: TMaskEdit;
    Label5: TLabel;
    MskStuffAlloy: TMaskEdit;
    qrySpecialSearchStuffCode: TLargeintField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure cliSpecialRecallStoreIDChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure qrySpecialSearchAfterOpen(DataSet: TDataSet);
    procedure qrySpecialSearchAfterScroll(DataSet: TDataSet);
    procedure MskStuffCodeExit(Sender: TObject);
    procedure MskStuffAlloyEnter(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure ToggleCheck(CalculateSummary: boolean = True);
    procedure UpdateList;
    { Private declarations }
  public
    function Enter(RecalKind: Integer; qry: TADOQuery; AidDate: String)
      : boolean;
    { Public declarations }
  end;

var
  StuffCodingSpecialSearchF: TStuffCodingSpecialSearchF;

implementation

uses DM, GlobalPro, search2, sort2,
  mmessage;

{$R *.dfm}

function TStuffCodingSpecialSearchF.Enter;
begin
  StuffCodingSpecialSearchF := TStuffCodingSpecialSearchF.Create(Application);
  try
    with StuffCodingSpecialSearchF do
    begin
      with qrySpecialSearch Do
      begin
        Active := False;
        case RecalKind of
          1:
            begin
              With qryRecipts10 do
              begin
                Active := False;
                Parameters.ParamByName('AidDate').Value := AidDate;
              end;
            end;
          2:
            begin
            end;
        end;
        Entity_Weight(DBGrid1);
        UpdateList;
      end; // with
      if ShowModal = mrOk then
      begin
        with qrySpecialSearch do
        begin
          Filter := 'Checked=1';
          Filtered := True;
          DisableControls;
          qry.DisableControls;
          First;
          BigMessage('œ— Õ«· «‰ ﬁ«· ...', 0);
          while not eof do
          begin
            qry.Insert;
            qry.FieldByName('StuffCode').AsLargeInt := FieldByName('StuffCode')
              .AsLargeInt;
            if RecalKind = 0 then
              qry.FieldByName('StuffName').AsString :=
                FieldByName('c_StuffName').AsString;
            qry.FieldByName('StuffAlloy').AsString :=
              FieldByName('StuffAlloy').AsString;
            qry.FieldByName('StuffSize').AsString :=
              FieldByName('StuffSize').AsString;
            qry.FieldByName('StuffDiameter').AsFloat :=
              FieldByName('StuffDiameter').AsFloat;

            qryRecipts10.Last;
            qry.FieldByName('InvEntity').AsFloat :=
              qryRecipts10.FieldByName('Entity').AsFloat;
            qry.FieldByName('InvWeight').AsFloat :=
              qryRecipts10.FieldByName('Weight').AsFloat;

            qry.post;
            Next;
            Application.ProcessMessages;
          end; // while
        end; // qrySpecialSearch
      end; // if
    end; // with
    Result := True;
  finally
    qry.EnableControls;
    StuffCodingSpecialSearchF.Free;
    CloseMessage;
  end; // try
end;

procedure TStuffCodingSpecialSearchF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
  SetColSize(DBGrid2, 1, True);
  SetColSize(DBGrid3, 0, True);
end;

procedure TStuffCodingSpecialSearchF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qrySpecialSearch.FieldByName('Checked').AsInteger = 0 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, ImgNotChecked.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, ImgChecked.Picture.Graphic)
  end; // if
end;

procedure TStuffCodingSpecialSearchF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TStuffCodingSpecialSearchF.ToggleCheck(CalculateSummary
  : boolean = True);
begin
  with qrySpecialSearch do
  begin
    Edit;
    if FieldByName('Checked').AsInteger <> 0 then
      FieldByName('Checked').AsInteger := 0
    else
      FieldByName('Checked').AsInteger := 1;
    post;
  end; // with
end;

procedure TStuffCodingSpecialSearchF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TStuffCodingSpecialSearchF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySpecialSearch.FieldByName('StuffCode'));
end;

procedure TStuffCodingSpecialSearchF.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // (Sender as TDBGrid).Refresh
end;

procedure TStuffCodingSpecialSearchF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialSearch);
end;

procedure TStuffCodingSpecialSearchF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialSearch);
end;

procedure TStuffCodingSpecialSearchF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TStuffCodingSpecialSearchF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffCodingSpecialSearchF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  qryRecipts.DisableControls;
  qryRecipts10.DisableControls;
  with qrySpecialSearch do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('Checked').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  qryRecipts.EnableControls;
  qryRecipts10.EnableControls;
end;

procedure TStuffCodingSpecialSearchF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialSearch do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      if FieldByName('Checked').AsInteger <> 0 then
        FieldByName('Checked').AsInteger := 1
      else
        FieldByName('Checked').AsInteger := 0;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TStuffCodingSpecialSearchF.cliSpecialRecallStoreIDChange
  (Sender: TField);
begin
  inherited;
  PriceOnStoreType(qrySpecialSearch.FieldByName('StoreID').AsInteger, DBGrid1,
    qrySpecialSearch)
end;

procedure TStuffCodingSpecialSearchF.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TStuffCodingSpecialSearchF.UpdateList;
begin
  with qrySpecialSearch do
  begin
    Active := False;
    Active := True;
  end; // with
end;

procedure TStuffCodingSpecialSearchF.qrySpecialSearchAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // with qrySpecialSearch do begin
  // DisableControls;
  // First;
  // while not eof do begin
  // Edit;
  // FieldByName('Checked').AsInteger:=0;
  // Post;
  // Next;
  // end;//while
  // First;
  // EnableControls;
  // end;//with
end;

procedure TStuffCodingSpecialSearchF.qrySpecialSearchAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value := qrySpecialSearch.FieldByName
      ('StuffCode').AsLargeInt;
    Parameters.ParamByName('c_StuffName').Value :=
      qrySpecialSearch.FieldByName('c_StuffName').AsString;
    Parameters.ParamByName('StuffSize').Value := qrySpecialSearch.FieldByName
      ('StuffSize').AsString;
    Parameters.ParamByName('StuffDiameter').Value :=
      qrySpecialSearch.FieldByName('StuffDiameter').AsFloat;
    Parameters.ParamByName('StuffAlloy').Value :=
      qrySpecialSearch.FieldByName('StuffAlloy').AsString;
    Active := True;
  end;

  with qryRecipts10 do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value := qrySpecialSearch.FieldByName
      ('StuffCode').AsLargeInt;
    Parameters.ParamByName('c_StuffName').Value :=
      qrySpecialSearch.FieldByName('c_StuffName').AsString;
    Parameters.ParamByName('StuffSize').Value := qrySpecialSearch.FieldByName
      ('StuffSize').AsString;
    Parameters.ParamByName('StuffDiameter').Value :=
      qrySpecialSearch.FieldByName('StuffDiameter').AsFloat;
    Parameters.ParamByName('StuffAlloy').Value :=
      qrySpecialSearch.FieldByName('StuffAlloy').AsString;
    Parameters.ParamByName('StuffCode2').Value :=
      qrySpecialSearch.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('c_StuffName2').Value :=
      qrySpecialSearch.FieldByName('c_StuffName').AsString;
    Parameters.ParamByName('StuffSize2').Value :=
      qrySpecialSearch.FieldByName('StuffSize').AsString;
    Parameters.ParamByName('StuffDiameter2').Value :=
      qrySpecialSearch.FieldByName('StuffDiameter').AsFloat;
    Parameters.ParamByName('StuffAlloy2').Value :=
      qrySpecialSearch.FieldByName('StuffAlloy').AsString;

    Parameters.ParamByName('StuffCode3').Value :=
      qrySpecialSearch.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('c_StuffName3').Value :=
      qrySpecialSearch.FieldByName('c_StuffName').AsString;
    Parameters.ParamByName('StuffSize3').Value :=
      qrySpecialSearch.FieldByName('StuffSize').AsString;
    Parameters.ParamByName('StuffDiameter3').Value :=
      qrySpecialSearch.FieldByName('StuffDiameter').AsFloat;
    Parameters.ParamByName('StuffAlloy3').Value :=
      qrySpecialSearch.FieldByName('StuffAlloy').AsString;

    Parameters.ParamByName('StuffCode4').Value :=
      qrySpecialSearch.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('c_StuffName4').Value :=
      qrySpecialSearch.FieldByName('c_StuffName').AsString;
    Parameters.ParamByName('StuffSize4').Value :=
      qrySpecialSearch.FieldByName('StuffSize').AsString;
    Parameters.ParamByName('StuffDiameter4').Value :=
      qrySpecialSearch.FieldByName('StuffDiameter').AsFloat;
    Parameters.ParamByName('StuffAlloy4').Value :=
      qrySpecialSearch.FieldByName('StuffAlloy').AsString;

    Active := True;
  end;

end;

procedure TStuffCodingSpecialSearchF.MskStuffCodeExit(Sender: TObject);
begin
  inherited;
  try
    With qrySpecialSearch do
    begin
      Filter := '(StuffCode >-999999)';
      if Trim(MskStuffCode.Text) <> EmptyStr then
        Filter := Filter + 'AND  (StuffCode = ' + Trim(MskStuffCode.Text) + ')';
      if Trim(MskStuffSize.Text) <> EmptyStr then
        Filter := Filter + 'AND  (StuffSize like ' +
          QuotedStr('%' + Trim(MskStuffSize.Text) + '%') + ')';
      if Trim(MskStuffDiameter.Text) <> EmptyStr then
        Filter := Filter + 'AND  (StuffDiameter = ' +
          Trim(MskStuffDiameter.Text) + ')';
      if Trim(MskStuffAlloy.Text) <> EmptyStr then
        Filter := Filter + 'AND  (StuffAlloy like ' +
          QuotedStr('%' + Trim(MskStuffAlloy.Text) + '%') + ')';
      if Trim(MskStuffName.Text) <> EmptyStr then
        Filter := Filter + 'AND ( c_StuffName like ' +
          QuotedStr('%' + Trim(MskStuffName.Text) + '%') + ')';
      Filtered := True;
    end; // with
  except
    Warn('«‘ﬂ«· œ— Ã” ÃÊ');
  end;
  SetKeyboardFarsi;

end;

procedure TStuffCodingSpecialSearchF.MskStuffAlloyEnter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin;
end;

end.
