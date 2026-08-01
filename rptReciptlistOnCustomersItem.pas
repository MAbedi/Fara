{ -----------------------------------------------------------------------------
  Unit Name: rptReciptListOnCustomersItem
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptReciptListOnCustomersItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  ADODB, SumDBGrid, Grids, Vcl.DBGrids, DBCtrls, StdCtrls, Mask, Buttons,
  DBActns, ActnList, ExtCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const;

type
  TrptReciptListOnCustomersItemF = class(Ttemplate2MDIF)
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
    qryRecipt_ItemsPersonID1: TIntegerField;
    qryRecipt_ItemsReciptID: TIntegerField;
    qryRecipt_ItemsReciptNumber: TIntegerField;
    qryRecipt_ItemsReciptDate: TStringField;
    qryRecipt_ItemsReciptType: TIntegerField;
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
    qryRecipt_ItemsUnitSellPrice: TFMTBCDField;
    Button1: TButton;
    qryRecipt_ItemsCustName: TStringField;
    qryRecipt_ItemsAidDate: TStringField;
    qryRecipt_ItemsPrice: TBCDField;
    qryRecipt_Itemsc_StoreName: TStringField;
    qryRecipt_ItemsReciptItemID: TIntegerField;
    qryInitQry: TADOQuery;
    SumGrid1: TSumGrid;
    qryRecipt_ItemsStoreID: TSmallintField;
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
    qryRecipt_ItemsServerID: TIntegerField;
    qryRecipt_ItemsYearID: TIntegerField;
    qryRecipt_ItemsStuffCode: TLargeintField;
    qryRecipt_ItemsAidNumber: TStringField;
    qryRecipt_ItemsItemNote: TStringField;
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
    formType: String;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptReciptListOnCustomersItemF: TrptReciptListOnCustomersItemF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, Recipts, searchCode_ADO,
  search2, sort2, TreeChart, DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TrptReciptListOnCustomersItemF.UpdateFilter;
begin
  with qryRecipt_Items do
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
    Active := True;
  end; // with
  with qryRecipt_Items.Parameters do
  begin
    LblLimit.Caption := '«“  «—ÌŒ ' + ParamByName('ReciptDateFrom').Value +
      '  « ' + ParamByName('ReciptDateTo').Value;
  end; // with
end;

procedure TrptReciptListOnCustomersItemF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBSell, 'PersonID1', '„‘ —Ì ¬Ì „', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Customers.CustID,CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName '
        + ' ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS CustName  '
        + 'FROM Customers INNER JOIN ReciptItems ON Customers.CustID = ReciptItems.PersonID1 INNER JOIN '
        + 'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '
        + 'WHERE (Recipts.ReciptType =' + formType +
        ')GROUP BY Customers.CustID, Customers.CustName,Customers.CustFirstName',
        'SELECT MIN(Customers.CustID),MAX(Customers.CustID) ' +
        'FROM Customers INNER JOIN ReciptItems ON Customers.CustID = ReciptItems.PersonID1 INNER JOIN '
        + 'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '
        + 'WHERE Recipts.ReciptType = ' + formType);

      AddItemFilter(GetFilter, TFilterCustomerGrpID);
      // AddItem(DMf.adcBSell, 'CustomerGrpID', ' ê—ÊÂ „‘ —Ì«‰ ', 'ê—ÊÂ',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT CustomerGrpID,CustomerGrpName FROM CustomersGroup',
      // 'SELECT MIN(CustomerGrpID),MAX(CustomerGrpID)  FROM CustomersGroup ');
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

procedure TrptReciptListOnCustomersItemF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptReciptListOnCustomersItemF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True, Self.Name + formType);
end;

procedure TrptReciptListOnCustomersItemF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, Self.Name + formType);
end;

procedure TrptReciptListOnCustomersItemF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptReciptListOnCustomersItemF.qryCustomersAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryRecipt_Items do
  begin
    Active := False;
    Parameters.ParamByName('PersonID1From').Value :=
      DataSet.FieldByName('PersonID1').AsInteger;
    Parameters.ParamByName('PersonID1To').Value :=
      DataSet.FieldByName('PersonID1').AsInteger;
    Active := True;
  end; // with
end;

procedure TrptReciptListOnCustomersItemF.FormCreate(Sender: TObject);
begin
  inherited;
  formType := IntToStr(var_glb_gParam);
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := ' ê“«—‘ ' + FieldByName('ReciptCaption').AsString +
      '  »—«”«” ﬂœ „‘ —Ì«‰ ¬Ì „';
    qryRecipt_Items.FieldByName('AidNumber').DisplayLabel := '‘„«—Â ' +
      FieldByName('AidInfoCaption').AsString;
    qryRecipt_Items.FieldByName('AidDate').DisplayLabel := ' «—ÌŒ ' +
      FieldByName('AidInfoCaption').AsString;
    DBGrid1.Columns[4].Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    DBGrid1.Columns[5].Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
  end;
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
  Entity_Weight(DBGrid1);
end;

procedure TrptReciptListOnCustomersItemF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptReciptListOnCustomersItemF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipt_Items, Self)
end;

procedure TrptReciptListOnCustomersItemF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptReciptListOnCustomersItemF.ppSysVarPageNumberGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptReciptListOnCustomersItemF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptReciptListOnCustomersItemF.ppLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptReciptListOnCustomersItemF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptReciptListOnCustomersItemF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT     ReciptItems.PersonID1, Customers.CustName  ' +
    'FROM Customers INNER JOIN ReciptItems ON Customers.CustID = ReciptItems.PersonID1 INNER JOIN '
    + 'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '
    + ' WHERE     (Customers.CustomerGrpID BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('CustomerGrpIDFrom').Value) +
    ' AND ' + IntToStr(qryCustomers.Parameters.ParamByName('CustomerGrpIDTo')
    .Value) + ')AND' + '(Recipts.PersonID1 BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('PersonID1From').Value) +
    ' AND ' + IntToStr(qryCustomers.Parameters.ParamByName('PersonID1To').Value)
    + ')AND' + '(Recipts.ReciptType = ' + formType +
    ')GROUP BY ReciptItems.PersonID1, Customers.CustName';

  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘ —Ì«‰', Txt, ['òœ', '‰«„ '],
    Results, [50, 150], alLeft);
  if b then
  begin
    qryCustomers.Locate('PersonID1', Results[0], []);
  end; // if
end;

procedure TrptReciptListOnCustomersItemF.EdtPersonID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptReciptListOnCustomersItemF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipt_Items);
end;

procedure TrptReciptListOnCustomersItemF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipt_Items);
end;

procedure TrptReciptListOnCustomersItemF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryRecipt_Items, Self, LblLimit.Caption);
end;

procedure TrptReciptListOnCustomersItemF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    qryRecipt_Items.DisableControls;
    InitReportFile(ppReport1, 'rptReciptListOnCustomersItem', True);
  finally
    qryCustomers.EnableControls;
    qryRecipt_Items.EnableControls;
  end; // try

end;

procedure TrptReciptListOnCustomersItemF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptReciptListOnCustomersItemF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

end.
