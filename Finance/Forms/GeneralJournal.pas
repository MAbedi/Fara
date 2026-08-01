unit GeneralJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, ppPrnabl, ppClass,
  ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Menus, ppVar, SumDBGrid, ppTypes, ppParameter, FormFunctions,
  ComCtrls, frLookup_nonDB, ppDesignLayer, System.ImageList, System.Actions,AccFunctions,Filter_ADO_Const;

type
  TGeneralJournalF = class(Ttemplate2MDIF)
    qry_GeneralJournal: TADOQuery;
    DBGrid1: TDBGrid;
    src_GeneralJournal: TDataSource;
    qry_GeneralJournalDocDate: TStringField;
    qry_GeneralJournalPrimaryDocNo: TIntegerField;
    qry_GeneralJournalSecondaryDocNo: TIntegerField;
    qry_GeneralJournalMoeenName: TStringField;
    qry_GeneralJournalCredit: TFMTBCDField;
    qry_GeneralJournalDocTopic: TStringField;
    pnlDocTopic_L1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    actFiltter: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn9: TBitBtn;
    actSendToExel: TAction;
    actPrint: TAction;
    qry_GeneralJournalMoeenName_L2: TStringField;
    qry_GeneralJournalDocTopic_L2: TStringField;
    pnlDocTopic_L2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qry_GeneralJournalBedBes: TIntegerField;
    qry_Init: TADOQuery;
    ActSort: TAction;
    qry_GeneralJournalserial: TIntegerField;
    qry_GeneralJournalbed: TBCDField;
    qry_GeneralJournalbes: TBCDField;
    qry_GeneralJournal_row: TIntegerField;
    pop4Print: TPopupMenu;
    pop_3: TMenuItem;
    pop_1: TMenuItem;
    SumGrid1: TSumGrid;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    actOther: TAction;
    BitBtn1: TBitBtn;
    actFilterForm: TAction;
    mniFiltter: TMenuItem;
    qry_GeneralJournalYearId: TIntegerField;
    qry_GeneralJournalSortID: TIntegerField;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    pplbl1: TppLabel;
    pplbl2: TppLabel;
    pplbl3: TppLabel;
    pplbl4: TppLabel;
    ppLine3: TppLine;
    ppShape2: TppShape;
    ppLine9: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    pplbl5: TppLabel;
    pplbl6: TppLabel;
    pplbl7: TppLabel;
    pplbl8: TppLabel;
    pplbl9: TppLabel;
    pplbl10: TppLabel;
    pplbl11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine42: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    pplbl12: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine47: TppLine;
    ppDBText15: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    lblNote: TLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    lblMultiCompany: TLabel;
    qry_GeneralJournalAccCode: TLargeintField;
    Timer1: TTimer;
    qry_GeneralJournalDebt: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure actFiltterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure pplbl4GetText(Sender: TObject; var Text: String);
    procedure pplbl3GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExelExecute(Sender: TObject);
    procedure ActSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure pop_3Click(Sender: TObject);
    procedure pop_1Click(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure ppDBText9GetText(Sender: TObject; var Text: String);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure pplbl1GetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure lblNoteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qry_GeneralJournalAfterOpen(DataSet: TDataSet);
  private
    // function CalcSumFileds(FiledName:String):Currency;
    procedure UpdateFilter;
    // procedure OnChangeCompany(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GeneralJournalF: TGeneralJournalF;

implementation

uses Dm, FilterClass_ADO, filter_ADO, GlobalPro, sort2, search2,
  Document, DBGrid2Print, Resource, searchCode_ADO;

{$R *.dfm}

procedure TGeneralJournalF.UpdateFilter;
begin
  with qry_GeneralJournal do
  begin
    Active := false;
    SetArzParameters(qry_GeneralJournal,myParams);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);

    // Parameters.ParamByName('CodeLength').Value :=
    // qry_Init.fieldbyname('CodeLength').AsInteger;

    Parameters.ParamByName('CodeLength').Value :=
      GetcFrom(myParams.ParamValues['CodeLength'], ftInteger);

    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;

    if myParams.FindParam('CompanyCode') <> nil then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTO').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);

      LblShowLimitPlace2.Caption := Format('«“ òœ ‘—ò  %s  « òœ ‘—ò  %s',
        [Parameters.ParamByName('CompanyCodeFrom').Value,
        Parameters.ParamByName('CompanyCodeTo').Value]);
    end;
    SetCompanyFilterinLogin(Parameters);

    lblMultiCompany.Visible :=
      ((Parameters.ParamByName('CompanyCodeFrom').Value <>
      Parameters.ParamByName('CompanyCodeTo').Value) and (gv_MultiCompany));

    Active := True;
  end; // with

end;

procedure TGeneralJournalF.FormShow(Sender: TObject);
begin
  inherited;
  if CheckDockWithStatus0 or CheckExistsImbalanceDoc then
  begin
    Close;
    Exit;
  end;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('DocDate') = nil then
    Close;

  pnlLblLimitPlace.Visible := gv_MultiCompany;
  // frCompany.Visible := Dmf.ReadBankConfigAcc('ActivePartCompany','0') = '1';
  //
  // frCompany.init(qry_Company, 'CompanyCode', 'CompanyName_L1');
  // qry_Company.Active := True;
  // frCompany.OnChange := OnChangeCompany;
  // frCompany.code := qry_CompanyCompanyCode.AsInteger;

end;

procedure TGeneralJournalF.lblNoteClick(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := not Timer1.Enabled;
  lblNote.Visible := True
end;

// procedure TGeneralJournalF.OnChangeCompany(Sender: TObject);
// begin
// with qry_GeneralJournal do
// begin
// Active := false;
// Parameters.ParamByName('CompanyCode').Value := frCompany.code;
// Active := True;
// end;
//
// end;

procedure TGeneralJournalF.actFiltterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(dmf.adcAccounting, 'CodeLength', 'ÿÊ· òœ', ' ⁄œ«œ', ftInteger,
        dvDefaults, qry_Init.fieldbyname('CodeLength').AsString, '', ciSingle);

      AddItem(dmf.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(dmf.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(dmf.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if (Sender as TAction).Tag = 1 then
        AddItem(dmf.adcAccounting, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

      if gv_MultiCompany then
        AddItem(dmf.adcAccounting, 'CompanyCode', 'ﬂœ ‘—ﬂ  ', 'ﬂœ ‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
          ' Select 0,2147483647 ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if

    finally
      Free;
    end; // try

end;

procedure TGeneralJournalF.FormCreate(Sender: TObject);
begin
  inherited;
  with qry_Init do
  begin
    Active := false;
    // By Mostafa 2013/12/25
    // Add   dmf.LevelIDOnKol
    Parameters.ParamByName('FormType').Value := dmf.LevelIDOnKol;
    Active := True;
  end; // with
end;

procedure TGeneralJournalF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TGeneralJournalF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, True);
end;

procedure TGeneralJournalF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TGeneralJournalF.pplbl4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TGeneralJournalF.qry_GeneralJournalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, MyParams,qry_GeneralJournal)
end;

procedure TGeneralJournalF.SpeedButton1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(dmf.adcAccounting, c, ',Ã” ÃÊ ‘—ﬂ ',
    'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies', ['òœ', '‰«„ ‘—ﬂ '],
    alLeft) <> '' then
  begin
    with qry_GeneralJournal do
    begin
      Active := false;
      Parameters.ParamByName('CompanyCode').Value := c;
      Active := True;
    end;

  end; // if
end;

procedure TGeneralJournalF.Timer1Timer(Sender: TObject);
begin
  inherited;
  lblNote.Visible := not lblNote.Visible
end;

procedure TGeneralJournalF.pplbl3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' «“  «—ÌŒ' + qry_GeneralJournal.Parameters.ParamByName('DocDateFrom')
    .Value + ('  «  «—ÌŒ') + qry_GeneralJournal.Parameters.ParamByName
    ('DocDateTo').Value;
end;

procedure TGeneralJournalF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGeneralJournalF.actSendToExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TGeneralJournalF.ActSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_GeneralJournal);
end;

procedure TGeneralJournalF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_GeneralJournal);
end;

procedure TGeneralJournalF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_GeneralJournal.fieldbyname('SecondaryDocNo'));
end;

procedure TGeneralJournalF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_GeneralJournal.fieldbyname('serial').AsVariant,
    qry_GeneralJournalYearId.AsInteger, opta.DefaultCompany);
  DocumentF.qry_Documents.Locate('id', 0, []);
end;

procedure TGeneralJournalF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_GeneralJournal.DisableControls;
    InitReportFile(ppReport1, 'GeneralJournal_secon', DBGrid1, ppDBPipeline1);
  finally
    qry_GeneralJournal.EnableControls;
  end;
end;

procedure TGeneralJournalF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_GeneralJournal.DisableControls;
    InitReportFile(ppReport1, 'GeneralJournal', DBGrid1, ppDBPipeline1);
  finally
    qry_GeneralJournal.EnableControls;
  end;
end;

procedure TGeneralJournalF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_GeneralJournal);

end;

procedure TGeneralJournalF.ppDBText9GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := trim(Text) + #254;
  if qry_GeneralJournalDebt.AsCurrency = 0 then
    (Sender as TppDBText).TextAlignment := taLeftJustified
  else
    (Sender as TppDBText).TextAlignment := taRightJustified
end;

procedure TGeneralJournalF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TGeneralJournalF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_GeneralJournal.Requery;
end;

procedure TGeneralJournalF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TGeneralJournalF.pplbl1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

end.
