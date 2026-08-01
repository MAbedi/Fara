unit Eftetahieh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, Grids, Vcl.DBGrids, CheckDoc, zAPIBalloon,
  MySplitter, System.ImageList, System.Actions;

type

  TEftetahiehF = class(Ttemplate2MDIF)
    qryDocGroups: TADOQuery;
    qryDocument: TADOQuery;
    srcDocgroups: TDataSource;
    qryDocGroupsSerial: TIntegerField;
    qryDocGroupsCompanyCode: TIntegerField;
    qryDocGroupsSecondaryDocNo: TIntegerField;
    qryDocGroupsPrimaryDocNo: TIntegerField;
    qryDocGroupsDocDate: TStringField;
    qryDocGroupsDocTypeCode: TIntegerField;
    qryDocGroupsStatus: TWordField;
    qryDocGroupsDocTopic_L1: TStringField;
    qryDocGroupsDocTopic_L2: TStringField;
    qryDocGroupsMakeDate: TDateTimeField;
    qryDocGroupsAttachFolderName: TStringField;
    qryDocGroupsDocNote_L1: TStringField;
    qryDocGroupsDocNote_L2: TStringField;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    edtDocDate: TDBEdit;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label7: TLabel;
    DBEdit12: TDBEdit;
    Label6: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    actSenttoexcel: TAction;
    qry_DocTypes: TADOQuery;
    qry_Company: TADOQuery;
    qry_CompanyCompanyCode: TIntegerField;
    qry_CompanyLevelID: TIntegerField;
    qry_CompanyMakeDate: TDateTimeField;
    qry_CompanyCompanyName_L1: TStringField;
    qry_CompanyCompanyName_L2: TStringField;
    qry_CompanyComment_L1: TStringField;
    qry_CompanyComment_L2: TStringField;
    srcDocument: TDataSource;
    Label10: TLabel;
    actSort: TAction;
    actSearcharticle: TAction;
    SrcCompany: TDataSource;
    edtNote_L1: TEdit;
    Panel4: TPanel;
    Label9_L2: TLabel;
    Label4: TLabel;
    edtMandeh: TEdit;
    Label20: TLabel;
    Label19: TLabel;
    edtBed: TEdit;
    edtBes: TEdit;
    PanelAcc: TPanel;
    edtTopicCode: TEdit;
    edtDetailCode: TEdit;
    edtCTopicCode: TEdit;
    edtCTopicCode2: TEdit;
    edtDescCTopicCode: TEdit;
    edtDescCTopicCode2: TEdit;
    edtDescDetail: TEdit;
    edtdescTopic: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    qryDocGroupsFirstUser: TStringField;
    qryDocGroupsSecondUser: TStringField;
    qryInsertDoc: TADOQuery;
    qryInsertDocID: TIntegerField;
    qryInsertDocSerial: TIntegerField;
    qryInsertDocTopicCode: TLargeintField;
    qryInsertDocDetailCode: TIntegerField;
    qryInsertDocCTopicCode: TIntegerField;
    qryInsertDocCTopicCode2: TIntegerField;
    qryInsertDocComment_L1: TStringField;
    qryInsertDocComment_L2: TStringField;
    qryInsertDocRow: TIntegerField;
    qryInsertDocDebt: TFMTBCDField;
    qryInsertDocCredit: TFMTBCDField;
    qryInsertDocAidDocdate: TStringField;
    qryInsertDocAidAmount: TFloatField;
    qryInsertDocBudgetTopicID: TIntegerField;
    qryInsertDocBudgetID: TIntegerField;
    qryInsertDocReferenceNo: TIntegerField;
    qryInsertDocReferenceTxt: TStringField;
    qryInsertDocReferenceDate: TStringField;
    qryInsertDocProjectID: TIntegerField;
    qryInsertDocReferenceCheck: TWordField;
    qryDocumentCompanyCode: TIntegerField;
    qryDocumentTopicCode: TLargeintField;
    qryDocumentDetailCode: TIntegerField;
    qryDocumentCTopicCode: TIntegerField;
    qryDocumentCTopicCode2: TIntegerField;
    qryDocumentAccName: TStringField;
    qryDocumentDebt: TFMTBCDField;
    qryDocumentCredit: TFMTBCDField;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    actFilter: TAction;
    PanelFilter: TPanel;
    buttonFilter: TBitBtn;
    Panel7: TPanel;
    BitBtn8: TBitBtn;
    btnOk: TBitBtn;
    Label9: TLabel;
    qryDocGroupsUserID: TIntegerField;
    qryInsertDocCompanyCode: TIntegerField;
    Image3: TImage;
    Image2: TImage;
    pnlCompony: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBNavigator1: TDBNavigator;
    pnlGeneralWarning: TPanel;
    lblWarnCount: TLabel;
    Label11: TLabel;
    lslWarnings: TListBox;
    pnlnote_L2: TPanel;
    Label1_L2: TLabel;
    edtNote_L2: TEdit;
    qryDocument_Radif: TStringField;
    qryInsertDocAuditDoPrint: TWordField;
    qryInsertDocctopiccode3: TIntegerField;
    qryInsertDocRelatedID: TIntegerField;
    qryInsertDocYearID: TIntegerField;
    qryDocGroupsDocDateMiladi: TDateTimeField;
    qryDocGroupsYearID: TIntegerField;
    CheckDoc1: TCheckDoc;
    qryDocGroups_DocTypeCode: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    pnlComment: TPanel;
    lblComment: TLabel;
    zAPIBalloon1: TzAPIBalloon;
    myspltr1: TMySplitter;
    qryInsertDocAidDocNo: TFMTBCDField;
    SpeedButton6: TSpeedButton;
    edtCTopicCode3: TEdit;
    Label16: TLabel;
    edtDescCTopicCode3: TEdit;
    qryDocumentCTopicCode3: TIntegerField;
    qryCurrencyType: TADOQuery;
    qryDocumentCurDebit: TBCDField;
    qryDocumentCurCredit: TFMTBCDField;
    qryDocumentAidAmount: TFloatField;
    qryDocumentCurrencyType: TIntegerField;
    edtCurBes: TEdit;
    edtCurBed: TEdit;
    edtCurMandeh: TEdit;
    lblCurMandeh: TLabel;
    Label18: TLabel;
    qryDocumentCurrencyRate: TFMTBCDField;
    qryDocumentCurrencyDebit: TFMTBCDField;
    qryDocumentCurrencyCredit: TFMTBCDField;
    qryInsertDocCurrencyRate: TFMTBCDField;
    qryInsertDocCurrencyDebit: TFMTBCDField;
    qryInsertDocCurrencyCredit: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actSenttoexcelExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcDocgroupsStateChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CalculateSummary;
    procedure actSortExecute(Sender: TObject);
    procedure actSearcharticleExecute(Sender: TObject);
    procedure qryDocGroupsBeforePost(DataSet: TDataSet);
    procedure qry_CompanyAfterScroll(DataSet: TDataSet);
    procedure qryDocumentAfterOpen(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryDocGroupsAfterPost(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure qryDocGroupsStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryDocGroupsDocTypeCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure lslWarningsDblClick(Sender: TObject);
    procedure qryDocumentCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure myspltr1Moved(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    Fsecond: Integer;
    formType: byte;
    bed, bes, mandeh: Extended;
    Curbed, Curbes, Curmandeh: Real;
    Cloned: TADOQuery;
    procedure UpdateList;
    procedure PostDocument;
    function ValidateArticle(out ResultMessage: String): Boolean;
    procedure ChkExistsDocTypeCode;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  EftetahiehF: TEftetahiehF;

implementation

uses Dm, GlobalPro, searchCode_ADO, sort2, mmessage,
  filter_ADO, FilterClass_ADO, Math, StrUtils, searchCode_L1_L2, Resource,
  FaraConsts, FormFunctions, CheckDocument;

{$R *.dfm}

procedure TEftetahiehF.CalculateSummary;
begin
  bed := 0;
  bes := 0;
  mandeh := 0;
  Curbed := 0;
  Curbes := 0;
  Curmandeh := 0;

  with Cloned do
  begin
    DisableControls;
    Clone(qryDocument, ltReadOnly);
    while not eof do
    begin
      bed := bed + fieldbyname('Debt').AsLargeInt;
      bes := bes + fieldbyname('Credit').AsLargeInt;
      Curbed := Curbed + fieldbyname('CurDebit').AsFloat;
      Curbes := Curbes + fieldbyname('CurCredit').AsFloat;
      Next;
    end; // while
  end; // with
  mandeh := bed - bes;
  // edtBed.Text := CurrToStrF(bed, ffNumber, 0);
  // edtBes.Text := CurrToStrF(bes, ffNumber, 0);

  edtBed.Text := FloatToStrF(bed, ffCurrency, 39, 0);
  edtBes.Text := FloatToStrF(bes, ffCurrency, 39, 0);

  edtMandeh.Visible := mandeh <> 0;
  Label20.Visible := edtMandeh.Visible;
  edtMandeh.Text := CurrToStrF(mandeh, ffCurrency, 0);

  Curmandeh := Curbed - Curbes;
  edtCurBed.Text := CurrToStrF(Curbed, ffCurrency, 0);
  edtCurBes.Text := CurrToStrF(Curbes, ffCurrency, 0);
  edtCurMandeh.Visible := Curmandeh <> 0;
  lblCurMandeh.Visible := edtCurMandeh.Visible;
  edtCurMandeh.Text := CurrToStrF(Curmandeh, ffCurrency, 0);

  PanelAcc.Visible := (mandeh <> 0) { or (Curmandeh <> 0) };

end;

procedure TEftetahiehF.FormCreate(Sender: TObject);
begin
  inherited;
  if (CheckExistsImbalanceDoc or CheckExistsImbalanceDocLastYear) then
  begin
    Close;
    Exit;
  end;

  formType := var_glb_gParam;
  Cloned := TADOQuery.Create(Self);
  qry_Company.Active := false;
  qry_Company.Active := True;
  pnlCompony.Visible := gv_MultiCompany;
  if formType = 2 then
  begin
    PanelFilter.Visible := True;
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      Close;
  end
  else
  begin
    qryDocument.Active := false;
    qryDocument.Parameters.ParamByName('YearID').Value := APPBank.Year - 1;
    qryDocument.Active := True;
    PanelFilter.Visible := false;
  end;

  if formType = 2 then
    PanelAcc.Visible := mandeh <> 0;
  pnlGeneralWarning.Visible := false;
  { if pnlCompony.Visible then
    DBEdit4.SetFocus
    else
    DBEdit1.SetFocus; }

  // Dmf.ShowBallon(lblComment.Caption);
end;

procedure TEftetahiehF.actSenttoexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TEftetahiehF.SpeedButton1Click(Sender: TObject);
var
  Results: array [0 .. 2] of String;
begin
  inherited;

  if searchCode_ADOF.SearchCode2(DMF.adcAccounting, ',جستجو شركت',
    'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies ',
    ['کد', 'نام شركت'], Results, [60, 60, 60], alLeft) then
  begin
    // if not(qryDocGroups.state in dsEditModes) then
    // qryDocGroups.edit;
    qry_Company.Locate('CompanyCode', StrToInt(Results[0]), []);
  end; // if
end;

procedure TEftetahiehF.srcDocgroupsStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMF.adcAccounting, 'Acc.DocGroups');
end;

procedure TEftetahiehF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, false);
end;

procedure TEftetahiehF.FormShow(Sender: TObject);
begin
  inherited;
  zAPIBalloon1.Title := 'اخطار!';
  zAPIBalloon1.Prompt.Text := lblComment.Caption;
  zAPIBalloon1.Show(Panel2.Left, Panel2.Top);
end;

procedure TEftetahiehF.FormDestroy(Sender: TObject);
begin
  inherited;
  Cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TEftetahiehF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocument);
end;

procedure TEftetahiehF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  qryDocGroups.Cancel;
  Close;
end;

procedure TEftetahiehF.actSearcharticleExecute(Sender: TObject);
var
  Results: array [0 .. 10] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'جستجوي سند',
    'SELECT TopicCode, DetailCode, CTopicCode, Comment_l1 ,  AidDocNo, AidDocDate,  Debt, Credit, ID '
    + 'FROM acc.Documents ', ['كد حساب', 'كد تفصيلي', 'كد م.هزينه', 'شرح سند',
    'شماره كمكي', 'تاريخ كمكي', 'بدهكار', 'بستانكار', ''], Results,
    [60, 60, 60, 200, 50, 50, 50, 60, 60], alLeft) then
    qryDocument.Locate('ID', Results[8], []);
end;

procedure TEftetahiehF.ChkExistsDocTypeCode;
begin
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT count(*)';
    SQL.Add('FROM Acc.DocGroups INNER JOIN');
    SQL.Add('Acc.FormsInfo ON Acc.DocGroups.DocTypeCode = Acc.FormsInfo.FormInfoID');
    SQL.Add('WHERE (Acc.FormsInfo.InfoID = :DocTypeCode ) AND (Acc.FormsInfo.FormType = 1) ');
    SQL.Add('AND (Acc.DocGroups.YearID = :YearID)');
    SQL.Add('AND (Acc.DocGroups.CompanyCode = :CompanyCode)');
    Parameters.ParamByName('DocTypeCode').Value := 5;
    Parameters.ParamByName('YearID').Value := qryDocGroups.fieldbyname('YearID')
      .AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qryDocGroups.fieldbyname('CompanyCode').AsInteger;
    Active := True;
    if Fields[0].AsInteger > 0 then
      if get_response(qryDocGroups.fieldbyname('_DocTypeCode').AsString +
        '  در سیستم وجود دارند' + sLineBreak +
        'آيا براي ثبت دوباره مطمئن هستيد؟') <> mrYes then
        Abort;
    Active := false;
  end;
end;

procedure TEftetahiehF.qryDocGroupsBeforePost(DataSet: TDataSet);
var
  // aClone:TADOQuery;
  msg: String;
  i: Integer;
begin
  inherited;
  lslWarnings.Clear;
  lblWarnCount.Caption := ' تعداد خطاها = ';

  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      Format('SELECT COUNT(*) FROM Acc.DocGroups WHERE (Serial <> %d) ' +
      'AND (SecondaryDocNo = %d) AND (YearID = %d) AND (CompanyCode = %d)',
      [DataSet.fieldbyname('Serial').AsInteger,
      DataSet.fieldbyname('SecondaryDocNo').AsInteger, APPBank.Year,
      DataSet.fieldbyname('CompanyCode').AsInteger]);
    Active := True;
    if (Fields[0].AsInteger > 0) then
    begin
      Warn(' شماره فرعی وارد شده تکراری می باشد. ');
      DBEdit1.Text := IntToStr(Fsecond);
      Abort;

    end;
  end;

  // Taghavi : noe sanad khali rad nashavad
  if DataSet.fieldbyname('_DoctypeCode').AsString = EmptyStr then
  begin
    Warn('نوع سند انتخاب نشده است.');
    DBLookupComboBox1.SetFocus;
    Abort;
  end;
  //
  ChkExistsDocTypeCode;

  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if (edtTopicCode.Text = '0') and (PanelAcc.Visible) then
  begin
    Warn('كد حساب مجاز نمي باشد');
    FlashAControl(edtTopicCode);
    Abort;
  end;
  with qryDocument do
    try
      DisableControls;
      First;
      BigMessageProgBar('در حال چك كردن كدينگ حسابها', qryDocument.RecordCount);
      i := 0;


      // PnlUnderButton.Enabled := false;

      if ValidateDocument(edtDocDate.Text, APPBank.Year, qryDocument, nil,
        DMF.adcAccounting, lslWarnings, false) then
      begin
        warn2('سند مورد تأييد است.');
      end
      else
      begin
        Warn('سند نامعتبر است.');
        i := 1;
      end; // else

      // while not eof do
      // begin
      // if ValidateArticle(msg) then
      // begin
      // // notSend:=true;
      //
      // lslWarnings.Items.AddObject(Format('[رديف %d]: %s', [RecNo, msg]),
      // TObject(qryDocument.RecNo));
      // inc(i)
      // end;
      // GoProgressBar(IntToStr(RecNo) + '-' + IntToStr(RecordCount));
      // Next;
      // end; // while
    finally
      lblWarnCount.Caption := lblWarnCount.Caption + IntToStr(i);
      EnableControls;
    end;

  if i > 0 then
  begin
    pnlGeneralWarning.Visible := True;
    CloseMessage;
    if get_response('آيا با وجود خطا مايل به صدور سند هستيد؟') <> mrYes then
      Abort
    else
      Warn('پس از صدور سند كدهاي خطادار را اصلاح كنيد');
  end
  else
    pnlGeneralWarning.Visible := false;

  // DataSet.FieldByName('UserId').AsInteger:=User.id;
  if not(CheckRequiredFields(qryDocGroups)) then
    Abort;

  if not DMF.adcAccounting.InTransaction then
    DMF.adcAccounting.BeginTrans;
end;

procedure TEftetahiehF.qry_CompanyAfterScroll(DataSet: TDataSet);
var
  txt: string;
  serial: Integer;
  Company: Integer;
begin
  inherited;
  Company := qry_Company.fieldbyname('CompanyCode').AsInteger;
  With qryDocument do
  begin
    Close;
    Parameters.ParamByName('CompanyCode').Value := Company;
    Open;
  end;
  with qryDocGroups do
  begin
    Close;
    Parameters.ParamByName('CompanyCode').Value := Company;
    Open;
    Insert;
    txt := Format
      ('select max(serial) from acc.docGroups where CompanyCode=%d And YearID=%d',
      [Company, APPBank.Year]);
    serial := GetANewCode('', txt, 'serial', DMF.adcAccounting);
    fieldbyname('serial').AsInteger := serial;
    fieldbyname('DocDate').AsString := var_glb_CurrentDate;
    fieldbyname('MakeDate').AsDateTime := Now;
    fieldbyname('Status').AsInteger := 1;
    fieldbyname('userId').AsInteger := User.id;
    fieldbyname('DocTypeCode').AsInteger := IfThen(formType = 1, 1, 1);
    fieldbyname('YearID').AsInteger := APPBank.Year;
    fieldbyname('CompanyCode').AsInteger :=
      qry_Company.fieldbyname('CompanyCode').AsInteger;
    txt := 'SELECT max(SecondaryDocNo) FROM  acc.DocGroups ';
    Fsecond := GetANewCode('',
      Format('select max(SecondaryDocNo) from acc.docGroups where CompanyCode=%d And YearID=%d',
      [Company, APPBank.Year]), 'SecondaryDocNo', DMF.adcAccounting);
    fieldbyname('SecondaryDocNo').AsInteger := Fsecond;

    edtNote_L1.Text := 'بابت ثبت سند افتتاحيه  ';
    edtTopicCode.Text := '0';
    edtdescTopic.Text := '';
    edtDetailCode.Text := '0';
    edtDescDetail.Text := '';
    edtCTopicCode.Text := '0';
    edtDescCTopicCode.Text := '';
    edtCTopicCode2.Text := '0';
    edtDescCTopicCode2.Text := '';

    edtCTopicCode3.Text := '0';
    edtDescCTopicCode3.Text := '';

  end; // with

end;

procedure TEftetahiehF.qryDocumentAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary;
  btnOk.Enabled := qryDocument.RecordCount > 0;
end;

procedure TEftetahiehF.SpeedButton2Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  sqlText :=
    'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_l1, acc.Categories.MoeenName_l2 FROM acc.Categories LEFT OUTER JOIN '
    + 'acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ';
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'حسابهاي معین', sqlText,
    ['كد حساب', 'شرح', 'desc'], Results, [80, 350, 350], alLeft) then
  begin
    edtTopicCode.Text := Results[0];
    edtdescTopic.Text := Results[1];
  end; // 3

end;

procedure TEftetahiehF.SpeedButton3Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;

begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'كدهاي تفصيلي مرتبط با ' +
    edtdescTopic.Text,
    'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1, acc.Details.DetailName_L2 FROM acc.Details '
    + 'INNER JOIN DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode '
    + 'WHERE (((acc.DetailRange.TopicCode)=' + edtTopicCode.Text + ')) ',
    ['كد تفصيلي', 'نام حساب', 'caption'], Results, [80, 350, 350], alLeft) then
  begin
    edtDetailCode.Text := Results[0];
    edtDescDetail.Text := Results[1];
  end; // if

end;

procedure TEftetahiehF.SpeedButton4Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'كدهاي تفصیلی 1 مرتبط با '
    + edtdescTopic.Text,
    'SELECT acc.CenterTopics.CTopicCode,acc.CenterTopics.CTopicName_L1,acc.CenterTopics.CTopicName_L2 FROM acc.CenterTopics '
    + 'INNER JOIN acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode '
    + 'WHERE (((acc.CenterTopicRange.TopicCode)=' + edtTopicCode.Text + '))',
    ['كد تفصیلی 1', 'نام حساب', 'caption'], Results, [80, 350, 350], alLeft)
  then
  begin
    edtCTopicCode.Text := Results[0];
    edtDescCTopicCode.Text := Results[1];

  end; // if

end;

procedure TEftetahiehF.SpeedButton5Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'كدهاي تفصیلی 3 مرتبط با '
    + edtDescCTopicCode.Text,
    'SELECT acc.CenterTopics2.CTopicCode2,acc.CenterTopics2.CTopicName2_L1,acc.CenterTopics2.CTopicName2_L2 FROM acc.CenterTopics2 '
    + 'INNER JOIN acc.CTopicRangeTogether ON acc.CenterTopics2.CTopicCode2 = acc.CTopicRangeTogether.CTopicCode2 '
    + 'WHERE (((acc.CTopicRangeTogether.CTopicCode)=' + edtCTopicCode.Text +
    '))', ['كد تفصیلی 3', 'نام حساب', 'caption'], Results, [80, 350, 350],
    alLeft) then
  begin
    edtCTopicCode2.Text := Results[0];
    edtCTopicCode2.Text := Results[1];

  end; // if

end;

procedure TEftetahiehF.SpeedButton6Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'كدهاي تفصیلی 4 مرتبط با '
    + edtDescCTopicCode.Text,
    'SELECT acc.CenterTopics3.CTopicCode3,acc.CenterTopics3.CTopicName2_L1,acc.CenterTopics3.CTopicName3_L2 FROM acc.CenterTopics3 '
    + 'INNER JOIN acc.CTopicRangeTogether ON acc.CenterTopics2.CTopicCode3 = acc.CTopicRangeTogether.CTopicCode3 '
    + 'WHERE (((acc.CTopicRangeTogether.CTopicCode)=' + edtCTopicCode.Text +
    '))', ['كد تفصیلی 4', 'نام حساب', 'caption'], Results, [80, 350, 350],
    alLeft) then
  begin
    edtCTopicCode3.Text := Results[0];
    edtDescCTopicCode3.Text := Results[1];
  end; // if
end;

procedure TEftetahiehF.PostDocument;
var
  txt: string;
begin
  qryInsertDoc.Active := True;
  with qryDocument do
    try
      DisableControls;
      First;
      txt := 'در حال صدور سند افتتاحيه  ';
      BigMessageProgBar(txt, qryDocument.RecordCount);
      while not eof do
      begin
        qryInsertDoc.Insert;
        /// Append
        qryInsertDoc.fieldbyname('Serial').AsInteger :=
          qryDocGroups.fieldbyname('Serial').AsInteger;
        qryInsertDoc.fieldbyname('row').AsInteger := RecNo;
        qryInsertDoc.fieldbyname('TopicCode').AsString :=
          fieldbyname('TopicCode').AsString;
        qryInsertDoc.fieldbyname('DetailCode').AsInteger :=
          fieldbyname('DetailCode').AsInteger;
        qryInsertDoc.fieldbyname('CTopicCode').AsInteger :=
          fieldbyname('CTopicCode').AsInteger;
        qryInsertDoc.fieldbyname('CTopicCode2').AsInteger :=
          fieldbyname('CTopicCode2').AsInteger;

        qryInsertDoc.fieldbyname('CTopicCode3').AsInteger :=
          fieldbyname('CTopicCode3').AsInteger;

        qryInsertDoc.fieldbyname('Comment_L1').AsString := edtNote_L1.Text;
        qryInsertDoc.fieldbyname('Comment_L2').AsString := edtNote_L2.Text;
        qryInsertDoc.fieldbyname('Debt').AsCurrency := fieldbyname('Debt')
          .AsCurrency;
        qryInsertDoc.fieldbyname('credit').AsCurrency := fieldbyname('credit')
          .AsCurrency;
        qryInsertDoc.fieldbyname('CompanyCode').AsInteger :=
          qryDocGroups.fieldbyname('CompanyCode').AsInteger;

        qryInsertDoc.fieldbyname('YearID').AsInteger := APPBank.Year;

        qryInsertDoc.fieldbyname('AidAmount').AsFloat :=
          abs(fieldbyname('CurDebit').AsFloat -
          fieldbyname('curcredit').AsFloat);

        qryInsertDoc.fieldbyname('CurrencyType').AsInteger :=
          qryDocument.fieldbyname('CurrencyType').AsInteger;

        qryInsertDoc.fieldbyname('CurrencyDebit').AsFloat :=
          fieldbyname('CurrencyDebit').AsFloat;
        qryInsertDoc.fieldbyname('CurrencyCredit').AsFloat :=
          fieldbyname('CurrencyCredit').AsFloat;
        qryInsertDoc.fieldbyname('CurrencyRate').AsFloat :=
          fieldbyname('CurrencyRate').AsFloat;

        qryInsertDoc.post;
        GoProgressBar(IntToStr(RecNo));
        Next;
      end; // while

      if edtMandeh.Visible { or edtCurMandeh.Visible } then
      begin
        // while not qryCurrencyType.eof do
        begin
          qryInsertDoc.Insert;
          qryInsertDoc.fieldbyname('Serial').AsInteger :=
            qryDocGroups.fieldbyname('Serial').AsInteger;
          qryInsertDoc.fieldbyname('row').AsInteger :=
            GetANewCode('', 'acc.Documents', 'Row', DMF.adcAccounting);
          qryInsertDoc.fieldbyname('TopicCode').AsLargeInt :=
            StrToIntDef(edtTopicCode.Text, 0);
          qryInsertDoc.fieldbyname('DetailCode').AsInteger :=
            StrToIntDef(edtDetailCode.Text, 0);
          qryInsertDoc.fieldbyname('CTopicCode').AsInteger :=
            StrToIntDef(edtCTopicCode.Text, 0);
          qryInsertDoc.fieldbyname('CTopicCode2').AsInteger :=
            StrToIntDef(edtCTopicCode2.Text, 0);
          qryInsertDoc.fieldbyname('Comment_L1').AsString :=
            edtNote_L1.Text + '..';
          qryInsertDoc.fieldbyname('Comment_L2').AsString := edtNote_L2.Text;
          qryInsertDoc.fieldbyname('YearID').AsInteger := APPBank.Year;

          // mandeh := qryCurrencyType.fieldbyname('Mandeh').AsCurrency;
          if mandeh < 0 then
          begin
            qryInsertDoc.fieldbyname('Debt').AsCurrency := abs(mandeh)

          end
          else
          begin
            qryInsertDoc.fieldbyname('credit').AsCurrency := abs(mandeh);
          end;

          qryInsertDoc.fieldbyname('CompanyCode').AsInteger :=
            qryDocGroups.fieldbyname('CompanyCode').AsInteger;

          // Curmandeh := qryCurrencyType.fieldbyname('ArzMandeh').AsFloat;
          qryInsertDoc.fieldbyname('AidAmount').AsFloat := abs(Curmandeh);
          // qryInsertDoc.fieldbyname('CurrencyType').AsInteger :=
          // qryCurrencyType.fieldbyname('CurrencyType').AsInteger;

          qryInsertDoc.post;
          // qryCurrencyType.Next;
        end; // if

      end;

      if DMF.adcAccounting.InTransaction then
        DMF.adcAccounting.CommitTrans;
      BigMessage('با موفقيت انجام شد.', 1);

    finally
      First;
      EnableControls;
      qryInsertDoc.Active := false;
    end;

end;

procedure TEftetahiehF.qryDocGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;

  try
    PostDocument;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      DMF.adcAccounting.RollbackTrans;
      warn2(E.Message);
      CloseMessage;
    end;

  end;

end;

procedure TEftetahiehF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'CTopicCode3', 'كد و نام تفصیلی 4',
        'كدمركزهزينه3', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode3, CTopicName3_L1 FROM   acc.CenterTopics3',
        'SELECT MIN(CTopicCode3),MAX(CTopicCode3)  FROM acc.CenterTopics3');

      AddItem(DMF.adcAccounting, 'CTopicCode2', 'كد و نام تفصیلی 3',
        'كدمركزهزينه2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CenterTopics2');

      AddItem(DMF.adcAccounting, 'CTopicCode', 'كد و نام تفصیلی 1', 'تفصیلی 1',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CenterTopics');
      AddItem(DMF.adcAccounting, 'DetailCode', 'كد و نام تفصيل', 'كد تفصيل',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
        'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TEftetahiehF.UpdateList;
begin
  with qryDocument Do
  begin
    Active := false;
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
    // Parameters.ParamByName('DocTypeCodeFrom').Value:=GetcFrom(myParams.ParamValues['DocTypeCode'],ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value:=GetcTo(myParams.ParamValues['DocTypeCode'],ftInteger);;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('YearID').Value := APPBank.Year - 1;
    Active := True;
  end;

end;

procedure TEftetahiehF.qryDocGroupsStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 1 then
    Text := 'موقت';
end;

procedure TEftetahiehF.qryDocGroupsDocTypeCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 1 then
    Text := 'افتتاحيه'
  else
    Text := 'افتتاحيه';
end;

procedure TEftetahiehF.lslWarningsDblClick(Sender: TObject);
var
  i: Smallint;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  qryDocument.First;
  qryDocument.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);

end;

procedure TEftetahiehF.myspltr1Moved(Sender: TObject);
begin
  inherited;
  Repaint;
end;

function TEftetahiehF.ValidateArticle(out ResultMessage: String): Boolean;
begin
  Result := false;
  with qryDocument do
  begin
    // if qryDocument.FieldByName('MoeenName_L1').AsString='' then
    with DMF.qry_Temp do
    begin
      Active := false;
      SQL.Text :=
        'SELECT TopicCode,MoeenName_L1 FROM  acc.Categories where TopicCode=' +
        qryDocument.fieldbyname('TopicCode').AsString;
      Active := True;
      if fieldbyname('TopicCode').AsString = '' then
      begin
        ResultMessage := 'كد حساب معتبر نيست.';
        Result := True;
        Exit
      end; // if
    end; // with

    if HasDetail(fieldbyname('TopicCode').AsLargeInt) then
    begin
      if not IsValidDetailForMoeen(fieldbyname('TopicCode').AsLargeInt,
        fieldbyname('DetailCode').AsInteger) then
      begin
        // if GetDetailsOfMoeen(Fieldbyname('TopicCode').AsLargeInt).IndexOf(fieldbyname('DetailCode').AsString)=-1 then begin
        ResultMessage := 'كد تفصيلي معتبر نيست.';
        Result := True;
        Exit;
      end;
    end
    else if fieldbyname('DetailCode').AsInteger <> 0 then
    begin
      ResultMessage := 'كد تفصيلي ' + fieldbyname('DetailCode').AsString +
        'براي كد حساب ' + fieldbyname('TopicCode').AsString + ' معتبر نيست.';
      Result := True;
      Exit;
    end;

    if HasExpenseCode2(fieldbyname('CTopicCode').AsInteger) then
    begin
      if not IsValidCTopic2ForCTopics(fieldbyname('CTopicCode2').AsInteger,
        fieldbyname('CTopicCode').AsInteger) then
      begin
        ResultMessage := 'كد تفصیلی 3 معتبر نيست.';
        Result := True;
        Exit;
      end;
    end;

    if HasExpenseCode(fieldbyname('TopicCode').AsLargeInt) then
    begin
      if not IsValidCTopicForMoeen(fieldbyname('TopicCode').AsLargeInt,
        fieldbyname('CTopicCode').AsInteger) then
      begin
        ResultMessage := 'كد تفصیلی 1 معتبر نيست.';
        Result := True;
        Exit;
      end;
    end
    else if fieldbyname('CTopicCode').AsInteger <> 0 then
    begin
      ResultMessage := 'كد تفصیلی 1 ' + fieldbyname('CTopicCode').AsString +
        'براي كد حساب ' + fieldbyname('TopicCode').AsString + ' معتبر نيست.';
      Result := True;
      Exit;
    end;

  end; // with

end;

procedure TEftetahiehF.qryDocumentCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('_Radif').AsString := IntToStr(abs(DataSet.RecNo));
end;

end.
