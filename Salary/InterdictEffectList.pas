unit InterdictEffectList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppModule, ppCtrls,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, DBCtrls, Menus,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TInterdictEffectListF = class(Ttemplate2MDIF)
    qrySalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    actSendtoExcel: TAction;
    qryWage: TADOQuery;
    DBGrid1: TDBGrid;
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
    qrysum: TADOQuery;
    srcsum: TDataSource;
    DBGrid2: TDBGrid;
    PopMnuPrint: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    InterdictEffectListFRow1: TMenuItem;
    InterdictEffectListFRow2: TMenuItem;
    AllClick: TMenuItem;
    InterdictEffectListFRow1_onCaption: TMenuItem;
    InterdictEffectListFRow2_onCaption: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLblCompanyName: TppLabel;
    ppLBCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLabel4: TppLabel;
    ppLine6: TppLine;
    ppLine11: TppLine;
    ppLB1: TppLabel;
    ppLB11: TppLabel;
    ppLine10: TppLine;
    ppLB12: TppLabel;
    ppLB2: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLB3: TppLabel;
    ppLB13: TppLabel;
    ppLB14: TppLabel;
    ppLB4: TppLabel;
    ppLine18: TppLine;
    ppLB5: TppLabel;
    ppLB15: TppLabel;
    ppLine19: TppLine;
    ppLB6: TppLabel;
    ppLine20: TppLine;
    ppSysVarPageNo: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLB7: TppLabel;
    ppLine39: TppLine;
    ppLB8: TppLabel;
    ppLB18: TppLabel;
    ppLine43: TppLine;
    ppLB17: TppLabel;
    ppLB9: TppLabel;
    ppLB19: TppLabel;
    ppLB16: TppLabel;
    ppLB10: TppLabel;
    ppLB20: TppLabel;
    ppLine47: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLine12: TppLine;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine9: TppLine;
    ppLine14: TppLine;
    ppDBTX1: TppDBText;
    ppDBTX11: TppDBText;
    ppLine2: TppLine;
    ppDBTX2: TppDBText;
    ppDBTX12: TppDBText;
    ppLine4: TppLine;
    ppLine21: TppLine;
    ppDBTX3: TppDBText;
    ppDBTX13: TppDBText;
    ppLine22: TppLine;
    ppDBTX4: TppDBText;
    ppDBTX14: TppDBText;
    ppLine23: TppLine;
    ppDBTX5: TppDBText;
    ppDBTX15: TppDBText;
    ppLine24: TppLine;
    ppDBTX16: TppDBText;
    ppDBTX6: TppDBText;
    ppDBTxSum: TppDBText;
    ppLine8: TppLine;
    ppLine40: TppLine;
    ppDBTX7: TppDBText;
    ppLine44: TppLine;
    ppDBTX8: TppDBText;
    ppDBTX18: TppDBText;
    ppDBTX17: TppDBText;
    ppDBTX9: TppDBText;
    ppDBTX19: TppDBText;
    ppLine48: TppLine;
    ppDBTX10: TppDBText;
    ppDBTX20: TppDBText;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLine5: TppLine;
    ppDBCLCF1: TppDBCalc;
    ppLine26: TppLine;
    ppDBCLCF11: TppDBCalc;
    ppDBCLCF2: TppDBCalc;
    ppDBCLCF12: TppDBCalc;
    ppLine27: TppLine;
    ppDBCLCF4: TppDBCalc;
    ppDBCLCF13: TppDBCalc;
    ppLine28: TppLine;
    ppDBCLCF3: TppDBCalc;
    ppDBCLCF14: TppDBCalc;
    ppLine29: TppLine;
    ppDBCLCF5: TppDBCalc;
    ppDBCLCF15: TppDBCalc;
    ppLine30: TppLine;
    ppDBCLCF6: TppDBCalc;
    ppDBCLCF16: TppDBCalc;
    ppLine31: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppLine25: TppLine;
    ppDBCLCF17: TppDBCalc;
    ppLine41: TppLine;
    ppDBCLCF8: TppDBCalc;
    ppDBCLCF18: TppDBCalc;
    ppLine45: TppLine;
    ppDBCLCF7: TppDBCalc;
    ppDBCLCF9: TppDBCalc;
    ppDBCLCF19: TppDBCalc;
    ppDBCLCF20: TppDBCalc;
    ppDBCLCF10: TppDBCalc;
    ppLine49: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLine13: TppLine;
    ppDBCLCS1: TppDBCalc;
    ppLine32: TppLine;
    ppDBCLCS11: TppDBCalc;
    ppDBCLCS2: TppDBCalc;
    ppDBCLCS12: TppDBCalc;
    ppLine33: TppLine;
    ppDBCLCS4: TppDBCalc;
    ppDBCLCS13: TppDBCalc;
    ppLine34: TppLine;
    ppDBCLCS3: TppDBCalc;
    ppDBCLCS14: TppDBCalc;
    ppLine35: TppLine;
    ppDBCLCS5: TppDBCalc;
    ppDBCLCS15: TppDBCalc;
    ppLine36: TppLine;
    ppDBCLCS6: TppDBCalc;
    ppDBCLCS16: TppDBCalc;
    ppLine37: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine38: TppLine;
    ppLine42: TppLine;
    ppDBCLCS7: TppDBCalc;
    ppDBCLCS17: TppDBCalc;
    ppLine46: TppLine;
    ppDBCLCS8: TppDBCalc;
    ppDBCLCS18: TppDBCalc;
    ppDBCLCS9: TppDBCalc;
    ppDBCLCS19: TppDBCalc;
    ppLine50: TppLine;
    ppDBCLCS10: TppDBCalc;
    ppDBCLCS20: TppDBCalc;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLB21: TppLabel;
    ppLB22: TppLabel;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppDBTX21: TppDBText;
    ppDBTX22: TppDBText;
    ppLine53: TppLine;
    ppDBCLCF21: TppDBCalc;
    ppDBCLCF22: TppDBCalc;
    ppDBCLCS21: TppDBCalc;
    ppDBCLCS22: TppDBCalc;
    ppLine54: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    actShow: TAction;
    BitBtn1: TBitBtn;
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qrysumAfterOpen(DataSet: TDataSet);
    procedure qrySalaryAfterOpen(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    FirstWith: Integer;
    capname: array of string;
    procedure setgride;
    procedure makeqry;
    procedure UpdateFilter;
    // procedure Make4Report;
    procedure NewMake4Report(ItemCount: Byte);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterdictEffectListF: TInterdictEffectListF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Mymostafa, sort2, search2,
  FormInfo_3, DBGrid2Print, FaraConsts;

{$R *.dfm}

procedure TInterdictEffectListF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInterdictEffectListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TInterdictEffectListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TInterdictEffectListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'FormType', ' ⁄‰Ê«‰ «ÿ·«⁄« ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormTypes.FormType as FormType, Pay.FormTypes.FormCaption_L1 as FormCaption_L1, Pay.FormTypes.FormCaption_L2 as FormCaption_L2 '
        + 'FROM         Pay.FormInfoItems INNER JOIN ' +
        'Pay.FormsInfo ON Pay.FormInfoItems.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN '
        + 'Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType ' +
        'WHERE           (Pay.FormTypes.KargozinyEffectKind <> 0) ' +
        'GROUP BY Pay.FormTypes.KargozinyEffectKind, Pay.FormTypes.FormType, Pay.FormTypes.FormCaption_L1, Pay.FormTypes.FormCaption_L2 ',
        'SELECT     MIN(Pay.FormTypes.FormType) AS Expr1, MAX(Pay.FormTypes.FormType) AS Expr2 '
        + ' FROM         Pay.FormInfoItems INNER JOIN Pay.FormsInfo ON Pay.FormInfoItems.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN'
        + ' Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType ' +
        ' GROUP BY Pay.FormTypes.KargozinyEffectKind HAVING   (Pay.FormTypes.KargozinyEffectKind <> 0)');
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

procedure TInterdictEffectListF.UpdateFilter;
begin
  inherited;
  makeqry;
  FirstWith := FirstWith + 1;
  setgride;
  DisbelLabel(Self);
  SetColSize(DBGrid1, 1, True);
  if FirstWith <> 1 then
    SetColSize(DBGrid2, 1, false);
end;

procedure TInterdictEffectListF.setgride;
var
  p: Integer;
begin
  SetLength(capname, qryWage.RecordCount + 1);
  // j1:=qryWage.RecordCount-1;
  p := 0;
  with qrySalary do
  begin
    FieldByName('FormCaption_L1').DisplayLabel := '⁄‰Ê«‰ «ÿ·«⁄« ';
    FieldByName('FormCaption_L2').DisplayLabel := 'Form  Caption';
    FieldByName('InfoName_L1').DisplayLabel := '‰Ê⁄ «ÿ·«⁄« ';
    FieldByName('InfoName_L2').DisplayLabel := 'Information type';
    FieldByName('sumamount').DisplayLabel := 'Ã„⁄ ﬂ·';
    FieldByName('FormCaption_L1').Tag := 3;
    FieldByName('InfoName_L1').Tag := 3;
    qryWage.First;
    while not qryWage.Eof do
    begin
      FieldByName('amount' + qryWage.Fields[0].AsString).DisplayLabel :=
        qryWage.Fields[1].AsString;
      capname[p] := qryWage.Fields[1].AsString;
      // j1:=j1-1;
      p := p + 1;
      qryWage.Next;
    end; // while
    capname[p] := 'Ã„⁄ ﬂ·';
  end; // with qrysalary
  DBGrid1.Columns[0].Visible := false;
  DBGrid1.Columns[3].Visible := false;
  DBGrid1.Columns[6].Visible := false;

  with qryWage do
  begin
    First;
    while not Eof do
    begin
      TBCDField(qrySalary.FieldByName('amount' + Fields[0].AsString))
        .currency := True;
      TBCDField(qrysum.FieldByName('sumAmount' + Fields[0].AsString))
        .currency := True;
      Next;
    end;
    TBCDField(qrySalary.FieldByName('sumamount')).currency := True;
    TBCDField(qrysum.FieldByName('AllSumamount')).currency := True;
  end;

end;

procedure TInterdictEffectListF.NewMake4Report(ItemCount: Byte);
var
  i, ColumnId, SalaryId: Integer;
begin
  SalaryId := qryWage.RecordCount - 1;
  SalaryId := DBGrid1.Columns.Count - 2 - SalaryId;
  ColumnId := SalaryId;
  for i := SalaryId to DBGrid1.Columns.Count - 2 do
  begin
    IF ColumnId - SalaryId + 1 > ItemCount THEN
      Break;
    if DBGrid1.Columns[i].Visible then
    begin
      TppLabel(FindComponent('ppLB' + IntToStr(ColumnId - SalaryId + 1)))
        .Caption := DBGrid1.Columns[i].Title.Caption;
      TppDBText(FindComponent('ppDBTX' + IntToStr(ColumnId - SalaryId + 1)))
        .DataField := DBGrid1.Columns[i].FieldName;
      TppDBCalc(FindComponent('ppDBCLCF' + IntToStr(ColumnId - SalaryId + 1)))
        .DataField := DBGrid1.Columns[i].FieldName;
      TppDBCalc(FindComponent('ppDBCLCS' + IntToStr(ColumnId - SalaryId + 1)))
        .DataField := DBGrid1.Columns[i].FieldName;
      inc(ColumnId);
    end; // if
  end;

end;


// procedure TInterdictEffectListF.Make4Report;
// var
// i,j:Integer;
// leftla1,leftdbt,leftdbcaSumarry,leftdbcaFooter:real;//,leftla2
/// /  s:string;
// begin
// inherited;
// try
// qrySalary.DisableControls;
// j:=0;
// leftdbt:=ppDBText1.Left;
// leftdbcaFooter:=ppDBCalc1.left;
// leftdbcaSumarry:=ppDBCalc2.left;
// leftla1:=ppLabel4.Left;
//
// for i:=8  to DBGrid1.Columns.Count-1  do begin
//
// with TppDBText.Create(ppReport1) do begin
// TextAlignment:=taRightJustified;
// Height:=ppDBText1.Height;
// AutoSize := true;
// Font.Size:=10;
// Width:=ppDBText1.Width;
// Font.Name:='badr';
// leftdbt:=leftdbt-ppDBText1.Width-0.0937;
// Left:=leftdbt ;
// DataPipeline:=Self.ppDBPipeline1;
// DataField:=DBGrid1.Columns[i].FieldName;
// Top:=0;
// Band:=ppReport1.DetailBand;
// end;//with
// with TppDBCalc.Create(ppReport1) do begin
// TextAlignment:=taRightJustified;
// AutoSize := true;
// Height:=ppDBCalc1.Height;
// Font.Size:=10;
// Width:=ppDBCalc1.Width;
// Font.Name:='badr';
// leftdbcaFooter:=leftdbcaFooter-ppDBCalc1.Width-0.0937;
// Left:=leftdbcaFooter ;
// DBCalcType:=ppDBCalc1.DBCalcType;
// DataPipeline:=Self.ppDBPipeline1;
// DataField:=DBGrid1.Columns[i].FieldName;
// Top:=ppDBCalc1.Top;
// Band:=ppReport1.FooterBand;
// end;//with
// with TppDBCalc.Create(ppReport1) do begin
// TextAlignment:=taRightJustified;
// AutoSize := true;
// Height:=ppDBCalc2.Height;
// Font.Size:=10;
// Width:=ppDBCalc2.Width;
// Font.Name:='badr';
// leftdbcaSumarry:=leftdbcaSumarry-ppDBCalc2.Width-0.0937;
// Left:=leftdbcaSumarry ;
// DBCalcType:=ppDBCalc2.DBCalcType;
// DataPipeline:=Self.ppDBPipeline1;
// DataField:=DBGrid1.Columns[i].FieldName;
// Top:=ppDBCalc2.Top;
// Band:=ppReport1.SummaryBand;
// end;//with
//
// with TppLabel.Create(ppReport1) do begin
// TextAlignment:=taCentered;
// AutoSize := True;
// Font.Style:=[fsBold];
// Top:=ppLabel4.Top;
// Height:=ppLabel4.Top;
// Font.Name:='Yagut';
// Font.Size:=10;
// Width:=ppLabel4.Width;
// leftla1:=leftla1-ppLabel4.Width-0.0937;
// Left:=leftla1 ;
// Band:=ppReport1.HeaderBand;
// Caption:=capname[j];
// end;//with
// j:=j+1;
// end;//for
// ppReport1.Prnt;
// finally
// qrySalary.EnableControls;
// end;//finaly

// end;

procedure TInterdictEffectListF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdictEffectListF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInterdictEffectListF.FormShow(Sender: TObject);
begin
  inherited;
  FirstWith := 0;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('FormType') = nil then
      Close;
end;

procedure TInterdictEffectListF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TInterdictEffectListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySalary);
end;

procedure TInterdictEffectListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySalary);
end;

procedure TInterdictEffectListF.DBGrid1DrawColumnCell(Sender: TObject;
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
    if Column.ID < 8 then
      DBGrid2.Columns[0].Width := DBGrid1.Columns[0].Width + DBGrid1.Columns[1]
        .Width + DBGrid1.Columns[2].Width + DBGrid1.Columns[3].Width +
        DBGrid1.Columns[4].Width + DBGrid1.Columns[5].Width +
        DBGrid1.Columns[6].Width
    else
      DBGrid2.Columns[Column.ID - 7].Width := Column.Width;

end;

procedure TInterdictEffectListF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex < 7 then
    DBGrid2.SelectedIndex := 0
  else
    DBGrid2.SelectedIndex := DBGrid1.SelectedIndex - 6

end;

procedure TInterdictEffectListF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);

end;

procedure TInterdictEffectListF.makeqry;
var
  sqltext, SalarySql: string;
  // j,p:integer;
begin
  inherited;
  qrysum.SQL.Text := 'select ''Ã„⁄ ﬂ·'' as s_u_m';
  with qryWage do
  begin
    Active := false;
    Active := True;
    qrySalary.Active := false;
    qrySalary.SQL.Text := ' SELECT  FormInfoID ';
    while not Eof do
    begin
      qrySalary.SQL.Add(', sum(case SalaryID when  ' + Fields[0].AsString +
        '  then amount else 0 end ) as Amount' + Fields[0].AsString);
      qrysum.SQL.Add(',sum(allsum.amount' + Fields[0].AsString +
        ') as sumAmount' + Fields[0].AsString);
      Next;
    end; // while
  end; // whith
  with qrySalary do
  begin
    SQL.Add(',sum(amount) as sumamount');
    SQL.Add(' FROM   Pay.FormInfoItems  GROUP BY  FormInfoID');
    sqltext := SQL.Text;
    SQL.Text :=
      'SELECT  Pay.FormsInfo.InfoID,Pay.FormTypes.FormCaption_L1, Pay.FormTypes.FormCaption_L2, Pay.FormsInfo.FormType, ';
    SQL.Add(' Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2, allfunction.*');
    SQL.Add(' FROM  Pay.FormsInfo INNER JOIN Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType INNER JOIN(');
    SQL.Add(sqltext);
    SQL.Add(' ) allfunction ON Pay.FormsInfo.FormInfoID = allfunction.FormInfoID');
    SQL.Add('WHERE (Pay.FormTypes.KargozinyEffectKind <> 0) and (FormsInfo.FormType between :FormTypFrom and :FormTypTo) ');
    SalarySql := qrySalary.SQL.Text;
    SQL.Add('ORDER BY  Pay.FormsInfo.FormType , Pay.FormsInfo.FormInfoID');
    Parameters.ParamByName('formtypFrom').Value :=
      GetcFrom(myParams.ParamValues['FormType'], ftInteger);
    Parameters.ParamByName('formtypTo').Value :=
      GetcTo(myParams.ParamValues['FormType'], ftInteger);
    Active := True;
  end; // with qrysalary
  with qrysum do
  begin
    Active := false;
    SQL.Add(',sum(allsum.sumamount) AS AllSumamount from (' + SalarySql +
      ')allsum');
    Parameters.ParamByName('formtypFrom').Value :=
      GetcFrom(myParams.ParamValues['FormType'], ftInteger);
    Parameters.ParamByName('formtypTo').Value :=
      GetcTo(myParams.ParamValues['FormType'], ftInteger);
    Active := True;
  end; // qrysum

end;

procedure TInterdictEffectListF.AllClickClick(Sender: TObject);
var
  File_Name: String;
begin
  inherited;
  qrySalary.Sort := (Sender as TMenuItem).Hint;
  File_Name := (Sender as TMenuItem).Name + '.rtm';

  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(File_Name);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('›«Ì· ç«ÅÌ ' + File_Name + ' Ì«›  ‰‘œ.!˛');
      NewMake4Report((Sender as TMenuItem).Tag);
      // InitReport(ppReport1,ppFooterBand1,ppRegion1,ppRecFooterLine, ReportFooter);
      // InitReport(ppReport1,ppSummaryBand1,ppRegion2,ppRecFooterLine2,ReportFooter);
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TInterdictEffectListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdictEffectListF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TInterdictEffectListF.qrysumAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 1 to DBGrid2.Columns.Count - 1 do
    if qrysum.FieldByName(DBGrid2.Columns[i].FieldName).AsCurrency = 0 then
    begin
      DBGrid2.Columns[i].Visible := false;
      DBGrid1.Columns[i + 6].Visible := false;
    end;

end;

procedure TInterdictEffectListF.qrySalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  if ReadConfig(APPID + '\Windows\' + getparentformname(DBGrid1) + '_' +
    DBGrid1.Name, 'ColWidth', '') = '' then
    for i := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns[i].Width := 52;
end;

procedure TInterdictEffectListF.actShowExecute(Sender: TObject);
begin
  inherited;
  // TMenuItem(FindComponent('ActFormInfo_3F' + qrySalary.FieldByName('formtype').AsString+IntToStr(mainF.Menu.Tag))).Click;
  // Warn('ActFormInfo_3F' + qrySalary.FieldByName('formtype').AsString+IntToStr(mainF.Menu.Tag));
  // if  TMenuItem(FindComponent('ActFormInfo_3F' + qrySalary.FieldByName('formtype').AsString+IntToStr(mainF.Menu.Tag))).Visible  then
  CreateMDIForm2(TFormInfo_3F, FormInfo_3F, Self,
    qrySalary.FieldByName('formtype').AsInteger)

end;

procedure TInterdictEffectListF.Button3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

end.
