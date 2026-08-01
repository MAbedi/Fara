unit rptInvoiceMatris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, Menus, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppVar, ppPrnabl, ppBands,
  ppCache, ppModule, ppStrtch, ppMemo, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TrptInvoiceMatrisF = class(Ttemplate2MDIF)
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    qryRecipt: TADOQuery;
    srcRecipt: TDataSource;
    qryStuff: TADOQuery;
    actFilter: TAction;
    qryStuffc_StuffName: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    PopPrint: TPopupMenu;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    actPrint: TAction;
    actExcel: TAction;
    actSort: TAction;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    srcSum: TDataSource;
    qrySum: TADOQuery;
    ppHeaderBand3: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    StuffCode8: TppLabel;
    StuffCode6: TppLabel;
    StuffCode4: TppLabel;
    StuffCode2: TppLabel;
    StuffCode0: TppLabel;
    ppLabel38: TppLabel;
    StuffCode12: TppLabel;
    StuffCode10: TppLabel;
    StuffCode14: TppLabel;
    StuffCode1: TppLabel;
    StuffCode3: TppLabel;
    StuffCode5: TppLabel;
    StuffCode7: TppLabel;
    StuffCode11: TppLabel;
    StuffCode13: TppLabel;
    StuffCode15: TppLabel;
    StuffCode9: TppLabel;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine1: TppLine;
    ppLine30: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine142: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText13: TppDBText;
    ppDBTX0: TppDBText;
    ppDBTX2: TppDBText;
    ppDBTX4: TppDBText;
    ppDBTX6: TppDBText;
    ppDBTX8: TppDBText;
    ppDBTX14: TppDBText;
    ppDBTX12: TppDBText;
    ppDBTX10: TppDBText;
    ppDBTX1: TppDBText;
    ppDBTX3: TppDBText;
    ppDBTX5: TppDBText;
    ppDBTX7: TppDBText;
    ppDBTX9: TppDBText;
    ppDBTX15: TppDBText;
    ppDBTX13: TppDBText;
    ppDBTX11: TppDBText;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine38: TppLine;
    ppLine143: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape8: TppShape;
    ppDBCLCF4: TppDBCalc;
    ppLine12: TppLine;
    ppLine111: TppLine;
    ppDBCLCF3: TppDBCalc;
    ppLine129: TppLine;
    ppDBCLCF2: TppDBCalc;
    ppLine130: TppLine;
    ppDBCLCF1: TppDBCalc;
    ppLine131: TppLine;
    ppDBCLCF0: TppDBCalc;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLabel39: TppLabel;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppDBCLCF12: TppDBCalc;
    ppLine137: TppLine;
    ppDBCLCF10: TppDBCalc;
    ppDBCLCF14: TppDBCalc;
    ppLine138: TppLine;
    ppDBCLCF15: TppDBCalc;
    ppDBCLCF13: TppDBCalc;
    ppDBCLCF11: TppDBCalc;
    ppDBCLCF5: TppDBCalc;
    ppDBCLCF6: TppDBCalc;
    ppDBCLCF7: TppDBCalc;
    ppDBCLCF8: TppDBCalc;
    ppDBCLCF9: TppDBCalc;
    ppLine139: TppLine;
    ppLine146: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape9: TppShape;
    ppDBCLCS4: TppDBCalc;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppDBCLCS3: TppDBCalc;
    ppLine149: TppLine;
    ppDBCLCS2: TppDBCalc;
    ppLine150: TppLine;
    ppDBCLCS1: TppDBCalc;
    ppLine151: TppLine;
    ppDBCLCS0: TppDBCalc;
    ppLine153: TppLine;
    ppLine156: TppLine;
    ppDBCLCS12: TppDBCalc;
    ppLine157: TppLine;
    ppDBCLCS10: TppDBCalc;
    ppDBCLCS14: TppDBCalc;
    ppLine158: TppLine;
    ppDBCLCS15: TppDBCalc;
    ppDBCLCS13: TppDBCalc;
    ppDBCLCS11: TppDBCalc;
    ppDBCLCS5: TppDBCalc;
    ppDBCLCS6: TppDBCalc;
    ppDBCLCS7: TppDBCalc;
    ppDBCLCS8: TppDBCalc;
    ppDBCLCS9: TppDBCalc;
    ppLine159: TppLine;
    ppLine162: TppLine;
    ppLabel42: TppLabel;
    qryStuffc_StuffCode: TLargeintField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLabel25GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure N51Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
  private
    procedure myInitReportFile(GeneralFileName: string; num: Integer);
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptInvoiceMatrisF: TrptInvoiceMatrisF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FaraConsts;

{$R *.dfm}

procedure TrptInvoiceMatrisF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'checked', '«‰Ê«⁄ ﬂ«·«', '', ftUnknown, dvDefaults,
        'true', '', ciCheck,
        'SELECT  TOP 26  c_StuffCode, c_StuffName FROM  dbo.StuffCoding where c_StuffCode>7010000 ',
        '');
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',MAX(ReciptDate) FROM dbo.Recipts ');
      AddItem(DMF.adcBSell, 'PersonID', '„‘Œ’«  Œ—Ìœ«— ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  CustID, CustName FROM  dbo.Customers',
        'select Min(CustID),Max(CustID) From dbo.Customers');

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

procedure TrptInvoiceMatrisF.UpdateList;
var
  StuffCode: TStringList;
  s1, sqlSum, sqlRecipt: String;
  i, num: Integer;
begin
  num := 0;
  sqlSum := '';
  s1 := GetcFrom(myParams.ParamValues['checked'], ftString);
  StuffCode := TStringList.Create;
  try
    StuffCode.Text := StringReplace(s1, ',', #13, [rfReplaceAll]);
    // ---------------------make sql qryrecipt
    with qryRecipt Do
    begin
      Active := false;
      SQL.Text :=
        'select dbo.Customers.CustID,dbo.Customers.CustName ,dbo.Customers.Address ';
      for i := 0 to StuffCode.Count - 1 do
      begin
        SQL.Add(',StuffCode' + IntToStr(num));
        sqlSum := sqlSum + ',sum(StuffCode' + IntToStr(num) + ') as sumStuff' +
          IntToStr(num);
        num := num + 1;
      end;
      SQL.Add('from ( SELECT dbo.Recipts.PersonID1 ');
      num := 0;
      for i := 0 to StuffCode.Count - 1 do
      begin
        SQL.Add(',sum(case when (dbo.ReciptItems.StuffCode=' + StuffCode[i] +
          ') then dbo.ReciptItems.OutputEntity else 0 end) as StuffCode' +
          IntToStr(num));
        num := num + 1;
      end;
      SQL.Add('FROM dbo.ReciptItems INNER JOIN');
      SQL.Add('dbo.Customers ON dbo.ReciptItems.PersonID1 = dbo.Customers.CustID INNER JOIN');
      SQL.Add('dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID INNER JOIN');
      SQL.Add('dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType');
      SQL.Add('where (dbo.Recipts.ReciptType = 12) and');
      SQL.Add('(dbo.Recipts.PersonID1 between ' +
        GetcFrom(myParams.ParamValues['PersonID'], ftString) + ' and ' +
        GetcTo(myParams.ParamValues['PersonID'], ftString) + ') ');
      SQL.Add('and (dbo.Recipts.ReciptDate between ' +
        QuotedStr(GetcFrom(myParams.ParamValues['ReciptDate'], ftString)) +
        ' and ' + QuotedStr(GetcTo(myParams.ParamValues['ReciptDate'],
        ftString)) + ')');
      SQL.Add('GROUP BY dbo.Recipts.PersonID1');
      SQL.Add(')funALL INNER JOIN dbo.Customers ON dbo.Customers.CustID = FunALL.PersonID1');
      SQL.Add('order by dbo.Customers.CustID');
      Active := true;
      // -------------------   set displayLable
      FieldByName('CustID').DisplayLabel := 'ﬂœ';
      FieldByName('CustName').DisplayLabel := '„‘Œ’« ';
      FieldByName('Address').DisplayLabel := '¬œ—”';
      FieldByName('CustID').Tag := 3;
      FieldByName('CustName').Tag := 3;
    end; // with

    with qryStuff do
    begin
      Active := false;
      SQL.Text := 'SELECT c_StuffCode,c_StuffName FROM dbo.StuffCoding';
      if StuffCode.Count <> 0 then
        SQL.Add('where dbo.StuffCoding.c_StuffCode=' + StuffCode[0]);
      for i := 1 to StuffCode.Count - 1 do
        SQL.Add(' or dbo.StuffCoding.c_StuffCode=' + StuffCode[i]);
      Active := true;
      First;
      num := 0;
      while not Eof do
      begin
        qryRecipt.FieldByName('StuffCode' + IntToStr(num)).DisplayLabel :=
          FieldByName('c_StuffName').AsString;
        num := num + 1;
        Next;
      end;
    end;
    // --------------------make sql qrysum----------
    sqlRecipt := StringReplace(qryRecipt.SQL.Text,
      'order by dbo.Customers.CustID', '', [rfReplaceAll]);
    with qrySum do
    begin
      Active := false;
      SQL.Text := 'select ''Ã„⁄ ﬂ·'' as s_u_m ' + sqlSum + ' from (';
      SQL.Add(sqlRecipt + ')funSum');
      Active := true;
    end;
  finally
    StuffCode.Free;
  end; // try
  s1 := ReadConfig(APPID + '\Windows\' + getparentformname(DBGrid1) + '_' +
    DBGrid1.Name, 'ColWidth', '');
  if s1 = '' then
  begin
    for i := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns[i].Width := 60;
  end;
end;

procedure TrptInvoiceMatrisF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('checked') = nil then
    close;
end;

procedure TrptInvoiceMatrisF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 0, true);
end;

procedure TrptInvoiceMatrisF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptInvoiceMatrisF.ppLabel25GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptInvoiceMatrisF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptInvoiceMatrisF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptInvoiceMatrisF.myInitReportFile(GeneralFileName: string;
  num: Integer);
var
  j, i: Integer;
begin
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    if FileExists(Template.FileName) then
    begin
      Template.LoadFromFile;
      PreviewFormSettings.SinglePageOnly := true;
    end
    else
    begin
      Warn('›«Ì· ç«ÅÌ  Ì«›  ‰‘œ.!˛');
      Exit;
    end; // else
  end; // with
  j := 0;
  for i := 3 to DBGrid1.Columns.Count - 3 do
  begin
    if j = num then
      Break
    else if DBGrid1.Columns[i].Visible then
    begin
      with TppDBText(FindComponent('ppDBTX' + IntToStr(j))) do
        DataField := DBGrid1.Columns[i].FieldName;
      with TppDBCalc(FindComponent('ppDBCLCF' + IntToStr(j))) do
        DataField := DBGrid1.Columns[i].FieldName;
      with TppDBCalc(FindComponent('ppDBCLCS' + IntToStr(j))) do
        DataField := DBGrid1.Columns[i].FieldName;
      with TppLabel(FindComponent('StuffCode' + IntToStr(j))) do
        Caption := DBGrid1.Columns[i].Title.Caption;
      j := j + 1;
    end;
  end; // for
  j := DBGrid1.Columns.Count - 5;
  for i := j to num - 1 do
    with TppLabel(FindComponent('StuffCode' + IntToStr(i))) do
      Caption := '...';
  ppReport1.Print;

end;

procedure TrptInvoiceMatrisF.N51Click(Sender: TObject);
begin
  inherited;
  try
    qryRecipt.DisableControls;
    myInitReportFile('invoice5column.rtm', 5);
  finally
    qryRecipt.EnableControls;
  end;
end;

procedure TrptInvoiceMatrisF.N52Click(Sender: TObject);
// var
// count:integer;
begin
  inherited;
  try
    qryRecipt.DisableControls;
    myInitReportFile('invoice8column.rtm', 8);
  finally
    qryRecipt.EnableControls;
  end;
end;

procedure TrptInvoiceMatrisF.N53Click(Sender: TObject);
// var
// count:integer;
begin
  inherited;
  try
    qryRecipt.DisableControls;
    myInitReportFile('invoice16column.rtm', 16);
  finally
    qryRecipt.EnableControls;
  end;
end;

procedure TrptInvoiceMatrisF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptInvoiceMatrisF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipt);
end;

procedure TrptInvoiceMatrisF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptInvoiceMatrisF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipt);
end;

procedure TrptInvoiceMatrisF.ppLabel17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '„ÕœÊœÂ  «—ÌŒ «“  ' + GetcFrom(myParams.ParamValues['ReciptDate'],
    ftString) + '  « ' + GetcTo(myParams.ParamValues['ReciptDate'], ftString);
end;

procedure TrptInvoiceMatrisF.ppLabel18GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '„ÕœÊœÂ „‘Œ’«  «“' + GetcFrom(myParams.ParamValues['PersonID'],
    ftString) + '  « ' + GetcTo(myParams.ParamValues['PersonID'], ftString)
end;

procedure TrptInvoiceMatrisF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Column.ID <= 3 then
    DBGrid2.Columns[0].Width := DBGrid1.Columns[0].Width + DBGrid1.Columns[1]
      .Width + DBGrid1.Columns[2].Width
  else if Column.ID < DBGrid1.Columns.Count - 1 then
    DBGrid2.Columns[Column.ID - 3].Width := Column.Width;
end;

procedure TrptInvoiceMatrisF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex < 3 then
    DBGrid2.SelectedIndex := 0
  else if DBGrid1.SelectedIndex <= 24 then
    DBGrid2.SelectedIndex := DBGrid1.SelectedIndex - 2
end;

end.
