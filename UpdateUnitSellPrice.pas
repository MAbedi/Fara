{ -----------------------------------------------------------------------------
  Unit Name: UpdateUnitSellPrice
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit UpdateUnitSellPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, DB, ADODB, Mask, ComCtrls,
  SumDBGrid, Filter_ADO_Const, System.ImageList, System.Actions;

type
  TSearchItem = class
    BankName: String;
    caption: String;
  end; // tSearchItem

  TUpdateUnitSellPriceF = class(Ttemplate2MDIF)
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnSlelectInverse: TBitBtn;
    btnSelectAll: TBitBtn;
    actSendExel: TAction;
    actSort: TAction;
    DBGrid2: TDBGrid;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actPost: TAction;
    pnl1: TPanel;
    lbl6: TLabel;
    mskUnitSellPrice: TMaskEdit;
    actFilter: TAction;
    SumGrid1: TSumGrid;
    qryTypesItemsReciptType: TWordField;
    qryTypesItemsReciptCaption: TStringField;
    qryTypesItemsReciptDate: TStringField;
    qryTypesItemsPersonID1: TIntegerField;
    qryTypesItemsCustName: TStringField;
    qryTypesItemsStuffCode: TLargeintField;
    qryTypesItemsCalcUnitSellPrice: TFMTBCDField;
    qryTypesItemsCalcTotalInputPrice: TBCDField;
    qryTypesItemsUnitSellPrice: TFMTBCDField;
    qryTypesItemsTotalInputPrice: TBCDField;
    qryTypesItemsInputEntity: TFloatField;
    BitBtn1: TBitBtn;
    qryTypesItemsUnitSellPrice2: TBCDField;
    Label1: TLabel;
    MskUnitSellPrice2: TMaskEdit;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mskEndOfPriceCoChange(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    SQLWhere: String;
    procedure UpdateFilter;
    procedure InitForm;

  public
    { Public declarations }
  end;

var
  UpdateUnitSellPriceF: TUpdateUnitSellPriceF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  mmessage, search2, sort2;

{$R *.dfm}

procedure TUpdateUnitSellPriceF.UpdateFilter;
begin
  if (Trim(mskUnitSellPrice.Text) = EmptyStr) then
    Exit;
  with qryTypesItems do
  begin
    Close;
    Parameters.ParamByName('UnitSellPrice').Value :=
      StrToFloat(Trim(mskUnitSellPrice.Text));

    Parameters.ParamByName('UnitSellPrice1').Value :=
      StrToFloat(Trim(mskUnitSellPrice.Text));

    Parameters.ParamByName('UnitSellPrice2').Value :=
      StrToFloat(Trim(MskUnitSellPrice2.Text));

    Parameters.ParamByName('ReciptType').Value :=
      GetcTo(myParams.ParamValues['ReciptType'], ftInteger);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

    Open;
  end; // with
end;

procedure TUpdateUnitSellPriceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 4)
end;

procedure TUpdateUnitSellPriceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2)
end;

procedure TUpdateUnitSellPriceF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2)
end;

procedure TUpdateUnitSellPriceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems)
end;

procedure TUpdateUnitSellPriceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems)
end;

procedure TUpdateUnitSellPriceF.actPostExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if get_response('¬Ì« »—«Ì À»  ›Ì Ê »Â«Ì ﬂ· ”ÿ—Â«Ì ‰„«Ì‘ ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes
  then
    Exit;
  BigMessage('œ— Õ«· À»   ' + caption, 0);
  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'UPDATE ReciptItems';
      SQL.Add('SET UnitSellPrice = :UnitSellPrice , ');
      SQL.Add('TotalInputPrice = ROUND( :UnitSellPrice1 * ReciptItems.InputEntity, 0)');
      SQL.Add(', UnitSellPrice2 = :UnitSellPrice2  ');
      SQL.Add(SQLWhere);
      Parameters := qryTypesItems.Parameters;
      BigMessage(IntToStr(ExecSQL) + ' „Ê—œ À»  ‘œ', 1);
    finally
      Free;
      UpdateFilter;
      CloseMessage;
    end;
end;

procedure TUpdateUnitSellPriceF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm
end;

procedure TUpdateUnitSellPriceF.InitForm;
begin
  SQLWhere := 'FROM Recipts INNER JOIN' +
    ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND'
    + ' Recipts.YearID = ReciptItems.YearID INNER JOIN' +
    ' ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType INNER JOIN' +
    ' Customers ON Recipts.PersonID1 = Customers.CustID ' +
    ' WHERE (Recipts.ReciptType = :ReciptType )' +
    ' AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo)' +
    ' AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo )' +
    ' AND (Recipts.PersonID1 BETWEEN :PersonID1From AND :PersonID1To )' +
    ' AND (Recipts.ReciptState < 3  )' +
    ' AND (Recipts.ReciptNumber between :ReciptNumberFrom and :ReciptNumberTo)';

  qryTypesItems.SQL.Add(SQLWhere);
end;

procedure TUpdateUnitSellPriceF.mskEndOfPriceCoChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TUpdateUnitSellPriceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterReciptNumber);

      AddItem(DMf.adcBSell, 'PersonID1', '‰«„ „‘ —Ì', 'ﬂœ ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT Customers.CustID, Customers.CustName FROM Customers INNER JOIN Recipts ON Customers.CustID = Recipts.PersonID1',
        'SELECT Min(CustID),Max(CustID) FROM Customers INNER JOIN Recipts ON Customers.CustID = Recipts.PersonID1');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', ' ﬂœ ﬂ«·« ', 'ﬂœ', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM   StuffCoding',
      // 'SELECT MIN(c_StuffCode), MAX(c_StuffCode) FROM StuffCoding');

      AddItem(DMf.adcBSell, 'ReciptType', '›—„', 'ﬂœ ›—„', ftInteger,
        dvDefaults, '', '', ciCombo,
        'SELECT DISTINCT ReciptTypes.ReciptType, ReciptTypes.ReciptCaption ' +
        'FROM ReciptTypes INNER JOIN Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType '
        + 'WHERE (ReciptTypes.EffectType in(2,3)) ORDER BY ReciptTypes.ReciptType ',
        '');
      AddItem(DMf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;
  end;

end;

procedure TUpdateUnitSellPriceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close
end;

end.
