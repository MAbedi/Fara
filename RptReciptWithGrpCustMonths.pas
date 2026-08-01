unit RptReciptWithGrpCustMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, SumDBGrid, System.ImageList, System.Actions, Filter_ADO_Const;

type
  TRptReciptWithGrpCustMonthsF = class(Ttemplate2MDIF)
    actPrint: TAction;
    actFilter: TAction;
    actSentExclel: TAction;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    srcitems: TDataSource;
    Qryitems: TADOQuery;
    QryitemsCustomerGrpID: TIntegerField;
    QryitemsCustomerGrpName: TStringField;
    QryitemsReciptType: TWordField;
    QryitemsReciptCaption: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    qryInitQry: TADOQuery;
    actSort: TAction;
    DBGrid1: TDBGrid;
    SumGrid1: TSumGrid;
    QryitemsM1Entity: TFloatField;
    QryitemsM1Weight: TFloatField;
    QryitemsM1Price: TBCDField;
    QryitemsM1TotallSellPrice: TBCDField;
    QryitemsM2Entity: TFloatField;
    QryitemsM2Weight: TFloatField;
    QryitemsM2Price: TBCDField;
    QryitemsM2TotallSellPrice: TBCDField;
    QryitemsM3Entity: TFloatField;
    QryitemsM3Weight: TFloatField;
    QryitemsM3Price: TBCDField;
    QryitemsM3TotallSellPrice: TBCDField;
    QryitemsM4Entity: TFloatField;
    QryitemsM4Weight: TFloatField;
    QryitemsM4Price: TBCDField;
    QryitemsM4TotallSellPrice: TBCDField;
    QryitemsM5Entity: TFloatField;
    QryitemsM5Weight: TFloatField;
    QryitemsM5Price: TBCDField;
    QryitemsM5TotallSellPrice: TBCDField;
    QryitemsM6Entity: TFloatField;
    QryitemsM6Weight: TFloatField;
    QryitemsM6Price: TBCDField;
    QryitemsM6TotallSellPrice: TBCDField;
    QryitemsM7Entity: TFloatField;
    QryitemsM7Weight: TFloatField;
    QryitemsM7Price: TBCDField;
    QryitemsM7TotallSellPrice: TBCDField;
    QryitemsM8Entity: TFloatField;
    QryitemsM8Weight: TFloatField;
    QryitemsM8Price: TBCDField;
    QryitemsM8TotallSellPrice: TBCDField;
    QryitemsM9Entity: TFloatField;
    QryitemsM9Weight: TFloatField;
    QryitemsM9Price: TBCDField;
    QryitemsM9TotallSellPrice: TBCDField;
    QryitemsM10Entity: TFloatField;
    QryitemsM10Weight: TFloatField;
    QryitemsM10Price: TBCDField;
    QryitemsM10TotallSellPrice: TBCDField;
    QryitemsM11Entity: TFloatField;
    QryitemsM11Weight: TFloatField;
    QryitemsM11Price: TBCDField;
    QryitemsM11TotallSellPrice: TBCDField;
    QryitemsM12Entity: TFloatField;
    QryitemsM12Weight: TFloatField;
    QryitemsM12Price: TBCDField;
    QryitemsM12TotallSellPrice: TBCDField;
    QryitemsEntity: TFloatField;
    QryitemsWeight: TFloatField;
    QryitemsPrice: TBCDField;
    QryitemsTotallSellPrice: TBCDField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure FormResize(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSentExclelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
  private
    { Private declarations }
    Formtype: byte;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptReciptWithGrpCustMonthsF: TRptReciptWithGrpCustMonthsF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2,
  ReciptsFunctions, FormFunctions;

{$R *.dfm}

procedure TRptReciptWithGrpCustMonthsF.FormCreate(Sender: TObject);
var
  s: TCaption;
begin
  inherited;
  Formtype := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := Formtype;
    Active := True;
  end; // with
  Caption := 'ê“«—‘ ' + GetSellEffect(Formtype, Qryitems) +
    ' » ›ﬂÌﬂ ê—ÊÂ „‘ —Ì«‰ ';
end;

procedure TRptReciptWithGrpCustMonthsF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ê“«—‘ ' + QryitemsReciptCaption.AsString + ' » ›ﬂÌﬂ ê—ÊÂ „‘ —Ì«‰ ';
end;

procedure TRptReciptWithGrpCustMonthsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(Formtype));
  // SaveColWidth(DBGrid2);
end;

procedure TRptReciptWithGrpCustMonthsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(Formtype));
end;

procedure TRptReciptWithGrpCustMonthsF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptReciptWithGrpCustMonthsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptReciptWithGrpCustMonthsF.actSentExclelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptReciptWithGrpCustMonthsF.UpdateFilter;
var
  i: Integer;
begin
  ActiveSellPrice2Dbgrid(DBGrid1);
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],
    ftInteger), DBGrid1,Qryitems);
  with Qryitems do
  begin
    Active := False;
    // Parameters.ParamByName('type').Value := Formtype;
    Parameters.ParamByName('StoreIDForm').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('ReciptNumberForm').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Active := True;
  end; // with
  with Qryitems.Parameters do
  begin
    Label1.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
    Label2.Caption := '«“ ‘„«—Â ' + IntToStr(ParamByName('ReciptNumberForm')
      .Value) + '  « ' + IntToStr(ParamByName('ReciptNumberTO').Value);
  end; // with
  // for i := 2 to DBGrid1.Columns.Count - 4 do
  // DBGrid1.Columns[i].Visible := False;
  // for i := GetcFrom(myParams.ParamValues['Month'], ftInteger)
  // to GetcTo(myParams.ParamValues['Month'], ftInteger) do
  // begin
  // DBGrid1.Columns[(i * 3) - 1].Visible := True;
  // DBGrid1.Columns[(i * 3)].Visible := True;
  // DBGrid1.Columns[(i * 3) + 1].Visible := True;
  // end; // for
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],
    ftInteger), DBGrid1,Qryitems)
end;

procedure TRptReciptWithGrpCustMonthsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'Month', ' „«Â ', '„«Â', ftInteger, dvMinMax, '1',
        '12', ciSimple, '', 'SELECT 1,12 FROM StuffCoding');
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts WHERE ReciptType = ' +
        IntToStr(Formtype));
      AddItem(DMF.adcBSell, 'ReciptNumber', ' ›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(Formtype));

      AddItemFilter(GetFilter, TFilterCustomerGrpID);

      // AddItem(DMF.adcBSell, 'CustomerGrpID', ' ê—ÊÂ „‘ —Ì«‰ ', 'ê—ÊÂ',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
      // 'select Min(CustomerGrpID),Max(CustomerGrpID) From CustomersGroup');
      AddItem(DMF.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
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

procedure TRptReciptWithGrpCustMonthsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptReciptWithGrpCustMonthsF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Label2.Caption
end;

procedure TRptReciptWithGrpCustMonthsF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Label1.Caption
end;

procedure TRptReciptWithGrpCustMonthsF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRptReciptWithGrpCustMonthsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TRptReciptWithGrpCustMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(Qryitems);
end;

procedure TRptReciptWithGrpCustMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(Qryitems)
end;

end.
