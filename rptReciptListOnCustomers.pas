{ -----------------------------------------------------------------------------
  Unit Name: rptReciptListOnCustomers
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptReciptListOnCustomers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  ADODB, DBCtrls, StdCtrls, Mask, Buttons,
  DBActns, ActnList, ExtCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptReciptListOnCustomersF = class(Ttemplate2MDIF)
    srcRecipt_Items: TDataSource;
    qryCustomers: TADOQuery;
    qryRecipt_Items: TADOQuery;
    srcCustomers: TDataSource;
    ppDBPipeline1: TppDBPipeline;
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
    qryRecipt_ItemsWaterCo: TFloatField;
    qryRecipt_ItemsDeficitValue: TBCDField;
    qryRecipt_ItemsStuffCode: TLargeintField;
    qryRecipt_ItemsAidNumber: TStringField;
    qryRecipt_ItemsItemNote: TStringField;
    pdbplnCustomers: TppDBPipeline;
    qryRecipt_ItemsUnitName: TStringField;
    qryRecipt_ItemsUnitCode: TWordField;
    DBGrid1: TCedarDbgrid;
    qryRecipt_ItemsControlCode: TLargeintField;
    qryRecipt_ItemsTotalPrice: TBCDField;
    qryRecipt_ItemsTotallSellPrice: TFMTBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
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
  rptReciptListOnCustomersF: TrptReciptListOnCustomersF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, Recipts, searchCode_ADO,
  search2, sort2, TreeChart, DBGrid2Print, ReciptsFunctions, FormFunctions,
  Filter_ADO_Const;

{$R *.dfm}

procedure TrptReciptListOnCustomersF.UpdateFilter;
begin
  with qryRecipt_Items do
  begin
    custIDKindActive := GetcFrom(myParams.ParamValues['custIDKindActive'],
      ftInteger);
    LblPerson1.Caption := GetPersonCaption(StrToInt(formType), qryRecipt_Items,
      custIDKindActive, OrginalSQL);
    qryCustomers.SQL.Text := changePersonIDInSQLText(OrginalSQL2,
      custIDKindActive);
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

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

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

procedure TrptReciptListOnCustomersF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try

      AddItemFilter(GetFilter, TFilterPersonID2, False, Person2Caption);

      AddItemFilter(GetFilter, TFilterPersonID1, False, Person1Caption);

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

procedure TrptReciptListOnCustomersF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptReciptListOnCustomersF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptReciptListOnCustomersF.qryCustomersAfterScroll(DataSet: TDataSet);
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

procedure TrptReciptListOnCustomersF.FormCreate(Sender: TObject);
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
      '  »—«”«” ﬂœ „‘ —Ì«‰';
    Hint := formType;
    qryRecipt_Items.FieldByName('AidNumber').DisplayLabel := '‘„«—Â ' +
      FieldByName('AidInfoCaption').AsString;
    qryRecipt_Items.FieldByName('AidDate').DisplayLabel := ' «—ÌŒ ' +
      FieldByName('AidInfoCaption').AsString;

    qryRecipt_Items.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;

    Person1Caption := FieldByName('Person1Caption').AsString;
    Person2Caption := FieldByName('Person2Caption').AsString;
    DBGrid1.Columns[4].Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    DBGrid1.Columns[5].Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
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
  Entity_Weight(DBGrid1);
  DBGrid1.SelectedSum := True;
  DBGrid1.SetFooter4Sum([])

end;

procedure TrptReciptListOnCustomersF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipt_Items, Self)
end;

procedure TrptReciptListOnCustomersF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptReciptListOnCustomersF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptReciptListOnCustomersF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptReciptListOnCustomersF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptReciptListOnCustomersF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptReciptListOnCustomersF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT DISTINCT Recipts.PersonID1, Customers.CustName ' +
    'FROM Recipts LEFT OUTER JOIN ' +
    ' ReciptItems ON Recipts.YearID = ReciptItems.YearID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.ReciptID = ReciptItems.ReciptID LEFT OUTER JOIN '
    + ' Customers ON Recipts.PersonID1 = Customers.CustID' +
    ' WHERE (Customers.CustomerGrpID BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('CustomerGrpIDFrom').Value) +
    ' AND ' + IntToStr(qryCustomers.Parameters.ParamByName('CustomerGrpIDTo')
    .Value) + ')AND' + '(Recipts.PersonID1 BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('PersonID1From').Value) +
    ' AND ' + IntToStr(qryCustomers.Parameters.ParamByName('PersonID1To').Value)
    + ')AND' + '(Recipts.ReciptType = ' + formType + ')';
  Txt := changePersonIDInSQLText(Txt, custIDKindActive);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, LblPerson1.Caption, Txt,
    ['òœ', '‰«„ '], Results, [50, 150], alLeft);
  if b then
  begin
    qryCustomers.Locate('PersonID1', Results[0], []);
  end; // if
end;

procedure TrptReciptListOnCustomersF.EdtPersonID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptReciptListOnCustomersF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipt_Items);
end;

procedure TrptReciptListOnCustomersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipt_Items);
end;

procedure TrptReciptListOnCustomersF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryRecipt_Items, Self, LblLimit.Caption);
end;

procedure TrptReciptListOnCustomersF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    qryRecipt_Items.DisableControls;
    InitReportFile(ppReport1, 'rptReciptListOnCustomers', True);
  finally
    qryCustomers.EnableControls;
    qryRecipt_Items.EnableControls;
  end; // try

end;

procedure TrptReciptListOnCustomersF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptReciptListOnCustomersF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

end.
