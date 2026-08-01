unit rptFunctionYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, ComCtrls, ToolWin,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe,  ppStrtch, ppSubRpt, pptypes,
  ppModule, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptFunctionYearF = class(Ttemplate2MDIF)
    qryFunctions: TADOQuery;
    srcFunctions: TDataSource;
    ppReport1: TppReport;
    Panel1: TPanel;
    Button1: TButton;
    ppDBPipeline1: TppDBPipeline;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    actFilter: TAction;
    Button2: TButton;
    ActFunShow: TAction;
    Button3: TButton;
    srcCrossTab: TDataSource;
    qryCrossTab: TADOQuery;
    actVijehPrint: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    DBGrid1: TCedarDbgrid;
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryFunctionsAfterOpen(DataSet: TDataSet);
    procedure ActFunShowExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actVijehPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    procedure UpdateList();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptFunctionYearF: TrptFunctionYearF;

implementation

uses DM, searchCode_ADO, GlobalPro, sort2, search2, filter_ADO,
  FilterClass_ADO, mdimain, FunctionItems, DBGrid2Print, SalaryFunctions;

{$R *.dfm}

procedure TrptFunctionYearF.UpdateList();
begin
   GetYearMounth(GetcFrom(myParams.ParamValues['MounthNo'], ftInteger));
  with qryFunctions do
  begin
    qryCrossTab.Active := False;
    qryCrossTab.Parameters.ParamByName('MounthNoFrom').Value :=
      GetcFrom(myParams.ParamValues['MounthNo'], ftInteger);
    qryCrossTab.Parameters.ParamByName('MounthNoTo').Value :=
      GetcTo(myParams.ParamValues['MounthNo'], ftInteger);
    qryCrossTab.Active := True;
    Active := False;
    SQL.Text := 'SELECT Functions.PersonelNo AS [‘„«—Â˛Å—”‰·Ì], ';
    SQL.Add('PersonelInfo.name_L1 AS ‰«„,PersonelInfo.lastName_L1 AS [‰«„˛Œ«‰Ê«œêÌ],');
    SQL.Add('FormsInfo_1.InfoName_L1 AS [Ê÷⁄Ì ],FormsInfo.InfoName_L1 AS [Ê«Õœ”«“„«‰Ì]');
    while not qryCrossTab.Eof do
    begin
      SQL.Add(', Sum(CASE WHEN Functions.Mounth = ' + qryCrossTab.Fields[0]
        .AsString + ' THEN functions.FunctionDay ELSE 0 END ) as ' +
        qryCrossTab.Fields[1].AsString);
      qryCrossTab.Next;
    end; // while
    SQL.Add(', SUM( functions.FunctionDay ) AS [ﬂ·ùﬂ«—ﬂ—œ]');
    SQL.Add('FROM Pay.Functions INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON PersonelInfo.PersonelState = FormsInfo_1.FormInfoID INNER JOIN');
    SQL.Add('Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
    SQL.Add('WHERE (FormsInfo.FormType = 12) AND (FormsInfo_1.FormType = 3) AND (Interdicts.State <> 50)');
    SQL.Add('AND ( Functions.Mounth BETWEEN :MounthNoFrom AND :MounthNoTo )');
    SQL.Add('AND ( PersonelInfo.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND ( FormsInfo_1.InfoID BETWEEN :StateFrom AND :StateTo)');
    SQL.Add('AND ( FormsInfo.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo )');
    SQL.Add('AND ( Functions.Years = :Years  ) ');
    SQL.Add('');
    SQL.Add('GROUP BY Functions.PersonelNo, PersonelInfo.name_L1, PersonelInfo.lastName_L1, FormsInfo_1.InfoName_L1,');
    SQL.Add('FormsInfo.InfoName_L1');

    Parameters.ParamByName('Years').Value := optp.Year;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Parameters.ParamByName('StateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('StateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);

    Parameters.ParamByName('MounthNoFrom').Value :=
      GetcFrom(myParams.ParamValues['MounthNo'], ftInteger);
    Parameters.ParamByName('MounthNoTo').Value :=
      GetcTo(myParams.ParamValues['MounthNo'], ftInteger);
    Active := True;

  end;
end;

procedure TrptFunctionYearF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TrptFunctionYearF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctions);
end;

procedure TrptFunctionYearF.actVijehPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1,0);
end;

procedure TrptFunctionYearF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptFunctionYearF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.DisableControls;
    InitReportFile(ppReport1, 'rptFunctionYear');
  finally
    qryFunctions.EnableControls;
  end;
end;

procedure TrptFunctionYearF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctions);
end;

procedure TrptFunctionYearF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TPersonelNo);


      AddItem(DMF.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 12)');

      AddItem(DMF.adcSalary, 'State', 'Ê÷⁄Ì ', 'Ê÷⁄Ì ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItem(DMF.adcSalary, 'MounthNo', '„«ÂÂ«Ì ”«·', '„«Â', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.StandardTimes',
        'SELECT min(InfoID) , max(infoid) FROM Pay.StandardTimes');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptFunctionYearF.qryFunctionsAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 0 to qryFunctions.FieldCount - 1 do
  begin
    qryFunctions.Fields[i].tag := 3
  end;
  DBGrid1.setSizeColDBGrid
end;

procedure TrptFunctionYearF.ActFunShowExecute(Sender: TObject);
begin
  inherited;
  if mdimainF.ActFunctionsF.Execute then
  begin
    FunctionItemsF.ToolBar1.Buttons[var_glb_CurrentMonth].Down := True;
    FunctionItemsF.ToolBar1.Buttons[var_glb_CurrentMonth].Click;
    FunctionItemsF.qryPersonel.Locate(qryFunctions.Fields[0].FieldName,
      qryFunctions.Fields[0].AsVariant, [])
  end;
end;

procedure TrptFunctionYearF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFunctions.Fields[0]);
end;

procedure TrptFunctionYearF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TrptFunctionYearF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TrptFunctionYearF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption
end;

procedure TrptFunctionYearF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;


end.
