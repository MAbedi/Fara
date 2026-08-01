unit rptFunctionItemYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, ComCtrls, ToolWin,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppProd, StrUtils,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, pptypes,
  ppModule, ppParameter, SumDBGrid, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,Filter_ADO_Const;

type
  TrptFunctionItemYearF = class(Ttemplate2MDIF)
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
    qryFunctionShow: TADOQuery;
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
  rptFunctionItemYearF: TrptFunctionItemYearF;

implementation

uses DM, searchCode_ADO, GlobalPro, sort2, search2, filter_ADO,
  FilterClass_ADO, mdimain, FunctionItems, DBGrid2Print;

{$R *.dfm}

procedure TrptFunctionItemYearF.UpdateList();
var
  sqltxt: string;
begin
  with qryFunctionShow do
  begin
    Active := false;
    SQL.Text := 'SELECT DISTINCT FunctionsItems.SalaryID';
    SQL.Add(', FormsInfo.InfoName_L1, CASE WHEN FunctionsItems.FDaily <> 0 THEN ''FDaily''');
    SQL.Add('ELSE ''FHours'' END AS ColumnName');
    SQL.Add('FROM Pay.FunctionsItems INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE ((FunctionsItems.FDaily <> 0) OR');
    SQL.Add('(FunctionsItems.FHours <> 0))');
    SQL.Add('AND(FunctionsItems.SalaryID in( ' +
      GetcFrom(myParams.ParamValues['FunctionShow'], ftString) + '))');

//    SQL.Add('AND  (YearID = :YearID )');
//    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Active := True;
  end;

  with qryFunctions do
  begin
    qryCrossTab.Active := false;
    qryCrossTab.Parameters.ParamByName('MounthNoFrom').Value :=
      GetcFrom(myParams.ParamValues['MounthNo'], ftInteger);
    qryCrossTab.Parameters.ParamByName('MounthNoTo').Value :=
      GetcTo(myParams.ParamValues['MounthNo'], ftInteger);
    qryCrossTab.Active := True;
    Active := false;
    SQL.Text := 'SELECT Functions.PersonelNo AS [Å—”‰·|‘„«—Â], ';
    SQL.Add('PersonelInfo.name_L1 AS [Å—”‰·|‰«„],PersonelInfo.lastName_L1 AS [Å—”‰·|‰«„˛Œ«‰Ê«œêÌ],');
    SQL.Add('FormsInfo_1.InfoName_L1 AS [Å—”‰·|Ê÷⁄Ì ],FormsInfo.InfoName_L1 AS [Å—”‰·|Ê«Õœ”«“„«‰Ì]');
    qryCrossTab.First;
    while not qryCrossTab.Eof do
    begin
      SQL.Add(', max(CASE WHEN Functions.Mounth = ' + qryCrossTab.Fields[0]
        .AsString + ' THEN functions.FunctionDay ELSE 0 END ) as [' +
        qryCrossTab.Fields[1].AsString + '|—Ê“]');

      SQL.Add(', max(CASE WHEN Functions.Mounth = ' + qryCrossTab.Fields[0]
        .AsString + ' THEN functions.FunctionTime ELSE 0 END ) as [' +
        qryCrossTab.Fields[1].AsString + '|”«⁄ ]');

      qryFunctionShow.First;
      while not qryFunctionShow.Eof do
      begin
        sqltxt := ', sum(case when SalaryID=' + qryFunctionShow.FieldByName
          ('SalaryID').AsString + ' And Functions.Mounth = ' +
          qryCrossTab.Fields[0].AsString + '  then ' +
          qryFunctionShow.FieldByName('ColumnName').AsString +
          ' else 0 end ) as [„«Â' + qryCrossTab.Fields[0].AsString + '|' +
          qryFunctionShow.FieldByName('InfoName_L1').AsString { +
          ifthen(qryFunctionShow.FieldByName('ColumnName').AsString = 'FHours',
          '(”«⁄ )', '(—Ê“)') } + ']';
        SQL.Add(sqltxt);
        qryFunctionShow.Next;
      end;

      qryCrossTab.Next;
    end; // while
    SQL.Add(', max( functions.FunctionDay ) AS [ﬂ· ùﬂ«—ﬂ—œ|—Ê“]');
    SQL.Add(', max( functions.FunctionTime ) AS [ﬂ· ùﬂ«—ﬂ—œ|”«⁄ ]');
    SQL.Add(', Interdicts.StandardClock AS [”«⁄  «” «‰œ«—œ]');

    SQL.Add('FROM Pay.FunctionsAll AS Functions INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON PersonelInfo.PersonelState = FormsInfo_1.FormInfoID INNER JOIN');
    SQL.Add('Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ');

    SQL.Add('WHERE (FormsInfo.FormType = 12) AND (FormsInfo_1.FormType = 3) AND (Interdicts.State < 50)');
    SQL.Add('AND ( Functions.Mounth BETWEEN :MounthNoFrom AND :MounthNoTo )');
    SQL.Add('AND ( PersonelInfo.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND ( FormsInfo_1.InfoID BETWEEN :StateFrom AND :StateTo)');
    SQL.Add('AND ( FormsInfo.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('AND ( Functions.YearID = :Years  )');
    Parameters.ParamByName('Years').Value := optp.Year;




    SQL.Add('GROUP BY Functions.PersonelNo, PersonelInfo.name_L1, PersonelInfo.lastName_L1, FormsInfo_1.InfoName_L1,');
    SQL.Add('FormsInfo.InfoName_L1, Interdicts.StandardClock');

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

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

procedure TrptFunctionItemYearF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TrptFunctionItemYearF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctions);
end;

procedure TrptFunctionItemYearF.actVijehPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptFunctionItemYearF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptFunctionItemYearF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.DisableControls;
    InitReportFile(ppReport1, 'rptFunctionItemYear');
  finally
    qryFunctions.EnableControls;
  end;
end;

procedure TrptFunctionItemYearF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctions);
end;

procedure TrptFunctionItemYearF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItem(Dmf.adcSalary, 'FunctionShow', '⁄‰Ê«‰ ò«—ò—œ', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        ' SELECT FormsInfo.FormInfoID, FormsInfo.InfoName_L1 ' +
        ' FROM Pay.FormsInfo INNER JOIN Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType '
        + ' WHERE(FormTypes.FunctionShow = 1) ', '');

      AddItem(Dmf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(Dmf.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 12)');

      AddItem(Dmf.adcSalary, 'State', 'Ê÷⁄Ì ', 'Ê÷⁄Ì ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItem(Dmf.adcSalary, 'MounthNo', '„«ÂÂ«Ì ”«·', '„«Â', ftInteger,
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

procedure TrptFunctionItemYearF.qryFunctionsAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 0 to qryFunctions.FieldCount - 1 do
  begin
    qryFunctions.Fields[i].tag := 3;

  end;
  qryCrossTab.First;
  while not qryCrossTab.Eof do
  begin
    for i := 0 to DBGrid1.Columns.Count - 1 do
    begin
      if Pos(qryCrossTab.FieldByName('CrossName').AsString,
        DBGrid1.Columns[i].FieldName) > 0 then
        DBGrid1.Columns[i].Color := const_Currency_columns_color;
    end;
    qryCrossTab.Next;

  end;

  DBGrid1.setSizeColDBGrid

end;

procedure TrptFunctionItemYearF.ActFunShowExecute(Sender: TObject);
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

procedure TrptFunctionItemYearF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFunctions.Fields[0]);
end;

procedure TrptFunctionItemYearF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TrptFunctionItemYearF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TrptFunctionItemYearF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption
end;

procedure TrptFunctionItemYearF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
