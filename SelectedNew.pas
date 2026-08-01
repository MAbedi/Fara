unit SelectedNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, System.Actions;

type
  TSelectedNewF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    Panel3: TPanel;
    actPrint: TAction;
    DataSetDelete: TAction;
    DBGridEh1: TDBGridEh;
    qryRecipts: TADOQuery;
    qryReciptsReciptCaption: TStringField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsTotalPrice: TBCDField;
    qryReciptsReciptNote: TStringField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    srcRecipts: TDataSource;
    btn1: TBitBtn;
    qryReciptsReciptsRow: TIntegerField;
  private
    { Private declarations }
    procedure InitForm(PersonID2: Integer);
    function SetReciptsRow(grd: TDBGridEh; qryRecipts: TADOQuery;
      ReciptsRow: Integer): Integer;
  public
    { Public declarations }
    function enter(ReciptsRow, PersonID2: Integer): Integer;
  end;

var
  SelectedNewF: TSelectedNewF;

implementation

uses DM, GlobalPro, FormFunctions, MMESSAGE;

{$R *.dfm}

function TSelectedNewF.enter(ReciptsRow, PersonID2: Integer): Integer;
begin
  SelectedNewF := TSelectedNewF.Create(Application);
  with SelectedNewF do
  begin
    try
      InitForm(PersonID2);
      Result := 0;
      if ShowModal = mrOk then
      begin
        Result := SetReciptsRow(DBGridEh1, qryRecipts, ReciptsRow);
      end;
    finally
      Free;
    end;
  end;
end;

procedure TSelectedNewF.InitForm(PersonID2: Integer);
begin
  with qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('PersonID2').Value := PersonID2;
    Active := True;
  end;
end;

function TSelectedNewF.SetReciptsRow(grd: TDBGridEh; qryRecipts: TADOQuery;
  ReciptsRow: Integer): Integer;
const
  PartSise = 100;
var
  i, c: Integer;
  s: string;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Recipts SET ReciptsRow = ' + IntToStr(ReciptsRow) +
          ' WHERE (isnull(ReciptsRow,0)=0)' + ' AND(ReciptID IN (' + s + '))';
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' + IntToStr(grd.SelectedRows.Count) +
          ' ‌ تنظيم شد.', 1);
        s := EmptyStr;
      end;
  end;

begin
  c := 0;
  if grd.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي تنظيم تنخواه نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <>
      mrYes then
      Exit;
  if ReciptsRow = 0 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT ISNULL(MAX(ReciptsRow),0)+1 FROM Recipts';
      Active := True;
      ReciptsRow := Fields[0].AsInteger;
      ReciptsRow := StrToInt(Trim(get_box('تنظيم تنخواه', 'تنظيم با عدد:',
        IntToStr(ReciptsRow))));
    end;
  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with grd.DataSource.DataSet do
      for i := 0 to grd.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grd.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName('ReciptID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    Result := ReciptsRow;
  end;

end;

end.
