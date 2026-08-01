{ -----------------------------------------------------------------------------
  Unit Name: rptReciptSumOnCustomersItem
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptReciptSumOnPersonID1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  ADODB, SumDBGrid, Grids, Vcl.DBGrids, DBCtrls, StdCtrls, Mask, Buttons,
  DBActns, ActnList, ExtCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const;

type
  TrptReciptSumOnPersonID1F = class(Ttemplate2MDIF)
    srcRecipt_Items: TDataSource;
    qryCustomers: TADOQuery;
    qryRecipt_Items: TADOQuery;
    srcCustomers: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    LblPerson1: TLabel;
    EdtPersonID1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextCustName: TDBText;
    DBNavigator1: TDBNavigator;
    qryRecipt_Itemsc_StuffName: TStringField;
    qryRecipt_Itemsentity: TFloatField;
    qryRecipt_Itemsweight: TFloatField;
    actFilter: TAction;
    actSendExel: TAction;
    LblLimit: TLabel;
    actShowForm: TAction;
    ppReport1: TppReport;
    actPrint: TAction;
    actSort: TAction;
    Button1: TButton;
    qryRecipt_ItemsPrice: TBCDField;
    qryInitQry: TADOQuery;
    SumGrid1: TSumGrid;
    Button2: TButton;
    actPrintVijeh: TAction;
    qryCustomersPersonID1: TIntegerField;
    qryCustomersCustName: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppDBCalc2: TppDBCalc;
    qryRecipt_ItemsUnitName: TStringField;
    qryRecipt_ItemsPersonID1: TIntegerField;
    qryRecipt_ItemsCustName: TStringField;
    qryRecipt_ItemsStuffCode: TLargeintField;
    qryRecipt_ItemsRequestedEntity: TFloatField;
    qryRecipt_ItemsRequestedWeight: TFloatField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    formType, Person1Caption, Person2Caption, OrginalSQL, OrginalSQL2: String;
    custIDKindActive: Integer;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptReciptSumOnPersonID1F: TrptReciptSumOnPersonID1F;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, Recipts, searchCode_ADO,
  search2, sort2, TreeChart, DBGrid2Print, FormFunctions, ReciptsFunctions;

{$R *.dfm}

procedure TrptReciptSumOnPersonID1F.UpdateFilter;
begin
  with qryRecipt_Items do
  begin
    Active := False;
    custIDKindActive := GetcFrom(myParams.ParamValues['custIDKindActive'],
      ftInteger);
    LblPerson1.Caption := GetPersonCaption(StrToInt(formType), qryRecipt_Items,
      custIDKindActive, OrginalSQL);
    qryCustomers.SQL.Text := changePersonIDInSQLText(OrginalSQL2,
      custIDKindActive);
    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    UpdateFilterAllReciptTypes(qryInitQry, qryRecipt_Items, myParams);
  end; // with
  with qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Active := True;
  end; // with
  with qryRecipt_Items.Parameters do
  begin
    LblLimit.Caption := '«“  «—ÌŒ ' + ParamByName('ReciptDateFrom').Value +
      '  « ' + ParamByName('ReciptDateTo').Value;
  end; // with
end;

procedure TrptReciptSumOnPersonID1F.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItemFilter(GetFilter, TFilterPersonID2,False, Person2Caption);

      AddItemFilter(GetFilter, TFilterPersonID1,False, Person1Caption);

      // AddItem(DMf.adcBSell, 'PersonID1', Person1Caption, 'ﬂœ', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT CustID,CustName FROM Customers WHERE(CustID<>0)',
      // 'SELECT MIN(CustID),MAX(CustID) FROM Customers  WHERE(CustID<>0) ');

      AddItemFilter(GetFilter, TFilterCustomerGrpID);

      AddItem(DMf.adcBSell, 'custIDKindActive', '”ÿÕ', '‘„«—Â ”ÿÕ', ftUnknown,
        dvDefaults, '0', '', ciRadioGroup,
        'SELECT ID,Person1Caption FROM dbo.GetPersonCaption( ''' +
        formType + ''')');

      FilterAllReciptTypes(qryInitQry, fi);
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

procedure TrptReciptSumOnPersonID1F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptReciptSumOnPersonID1F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, Self.Name + formType);
end;

procedure TrptReciptSumOnPersonID1F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, Self.Name + formType);
end;

procedure TrptReciptSumOnPersonID1F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptReciptSumOnPersonID1F.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRecipt_Items do
  begin
    Active := False;
    Parameters.ParamByName('PersonID1From').Value :=
      DataSet.FieldByName('PersonID1').AsInteger;
    Parameters.ParamByName('PersonID1To').Value :=
      DataSet.FieldByName('PersonID1').AsInteger;
    // ShowQryParam(qryRecipt_Items);
    Active := True;
  end; // with
end;

procedure TrptReciptSumOnPersonID1F.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryRecipt_Items.SQL.Text;
  OrginalSQL2 := qryCustomers.SQL.Text;
  formType := IntToStr(var_glb_gParam);
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := ' ê“«—‘ ' + FieldByName('ReciptCaption').AsString +
      '  »—«”«” ﬂœ „‘ —Ì«‰ ';
    Person1Caption := FieldByName('Person1Caption').AsString;
    Person2Caption := FieldByName('Person2Caption').AsString;
    Entity_Weight(DBGrid1);
    SetRequestedEntityWeight(qryInitQry, qryRecipt_Items, DBGrid1);
  end; // whit
  with qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
  end; // with
  with qryRecipt_Items do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
  end; // with
end;

procedure TrptReciptSumOnPersonID1F.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptReciptSumOnPersonID1F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipt_Items, Self)
end;

procedure TrptReciptSumOnPersonID1F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptReciptSumOnPersonID1F.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptReciptSumOnPersonID1F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptReciptSumOnPersonID1F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptReciptSumOnPersonID1F.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptReciptSumOnPersonID1F.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT DISTINCT Recipts.PersonID1, Customers.CustName ' +
    'FROM Recipts LEFT OUTER JOIN ' +
    ' ReciptItems ON Recipts.YearID = ReciptItems.YearID ' +
    ' AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.ReciptID = ReciptItems.ReciptID LEFT OUTER JOIN '
    + ' Customers ON Recipts.PersonID1 = Customers.CustID' +
    ' WHERE (Customers.CustomerGrpID BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('CustomerGrpIDFrom').Value) +
    ' AND ' + IntToStr(qryCustomers.Parameters.ParamByName('CustomerGrpIDTo')
    .Value) + ')AND' + '(Recipts.PersonID1 BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('PersonID1From').Value) +
    ' AND ' + IntToStr(qryCustomers.Parameters.ParamByName('PersonID1To').Value)
    + ')AND' + '(Recipts.ReciptType = ' + formType + ')';

  Txt := changePersonIDInSQLText(Txt, custIDKindActive);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘ —Ì«‰', Txt, ['òœ', '‰«„ '],
    Results, [50, 150], alLeft);
  if b then
  begin
    qryCustomers.Locate('PersonID1', Results[0], []);
  end; // if
end;

procedure TrptReciptSumOnPersonID1F.EdtPersonID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptReciptSumOnPersonID1F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipt_Items);
end;

procedure TrptReciptSumOnPersonID1F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipt_Items);
end;

procedure TrptReciptSumOnPersonID1F.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryRecipt_Items, Self, LblLimit.Caption);
end;

procedure TrptReciptSumOnPersonID1F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    qryRecipt_Items.DisableControls;
    InitReportFile(ppReport1, 'rptReciptSumOnPersonID1', True);
  finally
    qryCustomers.EnableControls;
    qryRecipt_Items.EnableControls;
  end; // try

end;

procedure TrptReciptSumOnPersonID1F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptReciptSumOnPersonID1F.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

end.
