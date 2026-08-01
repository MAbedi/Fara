unit RptReciptWithCustMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, DB, ADODB, ppBands, ppCache, ppClass,
  ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppVar, ppPrnabl, ppDB,
  ppDBPipe, ppDBBDE, Menus, ppModule,  ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptReciptWithCustMonthsF = class(Ttemplate2MDIF)
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    qryWithCust: TADOQuery;
    actSendExcel: TAction;
    qryinitQry: TADOQuery;
    srcWithCust: TDataSource;
    actFilter: TAction;
    Lbldate: TLabel;
    Lblnumber: TLabel;
    qryWithCustPersonID1: TIntegerField;
    qryWithCustCustName: TStringField;
    qryWithCustReciptType: TWordField;
    qryWithCustReciptCaption: TStringField;
    actSort: TAction;
    qryWithCustCustomerGrpID: TIntegerField;
    qryWithCustCustomerGrpName: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    PopupMenu1: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    ActPrint: TAction;
    BitBtn2: TBitBtn;
    N1: TMenuItem;
    objectMenuItem3TMenuItem1: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel25: TppLabel;
    ppLabel23: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel4: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLblReciptDate: TppLabel;
    ppLblReciptNumber: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppLblStoreID: TppLabel;
    ppLblStuffCode: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBTextIOEntity: TppDBText;
    ppDBTextTotalIOPrice: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel60: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    qryWithCustM1Entity: TFloatField;
    qryWithCustM1Weight: TFloatField;
    qryWithCustM1Price: TBCDField;
    qryWithCustM1TotallSellPrice: TBCDField;
    qryWithCustM2Entity: TFloatField;
    qryWithCustM2Weight: TFloatField;
    qryWithCustM2Price: TBCDField;
    qryWithCustM2TotallSellPrice: TBCDField;
    qryWithCustM3Entity: TFloatField;
    qryWithCustM3Weight: TFloatField;
    qryWithCustM3Price: TBCDField;
    qryWithCustM3TotallSellPrice: TBCDField;
    qryWithCustM4Entity: TFloatField;
    qryWithCustM4Weight: TFloatField;
    qryWithCustM4Price: TBCDField;
    qryWithCustM4TotallSellPrice: TBCDField;
    qryWithCustM5Entity: TFloatField;
    qryWithCustM5Weight: TFloatField;
    qryWithCustM5Price: TBCDField;
    qryWithCustM5TotallSellPrice: TBCDField;
    qryWithCustM6Entity: TFloatField;
    qryWithCustM6Weight: TFloatField;
    qryWithCustM6Price: TBCDField;
    qryWithCustM6TotallSellPrice: TBCDField;
    qryWithCustM7Entity: TFloatField;
    qryWithCustM7Weight: TFloatField;
    qryWithCustM7Price: TBCDField;
    qryWithCustM7TotallSellPrice: TBCDField;
    qryWithCustM8Entity: TFloatField;
    qryWithCustM8Weight: TFloatField;
    qryWithCustM8Price: TBCDField;
    qryWithCustM8TotallSellPrice: TBCDField;
    qryWithCustM9Entity: TFloatField;
    qryWithCustM9Weight: TFloatField;
    qryWithCustM9Price: TBCDField;
    qryWithCustM9TotallSellPrice: TBCDField;
    qryWithCustM10Entity: TFloatField;
    qryWithCustM10Weight: TFloatField;
    qryWithCustM10Price: TBCDField;
    qryWithCustM10TotallSellPrice: TBCDField;
    qryWithCustM11Entity: TFloatField;
    qryWithCustM11Weight: TFloatField;
    qryWithCustM11Price: TBCDField;
    qryWithCustM11TotallSellPrice: TBCDField;
    qryWithCustM12Entity: TFloatField;
    qryWithCustM12Weight: TFloatField;
    qryWithCustM12Price: TBCDField;
    qryWithCustM12TotallSellPrice: TBCDField;
    qryWithCustEntity: TFloatField;
    qryWithCustWeight: TFloatField;
    qryWithCustPrice: TBCDField;
    qryWithCustTotallSellPrice: TBCDField;
    CedarDbgrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryWithCustAfterOpen(DataSet: TDataSet);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure actSendExcelExecute(Sender: TObject);
    procedure SGrdDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure ActPrintExecute(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCodeGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure N1Click(Sender: TObject);
    procedure objectMenuItem3TMenuItem1Click(Sender: TObject);
  private
    formtype: byte;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptReciptWithCustMonthsF: TRptReciptWithCustMonthsF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2, FormFunctions,
  ReciptsFunctions;

{$R *.dfm}

procedure TRptReciptWithCustMonthsF.FormCreate(Sender: TObject);
begin
  inherited;
  CedarDbgrid1.SetFooter4Sum(['PersonID1']);

  formtype := var_glb_gParam;

  with qryinitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formtype;
    Active := True;
    Caption := ' ê“«—‘ ' + qryinitQry.FieldByName('ReciptCaption').AsString +
      '  » ›ﬂÌﬂ „‘ —Ì«‰   ';
  end;

  // case FormType of
  // 12:
  // With DMf.qryTmpTmp do
  // begin
  // Active:=False;
  // SQL.Text:='DECLARE @ReciptType varchar(500)';
  // SQL.Add  ('DECLARE @ReciptCaption varchar(1000)');
  // SQL.Add  ('SET @ReciptType = ''12''');
  // SQL.Add  ('SET @ReciptCaption = '' ''');
  // SQL.Add  ('SELECT @ReciptType= @ReciptType+'',''+LTRIM(STR(ReciptType))');
  // SQL.Add  (',      @ReciptCaption= @ReciptCaption+'',''+ReciptCaption');
  // SQL.Add  ('FROM ReciptTypes');
  // SQL.Add  ('WHERE (SellEffect = 1)');
  // SQL.Add  ('SELECT @ReciptType,@ReciptCaption');
  // Active:=True;
  // FormTypes:=Fields[0].AsString;
  // Caption:= ' ê“«—‘ '  +Fields[1].AsString+ '  » ›ﬂÌﬂ „‘ —Ì«‰   ' ;
  // end;
  //
  // 5:begin
  // FormTypes:='5';
  // end;
  // else
  // FormTypes:=IntToStr(formType);
  // end;
  // qryWithCust.SQL.Text:=StringReplace(qryWithCust.SQL.Text,':Recipt__Type',FormTypes,[rfReplaceAll]);

  Caption := ' ê“«—‘ ' + GetSellEffect(formtype, qryWithCust) +
    '  » ›ﬂÌﬂ „‘ —Ì«‰   ';

end;

procedure TRptReciptWithCustMonthsF.UpdateFilter;
begin
  ActiveSellPrice2Dbgrid(CedarDbgrid1);
  with qryWithCust do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

    Parameters.ParamByName('custIdfrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('custIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);

    Parameters.ParamByName('custId2from').Value :=
      GetcFrom(myParams.ParamValues['custId2'], ftInteger);
    Parameters.ParamByName('custId2To').Value :=
      GetcTo(myParams.ParamValues['custId2'], ftInteger);

    Parameters.ParamByName('customergrpIdfrom').Value :=
      GetcFrom(myParams.ParamValues['costomergrp'], ftInteger);
    Parameters.ParamByName('customergrpIdTo').Value :=
      GetcTo(myParams.ParamValues['costomergrp'], ftInteger);
    Lbldate.Caption := ' «“ «—ÌŒ' + qryWithCust.Parameters.ParamByName
      ('ReciptDateFrom').Value + '  « ' + qryWithCust.Parameters.ParamByName
      ('ReciptDateTo').Value;
    Lblnumber.Caption := '  «“‘„«—Â ' +
      IntToStr(qryWithCust.Parameters.ParamByName('ReciptNumberFrom').Value) +
      '  « ' + IntToStr(qryWithCust.Parameters.ParamByName
      ('ReciptNumberTo').Value);
    // Parameters.ParamByName('Type').Value:=formtype ;
    // for i := 2 to DBGrid1.Columns.Count - 4 do
    // DBGrid1.Columns[i].Visible := False;
    // for i := GetcFrom(myParams.ParamValues['Month'], ftInteger)
    // to GetcTo(myParams.ParamValues['Month'], ftInteger) do
    // begin
    // DBGrid1.Columns[(i * 3) - 1].Visible := True;
    // DBGrid1.Columns[(i * 3)].Visible := True;
    // DBGrid1.Columns[(i * 3) + 1].Visible := True;
    // end; // for
    Active := True;
  end; // with
end;

procedure TRptReciptWithCustMonthsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'Month', ' „«Â ', '„«Â', ftInteger, dvMinMax, '1',
        '12', ciSimple, '', 'SELECT 1,12 FROM StuffCoding');
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts where recipttype=' +
        IntToStr(formtype));
      AddItem(DMF.adcBSell, 'ReciptNumber', '›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts where recipttype='
        + IntToStr(formtype));

      AddItem(DMF.adcBSell, 'custID2', '„‘ —Ì2', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');

      AddItem(DMF.adcBSell, 'custID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');
      AddItem(DMF.adcBSell, 'costomergrp', 'ê—ÊÂ „‘ —Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT customergrpid,customergrpname from customersgroup ',
        'select min(customergrpid),max(customergrpid) from customersgroup');
      AddItem(DMF.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
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

procedure TRptReciptWithCustMonthsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptReciptWithCustMonthsF.qryWithCustAfterOpen(DataSet: TDataSet);
// var
// I, J : Integer;
begin
  inherited;

  // for i:=0 to SGrd.ColCount-1 do  SGrd.Cols[i].Clear;
  // SGrd.ColCount:=(GetcTo(myParams.ParamValues['Month'],ftInteger)
  // - GetcFrom(myParams.ParamValues['Month'],ftInteger)+1)*3+1;
  // SGrd.Cells[0,0]:=' ⁄œ«œ „‘ —Ì';
  /// SGrd.Cells[0,1]:=IntToStr(DataSet.RecordCount);
  // J:=0;
  // for i:=2 to DBGrid1.Columns.Count-1 do begin
  // if DBGrid1.Columns[i].Visible then begin
  // inc(J);
  // SGrd.Cells[J,0]:=DBGrid1.Columns[i].Title.Caption;
  // SGrd.
  // if TCurrencyField(DBGrid1.Columns[i].Field).currency  then
  // SGrd.Canvas.ceBrush.Color:=$00A8FFA8;
  // SGrd.Cells[J,1]:=CurrToStr(CalcSumFileds(DBGrid1.Columns[i].FieldName));
  // end;//if
  // end;//for
end;

procedure TRptReciptWithCustMonthsF.SGrdDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
// var
// Len :Integer;
begin
  inherited;
  // if (ARow=1) and ((acol-2) mod 3=1) then begin
  // Len:=Length(SGrd.Cells[ACol, ARow]);
  // SGrd.Canvas.Brush.Color:=const_Currency_columns_color;
  // SGrd.Canvas.FillRect(Rect);
  // SGrd.Canvas.TextRect(Rect, Rect.Left+len+10, Rect.Top,CurrToStrF(StrToCurr(SGrd.Cells[ACol, ARow]),ffCurrency,0) ) ;
  // end;
end;

procedure TRptReciptWithCustMonthsF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Lbldate.Caption
end;

procedure TRptReciptWithCustMonthsF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Lblnumber.Caption;
end;

procedure TRptReciptWithCustMonthsF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblCaption.Caption;
end;

procedure TRptReciptWithCustMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryWithCust)
end;

procedure TRptReciptWithCustMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryWithCust)
end;

procedure TRptReciptWithCustMonthsF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptReciptWithCustMonthsF.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustMonthsF.ppLabel8GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptReciptWithCustMonthsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustMonthsF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(CedarDbgrid1)
end;

procedure TRptReciptWithCustMonthsF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ «‰»«— ' +
    IntToStr(qryWithCust.Parameters.ParamByName('StoreIDFrom').Value) + '  « ' +
    IntToStr(qryWithCust.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TRptReciptWithCustMonthsF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryWithCust.Parameters.ParamByName('ReciptDateFrom')
    .Value + '  « ' + qryWithCust.Parameters.ParamByName('ReciptDateTo').Value
end;

procedure TRptReciptWithCustMonthsF.ppLblStuffCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ „‘ —Ì ' +
    IntToStr(qryWithCust.Parameters.ParamByName('custIdfrom').Value) + '  « ' +
    IntToStr(qryWithCust.Parameters.ParamByName('custIdTo').Value)
end;

procedure TRptReciptWithCustMonthsF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' + IntToStr(qryWithCust.Parameters.ParamByName
    ('ReciptNumberFrom').Value) + '  « ' +
    IntToStr(qryWithCust.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TRptReciptWithCustMonthsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptReciptWithCustMonthsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustMonthsF.ppLblFormNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TRptReciptWithCustMonthsF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptReciptWithCustMonthsF.ActPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptReciptWithCustMonthsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithCustMonths1', True);
  finally
    qryWithCust.EnableControls;
  end;
end;

procedure TRptReciptWithCustMonthsF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithCustMonths2', True);
  finally
    qryWithCust.EnableControls;
  end;
end;

procedure TRptReciptWithCustMonthsF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithCustMonths1_Line', True);
  finally
    qryWithCust.EnableControls;
  end;

end;

procedure TRptReciptWithCustMonthsF.objectMenuItem3TMenuItem1Click
  (Sender: TObject);
begin
  inherited;
  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithCustMonths2_Line', True);
  finally
    qryWithCust.EnableControls;
  end;

end;

end.
