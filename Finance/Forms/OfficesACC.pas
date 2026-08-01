unit OfficesAcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList,  AccFunctions ,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBClient, Provider, Mask, DBCtrls,
  ppBands, ppCache, ppClass, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppParameter, shamsiDate, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.Menus;

type
  ThackCedarGrid = class(TCedarDbgrid);

  TOfficesAccF = class(Ttemplate2MDIF)
    qryOfficesAcc: TADOQuery;
    srcOfficesAcc: TDataSource;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    actExcel: TAction;
    btnSort2: TBitBtn;
    pnl5: TPanel;
    actDocShow: TAction;
    btnExcel: TBitBtn;
    edtAccCode: TEdit;
    edtAccName: TEdit;
    actPrint: TAction;
    btnPrint: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    btnDesignPrint: TBitBtn;
    actDesignPrint: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLBCompanyName: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDocDate: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    pnlRatesCalculation: TPanel;
    edtRatesCalculation: TLabeledEdit;
    edtCalDate: TLabeledEdit;
    qryCurrencyType: TADOQuery;
    chkBeforeYear: TCheckBox;
    grd1: TCedarDbgrid;
    PopupMenu1: TPopupMenu;
    mnuAll: TMenuItem;
    rptOfficesAcc: TMenuItem;
    rptOfficesAcc2: TMenuItem;
    rptOfficesAcc3: TMenuItem;
    rptOfficesAccAllCurency: TMenuItem;
    rptOfficesAccCurency: TMenuItem;
    N4: TMenuItem;
    plblLimit: TppLabel;
    qryOfficesAcc_Row: TIntegerField;
    qryOfficesAccAccCode: TStringField;
    qryOfficesAccSerial: TIntegerField;
    qryOfficesAccID: TAutoIncField;
    qryOfficesAccCompanyCode: TIntegerField;
    qryOfficesAccSecondaryDocNo: TIntegerField;
    qryOfficesAccPrimaryDocNo: TIntegerField;
    qryOfficesAccComment_L1: TStringField;
    qryOfficesAccDocDate: TStringField;
    qryOfficesAccAidDocNo: TFMTBCDField;
    qryOfficesAccBudgetTopicID: TIntegerField;
    qryOfficesAccProjectID: TIntegerField;
    qryOfficesAccAidDocdate: TStringField;
    qryOfficesAccAidAmount: TFloatField;
    qryOfficesAccYearId: TIntegerField;
    qryOfficesAcc_rate: TFMTBCDField;
    qryOfficesAcc_calcuRate: TFMTBCDField;
    qryOfficesAccCurrencyCredit: TFMTBCDField;
    qryOfficesAccCurrencyBalance: TFMTBCDField;
    qryOfficesAccCurrencyType: TIntegerField;
    qryOfficesAccAidDocNo_1: TFMTBCDField;
    qryOfficesAccAidDocdate_1: TStringField;
    qryOfficesAccAidAmount_1: TFloatField;
    qryOfficesAcc_CurrencyName: TStringField;
    qryOfficesAcc_CurBalance: TFMTBCDField;
    qryOfficesAccCurrencyDebit: TFMTBCDField;
    qryOfficesAccdebt: TFMTBCDField;
    qryOfficesAccCredit: TFMTBCDField;
    qryOfficesAccbalance: TFMTBCDField;
    qryOfficesAccBedBes: TStringField;
    qryOfficesAccRunningBalance: TFMTBCDField;
    qryOfficesAccRunningCurrencyBalance: TFMTBCDField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actDocShowExecute(Sender: TObject);
    procedure chkBeforeYearClick(Sender: TObject);
    procedure qryOfficesAccAfterOpen(DataSet: TDataSet);
    procedure qryOfficesAcc_sumBedGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grd1DblClick(Sender: TObject);
    procedure grd1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actDesignPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure qryOfficesAccCalcFields(DataSet: TDataSet);
    procedure mnuAllClick(Sender: TObject);
    procedure grd1MouseLeave(Sender: TObject);
    procedure plblLimitGetText(Sender: TObject; var Text: string);
  private
    aDateTo: string;
//    procedure Updateremain;
    // procedure SumSelected;
    procedure UpdateRate;
    { Private declarations }
  public
    CompanyFrom: Integer;
    CompanyTo: Integer;
    Procedure enter( MyParams1: TParams;AccCode, AccName, BaseParam, Awhere, BWhere, DateTO,
      ActiveArz: String);
    { Public declarations }
  end;

var
  OfficesAccF: TOfficesAccF;

implementation

uses
  Dm, GlobalPro, Main, Document, sort, search1, DBGrid2Print, DateUtils,
  search2, sort2;

{$R *.dfm}
{ TOfficesAccF }

// procedure TOfficesAccF.SumSelected;
// var
// i: Byte;
// SumBalance: Currency;
// SumBed: Currency;
// SumBes: Currency;
// SumcalcuRate: Currency;
// SumArzBed, SumArzBes, SumArzBalance: Currency;
// begin
// SumBed := 0;
// SumBes := 0;
// SumBalance := 0;
// SumcalcuRate := 0;
// SumArzBed := 0;
// SumArzBes := 0;
// SumArzBalance := 0;
// grd1.DataSource.DataSet.DisableControls;
// try
//
// if grd1.SelectedRows.Count > 1 then
// begin
// with grd1.DataSource.DataSet do
// for i := 0 to grd1.SelectedRows.Count - 1 do
// begin
// GotoBookmark(pointer(grd1.SelectedRows.Items[i]));
// SumBed := SumBed + FieldByName('Debt').AsFloat;
// SumBes := SumBes + FieldByName('Credit').AsFloat;
// SumBalance := SumBalance + FieldByName('_CalBalance').AsFloat;
// SumcalcuRate := SumcalcuRate + FieldByName('_calcuRate').AsFloat;
// SumArzBed := SumArzBed + FieldByName('CurDebit').AsFloat;
// SumArzBes := SumArzBes + FieldByName('CurCredit').AsFloat;
// SumArzBalance := SumArzBalance + FieldByName('_CurBalance').AsFloat;
// end;
// end;
// edtSelBed.Text := CurrToStrF(SumBed, ffCurrency, 0);
// edtSelBes.Text := CurrToStrF(SumBes, ffCurrency, 0);
// edtSumBalance.Text := CurrToStrF(SumBalance, ffCurrency, 0);
// edtSumRate.Text := CurrToStrF(SumcalcuRate, ffCurrency, 0);
// edtSumArzBed.Text := CurrToStrF(SumArzBed, ffCurrency, 0);
// edtSumArzBes.Text := CurrToStrF(SumArzBes, ffCurrency, 0);
// edtSumArzBalance.Text := CurrToStrF(SumArzBalance, ffCurrency, 0);
// finally
// grd1.DataSource.DataSet.EnableControls;
// end;
// end;

procedure TOfficesAccF.enter;
begin
  createmdiform2(TOfficesAccF, OfficesAccF, mainF);
  with OfficesAccF do
    with qryOfficesAcc do
    begin
//      setColumns(grd1, '#05,#06,#07,#08', ActiveArz = '1');

      close;
      aDateTo := DateTO;
      Parameters.ParamByName('BaseParam').Value := BaseParam;
      Parameters.ParamByName('AccCode').Value := AccCode;
      Parameters.ParamByName('aWhere').Value := Awhere;
      Parameters.ParamByName('bWhere').Value := BWhere;
      Parameters.ParamByName('BeforYear').Value := true;
      Parameters.ParamByName('ActiveArz').Value := ActiveArz;
      open;
      DBGridCurrencyKind(grd1, MyParams1, qryOfficesAcc);
      sort := 'AccCode';
      edtAccCode.Text := AccCode;
      edtAccName.Text := AccName;
    end;
end;

procedure TOfficesAccF.FormCreate(Sender: TObject);
begin
  inherited;
//  grd1.SelectedSum := true;
//  grd1.SetFooter4Sum(['_CalBalance', 'CurBalance', 'balance', '_CurBalance']);
  pnlRatesCalculation.Visible := opta.RatesCalculation > 0;
  edtRatesCalculation.Text := IntToStr(opta.RatesCalculation);
  setColumns(grd1, '#12', pnlRatesCalculation.Visible);
end;

procedure TOfficesAccF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2f.ShowSearch(qryOfficesAcc);
end;

procedure TOfficesAccF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOfficesAcc);
end;

procedure TOfficesAccF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TOfficesAccF.UpdateRate;
var
  LastDate, NowDate: TDateTime;
  FinalRate, calcuRate: Double;
begin
  if opta.RatesCalculation = 0 then
    Exit;
  with qryOfficesAcc do
    try
      DisableControls;
      Last;
      LastDate := Shamsi2Miladi(aDateTo);
      edtCalDate.Text := aDateTo;
      while not Bof do
      begin
        NowDate := Shamsi2Miladi(qryOfficesAccDocDate.AsString);
        FinalRate := (qryOfficesAccRunningBalance.AsLargeInt * (LastDate - NowDate)
          * opta.RatesCalculation) / 36000;
        Edit;
        qryOfficesAcc_rate.AsExtended := FinalRate;
        Post;
        LastDate := (NowDate);
        Prior;
      end;
      calcuRate := 0;
      First;
      while not Eof do
      begin
        calcuRate := calcuRate + qryOfficesAcc_rate.AsExtended;
        Edit;
        qryOfficesAcc_calcuRate.AsExtended := calcuRate;
        Post;
        Next;
      end;
    finally
      // edtRate.Text := CurrToStrF(calcuRate, ffCurrency, 0);
      EnableControls;
    end;
end;

//procedure TOfficesAccF.Updateremain;
//var
//  c, a: Currency;
//  cmFooter: TColumnFooterEh;
//begin
//  with qryOfficesAcc do
//    try
//      First;
//      DisableControls;
//      c := 0;
//      a := 0;
//      while not Eof do
//      begin
//        c := c + FieldByName('Balance').AsCurrency;
//        a := a + FieldByName('CurBalance').AsCurrency;
//        Edit;
//        FieldByName('_CalBalance').AsCurrency := c;
//        FieldByName('_CurBalance').AsCurrency := a;
//        Post;
//        Next;
//      end; // while
//      // edtBalance.Text := CurrToStrF(c, ffCurrency, 0);
//      // edtArzBalance.Text := CurrToStrF(a, ffCurrency, 0);
//
//      cmFooter := grd1.FindFieldColumn('_CalBalance').Footers.Add;
//      cmFooter.color := grd1.FindFieldColumn('_CalBalance').color;
//      cmFooter.ValueType := fvtStaticText;
//      cmFooter.Value := CurrToStrF(c, ffCurrency, 0);
//
//      cmFooter := grd1.FindFieldColumn('_CurBalance').Footers.Add;
//      cmFooter.color := grd1.FindFieldColumn('_CurBalance').color;
//      cmFooter.ValueType := fvtStaticText;
//      cmFooter.Value := CurrToStrF(a, ffCurrency, 0);
//
//    finally
//      First;
//      EnableControls;
//    end; // try
//end;

procedure TOfficesAccF.actDocShowExecute(Sender: TObject);
begin
  inherited;
  GetUserAccess('mnuDocument');
  DocumentF.FindDoc(qryOfficesAcc.FieldByName('serial').AsVariant,
    qryOfficesAcc.FieldByName('YearID').AsInteger,
    qryOfficesAccCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qryOfficesAcc.FieldByName('id')
    .AsInteger, []);
end;

procedure TOfficesAccF.chkBeforeYearClick(Sender: TObject);
begin
  inherited;
  with qryOfficesAcc do
  begin
    close;
    Parameters.ParamByName('BeforYear').Value := chkBeforeYear.Checked;
    open;
  end
end;

procedure TOfficesAccF.qryOfficesAccAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //Updateremain;
  UpdateRate;
  grd1.ColorDBGrid;
  ThackCedarGrid(grd1).DoLoad;
end;

procedure TOfficesAccF.qryOfficesAccCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_row').AsInteger := DataSet.RecNo;
end;

procedure TOfficesAccF.qryOfficesAcc_sumBedGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := CurrToStrF(Sender.AsVariant, ffCurrency, 0);

end;

procedure TOfficesAccF.grd1DblClick(Sender: TObject);
begin
  inherited;
  actDocShow.Execute;
end;

procedure TOfficesAccF.grd1MouseLeave(Sender: TObject);
begin
  inherited;
  ThackCedarGrid(grd1).DoSave;
end;

procedure TOfficesAccF.grd1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // if CtrlDown then
  // SumSelected;;
end;

procedure TOfficesAccF.mnuAllClick(Sender: TObject);
begin
  inherited;
  try
    qryOfficesAcc.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name, grd1, ppDBPipeline1);
  finally
    qryOfficesAcc.EnableControls;
  end;
end;

procedure TOfficesAccF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TOfficesAccF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
//  if CompanyFrom = CompanyTo then
//    Text := GetCompanyName(CompanyFrom)
//  else
    Text := APPBank.CompanyName;
end;

procedure TOfficesAccF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := edtAccCode.Text + '  ' + edtAccName.Text
end;

procedure TOfficesAccF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TOfficesAccF.plblLimitGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:=LblShowLimitPlace1.Caption
end;

procedure TOfficesAccF.ppDocDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TOfficesAccF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TOfficesAccF.actDesignPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grd1, 0);
end;

procedure TOfficesAccF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TOfficesAccF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TOfficesAccF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption
end;

end.
