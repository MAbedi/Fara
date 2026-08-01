unit Manifest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, Math,
  searchCode_ADO, Dm, DB, ADODB, DBCtrls, Mask, Grids, Vcl.DBGrids, ComCtrls, ppDB,
  ppDBPipe, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TManifestF = class(Ttemplate2MDIF)
    pnlMaster: TPanel;
    grpAccCode: TGroupBox;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    edtNationalID: TDBEdit;
    src_AccCode: TDataSource;
    qry_AccCode: TADOQuery;
    qry_AccCodeCompanyCode: TIntegerField;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeDetailCode: TIntegerField;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeAccName: TStringField;
    qry_AccCodeAidInfoType: TWordField;
    qry_AccCodeAccName_L2: TStringField;
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    qry_AccCodeNationalID: TStringField;
    grpRefrence: TGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    mskReferenceNo: TMaskEdit;
    mskReferenceDate: TMaskEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    qryManifest: TADOQuery;
    dsManifest: TDataSource;
    qryManifestYearID: TIntegerField;
    qryManifestSerial: TIntegerField;
    qryManifestID: TIntegerField;
    qryManifestFitfulID: TFMTBCDField;
    qryManifestacccode: TStringField;
    qryManifestComment_L1: TStringField;
    qryManifestDebt: TFMTBCDField;
    qryManifestCredit: TFMTBCDField;
    qryManifestSecondaryDocNo: TIntegerField;
    qryManifestPrimaryDocNo: TIntegerField;
    qryManifestDocDate: TStringField;
    qryManifestAidDocNo: TFMTBCDField;
    qryManifestAidDocdate: TStringField;
    qryManifestAidAmount: TFloatField;
    qryManifestReferenceNo: TIntegerField;
    qryManifestReferenceDate: TStringField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn2: TBitBtn;
    DBEdit5: TDBEdit;
    Image2: TImage;
    Image1: TImage;
    Panel1: TPanel;
    lblSumChecks1: TLabel;
    lblSumChecks2: TLabel;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    qryManifestCompanyCode: TIntegerField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    BitBtn4: TBitBtn;
    actSpecialPrint: TAction;
    ppDBPipeline2: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure actSpecialPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure dsManifestStateChange(Sender: TObject);
  private
    sumDebt, sumUnDebt: Currency;
    sumCredit, sumUnCredit: Currency;
    countChecked, countUnchecked: Integer;
    SelectedRefrenceNo: Integer;
    procedure ToggleCheck;
    procedure CalculateSumChecks;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ManifestF: TManifestF;

implementation

uses GlobalPro, MMESSAGE, DBGrid2Print;

{$R *.dfm}

procedure TManifestF.actSpecialPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TManifestF.BitBtn1Click(Sender: TObject);
var
  Sqltxt: string;
  s: Boolean;
  Results: array [0 .. 3] of string;
begin

  inherited;
  Sqltxt := 'SELECT ReferenceNo, ReferenceDate, AccCode, AccName_L1 FROM ( SELECT DISTINCT  Acc.Documents.ReferenceNo, Acc.Documents.ReferenceDate, LTRIM(RTRIM(Acc.Documents.DetailCode)) +'' - ''+ LTRIM(RTRIM(Acc.Documents.TopicCode)) AS AccCode,'
    + ' Acc.Details.DetailName_L1 + '' -  '' + Acc.Categories.MoeenName_L1 AS AccName_L1,'
    + ' Acc.Details.DetailName_L2 + '' - '' + Acc.Categories.MoeenName_L2 AS AccName_L2'
    + ' FROM Acc.Documents INNER JOIN Acc.Details ON Acc.Documents.DetailCode = Acc.Details.DetailCode  '
    + '  INNER JOIN Acc.Categories ON '
    + ' Acc.Documents.TopicCode = Acc.Categories.TopicCode ' +
    ' WHERE (ISNULL( Acc.Documents.ReferenceNo,0)  <> 0) AND (Acc.Documents.YearID = %d))func ';
  Sqltxt := Format(Sqltxt, [APPBank.Year]);

  s := searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'اعلامیه', Sqltxt,
    ['شماره اعلامیه', 'تاریخ اعلامیه', 'کد حساب', 'عنوان معین'], Results,
    [60, 60, 60, 200], alLeft);
  if s then
  begin
    SelectedRefrenceNo := StrToInt(Results[0]);
    mskReferenceNo.Text := Results[0];
    mskReferenceDate.Text := Results[1];

    qry_AccCode.Active := True;
    qry_AccCode.Locate('AccCode', Results[2], []);


    // if qry_AccCode.Active then
    // qry_AccCode.Locate('AccCode', Results[2], [])
    // ELSE
    // With qryManifest do
    // begin
    // Active := False;
    // Parameters.ParamByName('AccCode').Value := '0';
    // Parameters.ParamByName('AccCode1').Value := 1;
    // Parameters.ParamByName('YearID').Value := APPBank.Year;
    // Parameters.ParamByName('ReferenceNo').Value := SelectedRefrenceNo;
    // Active := True;
    // end;

  end;

end;

procedure TManifestF.BitBtn2Click(Sender: TObject);
var
  ReferenceNo: Integer;
begin
  inherited;
  FreeReservedCodes(dmf.adcAccounting, 'acc.Documents');
  If gv_MultiCompany And opta.RestDocCode then
    ReferenceNo := GetANewCode
      ('',Format('select max(ReferenceNo) from acc.Documents where (CompanyCode = %d )'
      + ' and (YearID = %d) AND (ISNULL(ReferenceNo,0)  BETWEEN %d AND %d)',
      [APPBank.n_subcompany, APPBank.Year, opta.StartLimitID, opta.EndLimitID]),
      'ReferenceNo',dmf.adcAccounting)
  else
    ReferenceNo := GetANewCode
      ('',Format('select max(ReferenceNo) from acc.Documents where (YearID = %d) AND (ISNULL(ReferenceNo,0)  BETWEEN %d AND %d)',
      [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'ReferenceNo',dmf.adcAccounting);

  if ReferenceNo < opta.StartLimitID then
    mskReferenceNo.Text := IntToStr(opta.StartLimitID)
  else
    mskReferenceNo.Text := IntToStr(ReferenceNo);

  mskReferenceDate.Text := var_glb_CurrentDate;
  newPanel.Visible := False;
  okPanel.Visible := True;
  setColumns2(DBGrid1, okPanel.Visible, 'FitfulID');

  SelectedRefrenceNo := 0;
  qry_AccCode.Active := True;
  grpAccCode.Enabled := True;
  grpRefrence.Enabled := False;

end;

procedure TManifestF.BitBtn3Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  Sqltxt: String;
begin
  inherited;
  Sqltxt := 'SELECT acccode,AccName_L1 FROM (SELECT LTRIM(RTRIM(STR(acc.Documents.DetailCode))) + '' - '' +RTRIM(LTRIM(STR(acc.Documents.TopicCode))) AS acccode ,'
    + ' acc.Categories.MoeenName_L1+ '' - '' +acc.Details.DetailName_L1  AS AccName_L1'
    + ' ,acc.Categories.MoeenName_L2+ '' - '' +acc.Details.DetailName_L2  AS AccName_L2  '
    + ' FROM Acc.Documents INNER JOIN ' +
    ' Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND '
    + ' Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode INNER JOIN ' +
    ' Acc.Details ON Acc.Documents.DetailCode = Acc.Details.DetailCode  INNER JOIN '
    + ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
    ' group by  acc.Documents.TopicCode, acc.Documents.DetailCode,'
    + ' acc.Categories.MoeenName_L1, acc.Details.DetailName_L1,acc.Categories.AidInfoType , acc.Categories.MoeenName_L2, acc.Details.DetailName_L2'
    + '  )func ';
  s := searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'حسابها', Sqltxt,
    ['کد', 'عنوان معین '], Results, [60, 200], alLeft);
  if s then
    qry_AccCode.Locate('accCode', Results[0], []);

end;

procedure TManifestF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name, DBGrid1,ppDBPipeline1);
end;

procedure TManifestF.BitBtn7Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  if get_response('آيا براي تایید اطلاعات انتخاب شده مطمئن هستيد') <> mrYes then
    Exit;
  newPanel.Visible := True;
  okPanel.Visible := False;
  grpAccCode.Enabled := False;
  grpRefrence.Enabled := True;
  setColumns2(DBGrid1, okPanel.Visible, 'FitfulID');
  With qryManifest do
    try
      DisableControls;
      Filter := 'FitfulID = 1';
      Filtered := True;
      First;
      while not Eof do
      begin
        s := 'UPDATE Acc.Documents ';
        s := s + 'SET ReferenceNo = %s, ReferenceDate = %s ';
        s := Format(s, [Trim(mskReferenceNo.Text),
          QuotedStr(Trim(mskReferenceDate.Text))]);
        s := s + 'WHERE(ID = %d ) AND (YearID = %d ) AND (CompanyCode = %d ) AND (Serial = %d )';
        s := Format(s, [qryManifestID.AsInteger, qryManifestYearID.AsInteger,
          qryManifestCompanyCode.AsInteger, qryManifestSerial.AsInteger]);
        dmf.adcAccounting.Execute(s);
        Next;
      end;
    finally
      Filtered := False;
      Requery();
      EnableControls;
      FreeReservedCodes(dmf.adcAccounting, 'acc.Documents');
    end;
end;

procedure TManifestF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(dmf.adcAccounting, 'acc.Documents');
  newPanel.Visible := True;
  okPanel.Visible := False;
  grpAccCode.Enabled := False;
  grpRefrence.Enabled := True;
  qry_AccCode.Active := False;
  qryManifest.Active := False;
  mskReferenceNo.Text := EmptyStr;
  mskReferenceDate.Text := EmptyStr;
  setColumns2(DBGrid1, okPanel.Visible, 'FitfulID');
end;

procedure TManifestF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck
end;

procedure TManifestF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryManifestFitfulID.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;
end;

procedure TManifestF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck;
end;

procedure TManifestF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryManifestSecondaryDocNo);
end;

procedure TManifestF.dsManifestStateChange(Sender: TObject);
begin
  inherited;
  grpAccCode.Enabled := not newPanel.Visible;
end;

procedure TManifestF.FormCreate(Sender: TObject);
begin
  inherited;
  // qry_AccCode.Active := True;
  setColumns2(DBGrid1, False, 'FitfulID');
  SelectedRefrenceNo := 0;
end;

procedure TManifestF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TManifestF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TManifestF.Image2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TManifestF.ToggleCheck;
begin
  with qryManifest do
  begin
    Edit;
    Fieldbyname('FitfulID').AsInteger :=
      ifthen(Fieldbyname('FitfulID').AsInteger = 1, 0, 1);
    post;
  end;
  CalculateSumChecks;
end;

procedure TManifestF.CalculateSumChecks;
Var
  CDSClone: TADOQuery;
begin
  CDSClone := TADOQuery.Create(nil);
  with CDSClone do
  Begin
    Try
      Clone(qryManifest, ltReadOnly);
      First;
      sumDebt := 0;
      sumUnDebt := 0;
      sumUnCredit := 0;
      sumCredit := 0;
      countChecked := 0;
      countUnchecked := 0;
      while not Eof do
      begin
        if Fieldbyname('FitfulID').AsInteger = 1 then
        begin
          Inc(countChecked);
          sumDebt := sumDebt + Fieldbyname('Debt').AsCurrency;
          sumCredit := sumCredit + Fieldbyname('Credit').AsCurrency;
        end
        else
        begin
          Inc(countUnchecked);
          sumUnDebt := sumUnDebt + Fieldbyname('Debt').AsCurrency;
          sumUnCredit := sumUnCredit + Fieldbyname('Credit').AsCurrency;
        end;
        Next;
      end;
    Finally
      CDSClone.Free;
    End;
  End;

  StatusBar1.Panels[2].Text := 'تعداد سطرهاي انتخاب شده = ' +
    IntToStr(countChecked);

  StatusBar1.Panels[1].Text := 'جمع سطرهاي انتخاب شده = ' +
    CurrToStrF(sumDebt, ffCurrency, 0);

  StatusBar1.Panels[0].Text := 'جمع سطرهاي انتخاب شده = ' +
    CurrToStrF(sumCredit, ffCurrency, 0);

  StatusBar2.Panels[2].Text := 'تعداد سطرهاي باقيمانده     = ' +
    IntToStr(countUnchecked);

  StatusBar2.Panels[1].Text := 'جمع سطرهاي باقيمانده     = ' +
    CurrToStrF(sumUnDebt, ffCurrency, 0);

  StatusBar2.Panels[0].Text := 'جمع سطرهاي باقيمانده     = ' +
    CurrToStrF(sumUnCredit, ffCurrency, 0);

  lblSumChecks1.Caption := num2alphabet(round(sumDebt));
  lblSumChecks2.Caption := num2alphabet(round(sumCredit));
end;

procedure TManifestF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryManifest do
  begin
    Active := False;
    Parameters.ParamByName('AccCode').Value := qry_AccCodeaccCode.AsString;
    Parameters.ParamByName('AccCode1').Value := 0;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ReferenceNo').Value := SelectedRefrenceNo;
    SelectedRefrenceNo := 0;
    Active := True;
  end;
end;

procedure TManifestF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TManifestF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TManifestF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Self.Caption;
end;

procedure TManifestF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
