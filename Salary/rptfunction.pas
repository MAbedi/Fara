unit rptfunction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, ComCtrls, ToolWin,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, pptypes,
  ppModule, ppParameter, SumDBGrid, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const;

type
  TrptfunctionF = class(Ttemplate2MDIF)
    qryWage: TADOQuery;
    qryInfo: TADOQuery;
    srcInfo: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    srcProject: TDataSource;
    qryProject: TADOQuery;
    qryProjectProjectID: TIntegerField;
    qryProjectInfoName_L1: TStringField;
    qryProjectInfoName_L2: TStringField;
    ppReport1: TppReport;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    DBGrid1: TDBGrid;
    qryWageFormInfoID: TIntegerField;
    qryWageInfoID: TIntegerField;
    qryWageInfoName_L1: TStringField;
    qryWageInfoName_L2: TStringField;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel17: TppLabel;
    ppLblTime: TppLabel;
    ppLblDay: TppLabel;
    ppLblFun: TppLabel;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppLine12: TppLine;
    ppDBText7: TppDBText;
    ppDBTxtDay: TppDBText;
    ppDBTxtTime: TppDBText;
    ppDBText12: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBCalcTime: TppDBCalc;
    ppDBCalcDay: TppDBCalc;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
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
    ppShape2: TppShape;
    ppLine2: TppLine;
    ToolButton13: TToolButton;
    SumGrid1: TSumGrid;
    qryProjectProjectCode: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryProjectAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryInfoAfterOpen(DataSet: TDataSet);
    procedure ActFunShowExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkAllMounthClick(Sender: TObject);
  private
    ProjectID: Integer;
    MonthNo: Byte;
    capname: array [0 .. 40] of string;
    procedure UpdateList();
    procedure initSQL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptfunctionF: TrptfunctionF;

implementation

uses DM, searchCode_ADO, GlobalPro, sort2, search2, filter_ADO,
  FilterClass_ADO, main, FunctionItems, mdiMain, SalaryFunctions;

{$R *.dfm}

procedure TrptfunctionF.initSQL;
var
  sqltxt, sqltxtGrp: String;
begin
  sqltxtGrp := 'SELECT PersonelNo, PersonelName_L1, PersonelName_L2, ' +
    'SUM(FunctionDay) AS FunctionDay, SUM(FunctionTime) AS FunctionTime';
  SumGrid1.FieldsName := 'FunctionDay;FunctionTime';
  with qryWage do
  begin
    Active := False;
    Active := True;
    qryInfo.Active := False;
    qryInfo.SQL.Text := 'SELECT FunctionID  ';
    while not eof do
    begin
      qryInfo.SQL.Add(', sum(case SalaryID when ' + Fields[0].AsString +
        ' then fdaily else 0 end ) as Fdaily' + Fields[0].AsString);
      qryInfo.SQL.Add(', sum(case SalaryID when ' + Fields[0].AsString +
        ' then fHours else 0 end ) as fHours' + Fields[0].AsString);

      sqltxtGrp := sqltxtGrp +
        Format(',SUM(Fdaily%d) AS Fdaily%d, SUM(fHours%d) AS fHours%d',
        [Fields[0].AsInteger, Fields[0].AsInteger, Fields[0].AsInteger,
        Fields[0].AsInteger]);
      SumGrid1.FieldsName := SumGrid1.FieldsName + Format(';Fdaily%d;fHours%d',
        [Fields[0].AsInteger, Fields[0].AsInteger]);
      Next;
    end; // while
    qryInfo.SQL.Add('FROM Pay.FunctionsItems  group by FunctionID');
  end; // with
  sqltxtGrp := sqltxtGrp + ',0 AS FunctionID FROM(';
  sqltxt := qryInfo.SQL.Text;
  with qryInfo do
  begin
    Active := False;
    SQL.Text := EmptyStr;
    if MonthNo = 13 then
      SQL.Add(sqltxtGrp);
    SQL.Add('SELECT  Pay.Functions.PersonelNo,');
    SQL.Add('Pay.PersonelInfo.name_L1+'' ''+Pay.PersonelInfo.lastName_L1 AS PersonelName_L1, ');
    SQL.Add('Pay.PersonelInfo.name_L2+Pay.PersonelInfo.lastName_L2 AS PersonelName_L2, Pay.Functions.FunctionDay,');
    SQL.Add('Pay.Functions.FunctionTime');
    /// SQL.Add  (', Pay.Functions.Mounth,Pay.StandardTimes.InfoName_L1 AS Mounth_L1, Pay.StandardTimes.InfoName_L2 AS Mounth_L2 ') ;
    SQL.Add(', ALLFUnctionItems.* ');
    // SQL.Add  (',FormsInfo_1Project.InfoID AS ProjectID, FormsInfo_1Project.InfoName_L1 AS ProjectName_L1, FormsInfo_1Project.InfoName_L2 AS ProjectName_L2,');
    // SQL.Add  ('FormsInfo_1OfficeCode.InfoID AS OfficeCode, FormsInfo_1OfficeCode.InfoName_L1 AS OfficeName_L1,FormsInfo_1OfficeCode.InfoName_L2 AS OfficeName_L2');
    SQL.Add('FROM Pay.Functions LEFT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN(');
    SQL.Add(sqltxt);
    SQL.Add(') ALLFUnctionItems ON Pay.Functions.FunctionID = ALLFUnctionItems.FunctionID   LEFT OUTER JOIN    Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1OfficeCode ON Pay.Functions.OfficeCode = FormsInfo_1OfficeCode.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1Project ON Pay.Functions.ProjectID = FormsInfo_1Project.FormInfoID');
    SQL.Add(' where (Pay.Functions.Mounth  BETWEEN :MounthNoFrom AND :MounthNoTo )  ');
    SQL.Add('and (Functions.ProjectID BETWEEN :ProjectIDFrom AND :ProjectIDTo  ) ');
    SQL.Add('AND(FormsInfo_1OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo) ');
    SQL.Add('AND(Pay.Functions.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    if MonthNo = 13 then
    begin
      SQL.Add(') AS abcde');
      SQL.Add('GROUP BY PersonelNo, PersonelName_L1, PersonelName_L2');
    end
  end;
end;

procedure TrptfunctionF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := ' SELECT  ProjectID,InfoID, InfoName_L1, InfoName_L2  ' +
    ' FROM Pay.ProjectForUse ';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '  گروه پروژه', Txt,
    ['سریال', 'کد', 'نام 1', 'نام 2'], Results, [50, 50, 100, 100], alLeft);
  if s then
    qryProject.Locate('ProjectID', Results[0], []);
end;

procedure TrptfunctionF.ToolButton1Click(Sender: TObject);

begin
  inherited;
  qryInfo.Close;
  if qryProjectProjectID.AsInteger <> 0 then
    ProjectID := qryProjectProjectID.AsInteger;
  MonthNo := (Sender as TToolButton).tag;
  GetYearMounth(MonthNo);
  UpdateList;
  qryProject.Locate('ProjectID', ProjectID, []);
end;

procedure TrptfunctionF.UpdateList();
begin
  initSQL;
  with qryInfo do
  begin
    Active := False;
    if MonthNo = 13 then
    begin
      Parameters.ParamByName('MounthNoFrom').Value := 1;
      Parameters.ParamByName('MounthNoTo').Value := 12;
    end
    else
    begin
      Parameters.ParamByName('MounthNoFrom').Value := MonthNo;
      Parameters.ParamByName('MounthNoTo').Value := MonthNo;
    end;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
  end; // with
  with qryProject do
  begin
    Active := False;
    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);
    Active := True;
  end; // with
end;

procedure TrptfunctionF.FormShow(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;

end;

procedure TrptfunctionF.qryProjectAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // UpdateList(True);
  with qryInfo do
  begin
    Active := False;
    Parameters.ParamByName('ProjectIDFrom').Value :=
      qryProject.Fieldbyname('ProjectID').AsInteger;
    Parameters.ParamByName('ProjectIDTo').Value :=
      qryProject.Fieldbyname('ProjectID').AsInteger;
    Active := True;
  end; // qryInfo
end;

procedure TrptfunctionF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptfunctionF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TrptfunctionF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptfunctionF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptfunctionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInfo);
end;

procedure TrptfunctionF.chkAllMounthClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TrptfunctionF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptfunctionF.actPrintExecute(Sender: TObject);
var
  T_o_P, T_o_PCalc: Real;
  i, j: Integer;
  leftla1, leftdbt, leftla2, leftdbca: Real;
begin
  inherited;
  try
    qryProject.DisableControls;
    qryInfo.DisableControls;
    leftdbt := ppDBTxtTime.Left;
    leftdbca := ppDBCalcTime.Left;
    leftla1 := ppLblTime.Left;
    leftla2 := ppLblFun.Left;

    for i := 6 to DBGrid1.Columns.Count - 1 do
    begin
      if Odd(i) then
      begin
        T_o_P := ppDBTxtTime.Top;
        T_o_PCalc := ppDBCalcTime.Top;
      end
      else
      begin
        T_o_P := ppDBTxtDay.Top;
        T_o_PCalc := ppDBCalcDay.Top;
        leftdbt := leftdbt - ppDBTxtTime.Width - 0.0937;
        leftdbca := leftdbca - ppDBCalcTime.Width - 0.0937;
      end;
      with TppDBText.Create(ppChildReport1) do
      begin
        TextAlignment := ppDBTxtTime.TextAlignment;
        Height := ppDBTxtTime.Height;
        Font.Size := 10;
        Width := ppDBTxtTime.Width;
        Font.Name := 'badr';
        Left := leftdbt;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := T_o_P;
        Band := ppChildReport1.DetailBand;
      end; // with
      with TppDBCalc.Create(ppChildReport1) do
      begin
        TextAlignment := ppDBCalcTime.TextAlignment;
        Height := ppDBCalcTime.Height;
        Font.Size := 10;
        Width := ppDBCalcTime.Width;
        Font.Name := 'badr';
        Left := leftdbca;
        DBCalcType := ppDBCalcTime.DBCalcType;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := T_o_PCalc;
        Band := ppChildReport1.SummaryBand;
      end; // with
    end; // for
    for j := 0 to qryWage.RecordCount - 1 do
    begin
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := tacentered;
        Font.Style := [fsBold];
        Top := ppLblFun.Top;
        Height := ppLblFun.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblFun.Width;
        leftla2 := leftla2 - ppLblFun.Width - 0.0937;
        Left := leftla2;
        Band := ppReport1.HeaderBand;
        Caption := capname[j];
      end; // with
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := ppLblDay.TextAlignment;
        Font.Style := [fsBold];
        Top := ppLblDay.Top;
        Height := ppLblDay.Top;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Caption := 'روز';
        Width := ppLblDay.Width;
        leftla1 := leftla1 - ppLblDay.Width - 0.0937;
        Left := leftla1;
        Band := ppReport1.HeaderBand;
      end; // with
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := ppLblTime.TextAlignment;
        Font.Style := [fsBold];
        Top := ppLblTime.Top;
        Height := ppLblTime.Top;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Caption := 'ساعت';
        Width := ppLblTime.Width;
        Left := leftla1;
        Band := ppReport1.HeaderBand;
      end; // with
    end; // for
    ppReport1.Print;
  finally
    qryProject.EnableControls;
    qryInfo.EnableControls;
    UpdateList;
  end;
end;

procedure TrptfunctionF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptfunctionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInfo);
end;

procedure TrptfunctionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'ProjectID', ' كد پروژه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID AS ProjectID, InfoName_L1 AS ProjectName_L1, InfoName_L2 AS ProjectName_L2 FROM Pay.FormsInfo WHERE(FormType=40) ',
        ' SELECT MIN(InfoID) AS Expr1, MAX(InfoID) AS Expr2  FROM  Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON Pay.FormsInfo.FormInfoID = Pay.Functions.ProjectID ');

      AddItem(DMF.adcSalary, 'OfficeCode', ' عنوان سازمان', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  Pay.FormsInfo.InfoID,Pay.FormsInfo.InfoName_L1 ',
        ' SELECT MIN(Pay.FormsInfo.InfoID) AS Expr1, MAX(Pay.FormsInfo.InfoID) AS Expr2  FROM  Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON Pay.FormsInfo.FormInfoID = Pay.Functions.OfficeCode ');
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

procedure TrptfunctionF.qryInfoAfterOpen(DataSet: TDataSet);
var
  j: Integer;
begin
  inherited;
  with qryInfo do
  begin
    Fieldbyname('PersonelName_L1').DisplayLabel := 'مشخصات پرسنل';
    Fieldbyname('PersonelName_L2').DisplayLabel := 'PersonelName';
    Fieldbyname('PersonelNo').DisplayLabel := 'ش.پرسنل';
    Fieldbyname('FunctionTime').DisplayLabel := 'ساعت كاركرد';
    Fieldbyname('FunctionDay').DisplayLabel := 'روز كاركرد';
    Fieldbyname('FunctionID').DisplayLabel := 'سريال كاركرد';
    qryWage.First;
    j := 0;
    while not qryWage.eof do
    begin
      Fieldbyname('Fdaily' + qryWage.Fields[0].AsString).DisplayLabel :=
        qryWage.Fields[2].AsString + ' روز';
      Fieldbyname('fHours' + qryWage.Fields[0].AsString).DisplayLabel :=
        qryWage.Fields[2].AsString + ' ساعت';
      capname[j] := qryWage.Fields[2].AsString;
      inc(j);
      qryWage.Next;
    end; // while
  end; // with

  L1_L2(DBGrid1);
  for j := 0 to qryInfo.FieldCount - 1 do
  begin
    qryInfo.Fields[j].tag := 3
  end; // for
  if not optP.LanguageDisplay2 then
    qryInfo.Fieldbyname('PersonelName_L2').tag := 0;

  SetColSize(DBGrid1, 1, True);
end;

procedure TrptfunctionF.ActFunShowExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActFunctionsF.Execute then
  begin
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qryInfo.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TrptfunctionF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInfo.Fieldbyname('PersonelNo'));
end;

procedure TrptfunctionF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if Odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

end.
