unit PersonalTide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, Grids, Vcl.DBGrids, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppTypes,
  ppDBPipe, Menus, ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  System.StrUtils, Vcl.FileCtrl, Filter_ADO_Const;

type
  TPersonalTideF = class(Ttemplate2MDIF)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actFilter: TAction;
    DBGrid2: TDBGrid;
    StatusBar3: TStatusBar;
    StatusBar4: TStatusBar;
    qrytide: TADOQuery;
    Srctide: TDataSource;
    qryTidePersonel: TADOQuery;
    qrytidePersonelNo: TIntegerField;
    qrytidePersonelName: TStringField;
    qrytideInfoID: TIntegerField;
    qrytideOfficeName: TStringField;
    qrytideExpr1: TIntegerField;
    qrytideProjectName: TStringField;
    qrytideDayQuntity: TFloatField;
    qrytideEmployeeAmount: TBCDField;
    SrcTidePersonel: TDataSource;
    qryTidePersonelPersonelNo: TIntegerField;
    qryTidePersonelPersonelName: TStringField;
    qryTidePersonelDayQuntity: TFloatField;
    qryTidePersonelBonusPrise: TBCDField;
    qryTidePersonelTaxPrice: TBCDField;
    qryTidePersonelBonusPayAble: TBCDField;
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
    ppRprFish: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppLabel22: TppLabel;
    ppLabel28: TppLabel;
    ppDBText6: TppDBText;
    ppLabel68: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine15: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    PupPrint: TPopupMenu;
    N1: TMenuItem;
    actFish: TAction;
    payfishTide: TMenuItem;
    ppLine17: TppLine;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    qryTidePersonelPaymentBonus1: TBCDField;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    qryTidePersonelAccountNumber: TStringField;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    qrytideProcCode: TIntegerField;
    qrytideInfoName_L1: TStringField;
    ppLabel14: TppLabel;
    qryTidePersonelEmployTypeID: TIntegerField;
    qryTidePersonelEmployTypeName: TStringField;
    qryTidePersonelOfficeID: TIntegerField;
    qryTidePersonelOfficeName: TStringField;
    ALLClick: TMenuItem;
    qrytideMobile: TStringField;
    actSMS: TAction;
    qryTidePersonelMobile: TStringField;
    actSMS2: TAction;
    actEmail: TAction;
    BitBtn1: TBitBtn;
    qryTidePersonelEmail: TWideStringField;
    popEmail: TPopupMenu;
    PNG1: TMenuItem;
    mnuEmail: TMenuItem;
    MenuItem3: TMenuItem;
    JPEG1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PDF1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    BMP1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    GIF1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    RTF1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    DOC1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    extFile1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    qryTidePersonelPaymentBonus2: TBCDField;
    qryTidePersonelPaymentBonus: TBCDField;
    qryTidePersonelname_L1: TStringField;
    qryTidePersonellastName_L1: TStringField;
    qrytidename_L1: TStringField;
    qrytidelastName_L1: TStringField;
    qrytideamount: TBCDField;
    qryTidePersonelamount: TBCDField;
    qryTidePersonelEmployerAmount: TBCDField;
    qrytideEmployerAmount: TBCDField;
    qryformsinfo: TADOQuery;
    actsSendEmailDirect: TAction;
    rdgrpEmail: TRadioGroup;
    popSendToServer: TPopupMenu;
    PNG2: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PNG3: TMenuItem;
    N28: TMenuItem;
    N24: TMenuItem;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actVejehPrintExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure qryTidePersonelAfterOpen(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ALLClickClick(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure actSMS2Execute(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure mnuEmailClick(Sender: TObject);
    procedure actsSendEmailDirectExecute(Sender: TObject);
    procedure mnuSendToFileServerClick(Sender: TObject);
    procedure rdgrpEmailClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    SendEmailDirect: Boolean;
    qryTidePersonelSQL, qryTideSQL: String;
    { Private declarations }
    procedure Updatelist;
    function CalculateTotal(fldname: String; kind: Byte): Currency;
    function SalaryFileName(fileExtension: string): string;
    function SalaryFileName2(fileExtension: string): string;
  public
    { Public declarations }
  end;

var
  PersonalTideF: TPersonalTideF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  DBGrid2Print, infoSMS, FaraConsts, MMESSAGE, GeneralDM;

{$R *.dfm}

function TPersonalTideF.CalculateTotal(fldname: String; kind: Byte): Currency;
var
  qry: TADOQuery;
begin
  if kind = 0 then
  begin
    if not qrytide.Active then
      Exit
  end
  else if not qryTidePersonel.Active then
    Exit;

  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      if kind = 0 then
        Clone(qrytide, ltReadOnly)
      else
        Clone(qryTidePersonel, ltReadOnly);
      Result := 0;
      First;
      while not eof do
      begin
        Result := Result + fieldbyname(fldname).AsCurrency;
        Next;
      end; // while
    end; // with
  finally
    qry.Free;
  end; // try
end;

procedure TPersonalTideF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TPersonalTideF.actSendToExcelExecute(Sender: TObject);
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

procedure TPersonalTideF.actSMS2Execute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryTidePersonel, 'Mobile')
end;

procedure TPersonalTideF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrytide, 'Mobile')
end;

procedure TPersonalTideF.actSearch_Execute(Sender: TObject);
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

procedure TPersonalTideF.actSortExecute(Sender: TObject);
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

function TPersonalTideF.SalaryFileName(fileExtension: string): string;
begin
  if fileExtension = 'JPEG' then
  begin
    Result := qryTidePersonelPersonelNo.AsString + '.' + fileExtension;
    Result := ReplaceStr(Result, '.JPEG', '.jpg');
  end
  else
    Result := APPBank.Year.ToString + '000' + qryTidePersonelPersonelNo.AsString
      + ' ' + '.' + fileExtension;

end;

function TPersonalTideF.SalaryFileName2(fileExtension: string): string;
begin
  Result := 'PR_' + qryTidePersonelPersonelNo.AsString + '_' +
    APPBank.Year.ToString + '_' + FcompanyCode.ToString +
    IfThen(fileExtension = 'PDF', '_1', '') + '.' + fileExtension;
end;

procedure TPersonalTideF.actsSendEmailDirectExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 1;
  SendEmailDirect := True;
  popSendToServer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonalTideF.mnuSendToFileServerClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir, strEmail, FileName, strlog: string;
begin
  inherited;
  if SendEmailDirect then
    dir := __TheTempDIR
  else
  begin
    if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
      Exit;
  end;
  DoWhile := True;
  InitReportFile(ppRprFish, GetFileName, False, False);
  ppDBPipeline2.RangeBegin := rbCurrentRecord;
  ppDBPipeline2.RangeEnd := reCurrentRecord;

  ppRprFish.DeviceType := TMenuItem(Sender).Hint;
  ppRprFish.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppRprFish.AllowPrintToFile := True;
  ppRprFish.ShowPrintDialog := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);

    case (Sender as TMenuItem).tag of
      1:
        begin
          ppRprFish.TextFileName := IncludeTrailingPathDelimiter(dir) +
            SalaryFileName2(TMenuItem(Sender).Hint);

          ppRprFish.PDFSettings.FontEncoding := feUnicode;
          // ScaleImages to False for original quality
          ppRprFish.PDFSettings.ScaleImages := False;
          // I tesred Samim font support for Farsi DIGIT !
          ppRprFish.PDFSettings.EmbedFontOptions := [efAllFonts];

          // ppRprFish.DeviceType := dtPDF;
          // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) + '000'
          // + qryTidePersonelPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
          // (qryPersonelsPersonel_L1.AsString.Trim) +
          // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
          // '.' + TMenuItem(Sender).Hint;;
          //
          // ppRprFish.PDFSettings.EmbedFontOptions :=
          // [efAllFonts, efFontList, efUseSubset];
          // ppRprFish.PDFSettings.FontEncoding := feUnicode;
          ppRprFish.Print;

          if SendEmailDirect then
          begin
            strEmail := qryTidePersonelEmail.AsString;
            FileName := ppRprFish.TextFileName;
            // FileName := StringReplace(ppRprFish.TextFileName, '.PNG',              '_1.PNG', []);
            strlog := 'N=' + qryTidePersonelPersonelNo.AsString + ',E=' +
              qryTidePersonelEmail.AsString;
            if GlobalPro.SendMail(UserMail.UserName, strEmail,
              APPBank.CompanyName, '', FileName, UserMail.Smtp) then
              add2log(strlog + ' >Send.')
            else
              add2log(strlog + ' <Not Send!?');

            DeleteFile(FileName);
          end
          else
            SendServerFile(ppRprFish.TextFileName, Memo1);

        end;
      2:
        With qryTidePersonel do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            ppRprFish.TextFileName := IncludeTrailingPathDelimiter(dir) +
              SalaryFileName2(TMenuItem(Sender).Hint);

            ppRprFish.PDFSettings.FontEncoding := feUnicode;
            // ScaleImages to False for original quality
            ppRprFish.PDFSettings.ScaleImages := False;
            // I tesred Samim font support for Farsi DIGIT !
            ppRprFish.PDFSettings.EmbedFontOptions := [efAllFonts];

            // ppRprFish.DeviceType := dtPDF;

            // ppRprFish.PDFSettings.EmbedFontOptions :=
            // [efAllFonts, efFontList, efUseSubset];
            // ppRprFish.PDFSettings.FontEncoding := feUnicode;
            ppRprFish.Print;

            if SendEmailDirect then
            begin
              strEmail := qryTidePersonelEmail.AsString;
              FileName := ppRprFish.TextFileName;
              // FileName := StringReplace(ppRprFish.TextFileName, '.PNG',                '_1.PNG', []);

              strlog := 'N=' + qryTidePersonelPersonelNo.AsString + ',E=' +
                qryTidePersonelEmail.AsString;
              if GlobalPro.SendMail(UserMail.UserName, strEmail,
                APPBank.CompanyName, '', FileName, UserMail.Smtp) then
                add2log(strlog + ' >Send.')
              else
                add2log(strlog + ' <Not Send!?');

              DeleteFile(FileName);

            end
            else
              SendServerFile(ppRprFish.TextFileName, Memo1);

            Next;
          end;
        end;

    end;

  finally
    qryTidePersonel.EnableControls;
    CloseMessage;
    SendEmailDirect := False;
  end; // try

end;

procedure TPersonalTideF.PageControl1Change(Sender: TObject);
begin
  inherited;
  Updatelist
end;

procedure TPersonalTideF.actEmailExecute(Sender: TObject);
begin
  inherited;
  popEmail.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonalTideF.mnuEmailClick(Sender: TObject);
  procedure setEmail;
  begin
    ppRprFish.EmailSettings.Recipients.Text := qryTidePersonel.fieldbyname
      ('Email').AsWideString;
    ppRprFish.EmailSettings.Subject := SYSCAPTION + ' > عيدي و پاداش > ' +
      qryTidePersonel.fieldbyname('PersonelName').AsWideString;
  end;

begin
  inherited;
  ppDBPipeline2.RangeBegin := rbCurrentRecord;
  ppDBPipeline2.RangeEnd := reCurrentRecord;
  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryTidePersonel.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        begin
          setEmail;
          InitReportFile(ppRprFish, payfishTide.Name, False, True);
        end;
      2:
        With qryTidePersonel do
        begin
          First;
          while not eof do
          begin
            setEmail;
            InitReportFile(ppRprFish, payfishTide.Name, False, True);
            Next;
          end;
        end;
    end;

  finally
    qryTidePersonel.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TPersonalTideF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'ProjectID', 'پروژه', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 40) ',
        'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 40) ');

      AddItem(DMf.adcSalary, 'EndDate', 'تاريخ بايگاني', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(EndDate),MAX(EndDate)FROM Pay.PersonelDecExt ' +
        'WHERE (NOT (EndDate IS NULL OR EndDate = ''        ''))');

      AddItem(DMf.adcSalary, 'InterType', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'InfoID', 'عنوان سازمان', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12)',
        '');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT     InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

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

procedure TPersonalTideF.Updatelist;
var
  strEmail: string;
begin
  with qry_init do
  begin
    Active := False;
    Active := True;
  end; // with
  with qrytide do
  begin
    Active := False;
    SQL.Text := StringReplace(qryTideSQL, ':OfficeCodeFromTo',
      'AND (FormsInfo.InfoID in(' + GetcFrom(myParams.ParamValues['InfoID'],
      ftString) + '))', [rfReplaceAll]);


    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.fieldbyname('forminfoid').AsInteger;;
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
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

    Active := PageControl1.TabIndex = 0;
  end; // with
  with qryTidePersonel do
  begin
    Active := False;

    case rdgrpEmail.ItemIndex of
      0:
        strEmail := '';
      1:
        strEmail := 'AND (LEN(Bonus.Email) > 4)';
      3:
        strEmail := 'AND ((Bonus.TelegramChatID) > ''1'')';

    else
      strEmail := 'AND(LEN(Bonus.Email) <= 4)';
    end;
    SQL.Text := StringReplace(qryTidePersonelSQL, ':OfficeCodeFromTo',
      'AND (FormsInfo.InfoID in(' + GetcFrom(myParams.ParamValues['InfoID'],
      ftString) + '))' + strEmail, [rfReplaceAll]);

    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.fieldbyname('forminfoid').AsInteger;
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('InterTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['InterType'], ftInteger);
    Parameters.ParamByName('InterTypeTo').Value :=
      GetcTo(myParams.ParamValues['InterType'], ftInteger);
    Parameters.ParamByName('EndDateFrom').Value :=
      GetcFrom(myParams.ParamValues['EndDate'], ftDate);
    Parameters.ParamByName('EndDateTo').Value :=
      GetcTo(myParams.ParamValues['EndDate'], ftDate);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Parameters.ParamByName('PersonelNo2From').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNo2To').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('YearMounth').Value :=
      LeftStr(GetcTo(myParams.ParamValues['EndDate'], ftDate), 7);

    Active := PageControl1.TabIndex = 1;
  end; // with
  StatusBar1.Panels[1].Text := 'جمع كاركرد =' +
    CurrToStrF(CalculateTotal('DayQuntity', 0), ffCurrency, 0);
  StatusBar1.Panels[0].Text := 'جمع ناخالص عيدي=' +
    CurrToStrF(CalculateTotal('EmployeeAmount', 0), ffCurrency, 0);
  StatusBar3.Panels[3].Text := 'جمع كاركرد =' +
    CurrToStrF(CalculateTotal('DayQuntity', 1), ffCurrency, 0);
  StatusBar3.Panels[2].Text := 'جمع ناخالص عيدي =' +
    CurrToStrF(CalculateTotal('BonusPrise', 1), ffCurrency, 0);
  StatusBar3.Panels[1].Text := 'جمع ماليات عيدي=' +
    CurrToStrF(CalculateTotal('TaxPrice', 1), ffCurrency, 0);
  StatusBar3.Panels[0].Text := 'جمع خالص عيدي =' +
    CurrToStrF(CalculateTotal('BonusPayAble', 1), ffCurrency, 0);
end;

procedure TPersonalTideF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TPersonalTideF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid2.DataSource.DataSet.RecNo) then
      DBGrid2.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;

procedure TPersonalTideF.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;

procedure TPersonalTideF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrytide.fieldbyname('PersonelNo'))
end;

procedure TPersonalTideF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTidePersonel.fieldbyname('PersonelNo'))
end;

procedure TPersonalTideF.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // QuickSearch(Key,qryInfo.FieldByName('PersonelNo'));
end;

procedure TPersonalTideF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid1)
end;

procedure TPersonalTideF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(DBGrid2, 5, True)
end;

procedure TPersonalTideF.actVejehPrintExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
    1:
      DBGrid2PrintF.showGrid2Print(DBGrid2, 0);
    // 2:search2F.ShowSearch(qryTidePersonel);
  end; // case

end;

procedure TPersonalTideF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPersonalTideF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonalTideF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPersonalTideF.actPrintExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      InitReportFile(ppReport1, 'PersonalTideF1');
    1:
      InitReportFile(ppReport2, 'PersonalTideF2');
  end; // case
end;

procedure TPersonalTideF.ppLabel8GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' از كد پرسنلي  ' +
    inttostr(GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger)) + ' تا ' +
    inttostr(GetcTo(myParams.ParamValues['PersonelNo'], ftInteger))
end;

procedure TPersonalTideF.ppLabel9GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' از كد پرسنلي  ' +
    inttostr(GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger)) + ' تا ' +
    inttostr(GetcTo(myParams.ParamValues['PersonelNo'], ftInteger))
end;

procedure TPersonalTideF.qryTidePersonelAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar4.Panels[2].Text := 'تعداد پرسنل = ' + inttostr(DataSet.RecordCount)
end;

procedure TPersonalTideF.rdgrpEmailClick(Sender: TObject);
begin
  inherited;
  Updatelist
end;

procedure TPersonalTideF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PupPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TPersonalTideF.FormCreate(Sender: TObject);
begin
  inherited;
  SendEmailDirect := False;
  PageControl1.TabIndex := 1;
  qryTidePersonelSQL := qryTidePersonel.SQL.Text;
  qryTideSQL := qrytide.SQL.Text
end;

procedure TPersonalTideF.ALLClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppRprFish, (Sender as TMenuItem).Name);
end;

end.
