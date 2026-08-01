unit rptLoan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, ComCtrls, Menus, ppCtrls,
  ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppBands, ppCache, ppProd,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ppModule, ppTypes, SumDBGrid,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptLoanF = class(Ttemplate2MDIF)
    qryGetLaon: TADOQuery;
    qryLaon: TADOQuery;
    srcGetLaon: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    srcLaon: TDataSource;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    PopMenu: TPopupMenu;
    AllC_l_i_c_k_: TMenuItem;
    DetailNote: TMenuItem;
    N1: TMenuItem;
    actPrint: TAction;
    pdbGetLaon: TppDBPipeline;
    pdbLaon: TppDBPipeline;
    ppReport1: TppReport;
    PopPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    BitBtn5: TBitBtn;
    actPrintVijeh: TAction;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel18: TppLabel;
    ppLabel7: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine8: TppLine;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine28: TppLine;
    ppLine25: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine37: TppLine;
    ppLine43: TppLine;
    ppDetailBand4: TppDetailBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine23: TppLine;
    ppLine26: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine18: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLine44: TppLine;
    ppLine27: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppDetailBand8: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel4: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine24: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    SumGrid1: TSumGrid;
    SumGrid2: TSumGrid;
    qryGetLaonCustomerID2: TIntegerField;
    qryGetLaonCustName: TStringField;
    qryGetLaonLoanCount: TIntegerField;
    qryLaonFormNumber: TIntegerField;
    qryLaonFormDate: TStringField;
    qryLaonAmount: TBCDField;
    qryLaonSubAmount: TBCDField;
    qryLaonRate: TFloatField;
    qryLaonCustomerID1: TIntegerField;
    qryLaonCustName: TStringField;
    qryLaonFormID: TIntegerField;
    qryLaonServerID: TIntegerField;
    qryLaonYearID: TIntegerField;
    Panel7: TPanel;
    lblReLaonItem: TLabel;
    DBGrid4: TDBGrid;
    SumGrid4: TSumGrid;
    srcReLaonItem: TDataSource;
    qryReLaonItem: TADOQuery;
    StringField2: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    qryReLaonItemItemAmount_CashWage: TBCDField;
    pdbReLaonItem: TppDBPipeline;
    Splitter1: TSplitter;
    qryLaonAmount_SubAmount: TBCDField;
    qryReLaonItemDayDelay: TIntegerField;
    qryReLaonItemAmountDelay: TBCDField;
    qryLaonAidInfoNo2: TFloatField;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    actShow: TAction;
    qryReLaonItemCheckNumber: TIntegerField;
    qryReLaonItemItemAmount2: TBCDField;
    qryReLaonItemCashWage: TBCDField;
    qryReLaonItemCheckDate2: TStringField;
    qryReLaonItemItemAmount_CashWage2: TBCDField;
    qryReLaonItemYearID: TIntegerField;
    qryReLaonItemServerID: TIntegerField;
    qryReLaonItemFormID: TIntegerField;
    qryReLaonItemFormNumber: TIntegerField;
    qryReLaonItemLoanFormNumber: TIntegerField;
    Panel9: TPanel;
    btnLaonItem: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure actFilterExecute(Sender: TObject);
    procedure qryGetLaonAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure DetailNoteClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryLaonAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure btnLaonItemClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
  private
    FormType: Integer;
    isUpdate: Boolean;
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptLoanF: TrptLoanF;

implementation

uses DM, filter_ADO, FilterClass_ADO, search2, sort2, GlobalPro,
  DBGrid2Print, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TrptLoanF.UpdateFilter;
begin
  with qryGetLaon do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('CustomerID2From').Value :=
      GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
    Parameters.ParamByName('CustomerID2To').Value :=
      GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);
    Active := True;
  end;
end;

procedure TrptLoanF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'CustomerID2', ' äÇã ÚÖæ ', 'ßÏ ÚÖæ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT Forms.CustomerID2, Customers.CustName ' +
        'FROM Forms INNER JOIN Customers ON Forms.CustomerID2 = Customers.CustID '
        + Format('WHERE (Forms.FormType = %d )', [FormType]),
        'SELECT DISTINCT MIN(Forms.CustomerID2),MAX(Forms.CustomerID2) ' +
        'FROM Forms INNER JOIN Customers ON Forms.CustomerID2 = Customers.CustID '
        + Format('WHERE (Forms.FormType = %d )', [FormType]));
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

procedure TrptLoanF.qryGetLaonAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryLaon do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('CustomerID2').Value :=
      DataSet.FieldByName('CustomerID2').AsInteger;
    Active := True;
  end; // with
end;

procedure TrptLoanF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('CustomerID2') = nil then
    close;
end;

procedure TrptLoanF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(DBGrid2, 6, True);
  SetColSize(DBGrid4, 0, True);
end;

procedure TrptLoanF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid4);
end;

procedure TrptLoanF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptLoanF.actShowExecute(Sender: TObject);
begin
  inherited;
  isUpdate := True;
  ShowFormTypesForms(qryLaon, Self);
end;

procedure TrptLoanF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptLoanF.btnLaonItemClick(Sender: TObject);
begin
  inherited;
  isUpdate := True;
  ShowFormTypesForms(qryReLaonItem, Self);
end;

procedure TrptLoanF.DetailNoteClick(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TrptLoanF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TrptLoanF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryGetLaonCustomerID2);
end;

procedure TrptLoanF.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//  if not(gdSelected in State) then
  begin
    if ((Column.FieldName = 'CheckDate2') or (Column.FieldName = 'ItemAmount2')
       or (Column.FieldName = 'RemItemAmount')or (Column.FieldName = 'CashWage'))
      and (qryReLaonItemCheckDate2.AsString = EmptyStr) then
      DBGrid4.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TrptLoanF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptLoanF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptLoanF.ppSystemVariable3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptLoanF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptLoanF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        pdbGetLaon.RangeBegin := rbCurrentRecord;
        pdbGetLaon.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        pdbGetLaon.RangeBegin := rbFirstRecord;
        pdbGetLaon.RangeEnd := reLastRecord;
      end;
  end;

  try
    qryGetLaon.DisableControls;
    qryLaon.DisableControls;
    InitReportFile(ppReport1, 'rptLoan', True)
  finally
    qryGetLaon.EnableControls;
    qryLaon.EnableControls;
  end; // try
end;

procedure TrptLoanF.N1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid4);
end;

procedure TrptLoanF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptLoanF.FormActivate(Sender: TObject);
var
  FormID, ServerID, YearID: Integer;
begin
  inherited;
  if isUpdate then
    try
      FormID := qryLaon.FieldByName('FormID').AsInteger;
      ServerID := qryLaon.FieldByName('ServerID').AsInteger;
      YearID := qryLaon.FieldByName('YearID').AsInteger;
      qryLaon.Requery();
      qryLaon.Locate('FormID;ServerID;YearID',
        VarArrayOf([FormID, ServerID, YearID]), []);
    finally
      isUpdate := False;
    end;

end;

procedure TrptLoanF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
end;

procedure TrptLoanF.qryLaonAfterScroll(DataSet: TDataSet);
begin
  inherited;
  lblReLaonItem.Caption := Format('ÇÞÓÇØ æÇã %D ',
    [qryLaon.FieldByName('FormNumber').AsInteger]);
  with qryReLaonItem do
  begin
    Active := False;
    Parameters.ParamByName('FormID').Value := DataSet.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
//    Parameters.ParamByName('DayDate').Value := var_glb_CurrentDate;
  //  Parameters.ParamByName('DayDate2').Value := var_glb_CurrentDate;
    Parameters.ParamByName('FormID2').Value := DataSet.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('ServerID2').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID2').Value := DataSet.FieldByName('YearID')
      .AsInteger;

    Active := True;
  end;
end;

end.
