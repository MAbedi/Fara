// mahmood
unit MakeDocument;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, DBCtrls, zAPIBalloon,
  Menus, CheckDoc, CheckDocument, FormFunctions, FrMakeDocs,
  System.Actions, System.ImageList, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, System.Variants;

type

  TMakeDocumentF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MskDocNo: TMaskEdit;
    mskDocDate: TMaskEdit;
    Panel4: TPanel;
    qryDocuments: TADOQuery;
    BitBtn1: TBitBtn;
    actMakeDoc: TAction;
    qryItems: TADOQuery;
    RdGKindDoc: TRadioGroup;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    MskDocTopic: TMaskEdit;
    CmbDocType: TComboBox;
    Label5: TLabel;
    qryInitcmb: TADOQuery;
    actFilter: TAction;
    qryItemsReciptID: TIntegerField;
    qryItemsCTopicCode: TIntegerField;
    qryItemsDetailCode: TIntegerField;
    qryItemsDebt: TFMTBCDField;
    qryItemsCredit: TFMTBCDField;
    srcItems: TDataSource;
    qryItems_TopicCodeName: TStringField;
    qryItems_DetailCode: TStringField;
    qryItems_CTopicCode: TStringField;
    qryItemsComment2: TStringField;
    BitBtn3: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    StatusBar1: TStatusBar;
    StatusBar3: TStatusBar;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    qryDocGroups: TADOQuery;
    BitBtn4: TBitBtn;
    actErrorList: TAction;
    lslWarnings: TListBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSendExel: TAction;
    actSort: TAction;
    zbal: TzAPIBalloon;
    BitBtn8: TBitBtn;
    Label8: TLabel;
    cmbCompany: TComboBox;
    actCheckDocument: TAction;
    actShowForm: TAction;
    qryItemsCTopicCode3: TIntegerField;
    Lbl_CTopicCode2: TLabel;
    DBTxt_CTopicCode2: TDBText;
    qryItems_CTopicCode2: TStringField;
    StatusBar2: TStatusBar;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    PnlSerial: TPanel;
    SBtnReciptNumber: TSpeedButton;
    MskSerial: TMaskEdit;
    Label11: TLabel;
    qryItemsReciptNumber: TIntegerField;
    qryItemsReciptDate: TStringField;
    actAddCode: TAction;
    PopupMenuDBGrid1: TPopupMenu;
    mnu_All_Click_: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actSendWarnToExcel: TAction;
    btnSendWarnToExcel: TBitBtn;
    actDatasetToXML: TAction;
    CheckDoc1: TCheckDoc;
    qryItemsYearID: TIntegerField;
    qryItemsServerID: TIntegerField;
    qryItems_CompanyCode: TIntegerField;
    Splitter1: TSplitter;
    qryItemsCTopicCode2: TIntegerField;
    qryItemsArzAmount: TFloatField;
    grp1: TGroupBox;
    btnSelect: TSpeedButton;
    cmbGroups: TComboBox;
    actDocPostKind1: TAction;
    actDocPostKind_1: TAction;
    zAPIBalloon1: TzAPIBalloon;
    frmMakeDocs1: TfrmMakeDocs;
    Splitter2: TSplitter;
    qryItemsTopicCode: TLargeintField;
    qryItemsComment: TStringField;
    actShowFr: TAction;
    actAddComment2: TAction;
    actMakeDocumentPostF: TAction;
    cmbYearID: TComboBox;
    BitBtn9: TBitBtn;
    qryItemsTruckNumber: TStringField;
    TabControl1: TTabControl;
    qryItemsAidNumber: TStringField;
    actSendToXml: TAction;
    qryItems_TopicName2: TStringField;
    qryItems_DetailName2: TStringField;
    qryItems_CTopicName_L2: TStringField;
    actAccountf: TAction;
    qryItemsArzAmountC: TFloatField;
    qryReciptsDoc: TADOQuery;
    qryItemsIDs: TMemoField;
    qryReciptsDocSerial: TIntegerField;
    qryReciptsDocCompanyCode: TIntegerField;
    qryReciptsDocSecondaryDocNo: TIntegerField;
    qryReciptsDocPrimaryDocNo: TIntegerField;
    qryReciptsDocDocDate: TStringField;
    qryReciptsDocRecipt_ID: TLargeintField;
    qryItemsPO: TStringField;
    qryItemsArzTypeID: TIntegerField;
    qryItemsRialsEqual: TBCDField;
    actAddCommentArz: TAction;
    qryItemsSellsEmporiumName: TWideStringField;
    qryItemsMachineInfo: TStringField;
    qryItemsArzName: TStringField;
    qryItemsCustName: TStringField;
    qryItemsCustName2: TStringField;
    qryItemsCustName3: TStringField;
    DBGrid1: TCedarDbgrid;
    Panel5: TPanel;
    rgDocDate: TRadioGroup;
    chkTajmia: TCheckBox;
    rgComment: TRadioGroup;
    qryItemsIAidDate: TStringField;
    qryItemsIAidNumber: TStringField;
    qryItemsCurrencyDiscounts: TFMTBCDField;
    qryItemsCurrencyDebit: TFMTBCDField;
    qryItemsCurrencyCredit: TFMTBCDField;
    qryItemsCurrencyRate: TFMTBCDField;
    qryItemsEntity: TFMTBCDField;
    qryItemsWeight: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure cmbGroupsChange(Sender: TObject);
    procedure RdGKindDocClick(Sender: TObject);
    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure MskSerialExit(Sender: TObject);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure mnu_All_Click_Click(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSendWarnToExcelExecute(Sender: TObject);
    procedure rgDocDateClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure actDatasetToXMLExecute(Sender: TObject);
    procedure chkTajmiaClick(Sender: TObject);
    procedure actDocPostKind1Execute(Sender: TObject);
    procedure actDocPostKind_1Execute(Sender: TObject);
    procedure frmMakeDocs1srcMakeDocsStateChange(Sender: TObject);
    procedure actShowFrExecute(Sender: TObject);
    procedure actAddComment2Execute(Sender: TObject);
    procedure actMakeDocumentPostFExecute(Sender: TObject);
    procedure cmbYearIDChange(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure actSendToXmlExecute(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure actAccountfExecute(Sender: TObject);
    procedure actAddCommentArzExecute(Sender: TObject);
    procedure rgCommentClick(Sender: TObject);
  private
    SqlText, formName: String;
    NewDoc, SecondTypeActive: Boolean;
    mySelected: String;
    Rec_No, ReciptTypeFrom, ReciptTypeTo: Integer;
    FormType: Byte;
    FunName: String;
    DocPostKind: SmallInt;
    addIDFilter, addIDFilterUp, CommentFld: String;
    procedure AddDetail(DocID: Integer);
    procedure init_Combos;
    function Error: Integer;
    function FnSecondType_Active(var DocPostKind: SmallInt): Boolean;
    function AddCode(Kind: Byte): Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure setDocPostKind(DocPost: SmallInt);
    function GetComment: String;
    procedure Commentset;
    procedure GetFunName;
    procedure InsertReciptsDoc;
    function CalcSumFileds(qry: TADOQuery; FiledName: String): Real48;
  public
    YearID_, UpdateDocNoCount: Integer;
    Number4Filter, Date4Filter, Store4Filter: string;
    procedure Enter(qry: TDataSet; OpenFromList: Boolean);
    procedure UpdateFilter;
    { Public declarations }
  end;

var
  MakeDocumentF: TMakeDocumentF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sndkey32, sort2, Math,
  StrUtils, mmessage, searchCode_ADO, selected, ExportXml, AccFunctions,
  FaraConsts, main, MakeDocumentPost, Filter_ADO_Const, XmlMapper, Account;

{$R *.dfm}

procedure TMakeDocumentF.UpdateFilter;
begin
  if myParams.FindParam('Date') = nil then
    Exit;

  if not optA.AccOldAvailable then
  begin
    YearID_ := APPBank.Year;
    if cmbYearID.ItemIndex > -1 then
      YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
    CheckDoc1.YearID := YearID_;
    /// ///////

  end;

  btnSelect.Enabled := True;
  rgDocDateClick(rgDocDate);
  // FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection);         222
  FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPRecipt,
    'Acc.DocGroups', 0);

  DMf.qryACCTopicCode.Open;

  GetSecondaryDocNo(ExtIPRecipt, cmbCompany, MskDocNo, YearID_);

  GetSerial(ExtIPRecipt, cmbCompany, MskSerial, YearID_);

  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptStateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('ReciptStateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);

    if Parameters.FindParam('NotReciptNumber') <> nil then
      Parameters.ParamByName('NotReciptNumber').Value :=
        GetcNot(myParams.ParamValues['number']);

    if Parameters.FindParam('NotCustID1') <> nil then
      Parameters.ParamByName('NotCustID1').Value :=
        GetcNot(myParams.ParamValues['CustID1']);

    if var_tmp_str = EmptyStr then
      Parameters.ParamByName('addIDFilter').Value := '-1'
    else
      Parameters.ParamByName('addIDFilter').Value := var_tmp_str;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('AidDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidDate'], ftDate);
    Parameters.ParamByName('AidDateTo').Value :=
      GetcTo(myParams.ParamValues['AidDate'], ftDate);

    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('CustID1Form').Value :=
      GetcFrom(myParams.ParamValues['CustID1'], ftInteger);
    Parameters.ParamByName('CustID1To').Value :=
      GetcTo(myParams.ParamValues['CustID1'], ftInteger);

    Parameters.ParamByName('CustID2Form').Value :=
      GetcFrom(myParams.ParamValues['CustID2'], ftInteger);
    Parameters.ParamByName('CustID2To').Value :=
      GetcTo(myParams.ParamValues['CustID2'], ftInteger);

    Parameters.ParamByName('CustID3Form').Value :=
      GetcFrom(myParams.ParamValues['CustID3'], ftInteger);
    Parameters.ParamByName('CustID3To').Value :=
      GetcTo(myParams.ParamValues['CustID3'], ftInteger);

    Parameters.ParamByName('ReciptsRowFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptsRow'], ftInteger);
    Parameters.ParamByName('ReciptsRowTo').Value :=
      GetcTo(myParams.ParamValues['ReciptsRow'], ftInteger);

    Parameters.ParamByName('ReciptTypeFrom').Value := ReciptTypeFrom;
    Parameters.ParamByName('ReciptTypeTo').Value := ReciptTypeTo;

    if SecondTypeActive then
    begin
      Parameters.ParamByName('SecondTpFrom').Value :=
        GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
      Parameters.ParamByName('SecondTpTo').Value :=
        GetcTo(myParams.ParamValues['SecondType'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('SecondTpFrom').Value := 0;
      Parameters.ParamByName('SecondTpTo').Value := 100;
    end;
    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    // Active:=True;

  end; // with
  with qryItems.Parameters do
  begin
    LblShowLimitPlace1.Caption := 'از شماره ' +
      IntToStr(ParamByName('NumberFrom').Value) + ' تا ' +
      IntToStr(ParamByName('NumberTo').Value);
    LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + 'از تاريخ ' +
      ParamByName('DateFrom').Value + ' تا ' + ParamByName('DateTo').Value;
    LblShowLimitPlace2.Caption := 'از كد انبار ' +
      IntToStr(ParamByName('StoreIDFrom').Value) + ' تا ' +
      IntToStr(ParamByName('StoreIDTo').Value);
    LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption +
      'از كد نوع اطلاعات ' + IntToStr(ParamByName('SecondTpFrom').Value) +
      ' تا ' + IntToStr(ParamByName('SecondTpTo').Value);
  end; // with
  actMakeDoc.Enabled := False;
  actMakeDocumentPostF.Enabled := actMakeDoc.Enabled;
  actShowDoc.Execute;
end;

function TMakeDocumentF.FnSecondType_Active(var DocPostKind: SmallInt): Boolean;
begin
  With TADOQuery.Create(Self) do
  begin
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT Deficate_MakeDocKind,SecondTypeActive';
    SQL.Add(',DocTypeCode,DocPostKind');
    SQL.Add('FROM ReciptTypes WHERE (ReciptType = :ReciptType)');
    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Open;
    // if chkTajmia.Tag = 0 then
    // chkTajmia.Checked := FieldByName('Deficate_MakeDocKind').AsInteger = 2;
    Result := FieldByName('SecondTypeActive').AsInteger = 1;
    CmbDocType.ItemIndex := CmbDocType.Items.IndexOfObject
      (TObject(FieldByName('DocTypeCode').AsInteger));
    DocPostKind := FieldByName('DocPostKind').AsInteger;
    Close;
    Free;
  end;
end;

procedure TMakeDocumentF.actFilterExecute(Sender: TObject);
var
  SQLtxt: string;
begin
  inherited;
  MakeDocumentPostF := nil;
  PnlUnderButton.Enabled := False;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'ReciptsRow', ' شماره سطر ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'SELECT Min(isnull(ReciptsRow,0)),Max(isnull(ReciptsRow,0)) FROM Recipts WHERE YearID = '
        + IntToStr(YearID_));
      // if SellsEmporiumActive then
      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if SecondTypeActive then
        AddItem(DMf.adcBSell, 'SecondType', 'نوع اطلاعات ', 'كد اطلاعات ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT LookUps.Code, LookUps.Name FROM Recipts INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
          'SELECT MIN(LookUps.Code),MAX(LookUps.Code) FROM Recipts LEFT OUTER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID');

      AddItem(DMf.adcBSell, 'State', 'وضعيت', 'كدوضعيت', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT ReciptState, ReciptStateName FROM Vu_ReciptStates ',
        'SELECT Min(ReciptState),Max(ReciptState) from Vu_ReciptStates ');

      // ' SELECT 0 AS Code ,''موقت'' AS Name UNION ALL SELECT 1,''قطعي'' UNION ALL SELECT 2,''دائم'' UNION ALL SELECT 3,''باطله''',
      // 'Select Min(ReciptState),2 from Recipts ');

      // \_____________________________________________________________________/
      if Store4Filter = EmptyStr then
        SQLtxt := MinMaxSQL4Store3
      else
        SQLtxt := 'SELECT ' + Store4Filter + ',' + Store4Filter;
      AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax,
        Store4Filter, Store4Filter, ciLookup, LookupSQL4Store3, SQLtxt);
      // \_____________________________________________________________________/
      if (Number4Filter = EmptyStr) or (var_tmp_str <> EmptyStr) then
        SQLtxt := 'SELECT Min(ReciptNumber),Max(ReciptNumber) FROM Recipts WHERE YearID = '
          + IntToStr(YearID_)
      else
        SQLtxt := 'SELECT ' + Number4Filter + ',' + Number4Filter;

      AddItem(DMf.adcBSell, 'Number', ' فرم ', 'شماره', ftInteger, dvMinMax,
        Number4Filter, Number4Filter, ciSimple, '', SQLtxt, True);

      AddItemFilter(GetFilter, TFilterAidDate);

      // \_____________________________________________________________________/
      if (Date4Filter = EmptyStr) or (var_tmp_str <> EmptyStr) then
        SQLtxt := 'SELECT  ''' + APPBank.StartYear +
          ''',Max(ReciptDate) FROM Recipts WHERE YearID = ' + IntToStr(YearID_)
      else
        SQLtxt := 'SELECT ''' + Date4Filter + ''',''' + Date4Filter + '''';
      // \_____________________________________________________________________/

      AddItem(DMf.adcBSell, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvMinMax, '',
        '', ciSimple, '', SQLtxt);

      AddItemFilter(GetFilter, TFilterCustomerGrpID);

      // AddItem(DMf.adcBSell, 'CustomerGrpID', ' گروه مشتريان ', 'گروه',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
      // 'select Min(CustomerGrpID),Max(CustomerGrpID) From CustomersGroup');
      AddItem(DMf.adcBSell, 'CustID3', '3مشتري', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT DISTINCT Customers.CustID, Customers.CustName ' +
        ' FROM Recipts INNER JOIN Customers ON Recipts.PersonID3 = Customers.CustID',
        'SELECT Min(PersonID3),Max(PersonID3) From Recipts');

      AddItem(DMf.adcBSell, 'CustID2', '2مشتري', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT DISTINCT Customers.CustID, Customers.CustName ' +
        ' FROM Recipts INNER JOIN Customers ON Recipts.PersonID2 = Customers.CustID',
        'SELECT Min(PersonID2),Max(PersonID2) From Recipts');

      AddItem(DMf.adcBSell, 'CustID1', 'مشتري', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT DISTINCT Customers.CustID, Customers.CustName ' +
        ' FROM Recipts INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID',
        'SELECT Min(PersonID1),Max(PersonID1) From Recipts', True);

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
  PnlUnderButton.Enabled := True;
end;

procedure TMakeDocumentF.init_Combos;
begin
  cmbGroups.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptType,ReciptCaption FROM ReciptTypes ';
    SQL.Add('WHERE MakeDoc = 1  ORDER BY ReciptType');
    Active := True;
    while not eof do
    begin
      cmbGroups.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
  /// ///////////////////////////////////////////////////////////////
  CmbDocType.Clear;
  cmbCompany.Clear;
  with qryInitcmb do
  begin
    Active := False;
    SQL.Text :=
      'SELECT DocTypeCode,DocTypeName_L1 FROM ACC.DocTypes ORDER BY DocTypeCode';
    if optA.AccOldAvailable then
      SQL.Text := 'SELECT DocType, Desc  FROM DocTypes ';
    Active := True;
    while not eof do
    begin
      CmbDocType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    SQL.Text :=
      'SELECT CompanyCode,CompanyName_l1 FROM  ACC.Companies ORDER BY CompanyCode';
    if optA.AccOldAvailable then
      SQL.Text :=
        'SELECT CompanyCode,CompanyName FROM  Companies ORDER BY CompanyCode';
    Active := True;
    while not eof do
    begin
      cmbCompany.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      if optA.AccDefaultCompany = Fields[0].AsInteger then
        cmbCompany.ItemIndex := cmbCompany.Items.Count - 1;

      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TMakeDocumentF.GetFunName;
begin
  FunName := 'Aid_MakeDocuments_Recipt';
  formName := 'Recipts';
  if FormType = 1 then
  begin
    FunName := 'Aid_MakeDocuments_ReciptReg';
    Caption := Caption + ' (تعديلات انبار) ';
  end;
  if TabControl1.TabIndex = 1 then
  begin
    FunName := 'Aid_MakeDocuments_Recipt_Payments';
    formName := 'ReciptsPayments';
  end;
end;

procedure TMakeDocumentF.FormCreate(Sender: TObject);
begin
  inherited;
  CommentFld := 'Comment';
  DBGrid1.SetFooter4Sum([]);
  chkTajmia.Checked := StrToBool(ReadConfig(APPID, Self.Name + '_Tajmia', '0'));
  rgDocDate.ItemIndex := StrToInt(ReadConfig(APPID, 'rgDocDate', '0'));
  YearID_ := APPBank.Year;
  if not optA.AccOldAvailable then
  begin
    InitComboYearID(cmbYearID);
    if cmbYearID.ItemIndex > -1 then
      YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
    CheckDoc1.YearID := YearID_;
  end;

  Number4Filter := EmptyStr;
  Date4Filter := EmptyStr;
  Store4Filter := EmptyStr;
  frmMakeDocs1.DocKind := 0;
  FormType := var_glb_gParam;
  GetFunName;

  if var_tmp_str <> EmptyStr then
    ActiveControl := nil;
  ReplaceEntityWeightCaption(RdGKindDoc);
  SetLookUpCash(qryItems);
  if not optA.CanRelation then
    DBGrid1.PopupMenu := nil;
  if optA.AccOldAvailable then
  begin
    Caption := Caption + ' (سامان) ';
    PnlSerial.Visible := False;
    qryInitcmb.Connection := DMf.adcOldAccounting;
    qryItems.Fields.Remove(qryItems.FieldByName('_CTopicCode2'));
    DBTxt_CTopicCode2.DataField := '_CTopicCode';
    DBTxt_CTopicCode2.Visible := False;
    Lbl_CTopicCode2.Visible := False;
    qryDocuments.Connection := DMf.adcOldAccounting;
    qryDocGroups.Connection := DMf.adcOldAccounting;
    CheckDoc1.Connection := DMf.adcOldAccounting;
    CheckDoc1.oldAccounting := True;
    qryDocGroups.SQL.Text := 'SELECT * FROM DocGroups where 0=1';
    qryDocuments.SQL.Text := 'SELECT * FROM Documents where 0=1';
  end;
  SqlText := qryItems.SQL.Text;
  init_Combos;
  // cmbCompany.ItemIndex := 0;
  NewDoc := True;
  setColumns2(DBGrid1, optA.ActiveCurrencyInTrialBalance, 'ArzAmount');
  qryReciptsDoc.Active := True;

end;

procedure TMakeDocumentF.actMakeDocExecute(Sender: TObject);
var
  DocID: Integer;
  DocDate: string;
begin
  inherited;

  if CmbDocType.ItemIndex = -1 then
  Begin
    Warn('نوع سند انتخاب نشده است.!‏', mtError);
    Exit;
  end;

  if not optA.AccOldAvailable then
  begin
    if not chkMaliYearStatus(YearID_) then
      Exit;

    DocDate := mskDocDate.Text;
    if not CheckDoc1.ValidDate(DocDate) then
    Begin
      Warn('تاريخ سند صحيح نمي باشد.!‏', mtError);
      Exit;
    end;
    mskDocDate.Text := DocDate;

    if not CheckDoc1.GetUnConstBefore(mskDocDate.Text) then
    Begin
      Warn('اسناد در اين تاريخ دائم شده‏اند.!‏', mtError);
      Exit;
    end;
  end;

  if not checkSecondaryDocNo(StrToInt(trim(MskDocNo.Text)),
    Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]), NewDoc) then
    Exit;

  try
    // if MakeDocumentPostF = nil then
    begin
      DMf.adcBSell.BeginTrans;
      DMf.adcAccounting.BeginTrans;
    end;

    try
      qryItems.DisableControls;
      actMakeDoc.Enabled := False;
      actMakeDocumentPostF.Enabled := actMakeDoc.Enabled;
      if qryItems.RecordCount > 0 then
      begin
        DocID := AddMaster(CmbDocType, cmbCompany, MskSerial, MskDocNo,
          MskDocTopic, mskDocDate, MskSerialExit, qryDocGroups, NewDoc,
          formName, YearID_);
        AddDetail(DocID);
        DocTransationInsert(qryDocGroups);
      end;
      // BigMessage('ثبت شد.‏', 1);
    finally
      qryItems.EnableControls;
    end;

    if UpdateDocNoCount = 0 then
    begin
      DMf.adcBSell.RollbackTrans;
      DMf.adcAccounting.RollbackTrans;
      Warn2('به علت اشکال عدم ثبت شماره سند، ثبت نشد:' + MskDocNo.Text, 0);
    end
    else
    begin
      if DMf.adcBSell.InTransaction then
        DMf.adcBSell.CommitTrans;
      if DMf.adcAccounting.InTransaction then
        DMf.adcAccounting.CommitTrans;
    end;
    if MakeDocumentPostF = nil then
    begin
      FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPRecipt);

      if RdGKindDoc.ItemIndex <> 17 then
        actShowDoc.Execute;

    end;

  except
    on E: Exception do
    begin
      // if MakeDocumentPostF = nil then
      begin
        if DMf.adcBSell.InTransaction then
          DMf.adcBSell.RollbackTrans;
        if DMf.adcAccounting.InTransaction then
          DMf.adcAccounting.RollbackTrans;
      end;
      Warn2(E.Message);
    end;
  end;

end;

procedure TMakeDocumentF.actMakeDocumentPostFExecute(Sender: TObject);
var
  WHERE4SQL, FromSQL, s: string;
begin
  inherited;
  if CmbDocType.ItemIndex = -1 then
  Begin
    Warn('نوع سند انتخاب نشده است.!‏', mtError);
    Exit;
  end;
  WHERE4SQL := ' WHERE (Recipts.ReciptType IN ( ' + mySelected + ' )) ';

  s := QuotedStr(GetcNot(myParams.ParamValues['number']));
  WHERE4SQL := WHERE4SQL +
    'And ((%s =''-1'') or Recipts.ReciptNumber not in (Select part From dbo.SplitString(%s,'','')))';
  WHERE4SQL := format(WHERE4SQL, [s, s]);

  s := QuotedStr(GetcNot(myParams.ParamValues['CustID1']));
  WHERE4SQL := WHERE4SQL +
    'And ((%s =''-1'') or Recipts.PersonID1 not in (Select part From dbo.SplitString(%s,'','')))';
  WHERE4SQL := format(WHERE4SQL, [s, s]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(Recipts.ReciptNumber BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['Number'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['Number'], ftInteger))]);
  WHERE4SQL := WHERE4SQL + format(' AND(Recipts.ReciptDate BETWEEN %s AND %s)',
    [QuotedStr(GetcFrom(myParams.ParamValues['Date'], ftDate)),
    QuotedStr(GetcTo(myParams.ParamValues['Date'], ftDate))]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(((ISNULL(Recipts.AidDate,'''') ='''')OR(Recipts.AidDate =''/  /'')OR (Recipts.AidDate BETWEEN %s AND %s)))',
    [QuotedStr(GetcFrom(myParams.ParamValues['AidDate'], ftDate)),
    QuotedStr(GetcTo(myParams.ParamValues['AidDate'], ftDate))]);

  FromSQL :=
    ' LEFT OUTER JOIN LookUps AS LookUps_2 ON Recipts.SecondType = LookUps_2.LookUpID';
  FromSQL := FromSQL +
    ' RIGHT OUTER JOIN Customers ON Customers.CustID = Recipts.PersonID1 ';

  FromSQL := FromSQL +
    ' LEFT OUTER JOIN	ReciptItemSum As RISUM ON Recipts.ReciptID = RISUM.ReciptID '
    + 'AND Recipts.ServerID = RISUM.ServerID AND Recipts.YearID = RISUM.YearID ';

  FromSQL := FromSQL +
    ' INNER JOIN ReciptTypes ON ReciptTypes.ReciptType = Recipts.ReciptType ';

  WHERE4SQL := WHERE4SQL + format(' AND(Recipts.StoreID BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['StoreID'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['StoreID'], ftInteger))]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(Recipts.ReciptState BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['State'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['State'], ftInteger))]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(Recipts.SellsEmporium BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger))]);

  WHERE4SQL := WHERE4SQL + format(' AND(LookUps_2.Code BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('SecondTpFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('SecondTpTo').Value)]);

  WHERE4SQL := WHERE4SQL + ' AND(Recipts.ReciptType  IN ( ' + mySelected +
    ' ) )AND((RISUM.TotallSellPrice>0) OR(RISUM.price>0) OR (RISUM.UnitCommission>0) ) ';

  WHERE4SQL := WHERE4SQL +
    format(' AND(Customers.CustomerGrpID BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger))]);

  WHERE4SQL := WHERE4SQL + format(' AND(Recipts.PersonID1 BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['CustID1'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['CustID1'], ftInteger))]);

  WHERE4SQL := WHERE4SQL + format(' AND(Recipts.PersonID2 BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['CustID2'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['CustID2'], ftInteger))]);

  WHERE4SQL := WHERE4SQL + format(' AND(Recipts.PersonID3 BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['CustID3'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['CustID3'], ftInteger))]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(ISNULL(Recipts.ReciptsRow, 0) BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['ReciptsRow'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['ReciptsRow'], ftInteger))]);

  WHERE4SQL := WHERE4SQL +
    ' AND((case when ReciptTypes.FormStateDefault4Doc = 0 then Recipts.ReciptState else ReciptTypes.FormStateDefault4Doc end) = Recipts.ReciptState)';

  WHERE4SQL := WHERE4SQL + addIDFilter;

  MakeDocumentPostF.ShowPost(WHERE4SQL, FromSQL, Self.Name)
end;

procedure TMakeDocumentF.AddDetail(DocID: Integer);
var
  qry: TADOQuery;
  s: string;
begin
  inherited;
  if var_tmp_str <> EmptyStr then
  begin
    addIDFilter := ' AND(Recipts.ID IN (' + var_tmp_str + ')) ';
    addIDFilterUp := ' AND(Recipts.ID IN (' + var_tmp_str + ')) ';
  end;

  try
    with qryItems do
      try
        First;
        qryDocuments.Active := True;
        while not eof do
        begin
          qryDocuments.Insert;
          if optA.AccOldAvailable then
          begin
            qryDocuments.FieldByName('SecondaryDocNo').AsInteger := DocID;
            qryDocuments.FieldByName('desc').AsString :=
              FieldByName(CommentFld).AsString;

            qryDocuments.FieldByName('bed').AsCurrency := FieldByName('Debt')
              .AsCurrency;
            qryDocuments.FieldByName('bes').AsCurrency := FieldByName('Credit')
              .AsCurrency;
            qryDocuments.FieldByName('DoPrint').AsBoolean := True;
          end
          else
          begin
            qryDocuments.FieldByName('Serial').AsInteger := DocID;
            qryDocuments.FieldByName('YearID').AsInteger := YearID_;
            // Warn(IntToStr(integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])));
            qryDocuments.FieldByName('CompanyCode').AsInteger :=
              Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);

            qryDocuments.FieldByName('CTopicCode2').AsInteger :=
              FieldByName('CTopicCode2').AsInteger;
            qryDocuments.FieldByName('CTopicCode3').AsInteger :=
              FieldByName('CTopicCode3').AsInteger;

            qryDocuments.FieldByName('Comment_L1').AsString :=
              FieldByName(CommentFld).AsString;

            if qryDocuments.FindField('PO') <> nil then
              qryDocuments.FieldByName('PO').AsString :=
                FieldByName('PO').AsString;

            qryDocuments.FieldByName('CurrencyType').AsInteger :=
              FieldByName('ArzTypeID').AsInteger;

            qryDocuments.FieldByName('Debt').AsCurrency := FieldByName('Debt')
              .AsCurrency;
            qryDocuments.FieldByName('Credit').AsCurrency :=
              FieldByName('Credit').AsCurrency;

            if (opt.MakeDocumentPost and Integer(CHkAidDocNo)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsInteger :=
                FieldByName('ReciptNumber').AsInteger;

            if (opt.MakeDocumentPost and Integer(CHkAidDocDateSt)) <> 0 then
              qryDocuments.FieldByName('AidDocdate').AsString :=
                FieldByName('ReciptDate').AsString;

            if (opt.MakeDocumentPost and Integer(CHkTruckNumberInToReferenceNo)
              ) <> 0 then
            begin
              s := FieldByName('TruckNumber').AsString.Replace('-', '.');
              qryDocuments.FieldByName('ReferenceNo').AsString := s;
            end;

            case RdGKindDoc.ItemIndex of
              17:
                if (opt.MakeDocumentPost and Integer(CHkAidAmountSt)) <> 0 then
                begin
                  s := FieldByName('TruckNumber').AsString.Replace('-', '.');
                  s := RightStr(s, Length(s) - 2);
                  qryDocuments.FieldByName('AidAmount').AsString := s;

                end;
            else
              begin

                if ((opt.MakeDocumentPost and Integer(CHkAidAmountSt)) <> 0)
                then
                begin
                  if optA.ActiveCurrencyInTrialBalance then
                  begin
                    qryDocuments.FieldByName('AidAmount').AsFloat :=
                      RoundTo(FieldByName('ArzAmount').AsFloat, -2);

                    if (FieldByName('Debt').AsInteger > 0) and
                      (FieldByName('CurrencyDiscounts').AsInteger > 0) then
                      qryDocuments.FieldByName('AidAmount').AsFloat :=
                        RoundTo(FieldByName('CurrencyDiscounts').AsFloat, -2);

                    if rgComment.ItemIndex = 0 then
                    begin
                      qryDocuments.FieldByName('AidAmount').AsFloat :=
                        RoundTo(FieldByName('ArzAmountC').AsFloat, -2);

                      if (FieldByName('Debt').AsInteger > 0) and
                        (FieldByName('CurrencyDiscounts').AsInteger > 0) then
                        qryDocuments.FieldByName('AidAmount').AsFloat :=
                          RoundTo(FieldByName('CurrencyDiscounts').AsFloat, -2);

                    end;

                  end
                  else
                    qryDocuments.FieldByName('AidAmount').AsString :=
                      FieldByName('Entity').AsString;
                end;
                if ((opt.MakeDocumentPost and Integer(chkWeightToAidAmount))
                  <> 0) then
                  qryDocuments.FieldByName('AidAmount').AsString :=
                    FieldByName('Weight').AsString;

                // if FieldByName('ArzAmount').AsFloat <> 0 then
                // begin
                if (opt.MakeDocumentPost and Integer(CHkAidDocDateSt)) <> 0 then
                  qryDocuments.FieldByName('AidDocDate').AsString :=
                    FieldByName('ReciptDate').AsString;
                if (opt.MakeDocumentPost and Integer(CHkAidDocNo)) <> 0 then
                  qryDocuments.FieldByName('AidDocNo').AsString :=
                    FieldByName('ReciptNumber').AsString;

                // end;

                if RdGKindDoc.ItemIndex = 14 then
                  if FieldByName('Credit').AsCurrency > 0 then
                    qryDocuments.FieldByName('AidDocNo').AsInteger := 0;

                if (opt.MakeDocumentPost and Integer(CHkAidDocNo2AidDocNo)) <> 0
                then
                  qryDocuments.FieldByName('AidDocNo').AsString :=
                    FieldByName('AidNumber').AsString;

              end

            end;

            if (opt.MakeDocumentPost and Integer(CHkAidDocNoItem)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsString :=
                FieldByName('IAidNumber').AsString;

            if (opt.MakeDocumentPost and Integer(CHkAidDocDateItem)) <> 0 then
              qryDocuments.FieldByName('AidDocDate').AsString :=
                FieldByName('IAidDate').AsString;

          end;
          qryDocuments.FieldByName('TopicCode').AsLargeInt :=
            FieldByName('TopicCode').AsLargeInt;
          qryDocuments.FieldByName('DetailCode').AsInteger :=
            FieldByName('DetailCode').AsInteger;
          qryDocuments.FieldByName('CTopicCode').AsInteger :=
            FieldByName('CTopicCode').AsInteger;
          qryDocuments.FieldByName('Row').AsInteger := RecNo + Rec_No;

          if qryDocuments.FindField('Currencydebit') <> nil then
          begin
            qryDocuments.FieldByName('Currencydebit').AsFloat :=
              FieldByName('Currencydebit').AsFloat;

            qryDocuments.FieldByName('Currencycredit').AsFloat :=
              FieldByName('Currencycredit').AsFloat;

            qryDocuments.FieldByName('CurrencyRate').AsFloat :=
              FieldByName('CurrencyRate').AsFloat;
          end;

          Next;
        end; // while
        if qryDocuments.State in dsEditModes then
          qryDocuments.Post;
        // qryDocuments.Active := False;
      except
        on E: Exception do
        begin
          // if MakeDocumentPostF = nil then
          begin
            if DMf.adcBSell.InTransaction then
              DMf.adcBSell.RollbackTrans;
            if DMf.adcAccounting.InTransaction then
              DMf.adcAccounting.RollbackTrans;
          end;
          Warn2(E.Message);
        end;
      end; // with
    InsertReciptsDoc;
    qry := TADOQuery.Create(Self);
    with qry do
      try
        Connection := DMf.adcBSell;
        if TabControl1.TabIndex = 0 then
        begin
          if FormType = 0 then
          begin
            SQL.Text := 'UPDATE Recipts';
            SQL.Add('SET DocNo = :DocNo , DocDate = :DocDate');
            SQL.Add(',ReciptState=CASE WHEN ReciptState>' +
              IntToStr(opt.DocReciptStateDefault) + ' THEN ReciptState ELSE  ' +
              IntToStr(opt.DocReciptStateDefault) + ' END ');
            SQL.Add(format(', UserRegistrationDoc = %s ',
              [QuotedStr(User.Name)]));

          end
          else
          begin
            // FunName := 'Aid_MakeDocuments_ReciptReg';
            // Caption := Caption + ' (تعديلات انبار) ';
            SQL.Text := 'UPDATE ReciptsRegulates';
            SQL.Add('SET RegDocNo = :DocNo , RegDocDate = :DocDate');

          end;

        end
        else
        begin
          SQL.Text := 'UPDATE ReciptsPayments';
          SQL.Add('SET DocNo = :DocNo , DocDate = :DocDate');
        end;

        SQL.Add('FROM Customers RIGHT OUTER JOIN');
        SQL.Add('Recipts ON Customers.CustID = Recipts.PersonID1 LEFT OUTER JOIN');
        SQL.Add('LookUps AS LookUps_2 ON Recipts.SecondType = LookUps_2.LookUpID');

        SQL.Add('LEFT OUTER JOIN ReciptItemSum As RISUM ON Recipts.ReciptID = RISUM.ReciptID ');
        SQL.Add('AND Recipts.ServerID = RISUM.ServerID AND Recipts.YearID = RISUM.YearID');

        SQL.Add('INNER JOIN ReciptTypes ON ReciptTypes.ReciptType = Recipts.ReciptType');

        if TabControl1.TabIndex = 1 then
        begin
          SQL.Add('INNER JOIN ReciptsPayments AS RP ON RP.ReciptID = Recipts.ReciptID ');
          SQL.Add('AND RP.ServerID = Recipts.ServerID AND RP.YearID = Recipts.YearID');
          SQL.Add('WHERE (RP.DocNo =0) ');
        end
        else
        begin
          if FormType = 1 then
          begin
            SQL.Add('INNER JOIN ReciptsRegulates ON ReciptsRegulates.ReciptID = Recipts.ReciptID');
            SQL.Add('AND ReciptsRegulates.ServerID = Recipts.ServerID AND ReciptsRegulates.YearID = Recipts.YearID');
            SQL.Add('WHERE (ReciptsRegulates.RegDocNo = 0)');
          end
          else
          begin
            SQL.Add('WHERE (Recipts.DocNo =0)');
          end;

        end;

        SQL.Add('AND(Recipts.ReciptNumber BETWEEN :NumberFrom AND :NumberTo)');

        if GetcNot(myParams.ParamValues['number']) <> '' then
        BEGIN
          SQL.Add('AND(Recipts.ReciptNumber not in (Select part From dbo.SplitString(:NotReciptNumber,'','')))');
          Parameters.ParamByName('NotReciptNumber').Value :=
            GetcNot(myParams.ParamValues['number']);
        END;

        SQL.Add('AND(Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)');
        SQL.Add('AND(Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
        SQL.Add('AND(Recipts.ReciptType  IN ( ' + mySelected + ' ) )');
        SQL.Add('AND((RISUM.TotallSellPrice>0) OR(RISUM.price>0) OR (RISUM.UnitCommission>0) )');
        // AND(dbo.GetReciptValue(Recipts.ReciptID, Recipts.ServerID, Recipts.YearID ) > 0)

        if (MakeDocumentPostF <> nil) AND (qryItems.Filter <> EmptyStr) then
          SQL.Add('AND(' + qryItems.Filter + ' )');

        SQL.Add('AND(Recipts.ReciptState BETWEEN :ReciptStateFrom AND :ReciptStateTo )');
        SQL.Add('AND(Customers.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo )');
        SQL.Add('AND(LookUps_2.Code BETWEEN :SecondTpFrom AND :SecondTpTo )');
        SQL.Add('AND(Recipts.PersonID1 BETWEEN :CustID1Form AND :CustID1To )');

        if GetcNot(myParams.ParamValues['CustID1']) <> '' then
        BEGIN
          SQL.Add('AND(Recipts.PersonID1 not in (Select part From dbo.SplitString(:NotCustID1,'','')))');
          Parameters.ParamByName('NotCustID1').Value :=
            GetcNot(myParams.ParamValues['CustID1']);
        END;

        SQL.Add('AND(Recipts.PersonID2 BETWEEN :CustID2Form AND :CustID2To )');
        SQL.Add('AND(Recipts.PersonID3 BETWEEN :CustID3Form AND :CustID3To )');
        SQL.Add('AND(Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
        SQL.Add('AND(ISNULL(Recipts.ReciptsRow, 0) BETWEEN :ReciptsRowFrom AND :ReciptsRowTo)');
        SQL.Add('AND(Recipts.ReciptType BETWEEN :ReciptTypeFrom AND :ReciptTypeTo)');

        SQL.Add('AND((case when ReciptTypes.FormStateDefault4Doc = 0 then Recipts.ReciptState else ReciptTypes.FormStateDefault4Doc end) = Recipts.ReciptState)');

        if (addIDFilterUp <> EmptyStr) then
          SQL.Add(addIDFilterUp);

        Parameters.ParamByName('StoreIDFrom').Value :=
          qryItems.Parameters.ParamByName('StoreIDFrom').Value;
        Parameters.ParamByName('StoreIDTo').Value :=
          qryItems.Parameters.ParamByName('StoreIDTo').Value;
        Parameters.ParamByName('NumberFrom').Value :=
          qryItems.Parameters.ParamByName('NumberFrom').Value;
        Parameters.ParamByName('NumberTo').Value :=
          qryItems.Parameters.ParamByName('NumberTo').Value;

        Parameters.ParamByName('DateFrom').Value :=
          qryItems.Parameters.ParamByName('DateFrom').Value;
        Parameters.ParamByName('DateTo').Value :=
          qryItems.Parameters.ParamByName('DateTo').Value;
        Parameters.ParamByName('DocDate').Value := mskDocDate.Text;
        Parameters.ParamByName('DocNo').Value := MskDocNo.Text;
        // qryDocGroups.FieldByName('SecondaryDocNo').AsInteger;

        Parameters.ParamByName('ReciptStateFrom').Value :=
          qryItems.Parameters.ParamByName('ReciptStateFrom').Value;
        Parameters.ParamByName('ReciptStateTo').Value :=
          qryItems.Parameters.ParamByName('ReciptStateTo').Value;

        if SecondTypeActive then
        begin
          Parameters.ParamByName('SecondTpFrom').Value :=
            qryItems.Parameters.ParamByName('SecondTpFrom').Value;
          Parameters.ParamByName('SecondTpTo').Value :=
            qryItems.Parameters.ParamByName('SecondTpTo').Value;
        end
        else
        begin
          Parameters.ParamByName('SecondTpFrom').Value := 0;
          Parameters.ParamByName('SecondTpTo').Value := 100;
        end;

        Parameters.ParamByName('CustomerGrpIDFrom').Value :=
          qryItems.Parameters.ParamByName('CustomerGrpIDFrom').Value;
        Parameters.ParamByName('CustomerGrpIDTo').Value :=
          qryItems.Parameters.ParamByName('CustomerGrpIDTo').Value;

        Parameters.ParamByName('CustID1Form').Value :=
          qryItems.Parameters.ParamByName('CustID1Form').Value;
        Parameters.ParamByName('CustID1To').Value :=
          qryItems.Parameters.ParamByName('CustID1To').Value;

        Parameters.ParamByName('CustID2Form').Value :=
          qryItems.Parameters.ParamByName('CustID2Form').Value;
        Parameters.ParamByName('CustID2To').Value :=
          qryItems.Parameters.ParamByName('CustID2To').Value;

        Parameters.ParamByName('CustID3Form').Value :=
          qryItems.Parameters.ParamByName('CustID3Form').Value;
        Parameters.ParamByName('CustID3To').Value :=
          qryItems.Parameters.ParamByName('CustID3To').Value;

        Parameters.ParamByName('SellsEmporiumFrom').Value :=
          GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
        Parameters.ParamByName('SellsEmporiumTo').Value :=
          GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

        /// /
        Parameters.ParamByName('ReciptsRowFrom').Value :=
          GetcFrom(myParams.ParamValues['ReciptsRow'], ftInteger);
        Parameters.ParamByName('ReciptsRowTo').Value :=
          GetcTo(myParams.ParamValues['ReciptsRow'], ftInteger);

        Parameters.ParamByName('ReciptTypeFrom').Value := ReciptTypeFrom;
        Parameters.ParamByName('ReciptTypeTo').Value := ReciptTypeTo;

        /// ///////////////////////////////////////////////////////////////////
        // Warn('ExecSQL');
        UpdateDocNoCount := ExecSQL;
        Free;
      except
        on E: Exception do
        begin
          // if MakeDocumentPostF = nil then
          begin
            if DMf.adcBSell.InTransaction then
              DMf.adcBSell.RollbackTrans;
            if DMf.adcAccounting.InTransaction then
              DMf.adcAccounting.RollbackTrans;
          end;
          Warn2(E.Message);
        end;
      end; // with
    Warn2('سند با شماره ' + MskDocNo.Text + ' ثبت شد.‏' + #13#10 +
      UpdateDocNoCount.ToString + 'فرم ثبت شماره سند شد',
      IfThen(UpdateDocNoCount = 0, 0, 500));
  except
    on E: Exception do
    begin
      // if MakeDocumentPostF = nil then
      begin
        if DMf.adcBSell.InTransaction then
          DMf.adcBSell.RollbackTrans;
        if DMf.adcAccounting.InTransaction then
          DMf.adcAccounting.RollbackTrans;
      end;
      Warn2(E.Message);
    end;
  end;

end;

procedure TMakeDocumentF.InsertReciptsDoc;
var
  ItmString: TStringList;
  i: Integer;
begin
  try
    ItmString := TStringList.Create;
    ItmString.Delimiter := ',';
    ItmString.StrictDelimiter := True;
    ItmString.DelimitedText := qryItemsIDs.AsString;

    for i := 0 to ItmString.Count - 1 do
    begin
      if ItmString[i] <> EmptyStr then
        if not qryReciptsDoc.Locate('Recipt_ID', ItmString[i], []) then
          With qryReciptsDoc do
          begin
            Insert;
            qryReciptsDocRecipt_ID.AsString := ItmString[i];
            qryReciptsDocSerial.AsString :=
              qryDocGroups.FieldByName('Serial').AsString;
            qryReciptsDocCompanyCode.AsString :=
              qryDocGroups.FieldByName('CompanyCode').AsString;
            qryReciptsDocSecondaryDocNo.AsString :=
              qryDocGroups.FieldByName('SecondaryDocNo').AsString;
            qryReciptsDocPrimaryDocNo.AsString :=
              qryDocGroups.FieldByName('PrimaryDocNo').AsString;
            qryReciptsDocDocDate.AsString :=
              qryDocGroups.FieldByName('DocDate').AsString;
            Post;
          end;
    end;
  finally
    ItmString.Free;
  end;

end;

procedure TMakeDocumentF.FormShow(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height :=
    StrToInt(ReadConfig(APPID, frmMakeDocs1.Name +
    IntToStr(frmMakeDocs1.DocKind) + 'DBGrid1Height', '0'));
  if frmMakeDocs1.Height < frmMakeDocs1.myHeight then
    frmMakeDocs1.Height := frmMakeDocs1.myHeight;
  myParams.Clear;
end;

procedure TMakeDocumentF.frmMakeDocs1srcMakeDocsStateChange(Sender: TObject);
begin
  inherited;
  BtnReject.Cancel := not(frmMakeDocs1.qryMakeDocs.State in dsEditModes);
end;

function TMakeDocumentF.GetComment: String;
begin
  With frmMakeDocs1 do
  begin
    DocKind := 0;
    DocTypeIndex := RdGKindDoc.ItemIndex;
    DocType := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    if IsFirstTime then
      case DocTypeIndex of
        0:
          begin
            // Result := ''' بابت ''+ ReciptCaption +'' بتاريخ ''+ ReciptDate  as Comment';
            InsertDocCaption('بابت', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
          end;

        1:
          begin
            // Result := ''' بابت '' + ReciptCaption + '' بتاريخ  '' + ' +
            // 'ReciptDate +'' طي فرم شماره ''+ ltrim(str(ReciptNumber)) as Comment';
            InsertDocCaption('بابت', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('طي فرم شماره', 'ltrim(str(ReciptNumber))');
          end;
        2:
          begin
            // Result := ''' بابت '' + ReciptCaption + '' از تاريخ   '' + Min(ReciptDate) '
            // + '+'' تا '' + max(ReciptDate)  + ''  طي فرمهاي  '' + ' +
            // 'ltrim(rtrim(str(min(ReciptNumber))))+ ''  تا  '' +' +
            // ' ltrim(rtrim(str(max(ReciptNumber)))) as Comment';
            InsertDocCaption('بابت', 'ReciptCaption');
            InsertDocCaption('از تاريخ', 'Min(ReciptDate)');
            InsertDocCaption('تا', 'max(ReciptDate)');
            InsertDocCaption('طي فرمهاي',
              'ltrim(rtrim(str(min(ReciptNumber))))');
            InsertDocCaption('تا', 'ltrim(rtrim(str(max(ReciptNumber))))');
          end;
        3, 17:
          begin
            // Result := 'ReciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' +' +
            // ' LTRIM(STR(ReciptNumber))' +
            // ' + '' به مقدار '' + LTRIM(STR(sum(Entity), LEN(sum(Entity)), 3)) ' +
            // ' AS Comment';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'LTRIM(STR(ReciptNumber))');
            InsertDocCaption('به مقدار',
              'LTRIM(STR(sum(Entity), LEN(sum(Entity)), 3))');
          end;

        4, 16:
          begin
            // Result := 'ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
            // 'ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), ' +
            // 'len(max(entity)), 3)) +'' ''+ c_StuffName AS Comment';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('به مقدار',
              'ltrim(STR(max(entity),len(max(entity)), 3))');
            InsertDocCaption('', 'c_StuffName');
            InsertDocCaption(' ', 'CustName2');
            InsertDocCaption(' ت: ', 'ISNULL(ItemNote,'''')');
            if DocTypeIndex = 16 then
            begin
              InsertDocCaption(' ', 'CustName');
              InsertDocCaption(' ', 'StoreName');
              InsertDocCaption(' ',
                'ltrim(STR(max(Weight),len(max(Weight)), 3))');
            end;
          end;
        5:
          begin
            // Result := 'ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
            // 'ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), ' +
            // 'len(max(entity)), 3)) +'' ''+ c_StuffName ' +
            // ' +'' ش كمكي: ''+ltrim(str(isnull(IAidNumber,0)))+'' تاريخ كمكي: ''+isnull(IAidDate,'''') AS Comment';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('به مقدار',
              'ltrim(STR(max(entity),len(max(entity)), 3))');
            InsertDocCaption('', 'c_StuffName');
            InsertDocCaption('ش كمكي:', 'ltrim(str(isnull(IAidNumber,''0'')))');
            InsertDocCaption('تاريخ كمكي:', 'isnull(IAidDate,'''')');
          end;
        6:
          begin
            // Result := 'ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
            // 'ltrim(str(ReciptNumber)) +'' ش كمكي: ''+' +
            // 'ltrim(str(isnull((IAidNumber),0)))+'' تاريخ كمكي: ''+' +
            // 'isnull((IAidDate),'''') AS Comment';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('ش كمكي:', 'ltrim(str(isnull(IAidNumber,''0'')))');
            InsertDocCaption('تاريخ كمكي:', 'isnull(IAidDate,'''')');
          end;
        7:
          begin
            // Result := ''' بابت ''+ ReciptCaption +'' بتاريخ ''+ ReciptDate+'' طي فرم شماره ''+ '
            // + ' ltrim(str(min(ReciptNumber)))+'' و ''+ ltrim(str(max(ReciptNumber)))  as Comment';
            InsertDocCaption('بابت', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('طي فرم شماره', 'ltrim(str(min(ReciptNumber)))');
            InsertDocCaption('و', 'ltrim(str(max(ReciptNumber)))');
          end;
        8:
          begin
            // Result := 'ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
            // 'ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), ' +
            // 'len(max(entity)), 3)) +'' ''+ c_StuffName + ' +
            // 'STR(ControlCode) AS Comment ';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('به مقدار',
              'ltrim(STR(max(entity),len(max(entity)), 3))');
            InsertDocCaption('', 'c_StuffName');
            InsertDocCaption('', 'STR(ControlCode)');
          end;
        9:
          begin
            // Result := '  ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ltrim(str(ReciptNumber)) '
            // + ' +'' ش كمكي: ''+ltrim(str(isnull((AidNumber),0)))+'' تاريخ كمكي: ''+isnull((AidDate),'''') AS Comment ';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('ش كمكي:', 'ltrim(str(isnull(AidNumber,''0'')))');
            InsertDocCaption('تاريخ كمكي:', 'isnull(AidDate,'''')');
          end;
        10:
          begin
            // Result := ' ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
            // 'ltrim(str(ReciptNumber))+'' به مقدار ''+ ' +
            // 'ltrim(STR(max(entity), len(max(entity)), 3)) ' +
            // ' +case when max(Weight)<>0 then  '' و وزن ''+ ' +
            // 'ltrim(STR(max(Weight), len(max(Weight)), 3)) else '''' end ' +
            // '+'' ''+ c_StuffName ' +
            // ' + ISNULL(ItemNote,'''') + '' في''+STR(UnitSellPrice) AS Comment';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('به مقدار',
              'ltrim(STR(max(entity),len(max(entity)), 3))' +
              ' +case when max(Weight)<>0 then');
            InsertDocCaption('و وزن',
              'ltrim(STR(max(Weight), len(max(Weight)), 3)) else '''' end');
            InsertDocCaption('', 'c_StuffName+ ISNULL(ItemNote,'''') ');
            InsertDocCaption('في', 'STR(UnitSellPrice) ');
          end;
        11, 14:
          begin
            // Result := ' case when Debt<>0 then  Comment else '' بابت ثبت '' +''' +
            // cmbGroups.Text + ''' end as Comment';
            InsertDocCaption('',
              'case when Debt<>0 then  Comment else '' بابت ثبت '' +''' +
              cmbGroups.Text + '''' + IfThen(chkTajmia.Checked, '',
              ' +'' ش '' +ltrim((ReciptNumber))') + '  end');
            InsertDocCaption('', 'Comment');
            InsertDocCaption('', 'STR(Debt)');

          end;
        12:
          begin
            // Result := 'ReciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' +' +
            // ' LTRIM(STR(ReciptNumber))' +
            // ' + '' به مقدار '' + LTRIM(STR(sum(Entity), LEN(sum(Entity)), 3)) ' +
            // ' +'' مشخصات راننده:''+ISNULL(MachineName, '''') +'' _ ''+ ' +
            // 'ISNULL(MachineNo, '''') +'' _ ''+ ISNULL(MachineInfo, '''') +'' _ ''+'
            // + ' ISNULL(TruckNumber, '''') as Comment';
            InsertDocCaption('', 'ReciptCaption');
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('به مقدار',
              'ltrim(STR(sum(entity),len(sum(entity)), 3))');
            InsertDocCaption('مشخصات راننده:', 'ISNULL(MachineName, '''')');
            InsertDocCaption('_', 'ISNULL(MachineNo, '''')');
            InsertDocCaption('_', 'ISNULL(MachineInfo, '''')');
            InsertDocCaption('_', 'ISNULL(TruckNumber, '''')');
          end;
        18:
          begin
            InsertDocCaption('بتاريخ', 'ReciptDate');
            InsertDocCaption('ش', 'ltrim(str(ReciptNumber))');
            InsertDocCaption('ش كمكي:', 'ltrim(str(isnull(AidNumber,''0'')))');
            InsertDocCaption('تاريخ كمكي:', 'isnull(AidDate,'''')');

          end;

      end;
    // case
    Result := GetMakeDocs;
  end;
end;

procedure TMakeDocumentF.actShowDocExecute(Sender: TObject);
var
  ErrorCount: Integer;
  ParamList: String;
begin
  inherited;
  ParamList :=
    ' 0, :NumberFrom, :NumberTo, :DateFrom, :DateTo, :AidDateFrom , :AidDateTo, :StoreIDFrom, :StoreIDTo  , 0 , :SecondTpFrom, :SecondTpTo , :CustomerGrpIDFrom  , :CustomerGrpIDTo , :ReciptStateFrom, :ReciptStateTo '
    + ', :CustID1Form  ,  :CustID1To, :CustID2Form  ,  :CustID2To, :CustID3Form  ,  :CustID3To , :SellsEmporiumFrom , :SellsEmporiumTo ,'
    + IfThen(chkTajmia.Checked, '2', '1') +
    ',:ReciptsRowFrom ,:ReciptsRowTo ,:ReciptTypeFrom , :ReciptTypeTo ,:NotReciptNumber ,:NotCustID1 ,:addIDFilter  ';

  if var_tmp_str <> EmptyStr then
  begin
    addIDFilter := ' AND(' + FunName + '.ID IN (' + var_tmp_str + ')) ';
    addIDFilterUp := ' AND(Recipts.ID IN (' + var_tmp_str + ')) ';
  end;

  lslWarnings.Visible := False;
  with qryItems do
  begin
    Active := False;
    case RdGKindDoc.ItemIndex of
      0:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,MAX(ArzTypeID) AS ArzTypeID, 0 as reciptID,0 AS ServerID,0 AS YearID,'
          + FunName + '.TopiCcode ,' + FunName + '.DetailCode ' + #13#10 +
          ',CTopicCode,CTopicCode2,CTopicCode3,' + GetComment +
        // ''' بابت ''+ reciptCaption +'' بتاريخ ''+ ReciptDate  as Comment' +
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          #13#10 + ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + #13#10 +
          ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit,'
          + #13#10 +
          ' ''0.0'' AS AidNumber , 0 as ReciptNumber, ReciptDate,'''' as CustName,'''' as CustName2,'''' as CustName3 ,'
          + 'sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts ,max(MachineInfo) as MachineInfo,max(ArzName) as ArzName,'
          + 'max(SellsEmporiumName) as SellsEmporiumName,sum(RialsEqual) AS RialsEqual,Fitful.FitfulID AS ArzAmount , '
          + #13#10 +
          'Fitful.Comment2, Fitful.FitfulNote AS _Dec,'''' as TruckNumber,''0.0'' AS IAidNumber,'''' IAidDate '
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + #13#10 + FunName + ' ( ' + ParamList + '  )  '
          + FunName +
          ' CROSS JOIN Fitful WHERE (bed+bes)<>0 AND(ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' Group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,ReciptDate,reciptCaption ,'
          + #13#10 + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3' + #13#10 +
        // ',case when bed > 0 then 1 else 2 end' +
          ',  bedbes , kind' + frmMakeDocs1.GetGROUPBY + #13#10 +
          ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' Order By  ReciptDate,reciptCaption ,bedbes , kind , ' + FunName +
          '.TopiCcode ,' + FunName +
          '.DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3';

      1:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
          #13#10 + FunName + '.TopiCcode ,' + FunName + '.DetailCode ' +
          ',CTopicCode,' + 'CTopicCode2,CTopicCode3,' + #13#10 + GetComment
          + #13#10 +
        // ''' بابت '' + reciptCaption + '' بتاريخ  '' + ' +
        // 'ReciptDate +'' طي فرم شماره ''+ ltrim(str(ReciptNumber)) as Comment'
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO ,' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit,'
          + '  AidNumber , ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount ,'
          + ' Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + ' (' + ParamList + ' ) ' + FunName +
          #13#10 + ' CROSS JOIN Fitful  WHERE  (bed+bes)<>0 and     (ReciptType IN ( '
          + mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By  bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,ArzTypeID,ReciptID, ServerID, YearID,reciptCaption , AidNumber , reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual'
          +
        // ',case when sum(bed - bes ) > 0 then 1 else 2 end' +
          '  , Kind ' + frmMakeDocs1.GetGROUPBY + #13#10 +
          ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' Order By  ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate, case when sum(bed - bes ) > 0 then 1 else 2 end , kind ,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3 ';

      2:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,MAX(ArzTypeID) AS ArzTypeID, 0 as reciptID,0 AS ServerID,0 AS YearID,'
          + FunName + '.TopiCcode ,' + FunName + '.DetailCode ' +
          ' ,CTopicCode,CTopicCode2,CTopicCode3,' + GetComment +
        // ''' بابت '' + reciptCaption + '' از تاريخ   '' + Min(ReciptDate) +'' تا '' + max(ReciptDate)  + ''  طي فرمهاي  '' + ltrim(rtrim(str(min(ReciptNumber))))+ ''  تا  '' +'
        // + ' ltrim(rtrim(str(max(ReciptNumber)))) as Comment' +
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit,'
          + ' ''0.0'' AS AidNumber , 0 as ReciptNumber,'''' ReciptDate ,'''' as CustName,'''' as CustName2,'''' as CustName3'
          + ',sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts ,max(MachineInfo) as MachineInfo,max(ArzName) as ArzName,max(SellsEmporiumName) as SellsEmporiumName,sum(RialsEqual) AS RialsEqual,Fitful.FitfulID AS ArzAmount ,'
          + ' Fitful.Comment2, Fitful.FitfulNote AS _Dec,'''' as TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM ' + FunName + ' (' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE  (bed+bes)<>0 AND(ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By  bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,reciptCaption ,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3' +
        // ',case when sum(bed) > 0 then 1 else 2 end' +
          ' , Kind ' + frmMakeDocs1.GetGROUPBY + #13#10 +
          ' HAVING SUM(bed)+ SUM(bes)<>0' +
          ' Order By reciptCaption, case when sum(bed - bes ) > 0 then 1 else 2 end , Kind,'
          + FunName + '.TopiCcode,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3 ';

      3, 17:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID, ' +
          #13#10 + FunName + '.TopiCcode ,' + FunName + '.DetailCode ' +
          ', CTopicCode, CTopicCode2,CTopicCode3,' + GetComment +
          ', max(Entity) AS Entity, max(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed -bes )>0 then 0 else 1 end AS BedBes ,  ' +
          ' case when SUM(bed -bes )>0 then SUM(bed-bes ) else 0 end AS Debt,    '
          + ' case when SUM(bes -bed )>0 then SUM(bes -bed ) else 0 end AS Credit,  '
          + #13#10

          + ' AidNumber , ReciptNumber, ReciptDate,CustName,CustName2,CustName3,'
          + 'sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount , Fitful.Comment2, Fitful.FitfulNote AS _Dec'
          + #13#10 + IfThen(RdGKindDoc.ItemIndex = 17, ',TruckNumber,AidDate',
          ',TruckNumber ') +
          ',Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate' + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful ' + #13#10 +
          ' WHERE  (bed+bes)<>0 AND(ReciptType IN ( ' + mySelected + ' )) ' +
        // addIDFilter +
          #13#10 + ' GROUP BY bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID ,ArzTypeID,ReciptID, MachineInfo ,ArzName'
          + ',SellsEmporiumName, RialsEqual, ServerID, YearID, ReciptCaption,AidNumber , ReciptNumber, ReciptDate,CustName,CustName2,CustName3, '
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode, CTopicCode, CTopicCode2,CTopicCode3, ' + #13#10
        // case when bed>0 then 1 else 2 end  , BedBes,
          + ' kind ' + IfThen(RdGKindDoc.ItemIndex = 17, ',TruckNumber,AidDate',
          ',TruckNumber') + #13#10 + frmMakeDocs1.GetGROUPBY + #13#10 +
          ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' ORDER BY ReciptID, ServerID, YearID, ReciptCaption, ReciptNumber, ReciptDate, BedBes, kind, '
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2 ';

      4, 16:
        begin
          SQL.Text :=
            ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
            #13#10 + FunName + '.TopiCcode ,' + FunName + '.DetailCode ' +
            ' ,CTopicCode,' + 'CtopicCode2,CTopicCode3,' + GetComment +
          // ' ReciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
          // 'ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), ' +
          // 'len(max(entity)), 3)) +'' ''+ c_StuffName AS Comment' +
            ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO ,' +
            ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
            + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
            + ' ,AidNumber ,ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount '
            + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
            + #13#10 +
            ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
            + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName
            + ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( '
            + mySelected + ' )) ' + #13#10 + // addIDFilter +
            ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID '
            + ', TruckNumber,ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName,'
            + ' RialsEqual, ServerID, YearID,reciptCaption ,AidNumber ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
            + FunName + '.TopiCcode ,' + FunName +
            '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3' +
          // ',case when bed > 0 then 1 else 2 end' +
            ', bedbes, Kind, c_StuffName, entity, Weight ' + // ,ItemNote
            frmMakeDocs1.GetGROUPBY;

          if RdGKindDoc.ItemIndex = 4 then
            SQL.Text := SQL.Text + #13#10 + ' HAVING SUM(bed)+ SUM(bes)<>0 ' +
              ' order By ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate,bedbes , kind ,'
              + FunName + '.TopiCcode ,' + FunName +
              '.DetailCode , CtopicCode,CTopicCode2, CTopicCode3 '
          else
            SQL.Text := SQL.Text + #13#10 +
              ',ReciptItemID HAVING SUM(bed)+ SUM(bes)<>0 ' +
              '  order By ReciptItemID ,Credit ,Debt Desc ';

        end;
      5:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
          FunName + '.TopiCcode ,' + FunName + '.DetailCode ' + ' ,CTopicCode,'
          + 'CtopicCode2,CTopicCode3, ' + GetComment +
        // 'reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
        // 'ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), ' +
        // 'len(max(entity)), 3)) +'' ''+ c_StuffName ' +
        // ' +'' ش كمكي: ''+ltrim(str(isnull(IAidNumber,0)))+'' تاريخ كمكي: ''+isnull(IAidDate,'''') AS Comment'
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          +

          ' ,AidNumber ,ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName,RialsEqual,Fitful.FitfulID AS ArzAmount '
          + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote ,Fitful.FitfulID '
          + ',ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,reciptCaption ,AidNumber '
          + ',reciptNumber,ReciptDate,CustName,CustName2,CustName3,' + FunName +
          '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind, c_StuffName, entity, Weight, IAidNumber, IAidDate ' +
          frmMakeDocs1.GetGROUPBY + ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' order By ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate,bedbes , kind ,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3 ';
      6:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
          #13#10 + FunName + '.TopiCcode ,' + FunName + '.DetailCode ' +
          ' ,CTopicCode,' + 'CtopicCode2,CTopicCode3,CTopicCode3,  ' +
          GetComment +
        // 'reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
        // 'ltrim(str(ReciptNumber)) +'' ش كمكي: ''+' +
        // 'ltrim(str(isnull((IAidNumber),0)))+'' تاريخ كمكي: ''+' +
        // 'isnull((IAidDate),'''') AS Comment' +
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          #13#10 + ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          +

          ' ,AidNumber ,ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount ,'
          + ' Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate '
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID ,ArzTypeID,ReciptID, MachineInfo ,ArzName,'
          + 'SellsEmporiumName, RialsEqual, ServerID, YearID,reciptCaption ,AidNumber ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode,CTopicCode2, CTopicCode3, TruckNumber' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind, IAidNumber, IAidDate ' + frmMakeDocs1.GetGROUPBY +
          #13#10 + ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' order By ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate , min(ReciptitemID),bedbes ';
      7:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,MAX(ArzTypeID) AS ArzTypeID, 0 as reciptID,0 AS ServerID,0 AS YearID,'
          + #13#10 + FunName + '.TopiCcode ,' + FunName + '.DetailCode '

          + ' ,CTopicCode,CTopicCode2,CTopicCode3,CTopicCode3,' + GetComment +
        // ''' بابت ''+ reciptCaption +'' بتاريخ ''+ ReciptDate+'' طي فرم شماره ''+ '
        // + ' ltrim(str(min(ReciptNumber)))+'' و ''+ ltrim(str(max(ReciptNumber)))  as Comment'
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          + ' ,''0.0'' AS AidNumber , 0 as ReciptNumber,'''' ReciptDate ,'''' as CustName,'''' as CustName2,'''' as CustName3'
          + ',sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts,max(MachineInfo) as MachineInfo,max(ArzName) as ArzName,max(SellsEmporiumName) as SellsEmporiumName,sum(RialsEqual) AS RialsEqual '
          + ',Fitful.FitfulID AS ArzAmount , Fitful.Comment2, Fitful.FitfulNote AS _Dec,'''' as TruckNumber,''0.0'' AS IAidNumber,'''' IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + ' (' + ParamList + ' )  ' + FunName
          + #13#10 +
          ' CROSS JOIN Fitful  WHERE    (bed+bes)<>0 and   (ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,ReciptDate,reciptCaption  ,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, Kind ' + #13#10 +
          frmMakeDocs1.GetGROUPBY + ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' Order By ReciptDate, reciptCaption, Kind,' + FunName +
          '.TopiCcode, ' + FunName + '.DetailCode, CtopicCode,CTopicCode2, ' +
          FunName + '.CTopicCode3 ';
      8:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID, ServerID, YearId,' +
          #13#10 + FunName + '.TopiCcode, ' + FunName + '.DetailCode ' +
          ', CtopicCode,' + ' CTopicCode2, CTopicCode3, ' + GetComment +
        // 'reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), len(max(entity)), 3)) +'' ''+ c_StuffName + '
        // + 'STR(ControlCode) AS Comment ' +
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          +

          ' ,AidNumber ,ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName,RialsEqual,Fitful.FitfulID AS ArzAmount '
          + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE (bed+bes)<>0 AND(ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID '
          + ',ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,reciptCaption ,AidNumber '
          + ',reciptNumber,ReciptDate,CustName,CustName2,CustName3,' + FunName +
          '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind, c_StuffName, entity, Weight,ControlCode ' +
          frmMakeDocs1.GetGROUPBY + ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' order By ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate,bedbes , kind ,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode,CTopicCode2,CTopicCode3 ';
      9:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
          #13#10 + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, ' + GetComment +
        // + '  reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ltrim(str(ReciptNumber)) '
        // + ' +'' ش كمكي: ''+ltrim(str(isnull((AidNumber),0)))+'' تاريخ كمكي: ''+isnull((AidDate),'''') AS Comment '
          ' ,SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          + ' ,AidNumber ,ReciptNumber,ReciptDate,CustName,CustName2,CustName3 ,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount '
          + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec,TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID '
          + ',ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,reciptCaption '
          + ',AidNumber ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind, AidNumber, AidDate ' + frmMakeDocs1.GetGROUPBY +
          #13#10 + ' HAVING SUM(bed)+ SUM(bes)<>0' +
          ' order By ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate , min(ReciptitemID),bedbes ';
      10:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
          #13#10 + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, ' + GetComment +
        // + ' reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), len(max(entity)), 3)) '
        // +' +case when max(Weight)<>0 then  '' و وزن ''+ ltrim(STR(max(Weight), len(max(Weight)), 3)) else '''' end +'' ''+ c_StuffName '
        // + ' + ISNULL(ItemNote,'''') + '' في''+STR(UnitSellPrice) AS Comment' +
          #10#13 + ' ,SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO ,sum(Weight) as Weight,  '
          + ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          + ' ,AidNumber ,ReciptNumber,ReciptDate,CustName,CustName2,CustName3 ,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount '
          + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( ' +
          mySelected + ' )) ' + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID '
          + #13#10 +
          ',ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,'
          + ' ServerID, YearID,reciptCaption ,AidNumber ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind, c_StuffName, entity, Weight ' +
          ', ItemNote, UnitSellPrice ' + frmMakeDocs1.GetGROUPBY +
          ' HAVING SUM(bed)+ SUM(bes)<>0' + #13#10 +
          ' order By ReciptID, ServerID, YearID,reciptCaption ,reciptNumber,ReciptDate,bedbes , kind ,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3 ';
      // ,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate
      11, 14:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs , min(TruckNumber) as TruckNumber,min(ArzTypeID) as ArzTypeID,min(ReciptID) as ReciptID,min(ServerID) as ServerID,min(YearID) as YearID,'
          + ' TopicCode, DetailCode, CTopicCode, CTopicCode2,CTopicCode3,' +
          #13#10 + GetComment

        // ' case when Debt<>0 then  Comment else '' بابت ثبت '' +''' +
        // cmbGroups.Text + '''' + IfThen(chkTajmia.Checked, '',
        // ' +'' ش '' +ltrim((ReciptNumber))') + '  end as Comment'
          + #13#10 +
          ', min(Entity) as Entity, min(Weight) AS Weight,Max(PO) as PO , ' +
          ' SUM(Debt) AS Debt,SUM( Credit) as Credit,''0.0'' AS AidNumber ,  min(ReciptNumber) as ReciptNumber'
          + ',min( ReciptDate) as ReciptDate,'''' as CustName,'''' as CustName2,'''' as CustName3'
          + ',sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts ,max(MachineInfo) as MachineInfo,max(ArzName) as ArzName,max(SellsEmporiumName) AS SellsEmporiumName,sum(RialsEqual) AS RialsEqual, ArzAmount , Comment2, FitfulNote AS _Dec '
          + ',Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate ' + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + 'FROM ( ' +
          ' SELECT MAX(IDs) as IDs ,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate,  Fitful.Comment2, Fitful.FitfulNote ,ArzTypeID,ReciptNote,ReciptID, ServerID, YearID,TruckNumber,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, ' +
          ' reciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' + ' +
          ' ltrim(str(ReciptNumber))  ' + IfThen(RdGKindDoc.ItemIndex = 11,
          '+ '' _ ''+ltrim(max(ControlCode))+ '' به مقدار '' +ltrim(str(max(entity), '
          + ' len(max(entity)), 3))+ '' '' +    c_StuffName  ', '') +
          'AS Comment ' +
          ', sum(entity) as entity, sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when sum(bed) > 0 then sum(bed) else 0 end + case when sum(bes) < 0 then - sum(bes) else 0 end AS Debt, '
          + ' case when sum(bes) > 0 then sum(bes) else 0 end + case when sum(bed) < 0 then - sum(bed) else 0 end AS Credit '
          + ',AidNumber , ReciptNumber, ReciptDate,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName'
          + ', RialsEqual,Fitful.FitfulID AS ArzAmount ,CUSTNAME,CUSTNAME2,CUSTNAME3 '
          + ' ,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate ' + #13#10 +
          ' FROM ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter + #13#10 +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,ArzTypeID,ReciptNote,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, '
          + 'ServerID, YearID,TruckNumber,reciptCaption ,AidNumber ,reciptNumber,ReciptDate,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode,CTopicCode2, CTopicCode3' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind ,CUSTNAME,CUSTNAME2,CUSTNAME3 '

          + IfThen(RdGKindDoc.ItemIndex = 11, ', c_StuffName, entity,Weight',
          '') + #13#10 +

          ' )abcde group by  Comment2, FitfulNote ,ArzAmount,TopicCode, DetailCode, CTopicCode, CTopicCode2,CTopicCode3 '
          + ', CASE WHEN Debt <> 0 THEN Comment ELSE '' بابت ثبت '' +''' +
          cmbGroups.Text + '''' + IfThen(chkTajmia.Checked, '',
          ' +'' ش '' +ltrim((ReciptNumber))') + ' END  ' + #13#10 +
          frmMakeDocs1.GetGROUPBY +
          ' ORDER BY  ReciptID,Credit, TopicCode, DetailCode, CTopicCode, CTopicCode2,CTopicCode3 ';

      12:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID,  ReciptID,ServerID,YearID, ' +
          FunName + '.TopiCcode ,' + FunName + '.DetailCode , CTopicCode, ' +
          'CTopicCode2,CTopicCode3, ' + GetComment +

          ' , max(Entity) AS Entity, max(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit,'
          + ' AidNumber , ReciptNumber, ReciptDate,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount '
          + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE  (bed+bes)<>0 AND(ReciptType IN ( ' +
          mySelected + ' )) ' + // addIDFilter +
          ' GROUP BY bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID '
          + ',ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, '
          + 'ServerID, YearID, ReciptCaption, AidNumber ,ReciptNumber, ReciptDate,CustName,CustName2,CustName3, TruckNumber, '
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CTopicCode, CTopicCode2,CTopicCode3' +
        // ',case when bed > 0 then 1 else 2 end' +
          ',bedbes,' + ' kind ,MachineName ,MachineNo ,MachineInfo,TruckNumber '

          + frmMakeDocs1.GetGROUPBY + ' HAVING SUM(bed)+ SUM(bes)<>0' +
          ' ORDER BY ReciptID, ServerID, YearID, ReciptCaption, ReciptNumber, ReciptDate, BedBes, kind, '
          + FunName + '.TopiCcode ,' + FunName + '.DetailCode , CTopicCode,' +
          ' CTopicCode2';

      13:

        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,  min(ArzTypeID) as ArzTypeID, min(ReciptID) as ReciptID,max(MachineInfo) as MachineInfo,max(ArzName) as ArzName,min(SellsEmporiumName) as SellsEmporiumName,sum(RialsEqual) as RialsEqual, '
          + 'min(ServerID) as ServerID,min(YearID) as YearID,abcde.TopiCcode ,abcde.DetailCode, CTopicCode, CTopicCode2,CTopicCode3,'
          +
        // GetComment +
          ' case when ( Credit<>0 and ReciptID=0) then  Comment else Comment_2 end as Comment'
          + ', min(Entity) as Entity, min(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(Debt-Credit)>0 then SUM(Debt-Credit) else 0 end  AS Debt,'
          + ' case when SUM( Credit-debt) >0 then SUM( Credit-debt) else 0 end  as Credit,min(AidNumber) AS AidNumber '
          + ', min(ReciptNumber) as ReciptNumber,' +
          'min( ReciptDate) as ReciptDate,'''' as CustName,'''' as CustName2,'''' as CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts '
          + ',max(MachineInfo) as MachineInfo,max(ArzName) as ArzName,max(SellsEmporiumName) as SellsEmporiumName,'
          + ' sum(RialsEqual) AS RialsEqual,Fitful.FitfulID AS ArzAmount, Fitful.Comment2, '
          + 'Fitful.FitfulNote AS _Dec,min(TruckNumber) as TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate '
          + ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM ( ' +
          ' select MAX(IDs) as IDs ,ArzTypeID,  ReciptID,RialsEqual, MachineInfo ,ArzName,SellsEmporiumName, ServerID, YearID,TruckNumber,TopiCcode ,DetailCode ,CTopicCode,CtopicCode2,CTopicCode3, '

          + ' reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
          'ltrim(str(ReciptNumber))+'' به مقدار ''+ ltrim(STR(max(entity), ' +
          'len(max(entity)), 3)) +'' ''+ c_StuffName AS Comment' +

          ', reciptCaption + '' بتاريخ  '' + ReciptDate +''  ش ''+ ' +
          'ltrim(str(ReciptNumber))  AS Comment_2' +
          ',SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO ,' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          + ' ,AidNumber ,ReciptNumber,ReciptDate,sum(ArzAmount) AS ArzAmount,sum(CurrencyDiscounts) AS CurrencyDiscounts,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate '
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          #13#10 + ' WHERE  (bed+bes)<>0 and     (ReciptType IN ( ' + mySelected
          + ' )) ' + // addIDFilter + #13#10 +
          #13#10 + ' group By bedbes ,ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName,RialsEqual,'
          + ' ServerID, YearID,TruckNumber,reciptCaption ,AidNumber ,reciptNumber,ReciptDate,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode ,CtopicCode,CtopicCode2,CTopicCode3 ' +
        // ',case when bed > 0 then 1 else 2 end' +
          ',bedbes ' + ',  kind, c_StuffName,entity' +
          ' )abcde  CROSS JOIN Fitful ' + #13#10 + #13#10 +
          ' group by  abcde.TopiCcode ,abcde.DetailCode, ' +
          'CTopicCode, CTopicCode2,CTopicCode3 , CASE WHEN ( Credit<>0 and ReciptID=0)  THEN Comment ELSE Comment_2 END  '
          + ', Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID ' +
        // frmMakeDocs1.GetGROUPBY +
          #13#10 + ' ORDER BY  Debt, abcde.TopicCode, abcde.DetailCode, CTopicCode, CTopicCode2,CTopicCode3 ';

      {

        14:
        SQL.Text :=


      }

      15:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,TruckNumber,ArzTypeID, ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,'
          + ' TopicCode, DetailCode, CTopicCode, CTopicCode2,CTopicCode3,' +
        // GetComment +
          ' Comment, min(Entity) as Entity, sum(Weight) AS Weight,Max(PO) as PO , '
          + ' SUM(Debt) AS Debt,SUM( Credit) as Credit,AidNumber , (ReciptNumber) as ReciptNumber,'
          + '( ReciptDate) as ReciptDate,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts ,FitfulID as ArzAmount , Comment2,'
          + ' FitfulNote AS _Dec,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate FROM ( '
          + #13#10 +
          ' select MAX(IDs) as IDs ,  Fitful.Comment2, Fitful.FitfulNote ,Fitful.FitfulID ,TruckNumber,ArzTypeID,ReciptID,MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,'
          + FunName + '.TopiCcode ,' + #13#10 + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, ' +
          ' reciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' + ' +
          ' ltrim(str(ReciptNumber))  + '' به مقدار '' +ltrim(str(max(entity), '
          + ' len(max(entity)), 3))+ '' '' +    c_StuffName AS Comment ' +
          ', sum(entity) as entity, sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when sum(bed) > 0 then sum(bed) else 0 end + case when sum(bes) < 0 then - sum(bes) else 0 end AS Debt, '
          + ' case when sum(bes) > 0 then sum(bes) else 0 end + case when sum(bed) < 0 then - sum(bed) else 0 end AS Credit '
          + ',AidNumber , ReciptNumber, ReciptDate,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmount,sum(CurrencyDiscounts) AS CurrencyDiscounts  '
          + ',Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate' + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM ' + FunName + '(' + ParamList + ' ) ' + #13#10 +
          FunName + #13#10 +
          ' CROSS JOIN Fitful  WHERE (bed+bes)<>0 and (ReciptType IN ( ' +
          mySelected + ' )) ' + // addIDFilter + #13#10 +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,TruckNumber,ArzTypeID,ReciptID,'
          + ' MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,reciptCaption ,AidNumber ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
          + FunName + #13#10 + '.TopiCcode ,' + FunName + #13#10 +
          '.DetailCode , CtopicCode,CTopicCode2, CTopicCode3' +
          ', bedbes, Kind , c_StuffName, entity, Weight ' + #13#10 + ' )abcde '
          + #13#10 +
          ' group by  Comment2, FitfulNote ,FitfulID,TopicCode, DetailCode, CTopicCode, CTopicCode2,CTopicCode3 '
          + ' ,abcde.AidNumber ,abcde.ReciptNumber,abcde.TruckNumber,abcde.ArzTypeID,abcde.ReciptID,abcde.MachineInfo,abcde.ArzName,abcde.SellsEmporiumName,'
          + ' abcde.RialsEqual,abcde.ReciptDate,CustName,CustName2,CustName3,abcde.ServerID,abcde.YearID,abcde.Debt,abcde.Comment '
          + #13#10 +
          ' ORDER BY   TopicCode, DetailCode, CTopicCode, CTopicCode2,CTopicCode3 '
          + '';

      18:
        SQL.Text :=
          ' SELECT MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID,' +
          #13#10 + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, ' + GetComment +
          ' ,SUM(entity) as Entity , sum(Weight) AS Weight,Max(PO) as PO , ' +
          ' case when SUM(bed)>0 then SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0 end AS Debt,'
          + ' case when SUM(bes)>0 then SUM(bes) else 0 end+case when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit'
          + ' ,AidNumber ,ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.FitfulID AS ArzAmount '
          + ', Fitful.Comment2, Fitful.FitfulNote AS _Dec,TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate'
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   ' + FunName + '(' + ParamList + ' ) ' + FunName +
          ' CROSS JOIN Fitful  WHERE   (bed+bes)<>0 and    (ReciptType IN ( ' +
          mySelected + ' )) ' + #13#10 + // addIDFilter +
          ' group By bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID '
          + ',ArzTypeID,ReciptID, MachineInfo ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,AidNumber ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,'
          + FunName + '.TopiCcode ,' + FunName +
          '.DetailCode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber' +
        // ',case when bed > 0 then 1 else 2 end' +
          ', bedbes, Kind, AidNumber, AidDate ' + frmMakeDocs1.GetGROUPBY +
          #13#10 + ' HAVING SUM(bed)+ SUM(bes)<>0' +
          ' order By ReciptID, ServerID, YearID,reciptNumber,ReciptDate , min(ReciptitemID),bedbes ';

      19:
        SQL.Text :=

          'SELECT MAX(IDs) as IDs , Fitful.Comment2, Fitful.FitfulNote ,Fitful.FitfulID ,TruckNumber,ArzTypeID,ReciptID,MachineInfo'
          + ' ,ArzName,SellsEmporiumName, RialsEqual, ServerID,' +
          ' YearID,A_M_R.TopiCcode ,A_M_R.DetailCode , CtopicCode, CTopicCode2, CTopicCode3,'
          + #13#10 +
          ' CASE WHEN (EffectType in (3, 4, 5, 7, 8) and max(bed) > 0)or (EffectType not in (3, 4, 5, 7, 8) and max(bes) > 0) THEN'
          + ' reciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' + ltrim(str(ReciptNumber))'
          + ' ELSE' +
          ' reciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' + ltrim(str(ReciptNumber)) + '' به مقدار '' +'
          + ' ltrim(str(max(entity),len(max(entity)), 3))+ '' '' + max(c_StuffName)'
          + ' END AS Comment , sum(entity) as entity, sum(Weight) AS Weight,Max(PO) as PO'
          + #13#10 +
          ' ,CASE WHEN sum(bed) > 0 THEN sum(bed) ELSE 0 END + CASE WHEN sum(bes) < 0 THEN - sum(bes) ELSE 0 END AS Debt'
          + #13#10 +

          ' ,CASE WHEN sum(bes) > 0 THEN sum(bes) ELSE 0 END + CASE WHEN sum(bed) < 0 THEN - sum(bed) ELSE 0 END AS Credit'
          + ' ,AidNumber , ReciptNumber, ReciptDate,CustName,CustName2,CustName3,Fitful.Comment2 ,sum(ArzAmount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscounts '
          + ',FitfulID as ArzAmount , Fitful.FitfulNote  AS _Dec ,Max(IAidNumber) AS IAidNumber,Max(IAidDate) IAidDate '
          + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM ' + FunName + '( ' + ParamList + ' ) A_M_R' +
          ' CROSS JOIN Fitful' + #13#10 +
          ' WHERE (bed+bes)<>0 and (ReciptType IN (  ' + mySelected + '  ))' +
          #13#10 + ' GROUP BY EffectType,bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.FitfulID,TruckNumber,ArzTypeID,ReciptID, MachineInfo'
          + ' ,ArzName,SellsEmporiumName, RialsEqual, ServerID, YearID,reciptCaption ,AidNumber'
          + ' ,reciptNumber,ReciptDate,CustName,CustName2,CustName3,A_M_R.TopiCcode ,A_M_R.DetailCode , CtopicCode,CTopicCode2,'
          + ' CTopicCode3, bedbes, Kind' +
          ' ,CASE WHEN (EffectType in (3, 4, 5, 7, 8) and (bed) > 0)or (EffectType not in (3, 4, 5, 7, 8) and (bes) > 0) THEN'
          + ' reciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' + ltrim(str(ReciptNumber))'
          + ' ELSE' +
          ' reciptCaption + '' بتاريخ '' + ReciptDate + '' ش '' + ltrim(str(ReciptNumber)) + '' به مقدار '' +ltrim(str((entity),'
          + ' len((entity)), 3))+ '' '' + c_StuffName END';

    end; // case
    ReplaceEntityWeightCaption(qryItems);
    Filtered := False;

    Active := True;
  end; // with
  ErrorCount := Error;
  if ErrorCount > 0 then
  begin
    zbal.Title := AnsiString(IntToStr(ErrorCount) + 'خطا وجود دارد');
    zbal.Prompt.Text := 'جهت رويت از ليست خطاها استفاده كنيد.';
    zbal.Show(Self);
    FlashAControl(Self);
  end; // if
end;

procedure TMakeDocumentF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, Self.Name + '_Tajmia', BoolToStr(chkTajmia.Checked));
  SaveConfig(APPID, 'rgDocDate', IntToStr(rgDocDate.ItemIndex));
  // SaveColWidth(DBGrid1);
  FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPRecipt);
  var_tmp_str := EmptyStr;
  Var_glb_NoFilter := False;
end;

procedure TMakeDocumentF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 5, True);
end;

procedure TMakeDocumentF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end;
  // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMakeDocumentF.qryItemsAfterOpen(DataSet: TDataSet);
var
  Debt, Credit: Real48;
  i: Integer;
begin
  inherited;
  if rgComment.ItemIndex = 1 then
    Commentset;
  i := ColumnIndexByFieldName(DBGrid1, 'Debt');
  if VarToStr(DBGrid1.Columns[i].Footers[0].Sumvalue) <> EmptyStr then
    Debt := StrToCurr(VarToStr(DBGrid1.Columns[i].Footers[0].Sumvalue));
  // Debt :=CalcSumFileds(qryItems, 'Debt');
  StatusBar1.Panels[0].Text := CurrToStrF(Debt, ffCurrency, 0);

  i := ColumnIndexByFieldName(DBGrid1, 'Credit');
  if VarToStr(DBGrid1.Columns[i].Footers[0].Sumvalue) <> EmptyStr then
    Credit := StrToCurr(VarToStr(DBGrid1.Columns[i].Footers[0].Sumvalue));
  // Credit :=CalcSumFileds(qryItems, 'Credit');
  StatusBar1.Panels[1].Text := CurrToStrF(Credit, ffCurrency, 0);
  StatusBar3.Panels[0].Text := CurrToStrF(Debt - Credit, ffCurrency, 0);
  StatusBar2.Panels[0].Text := IntToStr(qryItems.RecordCount);
  actMakeDoc.Visible := (Debt <> 0) AND (Credit <> 0) AND (Debt - Credit = 0);
  actMakeDocumentPostF.Visible := actMakeDoc.Visible;

end;

function TMakeDocumentF.CalcSumFileds(qry: TADOQuery;
  FiledName: String): Real48;

begin
  Exit;
  Result := 0;
  if ((not UserQualitative) and UserQualitativeOnF(FiledName)) then
    Exit;

  if (qry.Active) and (qry.FindField(FiledName) <> nil) then
    with qry do
      try
        DisableControls;
        First;
        while not eof do
        begin
          Result := Result + FieldByName(FiledName).AsFloat;
          Next;
        end; // while
      finally
        EnableControls;
      end; // try
end;

procedure TMakeDocumentF.Commentset;
begin
  With qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      qryItemsComment2.AsString := qryItemsComment.AsString;
      qryItemsArzAmount.AsString := qryItemsArzAmountC.AsString;
      Post;
      Next;
    end;
    EnableControls
  end;
end;

procedure TMakeDocumentF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  MskDocTopic.Text := ' سند خريد وفروش وانبار _ ‏' + cmbGroups.Text;
  SecondTypeActive := FnSecondType_Active(DocPostKind);

  RdGKindDoc.OnClick := nil;
  RdGKindDoc.ItemIndex := IfThen(DocPostKind = -1, 0, DocPostKind);
  RdGKindDoc.OnClick := RdGKindDocClick;
  RdGKindDoc.Visible := DocPostKind = -1;
  Panel4.Visible := RdGKindDoc.Visible or lslWarnings.Visible;
  frmMakeDocs1.Visible := RdGKindDoc.Visible and User.PowerUser;

  mySelected := IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]));
  ReciptTypeFrom := mySelected.ToInteger;
  ReciptTypeTo := ReciptTypeFrom;

  if myParams.FindParam('Date') = nil then
    actFilter.Execute
  else if SecondTypeActive AND (myParams.FindParam('SecondType') = nil) then
    actFilter.Execute
  else
    UpdateFilter;
end;

procedure TMakeDocumentF.RdGKindDocClick(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.qryMakeDocs.Active := False;
  actShowDoc.Execute
end;

procedure TMakeDocumentF.Enter(qry: TDataSet; OpenFromList: Boolean);

begin
  With MakeDocumentF do
    try
      // Var_glb_NoFilter := True;
      CreateMDIForm2(TMakeDocumentF, MakeDocumentF, mainf);
      Number4Filter := qry.FieldByName('ReciptNumber').AsString;
      Date4Filter := qry.FieldByName('ReciptDate').AsString;
      if not OpenFromList then
        Store4Filter := qry.FieldByName('StoreID').AsString;
      cmbGroups.DroppedDown := False;
      cmbGroups.ItemIndex := MakeDocumentF.cmbGroups.Items.IndexOfObject
        (TObject(qry.FieldByName('ReciptType').AsInteger));
      cmbGroupsChange(cmbGroups);
      // MakeDocumentF.actFilter.Enabled := False;
    finally
      Var_glb_NoFilter := False
    end;
end;

function TMakeDocumentF.Error: Integer;
begin
  Result := 0;
  with qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if (FieldByName('TopicCode').Value <> 0) and
        (FieldByName('_TopicName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('DetailCode').Value <> 0) and
        (FieldByName('_DetailCode').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('CTopicCode').Value <> 0) and
        (FieldByName('_CTopicCode').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TMakeDocumentF.actErrorListExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  lslWarnings.Clear;
  lslWarnings.Visible := True;
  Panel4.Visible := lslWarnings.Visible;

  with qryItems do
  begin
    DisableControls;
    First;
    try
      while not eof do
      begin
        s := IfThen((FieldByName('_TopicCodeName').AsString = '') and
          (FieldByName('TopicCode').AsString <> '0'), FieldByName('TopicCode')
          .AsString);
        s := s + IfThen((FieldByName('_CTopicCode').AsString = '') and
          (FieldByName('CTopicCode').AsString <> '0'),
          '-' + FieldByName('CTopicCode').AsString);
        s := s + IfThen((FieldByName('_DetailCode').AsString = '') and
          (FieldByName('DetailCode').AsString <> '0'),
          '-' + FieldByName('DetailCode').AsString);
        if s <> '' then
          lslWarnings.Items.AddObject(format('[رديف %d]: [خطا كد %s]',
            [RecNo, s]), TObject(qryItems.RecNo));
        Next;
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TMakeDocumentF.lslWarningsClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  qryItems.First;
  qryItems.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);
  lslWarnings.Hint := lslWarnings.Items[i];
end;

procedure TMakeDocumentF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMakeDocumentF.actSendToXmlExecute(Sender: TObject);
begin
  inherited;
  // With qryItems do
  // begin
  // DisableControls;
  // First;
  // while not eof do
  // begin
  // Edit;
  // qryItems_Dec.AsWideString :=UTF8String( qryItemsComment2.AsString);
  // Post;
  // Next
  // end;
  // EnableControls;
  // end;

  XmlMapperF.ShowForm(qryItems, MskDocNo.Text, mskDocDate.Text, MskSerial.Text,
    MskDocTopic.Text)
end;

procedure TMakeDocumentF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);

end;

procedure TMakeDocumentF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TMakeDocumentF.actAccountfExecute(Sender: TObject);
begin
  inherited;
  Accountf.Enter(qryItems)
end;

procedure TMakeDocumentF.actAddComment2Execute(Sender: TObject);
begin
  inherited;
  rgComment.ItemIndex := 1;
  With qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      qryItemsComment2.AsString := qryItemsComment2.AsString + ' - ' +
        qryItems_TopicCodeName.AsString + ' - ' + qryItems_DetailCode.AsString +
        ' - ' + qryItems_CTopicCode.AsString + ' - ' +
        qryItems_CTopicCode2.AsString;
      Post;
      Next;
    end;
    EnableControls
  end;
end;

procedure TMakeDocumentF.actAddCommentArzExecute(Sender: TObject);
begin
  inherited;
  rgComment.ItemIndex := 1;
  With qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      qryItemsComment2.AsString := qryItems_TopicCodeName.AsString + ' خدمات ' +
        qryItemsSellsEmporiumName.AsString + ' بمبلغ ' +
        qryItemsArzAmountC.AsString + ' ' + qryItemsArzName.AsString +
        ' به نرخ ' + qryItemsRialsEqual.AsString + ' ریال ' +
        qryItems_DetailCode.AsString + ' ٌص ح ' + qryItemsMachineInfo.AsString;

      Post;
      Next;
    end;
    EnableControls
  end;
end;

procedure TMakeDocumentF.actCheckDocumentExecute(Sender: TObject);
begin
  inherited;
  PnlUnderButton.Enabled := False;
  if optA.AccOldAvailable then
    if ValidateOldDocument(qryItems, lslWarnings) then
    begin
      Warn2('سند مورد تأييد است.');
      actMakeDoc.Enabled := True;
    end
    else
    begin
      Warn('سند نامعتبر است.');
      actMakeDoc.Enabled := True;
    end
  else if ValidateDocument(mskDocDate.Text, YearID_, qryItems, nil,
    DMf.adcAccounting, lslWarnings, False) then
  begin
    Warn2('سند مورد تأييد است.');
    actMakeDoc.Enabled := True;
  end
  else
  begin
    Warn('سند نامعتبر است.');
    actMakeDoc.Enabled := False;
  end; // else

  if optA.AccChkBalancCTopicCode3 then
    if not BalancCTopicCode3(qryItems) then
    begin
      actMakeDoc.Enabled := False;
    end;

  Panel4.Visible := (RdGKindDoc.Visible) or (lslWarnings.Visible);
  PnlUnderButton.Enabled := True;
  actMakeDocumentPostF.Enabled := actMakeDoc.Enabled;
end;

procedure TMakeDocumentF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qryItems.FieldByName('ReciptID').AsInteger = 0 then
  begin
    Warn('در اين  نحوه ثبت سند حسابداري  نمايش فرم وجود ندارد.‏',
      mtInformation);
    Exit;
  end;
  ShowReciptTypes(qryItems, Self);
end;

procedure TMakeDocumentF.actShowFrExecute(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height := 180
end;

procedure TMakeDocumentF.MskSerialExit(Sender: TObject);
begin
  inherited;
  if optA.AccOldAvailable then
    Exit;
  with DMf.qryAccounting do
  begin
    Active := False;
    SQL.Text :=
      'SELECT count(serial) as countserial from ACC.docgroups where serial= ' +
      trim(MskSerial.Text);
    SQL.Add('AND CompanyCode=' +
      IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
      ' AND  YearID = ' + IntToStr(YearID_));

    Active := True;
    NewDoc := FieldByName('countserial').AsInteger = 0;
    MskSerial.ReadOnly := not NewDoc;
    MskDocNo.ReadOnly := MskSerial.ReadOnly;
    mskDocDate.ReadOnly := MskSerial.ReadOnly;
    Active := False;
    if not MskSerial.ReadOnly then
      Exit;
    SQL.Text :=
      'SELECT Serial,SecondaryDocNo,DocDate from ACC.docgroups where serial= ' +
      trim(MskSerial.Text);
    SQL.Add('AND CompanyCode=' +
      IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
      ' AND  YearID = ' + IntToStr(YearID_));
    Active := True;
    MskSerial.Text := FieldByName('Serial').AsString;
    MskDocNo.Text := FieldByName('SecondaryDocNo').AsString;
    mskDocDate.Text := FieldByName('DocDate').AsString;
    rgDocDate.Enabled := False;
    Active := False;
  end; // with

end;

procedure TMakeDocumentF.Panel2Click(Sender: TObject);
begin
  inherited;
  actMakeDocumentPostF.Enabled := True
end;

procedure TMakeDocumentF.Panel6Click(Sender: TObject);
begin
  inherited;
  actMakeDocumentPostF.Enabled := True;
  actMakeDocumentPostF.Visible := True;
end;

procedure TMakeDocumentF.SBtnReciptNumberClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 7] of String;
  CompanyCode: Integer;
begin
  inherited;
  CompanyCode := Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
  b := SearchDoc(Results, YearID_, CompanyCode, formName);
  if b then
  begin
    MskSerial.Text := Results[0];
    MskDocNo.Text := Results[1];
    mskDocDate.Text := Results[2];
    Rec_No := StrToInt(Results[3]);
    rgDocDate.Enabled := False;
    NewDoc := False;
  end;
  // Txt := 'SELECT Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, ' +
  // ' Acc.DocGroups.DocDate,  COUNT(Acc.Documents.Serial) AS RecNo' +
  // ' FROM Acc.DocGroups LEFT OUTER JOIN Acc.Documents ON  ' +
  // ' Acc.DocGroups.Serial = Acc.Documents.Serial ' +
  // ' AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode ' +
  // ' AND  Acc.DocGroups.YearID = Acc.Documents.YearID ' +
  // ' WHERE (Acc.DocGroups.Status IN (0,1)) ' +
  // ' AND(Acc.DocGroups.PrimaryDocNo = 0) AND(Acc.DocGroups.YearID = %d ) ' +
  // IfThen(opt.SendDoc2OtherSystems, '',
  // 'AND(Acc.DocGroups.SourceDataBase = %s )') +
  // ' GROUP BY Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate';
  //
  // If opt.SendDoc2OtherSystems Then
  // Txt := format(Txt, [YearID_])
  // else
  // Txt := format(Txt, [YearID_, QuotedStr(APPBank.Name + '.dbo.' + formName)]);
  //
  // b := searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' ليست اسناد موجود  ',
  // Txt, ['سريال سند', 'شماره موقت', 'تاريخ سند', 'رديف'], Results,
  // [80, 80, 80, 80], alLeft);

end;

function TMakeDocumentF.AddCode;
var
  b: Boolean;
  msg: String;
begin
  Result := False;
  b := False;
  if not optA.CanRelation then
    Exit;
  with TADOQuery.Create(Self) do
  begin
    Connection := qryDocuments.Connection;
    // ----------------------------DetailCode------------------------------------
    if Kind = 1 then
      if get_response('آيا ارتباط بين تفصيلي و حساب برقرار گردد') = mrYes then
      begin
        msg := 'كد تفصيلي';
        if qryItems.FieldByName('DetailCode').AsInteger = 0 then
          Exit;
        Active := False;
        SQL.Text := 'SELECT COUNT(*) AS Expr1';
        SQL.Add('FROM DetailRange');
        SQL.Add('WHERE (TopicCode = ' + qryItems.FieldByName('TopicCode')
          .AsString + ') AND(DetailCode= ' + qryItems.FieldByName('DetailCode')
          .AsString + ')');
        SQL.Add('GROUP BY TopicCode, DetailCode');
        Active := True;
        if Fields[0].AsInteger = 0 then
        /// /if
        begin
          Active := False;
          SQL.Text := 'SELECT TopicCode, DetailCode';
          SQL.Add('FROM DetailRange');
          Active := True;
          Append;
          FieldByName('TopicCode').AsLargeInt :=
            qryItems.FieldByName('TopicCode').AsLargeInt;
          FieldByName('DetailCode').AsInteger :=
            qryItems.FieldByName('DetailCode').AsInteger;
          b := True;
        end;
        /// /if
      end; // if           log
    // --------------------------AddCTopicCode-----------------------------------
    if Kind = 2 then
      if get_response('آيا ارتباط بين مركزهزينه و حساب برقرار گردد') = mrYes
      then
      begin
        msg := 'كد تفصیلی 1';
        if qryItems.FieldByName('CTopicCode').AsInteger = 0 then
          Exit;
        Active := False;
        SQL.Text := 'SELECT COUNT(*) AS Expr1';
        SQL.Add('FROM CenterTopicRange');
        SQL.Add('WHERE (TopicCode = ' + qryItems.FieldByName('TopicCode')
          .AsString + ') AND(CTopicCode= ' + qryItems.FieldByName('CTopicCode')
          .AsString + ')');
        SQL.Add('GROUP BY TopicCode, CTopicCode');
        Active := True;
        if Fields[0].AsInteger = 0 then
        /// /if
        begin
          Active := False;
          SQL.Text := 'SELECT TopicCode, CTopicCode';
          SQL.Add('FROM CenterTopicRange');
          Active := True;
          Append;
          FieldByName('TopicCode').AsLargeInt :=
            qryItems.FieldByName('TopicCode').AsLargeInt;
          FieldByName('CTopicCode').AsInteger :=
            qryItems.FieldByName('CTopicCode').AsInteger;
          b := True;
        end;
        /// /if
      end; // if
    // -------------------------AddCTopicCode2-----------------------------------
    if Kind = 3 then
      if get_response('آيا ارتباط بين مركزهزينه2 و حساب برقرار گردد') = mrYes
      then
      begin
        msg := 'كد تفصیلی 3';
        if qryItems.FieldByName('CTopicCode2').AsInteger = 0 then
          Exit;
        Active := False;
        SQL.Text := 'SELECT COUNT(*) AS Expr1';
        SQL.Add('FROM CTopicRangeTogether');
        SQL.Add('WHERE (CTopicCode = ' + qryItems.FieldByName('CTopicCode')
          .AsString + ') AND(CTopicCode2= ' + qryItems.FieldByName
          ('CTopicCode2').AsString + ')');
        SQL.Add('GROUP BY CTopicCode, CTopicCode2');
        Active := True;
        if Fields[0].AsInteger = 0 then
        /// /if
        begin
          Active := False;
          SQL.Text := 'SELECT CTopicCode, CTopicCode2';
          SQL.Add('FROM CTopicRangeTogether');
          Active := True;
          Append;
          FieldByName('CTopicCode').AsInteger :=
            qryItems.FieldByName('CTopicCode').AsInteger;
          FieldByName('CTopicCode2').AsInteger :=
            qryItems.FieldByName('CTopicCode2').AsInteger;
          b := True;
        end;
        /// /if
      end; // if
    try
      if b then
        Post;
      Result := b;
    except
      Warn('اشكال در ارتباط كدها');
      Result := False;
    end; // try
    Active := False;
  end; // with
  if Result then
    BigMessage(msg + ' اضافه شد. ', 1);
end;

procedure TMakeDocumentF.mnu_All_Click_Click(Sender: TObject);
begin
  inherited;
  AddCode((Sender as TMenuItem).Tag)
end;

procedure TMakeDocumentF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True
end;

procedure TMakeDocumentF.cmbYearIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TMakeDocumentF.gridkeyenter(Sender: TObject; var Key: Char);
// var
// nextIndex: Integer;
// curIndex: Integer;
// // aDataSet: TDataSet;
// // c:  String;
begin
  AccDBGrid1CKeyPress(Sender, Key);
  // curIndex := (Sender as TDBGrid).SelectedIndex;
  // nextIndex := curIndex;
  // case Key of
  // #13:
  // begin
  // if shiftDown then
  // Exit;
  // // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
  // Key := #0;
  // case curIndex of
  // 0:
  // nextIndex := 1;
  // 1:
  // nextIndex := 2;
  // 2:
  // nextIndex := 3;
  // 3:
  // nextIndex := 4;
  // 4:
  // nextIndex := 5;
  // 5:
  // nextIndex := 6;
  // 6:
  // nextIndex := -1;
  // end; // case
  // end; // #13
  // '+':
  // begin
  // Key := #0;
  // nextIndex := curIndex - 1;
  // while (nextIndex >= 0) AND (not(DBGrid1.Columns[nextIndex].Visible) OR
  // (DBGrid1.Columns[nextIndex].ReadOnly)) do
  // Dec(nextIndex);
  // if nextIndex < 0 then
  // nextIndex := -3;
  // end; // +
  // '*':
  // begin
  // Key := #0;
  // SendKeys('000', False);
  // end; // *
  // #27:
  // if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
  // (Sender as TDBGrid).DataSource.DataSet.Cancel;
  // // #32,#157:  if curIndex in [1..4] then begin
  // // key:=#0;
  // /// /      DBGrid1EditButtonClick(sender);
  // // end;//if
  // end; // case
  // if nextIndex >= 0 then
  // while (nextIndex < DBGrid1.Columns.Count) and
  // (not(DBGrid1.Columns[nextIndex].Visible) OR
  // (DBGrid1.Columns[nextIndex].ReadOnly)) do
  // Inc(nextIndex);
  // if nextIndex >= (Sender as TDBGrid).Columns.Count then
  // nextIndex := -1;
  // if (curIndex <> nextIndex) then
  // case nextIndex of
  // - 1:
  // begin
  // sendkey(vk_down, [], False);
  // (Sender as TDBGrid).SelectedIndex := 0;
  // end; // 0
  // -2:
  // begin
  // if (Sender as TDBGrid).DataSource.State in dsEditModes then
  // (Sender as TDBGrid).DataSource.DataSet.Cancel;
  // Perform(WM_NEXTDLGCTL, 0, 0);
  // end; // -2
  // -3:
  // begin
  // if (Sender as TDBGrid).DataSource.State in dsEditModes then
  // (Sender as TDBGrid).DataSource.DataSet.Cancel;
  // Perform(WM_NEXTDLGCTL, 1, 0);
  // end; // -3
  // else
  // (Sender as TDBGrid).SelectedIndex := nextIndex;
  // end; // case

end;

procedure TMakeDocumentF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  SendWarnDBGridToExcelC(DBGrid1, lslWarnings)
end;

procedure TMakeDocumentF.rgCommentClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(DBGrid1, 'Comment');
  if i < 1 then
    i := ColumnIndexByFieldName(DBGrid1, 'Comment2');

  case rgComment.ItemIndex of
    0:
      begin
        CommentFld := 'Comment';
        DBGrid1.Columns[i].FieldName := 'Comment';
      end;
    1:
      begin
        CommentFld := 'Comment2';
        DBGrid1.Columns[i].FieldName := 'Comment2';
      end;

  end;

  if rgComment.ItemIndex = 1 then
    if get_response('برای ایجاد شرح 2 مطمئن هستید') = mrYes then
    begin
      Commentset
    end;

end;

procedure TMakeDocumentF.rgDocDateClick(Sender: TObject);
begin
  inherited;
  case rgDocDate.ItemIndex of
    0:
      mskDocDate.Text := var_glb_CurrentDate;
    1:
      if myParams.FindParam('Date') <> nil then
        mskDocDate.Text := GetcTo(myParams.ParamValues['Date'], ftDate);
    2:
      mskDocDate.Text := Date4Filter
      // .......................
  end;
end;

procedure TMakeDocumentF.btnSelectClick(Sender: TObject);
var
  Txt: String;
begin
  inherited;
  Txt := 'SELECT ReciptType,ReciptCaption FROM ReciptTypes ' +
    'WHERE (MakeDoc = 1) ORDER BY ReciptType';
  Txt := selectedF.ShowSelect(DMf.adcBSell, 'انتخاب فرم', Txt, ['كد', 'فرم'],
    alLeft, [50, 400], mySelected);
  if Txt <> EmptyStr then
  begin
    mySelected := Txt;
    ReciptTypeFrom := 0;
    ReciptTypeTo := 999999999;
    UpdateFilter
  end;
end;

procedure TMakeDocumentF.actDatasetToXMLExecute(Sender: TObject);
begin
  inherited;
  DatasetToXML(qryItems, 'lstConst', 'Consts')
end;

procedure TMakeDocumentF.actDocPostKind1Execute(Sender: TObject);
begin
  inherited;
  setDocPostKind(RdGKindDoc.ItemIndex)
end;

procedure TMakeDocumentF.actDocPostKind_1Execute(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height := 123;
  setDocPostKind(-1)
end;

procedure TMakeDocumentF.setDocPostKind(DocPost: SmallInt);
var
  s: string;
begin
  inherited;
  if not CheckUserlevel2(opt.DocPostKindLevelID) then
    Exit;
  s := 'UPDATE ReciptTypes SET DocPostKind = %D WHERE (ReciptType  IN ( ' +
    mySelected + ' ) )';
  s := format(s, [DocPost]);
  DMf.adcBSell.Execute(s);
  RdGKindDoc.Visible := DocPost = -1;
  Panel4.Visible := (RdGKindDoc.Visible) or (lslWarnings.Visible);
  frmMakeDocs1.Visible := RdGKindDoc.Visible and User.PowerUser;;
end;

procedure TMakeDocumentF.TabControl1Change(Sender: TObject);
begin
  inherited;
  GetFunName;
  actShowDoc.Execute
end;

procedure TMakeDocumentF.chkTajmiaClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

end.
