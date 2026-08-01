unit SalaryEndService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, Menus, ppParameter, ppTypes, ppDesignLayer,
  System.ImageList, System.Actions, System.StrUtils, Filter_ADO_Const,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSalaryEndServiceF = class(Ttemplate2MDIF)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actFilter: TAction;
    qrytide: TADOQuery;
    Srctide: TDataSource;
    qryTidePersonel: TADOQuery;
    qrytidePersonelNo: TIntegerField;
    qrytidePersonelName: TStringField;
    qrytideOfficeName: TStringField;
    qrytideProjectName: TStringField;
    qrytideDayQuntity: TFloatField;
    SrcTidePersonel: TDataSource;
    qryTidePersonelPersonelNo: TIntegerField;
    qryTidePersonelPersonelName: TStringField;
    qry_init: TADOQuery;
    actVejehPrint: TAction;
    BitBtn8: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel6: TppLabel;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel7: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel8: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel9: TppLabel;
    qrytideOfficeCode: TIntegerField;
    qrytideProjectCode: TIntegerField;
    qrytideEmployerAmount: TBCDField;
    qryTidePersonelNowDayQuntity: TFloatField;
    qryTidePersonelLastDayQuntity: TFloatField;
    qryTidePersonelSumDayQuntity: TFloatField;
    qryTidePersonelNowAnnuityPrice: TBCDField;
    qryTidePersonelLastAnnuityPrice: TBCDField;
    qryTidePersonelSumAnnuityPrice: TBCDField;
    actCopyNext: TAction;
    qrytideProcCode: TIntegerField;
    qrytideInfoName_L1: TStringField;
    actPrint2: TAction;
    PopPrint: TPopupMenu;
    mnuPrint: TMenuItem;
    N21: TMenuItem;
    qrytideMobile: TStringField;
    actSMS: TAction;
    actSMS2: TAction;
    qryTidePersonelMobile: TStringField;
    actEmail: TAction;
    qrytideEmail: TWideStringField;
    qryTidePersonelEmail: TWideStringField;
    btnEmail: TBitBtn;
    popEmail: TPopupMenu;
    mnuPNG1: TMenuItem;
    mnuEmail: TMenuItem;
    mnu1: TMenuItem;
    mnuJPEG1: TMenuItem;
    mnuN10: TMenuItem;
    mnuN11: TMenuItem;
    mnuPDF1: TMenuItem;
    mnuN12: TMenuItem;
    mnuN13: TMenuItem;
    mnuBMP1: TMenuItem;
    mnuN14: TMenuItem;
    mnuN15: TMenuItem;
    mnuGIF1: TMenuItem;
    mnuN16: TMenuItem;
    mnuN17: TMenuItem;
    mnuRTF1: TMenuItem;
    mnuN18: TMenuItem;
    mnuN19: TMenuItem;
    mnuDOC1: TMenuItem;
    mnuN20: TMenuItem;
    mnu2: TMenuItem;
    mnuFile1: TMenuItem;
    mnuN22: TMenuItem;
    mnuN23: TMenuItem;
    qrytidename_L1: TStringField;
    qrytidelastName_L1: TStringField;
    qryTidePersonelname_L1: TStringField;
    qryTidePersonellastName_L1: TStringField;
    qrytideamount: TBCDField;
    qryTidePersonelamount: TBCDField;
    qryTidePersonelBonusPayAble: TBCDField;
    qryTidePersonelPaymentBonus2: TBCDField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure actVejehPrintExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure actSMS2Execute(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure mnuEmailClick(Sender: TObject);
  private
    { Private declarations }
    OrginSQLqrytide, OrginSQLqryTidePersonel: String;
    procedure Updatelist;
  public
    { Public declarations }
  end;

var
  SalaryEndServiceF: TSalaryEndServiceF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  DBGrid2Print, infoSMS, MMESSAGE, FaraConsts;

{$R *.dfm}

procedure TSalaryEndServiceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryEndServiceF.mnuEmailClick(Sender: TObject);
  procedure setEmail;
  begin
    ppReport1.EmailSettings.Recipients.Text := qryTidePersonel.FieldByName
      ('Email').AsWideString;
    ppReport1.EmailSettings.Subject := SYSCAPTION + ' > ' + Caption + ' > ' +
      qryTidePersonel.FieldByName('PersonelName').AsWideString;
  end;

begin
  inherited;
  ppDBPipeline2.RangeBegin := rbCurrentRecord;
  ppDBPipeline2.RangeEnd := reCurrentRecord;
  try
    BigMessage('·ÿ›« ﬂ„Ì ’»— ﬂ‰Ìœ....', 0);
    qryTidePersonel.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        begin
          setEmail;
          InitReportFile(ppReport1, 'SalaryEndServiceTwo', False, True);
        end;
      2:
        With qryTidePersonel do
        begin
          First;
          while not eof do
          begin
            setEmail;
            InitReportFile(ppReport1, 'SalaryEndServiceTwo', False, True);
            Next;
          end;
        end;
    end;

  finally
    qryTidePersonel.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TSalaryEndServiceF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      SendToExcel(DBGrid1);
    1:
      SendToExcel(DBGrid2);
    // 2:SendToExcel(DBGrid3);
  end; // case
end;

procedure TSalaryEndServiceF.actSMS2Execute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryTidePersonel, 'Mobile')
end;

procedure TSalaryEndServiceF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrytide, 'Mobile')
end;

procedure TSalaryEndServiceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      search2F.ShowSearch(qrytide);
    1:
      search2F.ShowSearch(qryTidePersonel);
    // 2:search2F.ShowSearch(qryTidePersonel);
  end; // case
end;

procedure TSalaryEndServiceF.actSortExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      sort2F.ShowSort(qrytide);
    1:
      sort2F.ShowSort(qryTidePersonel);
    // 3:SendToExcel(DBGrid3);
  end; // case
end;

procedure TSalaryEndServiceF.actEmailExecute(Sender: TObject);
begin
  inherited;
  popEmail.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSalaryEndServiceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'EndDate', ' «—ÌŒ »«Ìê«‰Ì', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(EndDate),MAX(EndDate)FROM Pay.PersonelDecExt ' +
        'WHERE (NOT (EndDate IS NULL OR EndDate = ''        ''))');

      AddItem(DMf.adcSalary, 'OfficeCode', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  ' +
        'WHERE  FormType = 12 ', '');
      // 'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·', 'ﬂœ', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3) ',
        '');

      AddItemFilter(GetFilter, TPersonelNo);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatelist;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSalaryEndServiceF.Updatelist;
begin
  with qry_init do
  begin
    Active := False;
    Active := True;
  end; // with
  with qrytide do
  begin
    SQL.Text := OrginSQLqrytide;
    SQL.Text := StringReplace(SQL.Text, ':PersonelStateFromTo',
      'AND (FormsInfo_PersonelState.InfoID in(' +
      GetcFrom(myParams.ParamValues['PersonelState'], ftString) + '))',
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':OfficeCodeFromTo',
      'AND (FormsInfo.InfoID in(' + GetcFrom(myParams.ParamValues['OfficeCode'],
      ftString) + '))', [rfReplaceAll]);
    Active := False;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.FieldByName('forminfoid').AsInteger;
    Parameters.ParamByName('EndDateFrom').Value :=
      GetcFrom(myParams.ParamValues['EndDate'], ftDate);
    Parameters.ParamByName('EndDateTo').Value :=
      GetcTo(myParams.ParamValues['EndDate'], ftDate);

    Parameters.ParamByName('PersonelNo2From').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNo2To').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('YearMounth').Value :=
      LeftStr(GetcTo(myParams.ParamValues['EndDate'], ftDate), 7);

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    if PageControl1.TabIndex = 0 then
      Active := True;
  end; // with
  with qryTidePersonel do
  begin

    SQL.Text := OrginSQLqryTidePersonel;
    SQL.Text := StringReplace(SQL.Text, ':PersonelStateFromTo',
      'WHERE (FormsInfo_PersonelState.InfoID in(' +
      GetcFrom(myParams.ParamValues['PersonelState'], ftString) + '))',
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':OfficeCodeFromTo',
      'AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + '))',
      [rfReplaceAll]);
    Active := False;
    Parameters.ParamByName('EndDateFrom').Value :=
      GetcFrom(myParams.ParamValues['EndDate'], ftDate);
    Parameters.ParamByName('EndDateTo').Value :=
      GetcTo(myParams.ParamValues['EndDate'], ftDate);

    Parameters.ParamByName('EndDate2From').Value :=
      GetcFrom(myParams.ParamValues['EndDate'], ftDate);
    Parameters.ParamByName('EndDate2To').Value :=
      GetcTo(myParams.ParamValues['EndDate'], ftDate);

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.FieldByName('forminfoid').AsInteger;;

    Parameters.ParamByName('PersonelNo2From').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNo2To').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('YearMounth').Value :=
      LeftStr(GetcTo(myParams.ParamValues['EndDate'], ftDate), 7);

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('YearID1').Value := APPBank.Year;
    Parameters.ParamByName('YearID2').Value := APPBank.Year;

    if PageControl1.TabIndex = 1 then
      Active := True;
  end; // with
end;

procedure TSalaryEndServiceF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrytide.FieldByName('PersonelNo'));
end;

procedure TSalaryEndServiceF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTidePersonel.FieldByName('PersonelNo'));
end;

procedure TSalaryEndServiceF.actVejehPrintExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
    1:
      DBGrid2PrintF.showGrid2Print(DBGrid2, 0);
  end; // case
end;

procedure TSalaryEndServiceF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryEndServiceF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryEndServiceF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSalaryEndServiceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SetSendToBackShapeOnPrint(Self);
  case PageControl1.TabIndex of
    0:
      InitReportFile(ppReport1, 'SalaryEndService1');
    1:
      InitReportFile(ppReport2, 'SalaryEndService2');
  end; // case
end;

procedure TSalaryEndServiceF.ppLabel8GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' «“ ﬂœ Å—”‰·Ì  ' +
    inttostr(GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger)) + '  « ' +
    inttostr(GetcTo(myParams.ParamValues['PersonelNo'], ftInteger))
end;

procedure TSalaryEndServiceF.ppLabel9GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' «“ ﬂœ Å—”‰·Ì  ' +
    inttostr(GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger)) + '  « ' +
    inttostr(GetcTo(myParams.ParamValues['PersonelNo'], ftInteger))
end;

procedure TSalaryEndServiceF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginSQLqrytide := qrytide.SQL.Text;
  OrginSQLqryTidePersonel := qryTidePersonel.SQL.Text;
end;

procedure TSalaryEndServiceF.PageControl1Change(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      qrytide.Open;
    1:
      qryTidePersonel.Open;
  end;
end;

procedure TSalaryEndServiceF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      InitReportFile(ppReport1, 'SalaryEndServiceOne');
    1:
      InitReportFile(ppReport2, 'SalaryEndServiceTwo');
  end; // case

end;

procedure TSalaryEndServiceF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

end.
