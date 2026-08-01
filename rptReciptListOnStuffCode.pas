{ -----------------------------------------------------------------------------
  Unit Name: rptReciptListOnStuffCode
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptReciptListOnStuffCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  ADODB, SumDBGrid, Grids, Vcl.DBGrids, DBCtrls, StdCtrls, Mask, Buttons,
  DBActns, ActnList, ExtCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TrptReciptListOnStuffCodeF = class(Ttemplate2MDIF)
    srcRecipt_Items: TDataSource;
    qryStuffCoding: TADOQuery;
    qryRecipt_Items: TADOQuery;
    srcStuffCoding: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    LblPerson1: TLabel;
    EdtStuffCode: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextStuffCode: TDBText;
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
    qryStuffCodingc_StuffName: TStringField;
    qryInitQry: TADOQuery;
    SumGrid1: TSumGrid;
    qryRecipt_ItemsStoreID: TSmallintField;
    Button2: TButton;
    actPrintVijeh: TAction;
    qryRecipt_ItemsControlCode: TLargeintField;
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
    qryStuffCodingStuffCode: TLargeintField;
    qryRecipt_ItemsStuffCode: TLargeintField;
    qryRecipt_ItemsRequestedEntity: TFloatField;
    qryRecipt_ItemsRequestedWeight: TFloatField;
    qryRecipt_ItemsAidNumber: TStringField;
    qryRecipt_ItemsItemNote: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryStuffCodingAfterScroll(DataSet: TDataSet);
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
    procedure EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    formType, Person2Caption: String;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptReciptListOnStuffCodeF: TrptReciptListOnStuffCodeF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, Recipts, searchCode_ADO,
  search2, sort2, TreeChart, DBGrid2Print, FormFunctions, Filter_ADO_Const;

{$R *.dfm}

procedure TrptReciptListOnStuffCodeF.UpdateFilter;
begin
  with qryRecipt_Items do
  begin
    Active := False;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    UpdateFilterAllReciptTypes(qryInitQry, qryRecipt_Items, MyParams);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(MyParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(MyParams.ParamValues['PersonID2'], ftInteger);
  end; // with
  with qryStuffCoding do
  begin
    Active := False;
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(MyParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(MyParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(MyParams.ParamValues['PersonID2'], ftInteger);

    Active := True;
  end; // with
  with qryRecipt_Items.Parameters do
  begin
    LblLimit.Caption := '«“  «—ÌŒ ' + ParamByName('ReciptDateFrom').Value +
      '  « ' + ParamByName('ReciptDateTo').Value;
  end; // with
end;

procedure TrptReciptListOnStuffCodeF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, MyParams);
  with fi do
  begin
    try
      AddItemFilter(GetFilter, TFilterPersonID2,False, Person2Caption);
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

procedure TrptReciptListOnStuffCodeF.FormShow(Sender: TObject);
begin
  inherited;
  MyParams.Clear;
  actFilter.Execute;
  if MyParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptReciptListOnStuffCodeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True, Self.Name + formType);
end;

procedure TrptReciptListOnStuffCodeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, Self.Name + formType);
end;

procedure TrptReciptListOnStuffCodeF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptReciptListOnStuffCodeF.qryStuffCodingAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryRecipt_Items do
  begin
    Active := False;
    Parameters.ParamByName('StuffCodeFrom').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('StuffCodeTo').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end; // with
end;

procedure TrptReciptListOnStuffCodeF.FormCreate(Sender: TObject);
begin
  inherited;
  formType := IntToStr(var_glb_gParam);
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := ' ê“«—‘ ' + FieldByName('ReciptCaption').AsString +
      '  »—«”«” ﬂœ ﬂ«·«';
    Person2Caption := FieldByName('Person2Caption').AsString;
    qryRecipt_Items.FieldByName('AidNumber').DisplayLabel := '‘„«—Â ' +
      FieldByName('AidInfoCaption').AsString;
    qryRecipt_Items.FieldByName('AidDate').DisplayLabel := ' «—ÌŒ ' +
      FieldByName('AidInfoCaption').AsString;
    DBGrid1.Columns[4].Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    DBGrid1.Columns[5].Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];

    Entity_Weight(DBGrid1);
    SetRequestedEntityWeight(qryInitQry, qryRecipt_Items, DBGrid1);

  end; // whit
  with qryRecipt_Items do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
  end; // with
  with qryStuffCoding do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
  end; // with
end;

procedure TrptReciptListOnStuffCodeF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptReciptListOnStuffCodeF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipt_Items, Self)
end;

procedure TrptReciptListOnStuffCodeF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptReciptListOnStuffCodeF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptReciptListOnStuffCodeF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptReciptListOnStuffCodeF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptReciptListOnStuffCodeF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptReciptListOnStuffCodeF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName FROM         StuffCoding INNER JOIN '
    + 'ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN '
    + 'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ' +
    'AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '
    + ' WHERE (ReciptItems.StuffCode BETWEEN ' +
    IntToStr(qryStuffCoding.Parameters.ParamByName('StuffCodeFrom').Value) +
    ' AND ' + IntToStr(qryStuffCoding.Parameters.ParamByName('StuffCodeTo')
    .Value) + ')' + ' AND(Recipts.PersonID2 BETWEEN ' +
    IntToStr(qryStuffCoding.Parameters.ParamByName('PersonID2From').Value) +
    ' AND ' + IntToStr(qryStuffCoding.Parameters.ParamByName('PersonID2To')
    .Value) + ')' + 'GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName';

  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, 'ﬂ«·«Â«', Txt, ['òœ', '‰«„ '],
    Results, [50, 150], alLeft);
  if b then
  begin
    qryStuffCoding.Locate('StuffCode', Results[0], []);
  end; // if
end;

procedure TrptReciptListOnStuffCodeF.EdtStuffCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptReciptListOnStuffCodeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipt_Items);
end;

procedure TrptReciptListOnStuffCodeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipt_Items);
end;

procedure TrptReciptListOnStuffCodeF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryRecipt_Items, Self, LblLimit.Caption);
end;

procedure TrptReciptListOnStuffCodeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    qryRecipt_Items.DisableControls;
    InitReportFile(ppReport1, 'rptReciptListOnStuffCode', True);
  finally
    qryStuffCoding.EnableControls;
    qryRecipt_Items.EnableControls;
  end; // try

end;

procedure TrptReciptListOnStuffCodeF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptReciptListOnStuffCodeF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

end.
