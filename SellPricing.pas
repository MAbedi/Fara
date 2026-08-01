{ -----------------------------------------------------------------------------
  Unit Name: SellPricing
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit SellPricing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, StrUtils,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, Provider, DBClient,
  SumDBGrid, System.ImageList, System.Actions;

type
  TSearchItem = class
    BankName: String;
    caption: String;
  end; // tSearchItem

  TSellPricingF = class(Ttemplate2MDIF)
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
    Image2: TImage;
    Image3: TImage;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actPost: TAction;
    btnSelectAll1: TBitBtn;
    pnl1: TPanel;
    lbl6: TLabel;
    mskEndOfPriceCo: TMaskEdit;
    lbl7: TLabel;
    mskAddValueCo: TMaskEdit;
    lbl1: TLabel;
    cmbReciptType: TComboBox;
    actFilter: TAction;
    SumGrid1: TSumGrid;
    qryTypesItemsReciptNumber: TIntegerField;
    qryTypesItemsReciptDate: TStringField;
    qryTypesItemsReciptState: TWordField;
    qryTypesItemsUseOtherID: TWideStringField;
    qryTypesItemsUseOtherName: TWideStringField;
    qryTypesItemsTotalOutputPrice: TBCDField;
    qryTypesItemsTotalStandardRate: TBCDField;
    qryTypesItemsUpTotalStandardPrice: TFloatField;
    qryTypesItemsTaxValue: TBCDField;
    qryTypesItemsUpTaxValue: TFloatField;
    qryTypesItemsTaxCo: TFloatField;
    qryTypesItemsUpTaxCo: TFloatField;
    qryTypesItemsStandardRate: TBCDField;
    qryTypesItemsUpStandardRate: TFloatField;
    qryTypesItemsReciptID: TIntegerField;
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
    procedure qryTypesItemsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    SQLWhere: String;
    procedure UpdateFilter;
    procedure InitForm;

  public
    { Public declarations }
  end;

var
  SellPricingF: TSellPricingF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  searchCode_ADO, mmessage, FormFunctions, search2, sort2;

{$R *.dfm}

procedure TSellPricingF.UpdateFilter;
begin
  if (Trim(mskEndOfPriceCo.Text) = EmptyStr) or
    (Trim(mskAddValueCo.Text) = EmptyStr) then
    Exit;
  with qryTypesItems do
  begin
    Close;
    Parameters.ParamByName('EndOfPriceCo1').Value :=
      StrToFloat(Trim(mskEndOfPriceCo.Text)) + 100;
    Parameters.ParamByName('EndOfPriceCo2').Value :=
      StrToFloat(Trim(mskEndOfPriceCo.Text)) + 100;
    Parameters.ParamByName('EndOfPriceCo3').Value :=
      StrToFloat(Trim(mskEndOfPriceCo.Text)) + 100;

    Parameters.ParamByName('AddValueCo1').Value :=
      StrToFloat(Trim(mskAddValueCo.Text));
    Parameters.ParamByName('AddValueCo2').Value :=
      StrToFloat(Trim(mskAddValueCo.Text));


    Parameters.ParamByName('ReciptType').Value :=
      integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('StateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('StateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Open;
  end; // with
end;

procedure TSellPricingF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 4)
end;

procedure TSellPricingF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2)
end;

procedure TSellPricingF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2)
end;

procedure TSellPricingF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems)
end;

procedure TSellPricingF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems)
end;

procedure TSellPricingF.actPostExecute(Sender: TObject);
begin
  inherited;
  BigMessage('œ— Õ«· À»  ﬁÌ„  ê–«—Ì ', 0);
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      // ,TotallSellPrice,ReciptItems.TotalOutputPrice -ISNULL( DeficitValue ,0)+  ROUND(ReciptItems.TotalOutputPrice * :EndOfPriceCo4 / 100 * :AddValueCo3 / 100, 0)
      // AS UpTotallSellPrice
      SQL.Text := 'UPDATE ReciptItems';
      SQL.Add('SET TotalStandardRate = ROUND(ReciptItems.TotalOutputPrice * :EndOfPriceCo1 / 100, 0),');
      SQL.Add('TaxValue = ROUND(ReciptItems.TotalOutputPrice * :EndOfPriceCo2 / 100 * :AddValueCo1 / 100, 0) ');
      SQL.Add(' ,TotallSellPrice = ( ISNULL(TotalStandardRate,0) + ISNULL(TaxValue,0) )');
      SQL.Add(', TaxCo = :AddValueCo2,');

      case opt.EntityDisplayType of
        0, 2:
          begin
            SQL.Add('StandardRate = CASE WHEN ReciptItems.OutputEntity <> 0 THEN ');
            SQL.Add('ROUND(ReciptItems.TotalOutputPrice * :EndOfPriceCo3 /100/ReciptItems.OutputEntity,0)ELSE 0 END');
          end;
        1, 3:
          begin
            SQL.Add('StandardRate = CASE WHEN ReciptItems.OutputWeight <> 0 THEN ');
            SQL.Add('ROUND(ReciptItems.TotalOutputPrice * :EndOfPriceCo3 /100/ReciptItems.OutputWeight,0)ELSE 0 END');
          end;
      end; // case

      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
      SQL.Add('UseOthers ON Recipts.UseOtherID = UseOthers.UseOtherID');
      SQL.Add(SQLWhere);
      Parameters := qryTypesItems.Parameters;
      BigMessage(IntToStr(ExecSQL) + ' „Ê—œ À»  ‘œ', 1);
    finally
      Free;
      UpdateFilter;
      CloseMessage;
    end;
end;

procedure TSellPricingF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm
end;

procedure TSellPricingF.InitForm;
begin
  SQLWhere := 'WHERE (Recipts.ReciptType = :ReciptType )' +
    ' AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo)'
    + ' AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)' +
    ' AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )' +
    ' AND (Recipts.ReciptState BETWEEN :StateFrom AND :StateTo )';

  qryTypesItems.SQL.Add(SQLWhere);
  InitCombos(cmbReciptType, 'SELECT ReciptType,ReciptCaption FROM ReciptTypes '
    + 'WHERE ((EffectType = 4)or SellEffect > 0) AND(MnuPlaceID <> 0)');
  cmbReciptType.ItemIndex := 0
end;

procedure TSellPricingF.mskEndOfPriceCoChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TSellPricingF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'State', '', 'Ê÷⁄Ì ', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'Select Min(ReciptState),max(ReciptState) from Recipts ');
      AddItem(DMf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'number', '', '‘„«—Â', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      AddItem(DMf.adcBSell, 'storeId', '«‰»«—', 'ﬂœ«‰»«—', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TSellPricingF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close
end;

procedure TSellPricingF.qryTypesItemsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(qryTypesItems.FieldByName('ReciptState').AsInteger)
end;

end.
