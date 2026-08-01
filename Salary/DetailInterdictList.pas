unit DetailInterdictList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppModule, ppCtrls,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, DBCtrls, Menus,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TDetailInterdictListF = class(Ttemplate2MDIF)
    qrySalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    actSendtoExcel: TAction;
    qryWage: TADOQuery;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBNavigator2: TDBNavigator;
    actSort: TAction;
    actPrint: TAction;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    srcSum: TDataSource;
    qrySum: TADOQuery;
    qryFormeCaption: TADOQuery;
    qryFormeCaptionFormType: TSmallintField;
    qryFormeCaptionFormCaption_L1: TStringField;
    qryFormeCaptionFormCaption_L2: TStringField;
    Button2: TButton;
    actTreeChart: TAction;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLBCaption: TppLabel;
    ppLabel7: TppLabel;
    ppLabel13: TppLabel;
    ppLabel4: TppLabel;
    ppLine6: TppLine;
    ppLine11: TppLine;
    ppLB1: TppLabel;
    ppLB7: TppLabel;
    ppLine10: TppLine;
    ppLB8: TppLabel;
    ppLB2: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLB3: TppLabel;
    ppLB9: TppLabel;
    ppLB10: TppLabel;
    ppLB4: TppLabel;
    ppLine18: TppLine;
    ppLB5: TppLabel;
    ppLB11: TppLabel;
    ppLine19: TppLine;
    ppLB6: TppLabel;
    ppLB12: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLine7: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLine12: TppLine;
    ppDBText12: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine9: TppLine;
    ppLine14: TppLine;
    ppDBTX1: TppDBText;
    ppDBTX7: TppDBText;
    ppLine2: TppLine;
    ppDBTX2: TppDBText;
    ppDBTX8: TppDBText;
    ppLine4: TppLine;
    ppLine21: TppLine;
    ppDBTX3: TppDBText;
    ppDBTX9: TppDBText;
    ppLine22: TppLine;
    ppDBTX4: TppDBText;
    ppDBTX10: TppDBText;
    ppLine23: TppLine;
    ppDBTX5: TppDBText;
    ppDBTX11: TppDBText;
    ppLine24: TppLine;
    ppDBTX12: TppDBText;
    ppDBTX6: TppDBText;
    ppDBTxSum: TppDBText;
    ppLine3: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLine5: TppLine;
    ppDBCLCF1: TppDBCalc;
    ppLine26: TppLine;
    ppDBCLCF7: TppDBCalc;
    ppDBCLCF2: TppDBCalc;
    ppDBCLCF8: TppDBCalc;
    ppLine27: TppLine;
    ppDBCLCF4: TppDBCalc;
    ppDBCLCF9: TppDBCalc;
    ppLine28: TppLine;
    ppDBCLCF3: TppDBCalc;
    ppDBCLCF10: TppDBCalc;
    ppLine29: TppLine;
    ppDBCLCF5: TppDBCalc;
    ppDBCLCF11: TppDBCalc;
    ppLine30: TppLine;
    ppDBCLCF6: TppDBCalc;
    ppDBCLCF12: TppDBCalc;
    ppLine31: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLine13: TppLine;
    ppDBCLCS1: TppDBCalc;
    ppLine32: TppLine;
    ppDBCLCS7: TppDBCalc;
    ppDBCLCS2: TppDBCalc;
    ppDBCLCS8: TppDBCalc;
    ppLine33: TppLine;
    ppDBCLCS4: TppDBCalc;
    ppDBCLCS9: TppDBCalc;
    ppLine34: TppLine;
    ppDBCLCS3: TppDBCalc;
    ppDBCLCS10: TppDBCalc;
    ppLine35: TppLine;
    ppDBCLCS5: TppDBCalc;
    ppDBCLCS11: TppDBCalc;
    ppLine36: TppLine;
    ppDBCLCS6: TppDBCalc;
    ppDBCLCS12: TppDBCalc;
    ppLine37: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    Button3: TButton;
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure actTreeChartExecute(Sender: TObject);
    procedure qrySumAfterOpen(DataSet: TDataSet);
    procedure ppDBTX12GetText(Sender: TObject; var Text: String);
    procedure ppDBCLCF12GetText(Sender: TObject; var Text: String);
    procedure ppDBCLCS12GetText(Sender: TObject; var Text: String);
    procedure ppLBCaptionGetText(Sender: TObject; var Text: String);
    procedure qrySalaryAfterOpen(DataSet: TDataSet);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    sum, stateno: Integer;
    FormType: Integer;
    FirstWith: Integer;
    // capname:array  of string;
    procedure UpdateFilter;
    procedure MakeqrySalary;
    procedure LoadandPrint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailInterdictListF: TDetailInterdictListF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Mymostafa, sort2, search2,
  TreeChart, DBGrid2Print;

{$R *.dfm}

procedure TDetailInterdictListF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDetailInterdictListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDetailInterdictListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TDetailInterdictListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'InfoID',
        qryFormeCaption.Fieldbyname('FormCaption_L1').AsString, 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo ' +
        ' WHERE  FormType = ' + IntToStr(FormType),
        'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo ' +
        ' where FormType = ' + IntToStr(FormType) + ' GROUP BY FormType');

      case FormType of
        13, 12, 14, 27, 269:
          AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·Ì', 'ﬂœ',
            ftInteger, dvMinMax, '', '', ciLookup,
            ' SELECT InfoID, InfoName_L1  FROM  Pay.FormsInfo WHERE   (FormType = 3) ',
            ' Select Min(InfoID),max(InfoID) from Pay.FormsInfo where (FormType = 3)');
      end;

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

procedure TDetailInterdictListF.UpdateFilter;
begin
  inherited;
  MakeqrySalary;
  SetColSize(DBGrid1, 1, True);
  if FirstWith <> 1 then
    SetColSize(DBGrid2, 1, false);
end;

procedure TDetailInterdictListF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDetailInterdictListF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDetailInterdictListF.FormShow(Sender: TObject);
begin
  inherited;
  FirstWith := 0;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('InfoID') = nil then
      Close;

end;

procedure TDetailInterdictListF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TDetailInterdictListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySalary);
end;

procedure TDetailInterdictListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySalary);
end;

procedure TDetailInterdictListF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryFormeCaption do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
    Caption := '·Ì”  ⁄‰«ÊÌ‰ ÕﬁÊﬁÌ «Õﬂ«„ ﬂ«—ê“Ì‰Ì Å—”‰·Ì »— «”«” ' +
      Fieldbyname('FormCaption_L1').AsString;
  end;
end;

procedure TDetailInterdictListF.MakeqrySalary;
var
  WageSql, SumSql, AllSumSql, Varjoin1, Varjoin2: string;
begin
  inherited;
  FirstWith := FirstWith + 1;
  case FormType of
    4:
      Varjoin1 := 'sex';
    8:
      Varjoin1 := 'LicenceCode';
    5:
      Varjoin1 := 'marriage';
    6:
      Varjoin1 := 'childNumber';

    32:
      Varjoin2 := 'TotalYearsWork';
    13:
      Varjoin2 := 'jobcode';
    12:
      Varjoin2 := 'OfficeCode';
    14:
      Varjoin2 := 'EmployTypeID';
    27:
      Varjoin2 := 'grade';
    269:
      Varjoin2 := 'jobCity';
  end;
  SumSql := '';

  AllSumSql := 'select ''Ã„⁄ ﬂ·'' as s_u_m  ,sum(allsum.countID) ';
  with qryWage do
  begin
    Active := false;
    Active := True;
    qrySalary.Active := false;
    // -------------start make part wage table sql-----------
    qrySalary.SQL.Text := '(SELECT  InterdictItems.InterdictID ';
    while not eof do
    begin
      qrySalary.SQL.Add(', isnull(SUM(CASE WHEN InterdictItems.SalaryID=' +
        Fieldbyname('FormInfoID').AsString +
        ' THEN InterdictItems.Amount END), 0) AS Wage' +
        Fieldbyname('FormInfoID').AsString);
      SumSql := SumSql + ', sum(Wage' + Fieldbyname('FormInfoID').AsString +
        ') AS SumWage' + Fieldbyname('FormInfoID').AsString;
      AllSumSql := AllSumSql + ', sum(allsum.SumWage' +
        Fieldbyname('FormInfoID').AsString + ') as allsumWage' +
        Fieldbyname('FormInfoID').AsString;
      Next;
    end; // while
    qrySalary.SQL.Add(', isnull(SUM(InterdictItems.Amount) , 0) AS sum');
    qrySalary.SQL.Add('FROM Pay.InterdictItems LEFT OUTER JOIN');
    qrySalary.SQL.Add
      ('Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID');
    qrySalary.SQL.Add('WHERE (Interdicts.PersonelNo BETWEEN 0 AND 999999)');
    qrySalary.SQL.Add('GROUP BY InterdictItems.InterdictID)wage');
    WageSql := qrySalary.SQL.Text;
  end; // with
  // --------------end  make part wage table sql--------

  // ----------start make qrySalary----------------------
  with qrySalary do
  begin
    SQL.Text :=
      'SELECT FormsInfo.InfoID AS InfoID , FormsInfo.InfoName_L1 AS InfoName_L1,';
    SQL.Add('count(Interdicts.InterdictID) as countID');
    SQL.Add(SumSql);
    SQL.Add(',sum(sum) as allssum ');
    SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add(WageSql);
    SQL.Add('ON Pay.Interdicts.InterdictID = wage.InterdictID LEFT OUTER JOIN');
    case FormType of
      4, 5, 8:
        begin
          SQL.Add('Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN');
          SQL.Add('FormsInfo Pay.FormsInfo ON PersonelInfo.' + Varjoin1 +
            '= FormsInfo.FormInfoID');
        end;
      13, 12, 14, 27, 269:
        begin
          SQL.Add('FormsInfo Pay.FormsInfo ON Pay.Interdicts.' + Varjoin2 +
            ' = FormsInfo.FormInfoID ');
          SQL.Add('INNER JOIN Pay.EmployeeInfo ON Pay.Interdicts.PersonelNo = EmployeeInfo.PersonelNo');

          SQL.Add('AND (EmployeeInfo.PersonStateNo  BETWEEN :StateFrom AND :StateTo )');
          Parameters.ParamByName('StateFrom').Value :=
            GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
          Parameters.ParamByName('StateTo').Value :=
            GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

        end;
    end;

    // SQL.Add('INNER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON EmployeeInfo.PersonelState = FormsInfoPersonelState.FormInfoID');

    SQL.Add('where FormsInfo.InfoID between ' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + ' AND ' +
      GetcTo(myParams.ParamValues['InfoID'], ftString));
    SQL.Add(' AND (State < 50) AND (InterdicType = 0)');

    SQL.Add('group by FormsInfo.InfoID , FormsInfo.InfoName_L1 , FormsInfo.InfoName_l2');

    Active := True;
    with qrySum do
    begin
      Active := false;
      SQL.Text := AllSumSql + ',sum(allsum.allssum) as sumallsumWage from (' +
        qrySalary.SQL.Text + ') allsum';
      Parameters := qrySalary.Parameters;
      Active := True;
    end;
    Fieldbyname('InfoID').DisplayLabel := 'ﬂœ';
    Fieldbyname('InfoName_L1').DisplayLabel := qryFormeCaption.Fieldbyname
      ('FormCaption_L1').AsString;
    // FieldByName('InfoName_L2').DisplayLabel:=qryFormeCaption.Fieldbyname('FormCaption_L2').AsString';
    Fieldbyname('countID').DisplayLabel := ' ⁄œ«œ Å—”‰·';
    Fieldbyname('allssum').DisplayLabel := 'Ã„⁄ ﬂ·';
    qryWage.First;
    while not qryWage.eof do
    begin
      Fieldbyname('Sumwage' + qryWage.Fieldbyname('FormInfoID').AsString)
        .DisplayLabel := qryWage.Fieldbyname('InfoName_L1').AsString;
      qryWage.Next;
    end; // while
  end;
  with qryWage do
  begin
    First;
    while not eof do
    begin
      TBCDField(qrySalary.Fieldbyname('SumWage' + Fieldbyname('FormInfoID')
        .AsString)).currency := True;
      TBCDField(qrySum.Fieldbyname('allsumWage' + Fieldbyname('FormInfoID')
        .AsString)).currency := True;
      Next;
    end;
    TBCDField(qrySalary.Fieldbyname('allSSum')).currency := True;
    TBCDField(qrySum.Fieldbyname('sumallsumWage')).currency := True;
  end;
end;

procedure TDetailInterdictListF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if FirstWith = 1 then
    if Column.ID < 3 then
      DBGrid2.Columns[0].Width := DBGrid1.Columns[0].Width +
        DBGrid1.Columns[1].Width
    else
      DBGrid2.Columns[Column.ID - 2].Width := Column.Width;
end;

procedure TDetailInterdictListF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex < 2 then
    DBGrid2.SelectedIndex := 0
  else
    DBGrid2.SelectedIndex := DBGrid1.SelectedIndex - 1
end;

procedure TDetailInterdictListF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TDetailInterdictListF.actTreeChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qrySalary, Self);
end;

procedure TDetailInterdictListF.qrySumAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 1 to DBGrid2.Columns.Count - 1 do
  begin
    DBGrid2.Columns[i].Visible :=
      qrySum.Fieldbyname(DBGrid2.Columns[i].FieldName).AsCurrency <> 0;
    DBGrid1.Columns[i + 1].Visible :=
      qrySum.Fieldbyname(DBGrid2.Columns[i].FieldName).AsCurrency <> 0;
  end; // for
end;

procedure TDetailInterdictListF.ppDBTX12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF((StrToInt(qrySalary.Fieldbyname('allssum').AsString) -
    sum), ffCurrency, 0);
end;

procedure TDetailInterdictListF.ppDBCLCF12GetText(Sender: TObject;
  var Text: String);

var
  x, i: Integer;
begin
  inherited;
  x := 0;
  if (DBGrid1.Columns.Count - 4 > (stateno - 1)) then
  begin
    for i := 1 to (stateno - 2) do
      with TppDBCalc(FindComponent('ppDBCLCF' + IntToStr(i))) do
      begin
        DisplayFormat := '';
        x := x + StrToInt(Text);
        DisplayFormat := '#,0';
      end; // with
    ppDBCalc3.DisplayFormat := '';
    x := StrToInt(ppDBCalc3.Text) - x;
    ppDBCalc3.DisplayFormat := '#,0';
    Text := IntToStr(x);
    Text := CurrToStrF(x, ffCurrency, 0);
  end; // if
end;

procedure TDetailInterdictListF.ppDBCLCS12GetText(Sender: TObject;
  var Text: String);
var
  x, i: Integer;
begin
  inherited;
  x := 0;
  if (DBGrid1.Columns.Count - 4 > (stateno - 1)) then
  begin
    for i := 1 to (stateno - 2) do
      with TppDBCalc(FindComponent('ppDBCLCS' + IntToStr(i))) do
      begin
        DisplayFormat := '';
        x := x + StrToInt(Text);
        DisplayFormat := '#,0';
      end; // with
    ppDBCalc4.DisplayFormat := '';
    x := StrToInt(ppDBCalc4.Text) - x;
    ppDBCalc4.DisplayFormat := '#,0';
    Text := CurrToStrF(x, ffCurrency, 0);
  end; // if
end;

procedure TDetailInterdictListF.ppLBCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DetailInterdictListF.Caption;
end;

procedure TDetailInterdictListF.qrySalaryAfterOpen(DataSet: TDataSet);
var
  j: Integer;
begin
  inherited;
  for j := 0 to DBGrid1.Columns.Count - 1 do
  begin
    if DBGrid1.Columns[j].Visible then
      qrySalary.Fieldbyname(DBGrid1.Columns[j].FieldName).Tag := 3
    else
      qrySalary.Fieldbyname(DBGrid1.Columns[j].FieldName).Tag := 0;
  end; // for
end;

procedure TDetailInterdictListF.LoadandPrint;
var
  i, j: Integer;
  FName: string;
begin
  if sum = 1 then
    FName := 'rptInterdictEffectList_1.rtm'
  else if sum = 2 then
    FName := 'rptInterdictEffectList_2.rtm';
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(FName);
    if FileExists(Template.FileName) then
      Template.LoadFromFile
    else
    begin
      Warn('›«Ì· ç«ÅÌ ' + FName + ' Ì«›  ‰‘œ.!˛');
      Exit;
    end; // else
  end; // with
  try
    sum := 0;
    qrySalary.DisableControls;
    j := 1;
    for i := 3 to DBGrid1.Columns.Count - 1 do
    begin
      if j = stateno then
        Break
      else if DBGrid1.Columns[i].Visible then
      begin
        with TppDBText(FindComponent('ppDBTX' + IntToStr(j))) do
        begin
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          sum := sum + StrToInt(DBGrid1.Columns[i].Field.AsString);
        end; // with
        with TppDBCalc(FindComponent('ppDBCLCF' + IntToStr(j))) do
        begin
          DBCalcType := ppDBCalc1.DBCalcType;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
        end; // with
        with TppDBCalc(FindComponent('ppDBCLCS' + IntToStr(j))) do
        begin
          DBCalcType := ppDBCalc2.DBCalcType;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
        end; // with
        with TppLabel(FindComponent('ppLB' + IntToStr(j))) do
        begin
          Caption := DBGrid1.Columns[i].Title.Caption;
        end; // with
        j := j + 1;
      end; // if
    end; // for
    if (DBGrid1.Columns.Count - 4 > (stateno - 1)) then
    begin
      ppLB12.Caption := '”«Ì— „“«Ì«';

    end; // if
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qrySalary.EnableControls;
  end; // finaly
end;

procedure TDetailInterdictListF.N11Click(Sender: TObject);
begin
  inherited;
  sum := 1;
  stateno := 13;
  LoadandPrint;
end;

procedure TDetailInterdictListF.N21Click(Sender: TObject);
begin
  inherited;
  sum := 2;
  stateno := 21;
  LoadandPrint;
end;

procedure TDetailInterdictListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.x, Mouse.CursorPos.Y);
end;

procedure TDetailInterdictListF.Button3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

end.
