{ -----------------------------------------------------------------------------
  Unit Name: RecallIndent
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit TshFunctionsCopy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Math, MMESSAGE, System.Actions;

type
  TSearchItem = class
    fieldName: String;
    caption: String;
    IsString: Boolean;
  end;

  TTshFunctionsCopyF = class(TTemplate5F)
    qryPerson: TADOQuery;
    srcPerson: TDataSource;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    actRptCardex: TAction;
    actFilter: TAction;
    Imgchecked: TImage;
    ImgUnchecked: TImage;
    btnSelAll: TBitBtn;
    btnSelRev: TBitBtn;
    BitBtn7: TBitBtn;
    Image2: TImage;
    qryPersonChecked: TFMTBCDField;
    qryPersonCustID: TIntegerField;
    qryPersonCustName: TStringField;
    BitBtn1: TBitBtn;
    pb1: TProgressBar;
    procedure FormResize(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSelAllClick(Sender: TObject);
    procedure btnSelRevClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    sitem: TSearchItem;
    _qryitems: TADOQuery;
    _grd: TDBGrid;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure UpdateFilter;

    { Private declarations }
  public
    procedure SelectRecall(qryitems: TADOQuery; grd: TDBGrid);
    { Public declarations }
  end;

var
  TshFunctionsCopyF: TTshFunctionsCopyF;

implementation

uses StrUtils, DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TTshFunctionsCopyF.SelectRecall(qryitems: TADOQuery; grd: TDBGrid);
begin
  TshFunctionsCopyF := TTshFunctionsCopyF.Create(Application);
  try
    with TshFunctionsCopyF do
    begin
      _qryitems := qryitems;
      _grd := grd;
      if ShowModal = mrOk then
      begin

      end;
    end;
  finally
    TshFunctionsCopyF.Free;
  end;
end;

procedure TTshFunctionsCopyF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
end;

procedure TTshFunctionsCopyF.UpdateFilter;
begin
  with qryPerson Do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    // ShowQryParam(qryIndent);
    Active := True;
  end;
end;

procedure TTshFunctionsCopyF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'CustID', ' پرسنل ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
        ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + ' WHERE (CustomersGroup.GroupType IN(11,13,14,19))AND (Customers.CustomerActive = 0) ',
        'SELECT Min(PersonId),Max(PersonId) From Tsh.Functions');
      AddItem(DMf.adcBSell, 'PersonID1', ' واحد سازمانی ', 'کد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
        ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + ' WHERE (CustomersGroup.GroupType IN(5,16))',
        'SELECT Min(PersonID1),Max(PersonID1) From Customers');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end;
end;

procedure TTshFunctionsCopyF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPerson);
end;

procedure TTshFunctionsCopyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPerson);
end;

procedure TTshFunctionsCopyF.BitBtn1Click(Sender: TObject);
var
  qry: TADOQuery;
  i: Integer;
begin
  inherited;
  try
    if (_qryitems.State in dsEditModes) then
      _qryitems.Post;
    qry := TADOQuery.Create(DMf);
    with qry do
    begin
      Clone(_qryitems, ltReadOnly);
      Filter := 'FunctionId =' + _qryitems.FieldByName('FunctionId').AsString;
      Filtered := True;
    end;

    with qryPerson do
    begin
      Filter := 'checked=1';
      Filtered := True;
      DisableControls;
      First;
      pb1.Max := RecordCount;
      pb1.Min := 1;
      pb1.Position := 0;
      pb1.Step := 1;
      while not eof do
      begin
        _qryitems.Append;
        for i := 1 to _grd.Columns.Count - 1 do
        begin
          if (not _grd.Columns[i].ReadOnly) and (_grd.Columns[i].Visible) then
            _qryitems.FieldByName(_grd.Columns[i].fieldName).AsString :=
              qry.FieldByName(_grd.Columns[i].fieldName).AsString;
        end;
        _qryitems.FieldByName('PersonId').AsInteger :=
          qryPersonCustID.AsInteger;
        _qryitems.Post;
        pb1.StepIt;
        Next;
      end;
    end;
  finally
    _qryitems.EnableControls;
    TshFunctionsCopyF.ModalResult := mrOk;
    qry.Free;
    BigMessage('كپي شد.‏', 1);
  end;

end;

procedure TTshFunctionsCopyF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TTshFunctionsCopyF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TTshFunctionsCopyF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
end;

procedure TTshFunctionsCopyF.btnSelAllClick(Sender: TObject);
begin
  inherited;
  with qryPerson do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('checked').AsInteger := 1;
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TTshFunctionsCopyF.btnSelRevClick(Sender: TObject);
begin
  inherited;
  with qryPerson do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('checked').AsInteger :=
        IfThen(FieldByName('checked').AsInteger = 1, 0, 1);
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TTshFunctionsCopyF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TTshFunctionsCopyF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryPersonChecked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Imgchecked.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;

end;

procedure TTshFunctionsCopyF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end;
end;

procedure TTshFunctionsCopyF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonCustID);
end;

procedure TTshFunctionsCopyF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryPerson do
  begin
    edit;
    FieldByName('Checked').AsInteger :=
      IfThen(FieldByName('checked').AsInteger = 1, 0, 1);
    Post;
  end;
end;

end.
