// mahmood
unit rptFormsOnStuffMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppModule,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, DB, ADODB, ComCtrls, SumDBGrid, Filter_ADO_Const, FarsiReportBuilde,
  System.ImageList, System.Actions;

type
  TrptFormsOnStuffMonthsF = class(Ttemplate2MDIF)
    actFilter: TAction;
    qryForms: TADOQuery;
    SrcForms: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    qryFormsc_StuffName: TStringField;
    qryFormsUnitName: TStringField;
    qryFormsStuffSize: TStringField;
    qryFormsStuffAlloy: TStringField;
    qryFormsReciptType: TWordField;
    qryFormsReciptCaption: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    qryInitQry: TADOQuery;
    actSendExel: TAction;
    actPrint: TAction;
    actSort: TAction;
    qryFormsStuffDiameter: TFloatField;
    qryFormsM1Entity: TFloatField;
    qryFormsM1Weight: TFloatField;
    qryFormsM1Price: TBCDField;
    qryFormsM2Entity: TFloatField;
    qryFormsM2Weight: TFloatField;
    qryFormsM2Price: TBCDField;
    qryFormsM3Entity: TFloatField;
    qryFormsM3Weight: TFloatField;
    qryFormsM3Price: TBCDField;
    qryFormsM4Entity: TFloatField;
    qryFormsM4Weight: TFloatField;
    qryFormsM4Price: TBCDField;
    qryFormsM5Entity: TFloatField;
    qryFormsM5Weight: TFloatField;
    qryFormsM5Price: TBCDField;
    qryFormsM6Entity: TFloatField;
    qryFormsM6Weight: TFloatField;
    qryFormsM6Price: TBCDField;
    qryFormsM7Entity: TFloatField;
    qryFormsM7Weight: TFloatField;
    qryFormsM7Price: TBCDField;
    qryFormsM8Entity: TFloatField;
    qryFormsM8Weight: TFloatField;
    qryFormsM8Price: TBCDField;
    qryFormsM9Entity: TFloatField;
    qryFormsM9Weight: TFloatField;
    qryFormsM9Price: TBCDField;
    qryFormsM10Entity: TFloatField;
    qryFormsM10Weight: TFloatField;
    qryFormsM10Price: TBCDField;
    qryFormsM11Entity: TFloatField;
    qryFormsM11Weight: TFloatField;
    qryFormsM11Price: TBCDField;
    qryFormsM12Entity: TFloatField;
    qryFormsM12Weight: TFloatField;
    qryFormsM12Price: TBCDField;
    SumGrid1: TSumGrid;
    qryFormsEntity: TFloatField;
    qryFormsWeight: TFloatField;
    qryFormsPrice: TBCDField;
    qryFormsStuffCode: TLargeintField;
    qryFormsc_StuffTecInfo: TStringField;
    qryFormsTotallSellPrice: TBCDField;
    qryFormsM1TotallSellPrice: TBCDField;
    qryFormsM2TotallSellPrice: TBCDField;
    qryFormsM3TotallSellPrice: TBCDField;
    qryFormsM4TotallSellPrice: TBCDField;
    qryFormsM5TotallSellPrice: TBCDField;
    qryFormsM6TotallSellPrice: TBCDField;
    qryFormsM7TotallSellPrice: TBCDField;
    qryFormsM8TotallSellPrice: TBCDField;
    qryFormsM9TotallSellPrice: TBCDField;
    qryFormsM10TotallSellPrice: TBCDField;
    qryFormsM11TotallSellPrice: TBCDField;
    qryFormsM12TotallSellPrice: TBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCode_DiameterGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure ppLabel43GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    formType: Byte;
    procedure UpdateFilter;
    procedure initFormQry;
  public
    { Public declarations }
  end;

var
  rptFormsOnStuffMonthsF: TrptFormsOnStuffMonthsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, sort2, search2, StrUtils,
  ReciptsFunctions, FormFunctions;

{$R *.dfm}

procedure TrptFormsOnStuffMonthsF.UpdateFilter;
var
  i: Integer;
begin
  ActiveSellPrice2Dbgrid(DBGrid1);
  with qryForms do
  begin
    Active := False;
    // Parameters.ParamByName('ReciptType').Value := IntToStr(formType);
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
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftInteger);
      Parameters.ParamByName('StuffDiameterTo').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftInteger);
    end // if
    else
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value := 0;
      Parameters.ParamByName('StuffDiameterTo').Value := 2147483647;
    end; // else
    Active := True;
  end; // with
  with qryForms.Parameters do
  begin
    Label1.Caption := '«“ ‘„«—Â ' + IntToStr(ParamByName('ReciptNumberForm')
      .Value) + '  « ' + IntToStr(ParamByName('ReciptNumberTO').Value) + '    '
      + '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value + '    ' + IfThen(opt.AidInfoAvailable,
      ' «“ ÷Œ«„  ' + IntToStr(ParamByName('StuffDiameterFrom').Value) + '  « ' +
      IntToStr(ParamByName('StuffDiameterTo').Value), '');
    Label2.Caption := '«“ ﬂœ «‰»«— ' +
      IntToStr(ParamByName('StoreIDForm').Value) + '  « ' +
      IntToStr(ParamByName('StoreIDTo').Value) + '    ' + '«“ ﬂœ ﬂ«·« ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftString) + '  « ' +
      GetcTo(myParams.ParamValues['StuffCode'], ftString);
  end; // with
  // for i := 6 to DBGrid1.Columns.Count - 4 do
  // DBGrid1.Columns[i].Visible := False;
  // for i := GetcFrom(myParams.ParamValues['Month'], ftInteger)
  // to GetcTo(myParams.ParamValues['Month'], ftInteger) do
  // begin
  // DBGrid1.Columns[(i * 3) + 3].Visible := True;
  // DBGrid1.Columns[(i * 3) + 4].Visible := True;
  // DBGrid1.Columns[(i * 3) + 5].Visible := True;
  // end; // for
end;

procedure TrptFormsOnStuffMonthsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'Month', ' „«Â ', '„«Â', ftInteger, dvMinMax, '1',
        '12', ciSimple, '', 'SELECT 1,12 FROM StuffCoding');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      AddItem(DMF.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if opt.AidInfoAvailable then
        AddItem(DMF.adcBSell, 'StuffDiameter', ' ÷Œ«„  ', '', ftFloat, dvMinMax,
          '', '', ciSimple, '',
          'SELECT MIN(dbo.ReciptItems.StuffDiameter), MAX(dbo.ReciptItems.StuffDiameter)FROM dbo.ReciptItems INNER JOIN dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID WHERE dbo.Recipts.ReciptType = '
          + IntToStr(formType));
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts WHERE ReciptType = ' +
        IntToStr(formType));
      AddItem(DMF.adcBSell, 'ReciptNumber', ' ›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(formType));
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

procedure TrptFormsOnStuffMonthsF.initFormQry;
begin
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := 'ê“«—‘ ' + GetSellEffect(formType, qryForms) +
      ' » ›ﬂÌﬂ «Ã“«¡ ﬂ«·«';
  end; // with
end;

procedure TrptFormsOnStuffMonthsF.FormCreate(Sender: TObject);
begin
  inherited;
  initFormQry;
end;

procedure TrptFormsOnStuffMonthsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptFormsOnStuffMonthsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TrptFormsOnStuffMonthsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(formType));
end;

procedure TrptFormsOnStuffMonthsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptFormsOnStuffMonthsF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' +
    IntToStr(qryForms.Parameters.ParamByName('ReciptNumberForm').Value) + '  « '
    + IntToStr(qryForms.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TrptFormsOnStuffMonthsF.ppLblStuffCode_DiameterGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·«Ì ' + GetcFrom(myParams.ParamValues['StuffCode'], ftString)
    + '  « ' + GetcTo(myParams.ParamValues['StuffCode'], ftString) + '     ' +
    '«“ ÷Œ«„   ' + qryForms.Parameters.ParamByName('StuffDiameterFrom').Value +
    '  « ' + qryForms.Parameters.ParamByName('StuffDiameterTo').Value
end;

procedure TrptFormsOnStuffMonthsF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryForms.Parameters.ParamByName('DateFrom').Value +
    '  « ' + qryForms.Parameters.ParamByName('DateTo').Value
end;

procedure TrptFormsOnStuffMonthsF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ «‰»«— ' +
    IntToStr(qryForms.Parameters.ParamByName('StoreIDForm').Value) + '  « ' +
    IntToStr(qryForms.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TrptFormsOnStuffMonthsF.ppLabel42GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptFormsOnStuffMonthsF.ppLabel43GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TrptFormsOnStuffMonthsF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptFormsOnStuffMonthsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptFormsOnStuffMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryForms);
end;

procedure TrptFormsOnStuffMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryForms);
end;

procedure TrptFormsOnStuffMonthsF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

end.
