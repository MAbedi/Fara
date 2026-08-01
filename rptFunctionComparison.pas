unit rptFunctionComparison;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppPrnabl, ppClass, ppCtrls, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppVar,
  ppModule, ComCtrls, SumDBGrid, ppParameter, StrUtils, DateUtils,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptFunctionComparisonF = class(Ttemplate2MDIF)
    qryFunction: TADOQuery;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    srcFunction: TDataSource;
    DBGrid1: TDBGrid;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLblGetPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblCustLimit: TppLabel;
    ppLblDateLimit: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText3: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    actPrint: TAction;
    ppSummaryBand2: TppSummaryBand;
    ppLine24: TppLine;
    ppShape2: TppShape;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    ppFooterBand2: TppFooterBand;
    ppLabel22: TppLabel;
    ppShape6: TppShape;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    ppLine19: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel1: TppLabel;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    qryFunctionFunctionId: TIntegerField;
    qryFunctionAllPERNO: TIntegerField;
    qryFunctionPERName: TStringField;
    qryFunctionWorkShopId: TIntegerField;
    qryFunctionCustName: TStringField;
    qryFunctionAllDATE: TStringField;
    qryFunctionStartHour: TWideStringField;
    qryFunctionEndHour: TWideStringField;
    qryFunctionFunctionHour: TWideStringField;
    qryFunctionStartCLOCKTIME: TStringField;
    qryFunctionEndCLOCKTIME: TStringField;
    qryFunctionCLOCKTIMEFun: TWideStringField;
    qryFunctionDefStart: TWideStringField;
    qryFunctionDefEnd: TWideStringField;
    qryFunctionDefFunction: TWideStringField;
    actFunction: TAction;
    actEdit: TAction;
    qryFunctionMinid: TIntegerField;
    qryFunctionMaxid: TIntegerField;
    BitBtn2: TBitBtn;
    btnRecall: TSpeedButton;
    qryUpdate: TADOQuery;
    qryUpdateStartHour: TDateTimeField;
    qryUpdateEndHour: TDateTimeField;
    qryUpdateFunctionHour: TDateTimeField;
    qryFunctionShift: TWordField;
    qryUpdateShift: TWordField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLblGetPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCustLimitGetText(Sender: TObject; var Text: String);
    procedure ppLblDateLimitGetText(Sender: TObject; var Text: String);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actshowChartExecute(Sender: TObject);
    procedure actFunctionExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure btnRecallClick(Sender: TObject);
    procedure qryFunctionsALLPikGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    procedure UpdateList;
    procedure initForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptFunctionComparisonF: TrptFunctionComparisonF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, TreeChart,
  rptCustomerTransaction, FaraConsts, TshFunctions, MMESSAGE, FormFunctions;

{$R *.dfm}

procedure TrptFunctionComparisonF.actEditExecute(Sender: TObject);
var
  CurColumn, NewHour: string;
  id, i: Integer;
  EndHour: TDateTime;
begin
  inherited;
  CurColumn := LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName);
  if not((LowerCase('StartHour') = CurColumn) or
    (LowerCase('EndHour') = CurColumn) or
    (LowerCase('StartCLOCKTIME') = CurColumn) or
    (LowerCase('EndCLOCKTIME') = CurColumn)) then
  begin
    Warn('«Ì‰ ” Ê‰ ﬁ«»· ÊÌ—«Ì‘ ‰„Ì »«‘œ');
    Exit;
  end;

  if get_response(Format('¬Ì« »—«Ì  €ÌÌ— „ﬁœ«— À»  %S „ÿ„∆‰ Â” Ìœø',
    [qryFunction.FieldByName(CurColumn).DisplayLabel])) <> mrYes then
    Exit;

  NewHour := Trim(get_box(' ”«⁄  —« »Â ‘ﬂ·/›—„ (00:00) Ê«—œ ﬂ‰Ìœ', '”«⁄ :',
    StringReplace(LeftStr(qryFunction.FieldByName(CurColumn).AsString, 5), ':',
    '', []), False, '99:99'));

  if NewHour = EmptyStr then
    Exit;

  With qryUpdate do
  begin
    Active := False;
    Parameters.ParamByName('FunctionId').Value :=
      qryFunction.FieldByName('FunctionId').AsInteger;
    Active := True;
    Edit;
  end;

  if not qryFunctionFunctionId.IsNull then
  begin
    if (LowerCase('StartHour') = CurColumn) or
      (LowerCase('EndHour') = CurColumn) then
    begin
      if (LowerCase('StartHour') = CurColumn) then
      begin
        qryUpdateStartHour.AsDateTime := StrToTime(NewHour);
        EndHour := qryUpdateEndHour.AsDateTime;
        if qryUpdateStartHour.AsDateTime > EndHour then
          EndHour := IncDay(EndHour, 1);
        qryUpdateFunctionHour.AsDateTime := EndHour -
          qryUpdateStartHour.AsDateTime;
      end;
      if (LowerCase('EndHour') = CurColumn) then
      begin
        qryUpdateEndHour.AsDateTime := StrToTime(NewHour);
        EndHour := qryUpdateEndHour.AsDateTime;
        if qryUpdateStartHour.AsDateTime > EndHour then
          EndHour := IncDay(EndHour, 1);
        qryUpdateFunctionHour.AsDateTime := EndHour -
          qryUpdateStartHour.AsDateTime;
      end;
      SetShiftFunctions(qryUpdate);
      qryUpdate.Post;
      id := qryFunction.FieldByName('FunctionId').AsInteger;
      qryFunction.Requery();
      qryFunction.Locate('FunctionId', id, []);
    end;
  end;

  if not qryFunctionMinid.IsNull then
  begin
    if (LowerCase('StartCLOCKTIME') = CurColumn) then
    begin
      dmF.adcBSell.Execute(Format('UPDATE Tsh.ClockDmp SET CLOCKTIME = %s  ' +
        ' WHERE ( Id in(%d,%d) ) AND (IO_TYPE = ''1'')',
        [NewHour, qryFunction.FieldByName('MinId').AsInteger,
        qryFunction.FieldByName('MaxId').AsInteger]), i);
      id := qryFunction.FieldByName('MaxId').AsInteger;
      qryFunction.Requery();
      qryFunction.Locate('MaxId', id, []);
    end;

    if (LowerCase('EndCLOCKTIME') = CurColumn) then
    begin
      dmF.adcBSell.Execute(Format('UPDATE Tsh.ClockDmp SET CLOCKTIME = %s  ' +
        ' WHERE (Id in(%d,%d)) AND (IO_TYPE = ''2'')',
        [NewHour, qryFunction.FieldByName('MinId').AsInteger,
        qryFunction.FieldByName('MaxId').AsInteger]), i);
      id := qryFunction.FieldByName('MinId').AsInteger;
      qryFunction.Requery();
      qryFunction.Locate('MinId', id, []);
    end;
  end;
  if i > 0 then
    BigMessage('À»  ‘œ', 1);

end;

procedure TrptFunctionComparisonF.qryFunctionsALLPikGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1,
    (Sender as TField).FieldName)];
  Text := col.PickList[Sender.AsInteger];
end;

procedure TrptFunctionComparisonF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcBSell, 'Date', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'SELECT MIN(CLOCKDATE), MAX(CLOCKDATE) ' +
        'FROM (SELECT DISTINCT CLOCKDATE, PERNO ' +
        'FROM Tsh.ClockDmp UNION ALL ' +
        'SELECT DISTINCT FunctionDate, PersonId ' +
        'FROM Tsh.Functions) AS AllTime');
      AddItem(dmF.adcBSell, 'PERNO', 'Å—”‰·', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,

        ' SELECT DISTINCT AllTime.PERNO, Customers.CustName' +
        ' FROM (SELECT DISTINCT CLOCKDATE, PERNO  FROM Tsh.ClockDmp' +
        ' UNION ALL  SELECT DISTINCT FunctionDate, PersonId' +
        ' FROM Tsh.Functions) AS AllTime INNER JOIN' +
        ' Customers ON AllTime.PERNO = Customers.CustID',

        ' SELECT MIN(PERNO) AS Expr2, MAX(PERNO) AS AllPERNO' +
        ' FROM (SELECT DISTINCT CLOCKDATE, PERNO  FROM Tsh.ClockDmp' +
        ' UNION ALL  SELECT DISTINCT FunctionDate, PersonId' +
        ' FROM Tsh.Functions) AS AllTime');
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

procedure TrptFunctionComparisonF.UpdateList;
begin
  with qryFunction do
  begin
    Active := False;
    Parameters.ParamByName('PERNOFrom').Value :=
      GetcFrom(myParams.ParamValues['PERNO'], ftInteger);
    Parameters.ParamByName('PERNOTo').Value :=
      GetcTo(myParams.ParamValues['PERNO'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('UserID').Value := User.id;

    Active := True;
  end;
end;

procedure TrptFunctionComparisonF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TrptFunctionComparisonF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptFunctionComparisonF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TrptFunctionComparisonF.initForm;
begin
  btnRecall.Visible := User.PowerUser
end;

procedure TrptFunctionComparisonF.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptFunctionComparisonF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptFunctionComparisonF.btnRecallClick(Sender: TObject);
var
  s, CLOCKDATEFrom, CLOCKDATETo: string;
  i: Integer;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcBSell, 'CLOCKDATE', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'SELECT MIN(CLOCKDATE), MAX(CLOCKDATE) ' +
        'FROM (SELECT DISTINCT CLOCKDATE, PERNO ' +
        'FROM Tsh.ClockDmp UNION ALL ' +
        'SELECT DISTINCT FunctionDate, PersonId ' +
        'FROM Tsh.Functions) AS AllTime');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        CLOCKDATEFrom := GetcFrom(myParams.ParamValues['CLOCKDATE'], ftDate);
        CLOCKDATETo := GetcTo(myParams.ParamValues['CLOCKDATE'], ftDate);
      end;
    finally
      Free;
    end;
  end;

  BigMessage('·ÿ›« ’»— ﬂ‰Ìœ...', 0);
  s := 'INSERT INTO Tsh.ClockDmp' +
    ' (KARTNO, CLOCKDATE, CLOCKTIME, PERNO, REC, TRANSFERED, SPCARDTYPE, CLOCKKEY, DECEMBER,'
    + ' INTELLIGENTLYANALYSED, IO_TYPE, MASHINNO,' +
    ' SPECCARDNO, UNCERTAIN, ComCode, FPM)' +
    ' SELECT KARTNO, CLOCKDATE, CLOCKTIME, PERNO, REC, TRANSFERED, SPCARDTYPE, CLOCKKEY, DECEMBER,'
    + ' INTELLIGENTLYANALYSED, IO_TYPE, MASHINNO,' +
    ' SPECCARDNO, UNCERTAIN, ComCode, FPM' +
    ' FROM EOS.dbo.ClockDmp AS ClockDmp_1' +
    ' WHERE ((LTRIM(STR(KARTNO)) + ''-'' + CLOCKDATE + ''-'' + CLOCKTIME) NOT IN'
    + ' (SELECT LTRIM(STR(KARTNO)) + ''-'' + CLOCKDATE + ''-'' + CLOCKTIME AS Expr1'
    + ' FROM Tsh.ClockDmp AS ClockDmp_2))' +
    ' AND (CLOCKDATE Between %s AND %s)';
  s := Format(s, [QuotedStr(CLOCKDATEFrom), QuotedStr(CLOCKDATETo)]);

  try
    dmF.adcBSell.CommandTimeout := 0;
    dmF.adcBSell.Execute(s, i);
  finally
    dmF.adcBSell.CommandTimeout := 15;
    Warn(IntToStr(i) + '„Ê—œ ›—«ŒÊ«‰Ì ‘œ', mtInformation);
  end;
end;

procedure TrptFunctionComparisonF.actFunctionExecute(Sender: TObject);
begin
  inherited;
  tshFunctionsF.Enter(5, qryFunctionFunctionId.AsInteger);
end;

procedure TrptFunctionComparisonF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunction.DisableControls;
    InitReportFile(ppReport1, 'rptFunctionComparison', True);
  finally
    qryFunction.EnableControls;
  end;
end;

procedure TrptFunctionComparisonF.ppLblCustLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' «“ Å—”‰· ' + VarToStr(GetcFrom(myParams.ParamValues['PERNO'],
    ftInteger)) + '  « Å—”‰· ' + VarToStr(GetcTo(myParams.ParamValues['PERNO'],
    ftInteger));
end;

procedure TrptFunctionComparisonF.ppLblDateLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' »Â  «—ÌŒ ' +
    VarToStr(GetcFrom(myParams.ParamValues['Date'], ftDate));
end;

procedure TrptFunctionComparisonF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptFunctionComparisonF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptFunctionComparisonF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TrptFunctionComparisonF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunction);
end;

procedure TrptFunctionComparisonF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunction);
end;

procedure TrptFunctionComparisonF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptFunctionComparisonF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryFunction, Self);
end;

end.
