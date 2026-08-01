{ -----------------------------------------------------------------------------
  Unit Name: rptCofferTransAll
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptCofferTransAll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ppDB, ppDBPipe, ppBands, ppClass, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, Mask,
  DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, ComCtrls, Menus, ppTypes, SumDBGrid,
  ppParameter, StrUtils, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptCofferTransAllF = class(Ttemplate2MDIF)
    qryCustomer: TADOQuery;
    qryTrans: TADOQuery;
    SrcTrans: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    Label1: TLabel;
    qryCustomerCustID: TIntegerField;
    qryCustomerCustName: TStringField;
    actFilter: TAction;
    qryInitQry: TADOQuery;
    actShowForm: TAction;
    actSendExel: TAction;
    actPrint: TAction;
    actSort: TAction;
    PopMnuPrint: TPopupMenu;
    AllClick: TMenuItem;
    N2: TMenuItem;
    SumGrid1: TSumGrid;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine9: TppLine;
    ppLblDate: TppLabel;
    ppLine12: TppLine;
    ppLine51: TppLine;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine13: TppLine;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppLblCustname2: TppLabel;
    ppLblCustomerID2: TppLabel;
    ppLabel8: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppLine22: TppLine;
    ppLine33: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine43: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine30: TppLine;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLine36: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine37: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine38: TppLine;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppDBText12: TppDBText;
    qryCustomerAccountKind: TIntegerField;
    qryCustomerCurrenciesName: TStringField;
    cmb1: TComboBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryTransAfterOpen(DataSet: TDataSet);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure cmb1Change(Sender: TObject);
  private
    { Private declarations }
    formType: Integer;
    Type4In: String;
    ShowFilter: Boolean;
    procedure UpdateFilter;
    procedure initFormQry;
    procedure Updateremain;
    procedure DBGridColumns;
  public
    { Public declarations }
  end;

var
  rptCofferTransAllF: TrptCofferTransAllF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, searchCode_ADO,
  search2, sort2,
  FormFunctions, shamsiDate, DateUtils, FaraConsts, rptCofferTrans2,
  Filter_ADO_Const;

{$R *.dfm}
{ TrptCofferTransF }

procedure TrptCofferTransAllF.UpdateFilter;
var
  DateFrom1: String;
begin
  with qryCustomer do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);
    Active := True;
  end;
  with qryTrans do
  begin
    Active := False;
    SQL.Text := 'SELECT AllAccount_1.FormDate';
    while NOt qryCustomer.Eof do
    begin
      SQL.Add(Format
        (', SUM(CASE WHEN CustomerID1 = %d THEN bed - bes ELSE 0 END) AS BedBes%d',
        [qryCustomerCustID.AsInteger, qryCustomer.RecNo]));
      SQL.Add(Format(', Fitful.FitfulIDc AS CalcBedBes%d',
        [qryCustomer.RecNo]));
      qryCustomer.Next;
    end;
    SQL.Add(',Fitful.FitfulIDc AS SumBedBes,SUM( bed - bes) AS Sum_BedBes');
    SumGrid1.FieldsName := 'Sum_BedBes';
    SQL.Add('FROM dbo.AllAccount( :TypeDoc1 , :TypeDoc2, :TypeDoc3 , :TypeDoc4 , :CustIDFrom , :CustIDTo ');
    SQL.Add(',:DateFrom , :DateTo, :DateFrom1, :YearIDFrom , :YearIDTo , :SellsMethodFrom, :SellsMethodTo, ');
    SQL.Add(':SellsEmporiumFrom, :SellsEmporiumTo ,DEFAULT ) AS AllAccount_1 CROSS JOIN ');
    SQL.Add(' Fitful ');
    SQL.Add('GROUP BY AllAccount_1.FormDate, Fitful.FitfulIDc');
    SQL.Add('ORDER BY AllAccount_1.FormDate');

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('TypeDoc1').Value := IntToStr(formType);
    Parameters.ParamByName('TypeDoc2').Value := -1;
    Parameters.ParamByName('TypeDoc3').Value := -1;
    Parameters.ParamByName('TypeDoc4').Value := -1;

    if formType in [1, 2, 10, 17] then
    begin
      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 2;
      Parameters.ParamByName('TypeDoc4').Value := 10;
    end; // if

    if formType = 109 then
    begin
      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 1;
      Parameters.ParamByName('TypeDoc4').Value := 16;
    end;

    if formType = 110 then
    begin
      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 1;
      Parameters.ParamByName('TypeDoc4').Value := 17;
    end;

    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    DateFrom1 := GetcFrom(myParams.ParamValues['Date'], ftDate);
    DateFrom1 := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFrom1), -1));
    Parameters.ParamByName('DateFrom1').Value := DateFrom1;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);
    Active := True;
  end; // with
  with qryTrans.Parameters do
  begin
    Label1.Caption := 'از تاريخ ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TrptCofferTransAllF.actFilterExecute(Sender: TObject);
begin
  inherited;
  if not ShowFilter then
    myParams.Clear;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(dmF.adcBSell, 'CustID', ' دريافت كننده ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE  GroupType in('
        + Type4In + ')))',
        'SELECT Min(dbo.Customers.CustID),Max(dbo.Customers.CustID) FROM    dbo.Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE  GroupType in('
        + Type4In + '))) ');
      AddItem(dmF.adcBSell, 'Date', ' تاريخ فرم ', 'تاريخ', ftDate, dvDefaults,
        APPBank.StartYear, APPBank.endYear, ciSimple, '', '');
      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TrptCofferTransAllF.initFormQry;
begin
  formType := var_glb_gParam;
  cmb1.ItemIndex := 1;
  lblCaption.Hint := IntToStr(formType);
  case formType of
    1, 4, 11:
      begin
        Caption := 'دفتر حساب صندوق/تنخواه گردان';
        if formType = 4 then
          Caption := 'دفتر حساب اسناد دريافتني ';

        if formType = 11 then
          Caption := 'دفتر حساب اسناد برگشتي';
        qryCustomer.SQL.Add('AND (CustomersGroup.GroupType IN (2))');
        Type4In := '2';
      end;
    2, 3:
      begin
        Caption := 'دفتر حساب بانك';
        if formType = 3 then
          Caption := 'دفتر حساب اسناد درجريان وصول ';
        qryCustomer.SQL.Add('AND (CustomersGroup.GroupType IN (1))');
        Type4In := '1';
      end;
    17:
      begin
        Caption := 'دفتر حساب ' + CustGroupsNames[formType];
        qryCustomer.SQL.Add('AND (CustomersGroup.GroupType IN (17))');
        Type4In := '17';
      end;
    109:
      begin
        Caption := 'دفتر حساب تسهيلات دريافتي';
        qryCustomer.SQL.Add('AND (CustomersGroup.GroupType IN (1,2))');
        Type4In := '1,2';
      end;
    110:
      begin
        Caption := 'دفتر حساب تسهيلات پرداختي';
        qryCustomer.SQL.Add('AND (CustomersGroup.GroupType IN (1,2))');
        Type4In := '1,2';
      end;

  else
    begin
      if formType = 5 then
        Caption := 'دفتر حساب اسناد تضيميني';
      qryCustomer.SQL.Add('AND (CustomersGroup.GroupType IN (1,2))');
      Type4In := '1,2';
    end;
  end;
  Caption := StringReplace(Caption, 'دفتر حساب', 'دفتر حساب کلی', []);
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
  end; // with

  qryCustomer.SQL.Add(IfThen(not User.PowerUser and
    (qryInitQry.FieldByName('UserSecurityCheckActive').AsInteger in[2,3]),
    ' AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(User.id) + ')=1', ''));

end;

procedure TrptCofferTransAllF.FormCreate(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
  initFormQry
end;

procedure TrptCofferTransAllF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TrptCofferTransAllF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, True, IntToStr(formType));
end;

procedure TrptCofferTransAllF.FormShow(Sender: TObject);
begin
  inherited;
  if not ShowFilter then
  begin
    UpdateFilter;
    Exit;
  end;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TrptCofferTransAllF.DBGridColumns;
var
  i: Integer;
begin
  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    if Pos(LowerCase('CalcBedBes'), LowerCase(DBGrid1.Columns[i].FieldName)) > 0
    then
      DBGrid1.Columns[i].Visible := cmb1.ItemIndex in [0, 1];
    if Pos(LowerCase('_BedBes'),
      LowerCase('_' + DBGrid1.Columns[i].FieldName)) > 0 then
      DBGrid1.Columns[i].Visible := cmb1.ItemIndex in [0, 2];
  end;
  setColumns2(DBGrid1, False, 'Sum_BedBes');
  ColorDBGrid(DBGrid1);
end;

procedure TrptCofferTransAllF.qryTransAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain;
end;

procedure TrptCofferTransAllF.Updateremain;
var
  cArray: Array of Currency;
  i: Integer;
  sFieldName: string;
  SumBedBes: Currency;
begin
  with qryCustomer do
  begin
    First;
    while not Eof do
    begin
      qryTrans.FieldByName(Format('CalcBedBes%d', [RecNo])).DisplayLabel :=
        qryCustomerCustName.AsString;
      qryTrans.FieldByName(Format('BedBes%d', [RecNo])).DisplayLabel :=
        'گردش ' + qryCustomerCustName.AsString;
      Next;
    end;
  end;

  SetLength(cArray, qryCustomer.RecordCount);
  with qryTrans do
  begin
    DisableControls;
    FieldByName('FormDate').DisplayLabel := 'تاریخ';
    FieldByName('FormDate').Tag := 3;
    FieldByName('SumBedBes').DisplayLabel := 'جمع';
    FieldByName('SumBedBes').Tag := 3;
    TBCDField(FieldByName('SumBedBes')).Currency := True;
    for i := 0 to High(cArray) do
    begin
      sFieldName := Format('BedBes%d', [i + 1]);
      TBCDField(FieldByName(sFieldName)).Currency := True;
      FieldByName(sFieldName).Tag := 3;
      sFieldName := Format('CalcBedBes%d', [i + 1]);
      TBCDField(FieldByName(sFieldName)).Currency := True;
      FieldByName(sFieldName).Tag := 3;
    end;
    for i := 0 to High(cArray) do
      cArray[i] := 0;
    SumBedBes := 0;
    while not Eof do
    begin
      for i := 0 to High(cArray) do
      begin
        cArray[i] := cArray[i] + FieldByName(Format('BedBes%d', [i + 1]))
          .AsCurrency;
        SumBedBes := SumBedBes + FieldByName(Format('BedBes%d', [i + 1]))
          .AsCurrency;
      end;
      edit;
      for i := 0 to High(cArray) do
        FieldByName(Format('CalcBedBes%d', [i + 1])).AsCurrency := cArray[i];
      FieldByName('SumBedBes').AsCurrency := SumBedBes;

      post;
      Next;
    end; // while
    First;
    EnableControls;
  end;
  DBGridColumns;
end;

// procedure TrptCofferTransAllF.UpdateremainArz;
// var
// cArz: Currency;
// begin
// with qryTrans do
// begin
// DisableControls;
// cArz := 0;
// while not eof do
// begin
// cArz := cArz + FieldByName('ArzBalance').AsCurrency;
// edit;
// FieldByName('calcuArzBalance').AsCurrency := cArz;
// post;
// Next;
// end; // while
// First;
// EnableControls;
// end; // with
// end;

procedure TrptCofferTransAllF.actShowFormExecute(Sender: TObject);
var
  s: string;
  id: Integer;
begin
  inherited;
  if (DBGrid1.SelectedIndex > 0) and
    (DBGrid1.SelectedIndex < DBGrid1.Columns.Count - 1) then
    try
      Var_glb_NoFilter := True;
      s := StringReplace(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.FieldName,
        'CalcBedBes', '', []);
      s := StringReplace(s, 'BedBes', '', []);
      id := StrToInt(s) - 1;
      qryCustomer.First;
      qryCustomer.MoveBy(id);
      Warn2(qryCustomerCustName.AsString);
      CreateMDIForm2(TrptcofferTrans2F, rptcofferTrans2F, Self, formType);
      rptcofferTrans2F.qryCustomer.Locate('CustID',
        qryCustomerCustID.AsInteger, []);
      Var_glb_NoFilter := False;
    finally

    end;
end;

procedure TrptCofferTransAllF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCofferTransAllF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCofferTransAllF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCofferTransAllF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptCofferTransAllF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Label1.Caption;
end;

procedure TrptCofferTransAllF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  PopMnuPrint.Popup(Mouse.CursorPos.x, Mouse.CursorPos.Y);
end;

procedure TrptCofferTransAllF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptCofferTransAllF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTrans);
end;

procedure TrptCofferTransAllF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrans);
end;

procedure TrptCofferTransAllF.AllClickClick(Sender: TObject);
begin
  inherited;
  try
    qryTrans.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryCustomer.EnableControls;
    qryTrans.EnableControls;
  end; // try

end;

procedure TrptCofferTransAllF.cmb1Change(Sender: TObject);
begin
  inherited;
  DBGridColumns
end;

end.
