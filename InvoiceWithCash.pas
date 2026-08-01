unit InvoiceWithCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppVar, ppPrnabl, ppClass, ppCtrls,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, ppStrtch,ppTypes, ppSubRpt, Menus, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TInvoiceWithCashF = class(Ttemplate2MDIF)
    DBGrid2: TDBGrid;
    qryAssignment: TADOQuery;
    qryAssignmentReciptID: TIntegerField;
    qryAssignmentReciptNumber: TIntegerField;
    qryAssignmentReciptDate: TStringField;
    qryAssignmentReciptState: TWordField;
    qryAssignmentReciptNote: TStringField;
    qryAssignmentEntity: TFloatField;
    qryAssignmentAcceptEntity: TFloatField;
    qryAssignmentRollbackEntity: TFloatField;
    qryAssignmentStoreID: TSmallintField;
    qryAssignmentc_StoreName: TStringField;
    dsAssignment: TDataSource;
    lblReport: TLabel;
    DBGrid1: TDBGrid;
    qryInvoice: TADOQuery;
    qryInvoiceParentReciptID: TIntegerField;
    qryInvoiceReciptID: TIntegerField;
    qryInvoicePersonID1: TIntegerField;
    qryInvoiceFormNumber: TFloatField;
    qryInvoiceFormDate: TStringField;
    qryInvoiceTel: TStringField;
    qryInvoiceCustName: TStringField;
    qryInvoiceNakhales: TFloatField;
    qryInvoiceRollBackPrice: TFloatField;
    qryInvoicePrice: TBCDField;
    qryInvoiceCashPrice: TBCDField;
    qryInvoiceCheckCont: TIntegerField;
    qryInvoiceCheckPrice: TBCDField;
    qryInvoiceDeficatePrice: TBCDField;
    qryInvoiceBalance: TBCDField;
    srcInvoice: TDataSource;
    btnFilter: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    btnprint: TBitBtn;
    actSort: TAction;
    actExportExcel: TAction;
    btnSort: TBitBtn;
    BitBtn1: TBitBtn;
    btnExportExcel: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    pmmenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblCaption: TppLabel;
    ppLine36: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppLine11: TppLine;
    ppDBText3: TppDBText;
    ppLine12: TppLine;
    ppDBText4: TppDBText;
    ppLine13: TppLine;
    ppDBText5: TppDBText;
    ppLine14: TppLine;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    ppDBText7: TppDBText;
    ppLine16: TppLine;
    ppDBText8: TppDBText;
    ppLine17: TppLine;
    ppDBText9: TppDBText;
    ppLine18: TppLine;
    ppDBText10: TppDBText;
    ppLine19: TppLine;
    ppDBText11: TppDBText;
    ppLine20: TppLine;
    ppDBText12: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine23: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel18: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel7: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLine10: TppLine;
    ppLine35: TppLine;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    N3: TMenuItem;
    N21: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    actShow1: TAction;
    actShow2: TAction;
    BitBtn2: TBitBtn;
    btnShow2: TBitBtn;
    qryAssignmentPersonID3: TIntegerField;
    qryAssignmentCustName: TStringField;
    qryAssignmentAidDate: TStringField;
    qryAssignmentServerID: TIntegerField;
    qryAssignmentYearID: TIntegerField;
    qryInvoiceServerID: TIntegerField;
    qryInvoiceYearID: TIntegerField;
    qryInvoiceTotallSellPrice: TBCDField;
    qryAssignmentAidNumber: TStringField;
    procedure qryAssignmentAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExportExcelExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ALLN2Click(Sender: TObject);
    procedure actShow1Execute(Sender: TObject);
    procedure actShow2Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceWithCashF: TInvoiceWithCashF;

implementation

uses DM, filter_ADO, GlobalPro, FilterClass_ADO, sort2, search2,
  FormFunctions;

{$R *.dfm}

procedure TInvoiceWithCashF.qryAssignmentAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with  qryInvoice do
  begin
    Close;
    Parameters.ParamByName('Parent').Value := qryAssignment.fieldbyname('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value := qryAssignment.fieldbyname('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryAssignment.fieldbyname('YearID').AsInteger;
    Open;
  end;
end;

procedure TInvoiceWithCashF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do
  try
      AddItem(dmf.adcBSell,'PersonID3','—«‰‰œÂ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
             'SELECT  CustID, CustName FROM  Customers9 ',
             'SELECT Min(CustID),Max(CustID) FROM Customers9');
      AddItem(DMf.adcBSell,'storeId','«‰»«—','ﬂœ«‰»«—',ftInteger,dvMinMax,'','',ciLookup,
      LookupSQL4Store,MinMaxSQL4Store);
//       'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ','Select Min(n_StoreID),max(n_StoreID) from Stores');
      AddItem(DMf.adcBSell,'Date',' «—ÌŒ ÕÊ«·Â ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'',
        'Select  '''+APPBank.StartYear+''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell,'number','‘„«—Â ÕÊ«·Â','‘„«—Â ',ftInteger,dvMinMax,'','',ciSimple,'','Select Min(ReciptNumber),max(ReciptNumber) from Recipts');

    if ShowModal=mrOk then begin
      GetFilterString;
      UpdateList;
    end;//if
  finally
     Free;
  end;//try

end;

procedure TInvoiceWithCashF.UpdateList;
begin
  with qryAssignment Do
  begin
    Close;
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['storeId'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['storeId'],ftInteger);
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['Date'],ftDate);
    Parameters.ParamByName('ReciptNumberFrom').Value:=GetcFrom(myParams.ParamValues['number'],ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value:=GetcTo(myParams.ParamValues['number'],ftInteger);
    Parameters.ParamByName('PersonID3From').Value:=GetcFrom(myParams.ParamValues['PersonID3'],ftInteger);
    Parameters.ParamByName('PersonID3To').Value:=GetcTo(myParams.ParamValues['PersonID3'],ftInteger);
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
//AND ( Recipts.ServerID =  :ServerID   )    Parameters.ParamByName('ServerID').Value:=opt.ServerID;
    Open;
  end;//with

end;

procedure TInvoiceWithCashF.FormShow(Sender: TObject);
begin
  inherited;
   myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number')=nil then Close;

end;

procedure TInvoiceWithCashF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,10);
  SetColSize(DBGrid2,3); 
end;

procedure TInvoiceWithCashF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid1);
end;

procedure TInvoiceWithCashF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInvoice);
end;

procedure TInvoiceWithCashF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInvoice);
end;

procedure TInvoiceWithCashF.actExportExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInvoiceWithCashF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TInvoiceWithCashF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInvoiceWithCashF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TInvoiceWithCashF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qryInvoice.Sort:='FormNumber';
  pmmenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.y);
end;

procedure TInvoiceWithCashF.ALLN2Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:begin
        ppDBPipeline1.RangeBegin :=rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:begin
        ppDBPipeline1.RangeBegin :=rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;

  try
    qryAssignment.DisableControls;
    qryInvoice.DisableControls;
    InitReportFile(ppReport1,(Sender as TMenuItem).Hint,True)
  finally
    qryAssignment.EnableControls;
    qryInvoice.EnableControls;

  end;
end;

procedure TInvoiceWithCashF.actShow1Execute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryAssignment,Self)
end;

procedure TInvoiceWithCashF.actShow2Execute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryInvoice,Self)
end;

procedure TInvoiceWithCashF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,(Sender AS TDBGrid).DataSource.DataSet.FieldByName('ReciptNumber'))
end;

procedure TInvoiceWithCashF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,(Sender AS TDBGrid).DataSource.DataSet.FieldByName('FormNumber'))
end;

end.
