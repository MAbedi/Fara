// Alireza Mokhtari and Mohamad Hassan Rezaei
unit Ekhtetamie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, Grids, Vcl.DBGrids, System.ImageList,
  System.Actions;

type
  TEkhtetanieF = class(Ttemplate2MDIF)
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
    DBEdit2: TDBEdit;
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
    pnlCompony: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
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
    DBNavigator1: TDBNavigator;
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
    pnlnote_L2: TPanel;
    edtNote_L2: TEdit;
    Label1_L2: TLabel;
    actFilter: TAction;
    PanelFilter: TPanel;
    buttonFilter: TBitBtn;
    Panel7: TPanel;
    BitBtn8: TBitBtn;
    btnOk: TBitBtn;
    Label9: TLabel;
    qryDocGroupsUserID: TIntegerField;
    qryDocGroupsDocDateMiladi: TDateTimeField;
    qryDocGroupsYearID: TIntegerField;
    qryInsertDocID: TAutoIncField;
    qryInsertDocSerial: TIntegerField;
    qryInsertDocCompanyCode: TIntegerField;
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
    qryInsertDocAuditDoPrint: TWordField;
    qryInsertDocctopiccode3: TIntegerField;
    qryInsertDocYearID: TIntegerField;
    qryInsertDocRelatedID: TIntegerField;
    qryDocGroups_DocTypeCode: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    qryInsertDocAidDocNo: TFMTBCDField;
    Label11: TLabel;
    edtCTopicCode3: TEdit;
    SpeedButton6: TSpeedButton;
    edtDescCTopicCode3: TEdit;
    qryDocumentCTopicCode3: TIntegerField;
    qryDocumentCurrencyType: TIntegerField;
    qryDocumentCurrencyRate: TFMTBCDField;
    qryDocumentCurrencyDebit: TFMTBCDField;
    qryDocumentCurrencyCredit: TFMTBCDField;
    qryInsertDocCurrencyType: TIntegerField;
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
    procedure qryDocGroupsAfterCancel(DataSet: TDataSet);
    procedure qryDocGroupsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
  private
    formType: Integer;
    bed, bes, mandeh: Extended;
    Cloned: TADOQuery;
    procedure UpdateList;
    procedure PostDocument;
    procedure ChkExistsDocTypeCode;
    // function ChkHasCompany: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EkhtetanieF: TEkhtetanieF;

implementation

uses Dm, GlobalPro, searchCode_ADO, sort2, mmessage,
  filter_ADO, FilterClass_ADO, Math, StrUtils, searchCode_L1_L2, Resource,
  FaraConsts, FormFunctions;
{$R *.dfm}

procedure TEkhtetanieF.CalculateSummary;
begin
  bed := 0;
  bes := 0;
  mandeh := 0;
  with Cloned do
  begin
    DisableControls;
    Clone(qryDocument, ltReadOnly);
    while not eof do
    begin
      bed := bed + fieldbyname('Debt').AsExtended;
      bes := bes + fieldbyname('Credit').AsExtended;
      Next;
    end; // while
  end; // with
  mandeh := bed - bes;
  // edtBed.Text := CurrToStrF(bed, ffCurrency, 0);
  // edtBes.Text := CurrToStrF(bes, ffCurrency, 0);
  edtBed.Text := FloatToStrF(bed, ffCurrency, 39, 0);
  edtBes.Text := FloatToStrF(bes, ffCurrency, 39, 0);

  edtMandeh.Visible := mandeh <> 0;
  Label20.Visible := edtMandeh.Visible;
  edtMandeh.Text := CurrToStrF(mandeh, ffCurrency, 0);
  PanelAcc.Visible := mandeh <> 0;
end;

procedure TEkhtetanieF.FormCreate(Sender: TObject);
begin
  inherited;
  if CheckExistsImbalanceDoc then
  begin
    Close;
    Exit;
  end;

  formType := var_glb_gParam;
  Cloned := TADOQuery.Create(Self);
  qry_Company.Active := false;
  qry_Company.Active := True;
  pnlCompony.Visible := gv_MultiCompany;

  case formType of
    1:
      begin
        qryDocument.Active := false;
        qryDocument.Parameters.ParamByName('YearID').Value := APPBank.Year;
        qryDocument.Active := True;
        PanelFilter.Visible := false;
        Caption := 'صدور سند اختتاميه';
        lblCaption.Caption := 'صدور سند اختتاميه';
      end;
    2:
      begin
        Caption := 'بستن حسابهاي موقت';
        lblCaption.Caption := 'بستن حسابهاي موقت';
        PanelFilter.Visible := True;
        myParams.Clear;
        actFilter.Execute;
        if myParams.FindParam('DocDate') = nil then
        BEGIN
          Close;
          Exit;
        END;
        PanelAcc.Visible := mandeh <> 0;
      end;
  end;
  qryDocGroups.Cancel;
  qryDocGroups.Insert;

end;

procedure TEkhtetanieF.actSenttoexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TEkhtetanieF.SpeedButton1Click(Sender: TObject);
var
  // c: String;
  Results: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'جستجو شركت',
    'SELECT CompanyCode , CompanyName_l1,CompanyName_l2 FROM  acc.Companies ',
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft) then
  begin
    if not(qryDocGroups.state in dsEditModes) then
      qryDocGroups.edit;
    qry_Company.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TEkhtetanieF.srcDocgroupsStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.DocGroups');
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.Documents');
end;

procedure TEkhtetanieF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, false);
end;

procedure TEkhtetanieF.FormDestroy(Sender: TObject);
begin
  inherited;
  Cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TEkhtetanieF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocument);
end;

procedure TEkhtetanieF.actSearcharticleExecute(Sender: TObject);
var
  Results: array [0 .. 10] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'جستجوي سند',
    'SELECT TopicCode, DetailCode, CTopicCode, Comment_l1 ,  AidDocNo, AidDocDate,  Debt, Credit, ID '
    + 'FROM acc.Documents ', ['كد حساب', 'كد تفصيلي', 'كد م.هزينه', 'شرح  سند',
    'شماره كمكي', 'تاريخ كمكي', 'بدهكار', 'بستانكار', ''], Results,
    [60, 60, 60, 200, 50, 50, 50, 60, 60], alLeft) then
    qryDocument.Locate('ID', Results[8], []);
end;

procedure TEkhtetanieF.ChkExistsDocTypeCode;
begin
  with Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT count(*)';
    SQL.Add('FROM Acc.DocGroups INNER JOIN');
    SQL.Add('Acc.FormsInfo ON Acc.DocGroups.DocTypeCode = Acc.FormsInfo.FormInfoID');
    SQL.Add('WHERE (Acc.FormsInfo.InfoID = :DocTypeCode ) AND (Acc.FormsInfo.FormType = 1) ');
    SQL.Add('AND (Acc.DocGroups.YearID = :YearID)');
    SQL.Add('AND (Acc.DocGroups.CompanyCode = :CompanyCode)');
    if formType = 1 then
      Parameters.ParamByName('DocTypeCode').Value := 1
    else
      Parameters.ParamByName('DocTypeCode').Value := 4;
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

procedure TEkhtetanieF.qryDocGroupsBeforePost(DataSet: TDataSet);
begin
  inherited;
  // DataSet.FieldByName('UserId').AsInteger:=User.id;
  // Taghavi : noe sanad khali rad nashavad
  if DataSet.fieldbyname('_DocTypeCode').AsString = EmptyStr then
  begin
    Warn('نوع سند انتخاب نشده است.');
    DBLookupComboBox1.SetFocus;
    Abort;
  end;
  //
  ChkExistsDocTypeCode;

  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not(CheckRequiredFields(qryDocGroups)) then
    Abort;

  if (edtTopicCode.Text = '0') and (PanelAcc.Visible) then
  begin
    Warn('كد حساب مجاز نمي باشد');
    FlashAControl(edtTopicCode);
    Abort;
  end;

  if ((formType = 1) and CheckDockWithStatus01(qry_CompanyCompanyCode.AsInteger))
  then
  begin
    Warn('قبل از صدور سند اختتامیه ضروری است کلیه اسناد حسابداری سال جاری دائم شده باشند ، جهت دائم نمودن از فرم لیست اسناد حسابداری استفاده شود .');
    Abort;
  end;

end;

procedure TEkhtetanieF.qry_CompanyAfterScroll(DataSet: TDataSet);
// var
// txt:string;
// serial,second:integer;
begin
  inherited;
  With qryDocument do
  begin
    Close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Company.fieldbyname('CompanyCode').AsInteger;

    Open;
  end;
  with qryDocGroups do
  begin
    Close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Company.fieldbyname('CompanyCode').AsInteger;
    Open;
    Cancel;
    Insert;
  end; // with

end;

procedure TEkhtetanieF.qryDocumentAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary;
  btnOk.Enabled := qryDocument.RecordCount > 0;
end;

procedure TEkhtetanieF.SpeedButton2Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  sqlText :=
    'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_l1, acc.Categories.MoeenName_l2 FROM acc.Categories LEFT OUTER JOIN '
    + 'acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode WHERE     (acc.CategoriesForUse.PrvTopicCode IS NULL) ';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'حسابهاي معین', sqlText,
    ['كد حساب', 'شرح', 'desc'], Results, [80, 350, 350], alLeft) then
  begin
    edtTopicCode.Text := Results[0];
    edtdescTopic.Text := Results[1];
  end; // 3

end;

procedure TEkhtetanieF.SpeedButton3Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  // sqlText:String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'كدهاي تفصيلي مرتبط با ' +
    edtdescTopic.Text,
    'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1, acc.Details.DetailName_L2 FROM acc.Details  '
    + 'INNER JOIN acc.DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode '
    + 'WHERE (((acc.DetailRange.TopicCode)=' + edtTopicCode.Text + ')) ',
    ['كد تفصيلي', 'نام حساب', 'caption'], Results, [80, 350, 350], alLeft) then
  begin
    edtDetailCode.Text := Results[0];
    edtDescDetail.Text := Results[1];
  end; // if

end;

procedure TEkhtetanieF.SpeedButton4Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'كدهاي تفصیلی 1 مرتبط با '
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

procedure TEkhtetanieF.SpeedButton5Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'كدهاي تفصیلی 3 مرتبط با '
    + edtDescCTopicCode.Text,
    'SELECT acc.CenterTopics2.CTopicCode2,acc.CenterTopics2.CTopicName2_L1,acc.CenterTopics2.CTopicName2_L2 FROM acc.CenterTopics2 '
    + 'INNER JOIN acc.CTopicRangeTogether ON acc.CenterTopics2.CTopicCode2 = acc.CTopicRangeTogether.CTopicCode2 '
    + 'WHERE (((acc.CTopicRangeTogether.CTopicCode)=' + edtCTopicCode.Text +
    '))', ['كد تفصیلی 3', 'نام حساب', 'caption'], Results, [80, 350, 350],
    alLeft) then
  begin
    edtCTopicCode2.Text := Results[0];
    edtDescCTopicCode2.Text := Results[1];

  end; // if

end;

procedure TEkhtetanieF.SpeedButton6Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'كدهاي تفصیلی 4 مرتبط با '
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

// function TEkhtetanieF.ChkHasCompany: Integer;
// begin
// Result := -1;
// with Dmf.qry_Temp do
// begin
// Close;
// SQL.Text := 'if ((Select COUNT(*) From Acc.Details';
// SQL.Add('Where CompanyCode = :Cm AND DetailCode = :DT) = 0)');
// SQL.Add('begin');
// SQL.Add('Select CompanyCode From Acc.Details');
// SQL.Add('Where DetailCode = :DT2 And UseKindInCo = 0');
// SQL.Add('end');
// SQL.Add('else select -1');
// Parameters.ParamByName('CM').Value := qry_Company.fieldbyname('CompanyCode')
// .AsInteger;
// Parameters.ParamByName('DT').Value := StrToIntDef(edtDetailCode.Text, 0);
// Parameters.ParamByName('DT2').Value := StrToIntDef(edtDetailCode.Text, 0);
// Open;
// if not Fields[0].IsNull then
// Result := Fields[0].AsInteger;
// end;
// end;

procedure TEkhtetanieF.PostDocument;
var
  txt: string;
begin
  qryInsertDoc.Active := True;
  with qryDocument do
    try
      DisableControls;
      First;
      txt := IfThen(formType = 1, 'در حال صدور سند اختتاميه ',
        'در حال بستن حسابهاي موقت');
      BigMessageProgBar(txt, qryDocument.RecordCount);
      while not eof do
      begin
        qryInsertDoc.Append;
        qryInsertDoc.fieldbyname('ID').AsInteger :=
          GetANewCode('',
          Format('select Max(ID) From acc.Documents where Serial = %D',
          [qryDocGroups.fieldbyname('Serial').AsInteger]), 'ID',
          Dmf.adcAccounting);
        qryInsertDoc.fieldbyname('Serial').AsInteger :=
          qryDocGroups.fieldbyname('Serial').AsInteger;
        qryInsertDoc.fieldbyname('row').AsInteger := RecNo;
        qryInsertDoc.fieldbyname('TopicCode').AsLargeInt :=
          fieldbyname('TopicCode').AsInteger;
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
        qryInsertDoc.fieldbyname('YearId').AsCurrency := APPBank.Year;
        qryInsertDoc.fieldbyname('credit').AsCurrency := fieldbyname('credit')
          .AsCurrency;
        qryInsertDoc.fieldbyname('CompanyCode').AsInteger :=
          qryDocGroups.fieldbyname('CompanyCode').AsInteger;

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
      if edtMandeh.Visible then
      begin
        qryInsertDoc.Insert;
        qryInsertDoc.fieldbyname('ID').AsInteger :=
          GetANewCode('',
          Format('select Max(ID) From acc.Documents where Serial = %D',
          [qryDocGroups.fieldbyname('Serial').AsInteger]), 'ID',
          Dmf.adcAccounting);
        qryInsertDoc.fieldbyname('Serial').AsInteger :=
          qryDocGroups.fieldbyname('Serial').AsInteger;
        qryInsertDoc.fieldbyname('row').AsInteger :=
          GetANewCode('', 'acc.Documents', 'Row', Dmf.adcAccounting);
        qryInsertDoc.fieldbyname('TopicCode').AsLargeInt :=
          StrToIntDef(edtTopicCode.Text, 0);
        qryInsertDoc.fieldbyname('DetailCode').AsInteger :=
          StrToIntDef(edtDetailCode.Text, 0);
        qryInsertDoc.fieldbyname('CTopicCode').AsInteger :=
          StrToIntDef(edtCTopicCode.Text, 0);
        qryInsertDoc.fieldbyname('CTopicCode2').AsInteger :=
          StrToIntDef(edtCTopicCode2.Text, 0);

        qryInsertDoc.fieldbyname('CTopicCode3').AsInteger :=
          StrToIntDef(edtCTopicCode3.Text, 0);

        qryInsertDoc.fieldbyname('Comment_L1').AsString := edtNote_L1.Text;
        qryInsertDoc.fieldbyname('Comment_L2').AsString := edtNote_L2.Text;
        qryInsertDoc.fieldbyname('YearId').AsCurrency := APPBank.Year;
        if mandeh < 0 then
          qryInsertDoc.fieldbyname('Debt').AsCurrency := abs(mandeh)
        else
          qryInsertDoc.fieldbyname('credit').AsCurrency := abs(mandeh);
        qryInsertDoc.fieldbyname('CompanyCode').AsInteger :=
          qryDocGroups.fieldbyname('CompanyCode').AsInteger;
        // qryDocGroups.fieldbyname('CompanyCode').AsInteger;
        qryInsertDoc.post;
      end; // if
      BigMessage('با موفقيت انجام شد.', 1);
    finally
      First;
      DisableControls;
      qryInsertDoc.Active := false;
      CloseMessage;
    end;

end;

procedure TEkhtetanieF.qryDocGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostDocument;
  if formType = 1 then
    if get_response('آیا میخواهید بانک اطلاعاتی سال جاری بایگانی شود؟') = mrYes
    then
    begin
      with Dmf.qry_Temp do
      begin
        Active := false;
        SQL.Text := 'update Util.MaliYear set Status=2 WHERE (YearID = ' +
          IntToStr(APPBank.Year) + ')';
        ExecSQL;
        BigMessage('اطلاعات سال جاری بایگانی شد.', 1);
      end;
    end;

end;

procedure TEkhtetanieF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(Dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));

      AddItem(Dmf.adcAccounting, 'CTopicCode3', 'كد و نام تفصیلی 4',
        'كدمركزهزينه3', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode3, CTopicName3_L1 FROM   acc.CenterTopics3',
        'SELECT MIN(CTopicCode3),MAX(CTopicCode3)  FROM acc.CenterTopics3');

      AddItem(Dmf.adcAccounting, 'CTopicCode2', 'كد و نام تفصیلی 3',
        'كدمركزهزينه2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CenterTopics2');

      AddItem(Dmf.adcAccounting, 'CTopicCode', 'كد و نام تفصیلی 1', 'تفصیلی 1',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CenterTopics');
      AddItem(Dmf.adcAccounting, 'DetailCode', 'كد و نام تفصيلي', 'كد تفصيلي',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
        'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(Dmf.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'Select TopicCodeFrom , TopicCodeTo  From Acc.Config');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TEkhtetanieF.UpdateList;
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
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;

  end;
  qryDocGroups.Cancel;
  qryDocGroups.Insert;
end;

procedure TEkhtetanieF.qryDocGroupsStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 1 then
    Text := 'موقت';
end;

procedure TEkhtetanieF.qryDocGroupsDocTypeCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    5:
      Text := 'اختتاميه';
    4:
      Text := 'بستن حسابهاي موقت';
  end;

end;

procedure TEkhtetanieF.qryDocGroupsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  // close;
end;

procedure TEkhtetanieF.qryDocGroupsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('FirstUser').AsString := user.name;
  with Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'select EndYear from Util.MaliYear  WHERE (YearID = ' +
      IntToStr(APPBank.Year) + ')';
    Active := True;
    qryDocGroups.fieldbyname('DocDate').AsString :=
      Dmf.qry_Temp.fieldbyname('EndYear').AsString;
  end;
  DataSet.fieldbyname('MakeDate').AsDateTime := Now;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  DataSet.fieldbyname('MakeDate').AsDateTime := Now;
  DataSet['DocTypeCode'] := IfThen(formType = 1, 5, 4);
  DataSet['Status'] := 1;
  DataSet.fieldbyname('CompanyCode').AsInteger :=
    qry_Company.fieldbyname('CompanyCode').AsInteger;

  If gv_MultiCompany And opta.RestDocCode then
    DataSet.fieldbyname('SecondaryDocNo').AsInteger :=
      GetANewCode('',
      Format('select max(SecondaryDocNo) from acc.docGroups where (CompanyCode = '
      + IntToStr(qry_Company.fieldbyname('CompanyCode').AsInteger) +
      ') and YearID=%d', [APPBank.Year]), 'SecondaryDocNo', Dmf.adcAccounting)
  else
    DataSet.fieldbyname('SecondaryDocNo').AsInteger :=
      GetANewCode('',
      Format('select max(SecondaryDocNo) from acc.docGroups where YearID=%d',
      [APPBank.Year]), 'SecondaryDocNo', Dmf.adcAccounting);
  DataSet.fieldbyname('serial').AsInteger :=
    GetANewCode('',
    Format('select max(serial) from acc.docGroups where YearID=%d',
    [APPBank.Year]), 'serial', Dmf.adcAccounting);

  DataSet.fieldbyname('Userid').AsInteger := user.id;
  edtNote_L1.Text := IfThen(formType = 1, 'بابت ثبت سند اختتاميه ',
    'بابت بستن حسابهاي موقت');

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

end;

end.
