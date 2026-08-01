unit rptDailyDocuments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ppBands, ppClass, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Menus, SumDBGrid, ppParameter, FormFunctions, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptDailyDocumentsF = class(Ttemplate2MDIF)
    qryDocs: TADOQuery;
    srcDocs: TDataSource;
    qryDocsb: TIntegerField;
    qryDocsbed: TBCDField;
    qryDocsbes: TBCDField;
    qryDocsDocNo: TIntegerField;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    popPrint: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryDocsDocDate: TStringField;
    qryDocskolName_L1: TStringField;
    qryDocskolName_L2: TStringField;
    qryDocsCodeKol: TStringField;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    actSort: TAction;
    qry_Init: TADOQuery;
    actExcel: TAction;
    actPrint: TAction;
    actDesign: TAction;
    actBook: TAction;
    qryDocsComment_L1: TStringField;
    qryDocsSumbed: TBCDField;
    qryDocssumbes: TBCDField;
    qryDocsrow: TIntegerField;
    N3: TMenuItem;
    N4: TMenuItem;
    qryDocsBalance: TBCDField;
    srcPrint: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    qryPrint: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField5: TStringField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    IntegerField4: TIntegerField;
    BCDField5: TBCDField;
    lblNote: TLabel;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    ppDBText12: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine13: TppLine;
    ppDBText9: TppDBText;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppDBText11: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLine19: TppLine;
    ppLabel19: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine20: TppLine;
    ppDBCalc4: TppDBCalc;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape6: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel20: TppLabel;
    ppShape3: TppShape;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    qryDocsDoc_No: TFMTBCDField;
    qryPrintDoc_No: TFMTBCDField;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    actShowDoc: TAction;
    qryDocsYearId: TIntegerField;
    qryDocsSerial: TIntegerField;
    qryDocsCompanyCode: TIntegerField;
    BitBtn2: TBitBtn;
    chkDocument: TCheckBox;
    DBGrid1: TCedarDbgrid;
    procedure ppDBText5Print(Sender: TObject);
    procedure qryDocsAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure qryPrintAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure chkDocumentClick(Sender: TObject);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptDailyDocumentsF: TrptDailyDocumentsF;

implementation

uses dm, Math, StrUtils, GlobalPro, search2, sort2,
  filter_ADO, FilterClass_ADO, Resource, Document;

{$R *.dfm}

procedure TrptDailyDocumentsF.FormShow(Sender: TObject);
begin
  inherited;
  if CheckDockWithStatus0 or CheckExistsImbalanceDoc then
  begin
    Close;
    Exit;
  end;

  qry_Init.Active := true;
  myParams.Clear;
  actFilter.Execute;

  if myParams.FindParam('DocDate') = nil then
    Close;

  lblNote.Caption :=
    '(در صورت استفاده از این گزارش دفاتر روزنامه و کل نیز باید به همین ترتیب تحریر شوند)'
end;

procedure TrptDailyDocumentsF.ppDBText5Print(Sender: TObject);
begin
  inherited;
  if qryPrint.Fieldbyname('b').AsInteger = 1 then
    (Sender as TppDBText).Alignment := taLeftJustify
  else
    (Sender as TppDBText).Alignment := taRightJustify;
end;

procedure TrptDailyDocumentsF.qryDocsAfterOpen(DataSet: TDataSet);
var
  DocNo: Real;
  docDate: string;
begin
  inherited;
  with DataSet do
    try
      DisableControls;
      DocNo := 1;
      docDate := Fieldbyname('docdate').AsString;

      while not Eof do
      begin
        DocNo := IfThen(Fieldbyname('docdate').AsString = docDate, DocNo,
          (DocNo + 1));
        docDate := IfThen(Fieldbyname('docdate').AsString = docDate, docDate,
          Fieldbyname('docdate').AsString);
        edit;
        Fieldbyname('doc_no').AsFloat := DocNo;
        post;
        Next;
      end; // while
    finally
      EnableControls;
    end; // try

end;

procedure TrptDailyDocumentsF.N2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'rptDailyDocuments_all', DBGrid1, ppDBPipeline1);
end;

procedure TrptDailyDocumentsF.N1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'rptDailyDocuments_codkol', DBGrid1, ppDBPipeline1);

end;

procedure TrptDailyDocumentsF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDailyDocumentsF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDailyDocumentsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDocs);
end;

procedure TrptDailyDocumentsF.actShowDocExecute(Sender: TObject);
begin
  inherited;
  GetUserAccess('mnuDocument');
  DocumentF.FindDoc(qryDocsSerial.AsInteger, qryDocsYearId.AsInteger,
    qryDocsCompanyCode.AsInteger, SHAllDoc);
end;

procedure TrptDailyDocumentsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocs);
end;

procedure TrptDailyDocumentsF.chkDocumentClick(Sender: TObject);
begin
  inherited;
  UpdateFilter;
  actShowDoc.Visible := chkDocument.Checked;

end;

procedure TrptDailyDocumentsF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptDailyDocumentsF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptDailyDocumentsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDocs.Fieldbyname('Doc_No'));
end;

procedure TrptDailyDocumentsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptDailyDocumentsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      if gv_MultiCompany then
        AddItem(dmf.adcAccounting, 'CompanyCode', 'كد شركت ', 'كد شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
          ' Select 0,2147483647 ');

      AddItem(dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));

      if ShowModal = mrOk then
      begin
        GetFilterString;
        LblShowLimitPlace1.Caption := GetFilterStringCaption;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TrptDailyDocumentsF.actPrintExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      // AddItem(DMF.adcAccounting, 'DocNo', 'شماره سند', 'شماره سند', ftInteger,
      // dvMinMax, '', '', ciSimple, '',
      // 'SELECT Min(SecondaryDocNo) , Max(SecondaryDocNo)  FROM Acc.DocGroups');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        with qryPrint do
          Try
            Close;
            Parameters.ParamByName('LenAccCode').Value :=
              qry_Init.Fieldbyname('CodeLength').AsString;

            Parameters.ParamByName('ByDocSerial').Value := chkDocument.Checked;

            Parameters.ParamByName('DateFrom').Value :=
              GetcFrom(myParams.ParamValues['Docdate'], ftDate);
            Parameters.ParamByName('DateTo').Value :=
              GetcTo(myParams.ParamValues['Docdate'], ftDate);

            Parameters.ParamByName('DocDateFrom').Value :=
              GetcFrom(myParams.ParamValues['DocDate'], ftString);
            Parameters.ParamByName('DocDateTo').Value :=
              GetcTo(myParams.ParamValues['DocDate'], ftString);

            Parameters.ParamByName('FromYearID').Value := APPBank.Year;
            Parameters.ParamByName('ToYearID').Value := APPBank.Year;

            if myParams.FindParam('CompanyCode') <> nil then
            begin
              Parameters.ParamByName('CompanyFrom').Value :=
                GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
              Parameters.ParamByName('CompanyTo').Value :=
                GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
            end;

            Open;
            popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
          finally

          end;
      end; // if
    finally
      Free;
    end; // try

  // popPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TrptDailyDocumentsF.N4Click(Sender: TObject);
begin
  inherited;
  with qryPrint do
  begin
    Sort := 'codeKol,DocDate,Doc_No';
    InitReportFile(ppReport1, 'Rpt_Ledger_Daily', DBGrid1, ppDBPipeline1);
  end; // with

end;

procedure TrptDailyDocumentsF.qryPrintAfterOpen(DataSet: TDataSet);
var
  DocNo: Real;
  docDate: string;
begin
  inherited;
  docDate := GetcFrom(myParams.ParamValues['Docdate'], ftDate);

  try
    DocNo := qryDocs.Lookup('Docdate', docDate, 'Doc_No');

  except
    on E: Exception do
      Warn('در تاریخ انتخاب شده اطلاعات نیست');
  end;
  if (DocNo = null) or (DocNo = 0) then
  begin
    Warn('محدوده تاريخ  معتبر نمي باشد');
    Abort;
  end;

  with qryPrint do
  begin
    try
      DisableControls;
      while not qryPrint.Eof do
      begin
        if qryPrint.Fieldbyname('docdate').AsString <> docDate then
          DocNo := (DocNo + 1);
        docDate := IfThen(qryPrint.Fieldbyname('docdate').AsString = docDate,
          docDate, qryPrint.Fieldbyname('docdate').AsString);
        edit;
        Fieldbyname('doc_no').AsFloat := DocNo;
        post;
        Next;
      end; // while
    finally
      EnableControls;
    end; // try
  end; // with

end;

procedure TrptDailyDocumentsF.UpdateFilter;
begin
  with qryDocs do
  begin
    Close;
    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.Fieldbyname('CodeLength').AsString;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    Parameters.ParamByName('ByDocSerial').Value := chkDocument.Checked;
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);

    if myParams.FindParam('CompanyCode') <> nil then
    begin
      Parameters.ParamByName('CompanyFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;

    Open;
  end;

end;

end.
