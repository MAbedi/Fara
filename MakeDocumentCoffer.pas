// Hassan Rezaei   And Mahmood Abedi
unit MakeDocumentCoffer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, zAPIBalloon,
  CheckDoc, FrMakeDocs, Menus, System.Actions, System.ImageList,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TMakeDocumentCofferF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MskDocNo: TMaskEdit;
    mskDocDate: TMaskEdit;
    Panel4: TPanel;
    Panel5: TPanel;
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
    GroupBox1: TGroupBox;
    cmbGroups: TComboBox;
    srcItems: TDataSource;
    qryItems_TopicCodeName: TStringField;
    qryItems_DetailCode: TStringField;
    qryItems_CTopicCode: TStringField;
    qryItemsComment: TStringField;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
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
    qryItemsFormId: TIntegerField;
    qryItemsDebt: TFMTBCDField;
    qryItemsCredit: TFMTBCDField;
    cmbCompany: TComboBox;
    Label10: TLabel;
    qryItemsDetailCode: TIntegerField;
    qryItemsCtopicCode: TIntegerField;
    qryItemsCtopicCode3: TIntegerField;
    actCheckDocument: TAction;
    BitBtn9: TBitBtn;
    actShowForm: TAction;
    PnlSerial: TPanel;
    SBtnReciptNumber: TSpeedButton;
    Label11: TLabel;
    MskSerial: TMaskEdit;
    qryItems_CTopicCode2: TStringField;
    qryItemsAidInfoNo: TStringField;
    qryItemsAidInfoDate: TStringField;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    actSendWarnToExcel: TAction;
    btnSendWarnToExcel: TBitBtn;
    btnSelect: TSpeedButton;
    actDatasetToXML: TAction;
    CheckDoc1: TCheckDoc;
    qryItemsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    qryItems_CompanyCode: TIntegerField;
    qryItemsCtopicCode2: TIntegerField;
    actDocPostKind1: TAction;
    actDocPostKind_1: TAction;
    frmMakeDocs1: TfrmMakeDocs;
    Splitter2: TSplitter;
    Label8: TLabel;
    qryItemsTopicCode: TLargeintField;
    chkTajmia: TCheckBox;
    Panel6: TPanel;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBTxt_CTopicCode2: TDBText;
    Lbl_CTopicCode2: TLabel;
    Panel7: TPanel;
    Label9: TLabel;
    pnlTop: TPanel;
    Label12: TLabel;
    edtBed: TEdit;
    edtBes: TEdit;
    edtDifference: TEdit;
    actMakeDocumentPostF: TAction;
    rgDocDate: TRadioGroup;
    BitBtn8: TBitBtn;
    cmbYearID: TComboBox;
    qryItemsArzAmount: TFloatField;
    qryFormsFormNumber: TIntegerField;
    qryItemsFormDate: TStringField;
    actAccount: TAction;
    qryItemsPO: TStringField;
    qryItemsArzTypeID: TIntegerField;
    qryItemsBudgetCode: TIntegerField;
    qryItemsProjectID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryItemsCurrencyDebit: TFMTBCDField;
    qryItemsCurrencyCredit: TFMTBCDField;
    qryItemsCurrencyRate: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure cmbGroupsChange(Sender: TObject);
    procedure RdGKindDocClick(Sender: TObject);
    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure MskSerialExit(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure actSendWarnToExcelExecute(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure actDatasetToXMLExecute(Sender: TObject);
    procedure actDocPostKind1Execute(Sender: TObject);
    procedure actDocPostKind_1Execute(Sender: TObject);
    procedure frmMakeDocs1srcMakeDocsStateChange(Sender: TObject);
    procedure chkTajmiaClick(Sender: TObject);
    procedure actMakeDocumentPostFExecute(Sender: TObject);
    procedure rgDocDateClick(Sender: TObject);
    procedure cmbYearIDChange(Sender: TObject);
    procedure actAccountExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    Sql__Text: String;
    NewDoc: Boolean;
    mySelected: String;
    Rec_No: Integer;
    DocPostKind: SmallInt;
    addIDFilter, addIDFilterUp: String;
    procedure AddDetail(DocID: Integer);
    procedure init_Combos;
    function Error: Integer;
    procedure setDocPostKind(DocPost: SmallInt);
    function GetComment: String;
  public
    YearID_, UpdateDocNoCount: Integer;
    Number4Filter, Date4Filter, Customer4Filter: string;
    procedure Enter(qry: TADOQuery);
    procedure UpdateFilter;
    { Public declarations }
  end;

var
  MakeDocumentCofferF: TMakeDocumentCofferF;

const
  formName = 'Forms';

implementation

uses GlobalPro, filter_ADO, FilterClass_ADO, search2,
  sort2, Math, StrUtils, DM, searchCode_ADO, mmessage, FormFunctions,
  selected, ExportXml, CheckDocument, FaraConsts, AccFunctions, main,
  MakeDocumentPost, Filter_ADO_Const, Account;

{$R *.dfm}

procedure TMakeDocumentCofferF.Enter(qry: TADOQuery);
begin
  With MakeDocumentCofferF do
    try
      // Var_glb_NoFilter := True;
      CreateMDIForm2(TMakeDocumentCofferF, MakeDocumentCofferF, mainf);
      Number4Filter := qry.FieldByName('FormNumber').AsString;
      Date4Filter := qry.FieldByName('FormDate').AsString;
      Customer4Filter := qry.FieldByName('CustomerID1').AsString;
      cmbGroups.DroppedDown := False;
      cmbGroups.ItemIndex := MakeDocumentCofferF.cmbGroups.Items.IndexOfObject
        (TObject(qry.FieldByName('FormType').AsInteger));
      cmbGroupsChange(cmbGroups);
      // MakeDocumentF.actFilter.Enabled := False;
    finally
      Var_glb_NoFilter := False;
    end;
end;

procedure TMakeDocumentCofferF.UpdateFilter;
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
  FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCoffer);
  // , '', '', 'Bsell'
  // mnuCurrentDateClick(mnuCurrentDate);

  GetSecondaryDocNo(ExtIPCoffer, cmbCompany, MskDocNo, YearID_);

  DMf.qryACCTopicCode.Open;
  // MskDocNo.Text := IntToStr(GetANewCode('Bsell', s, 'SecondaryDocNo',
  // DMf.qryACCTopicCode.Connection, 1, True));

  // s := 'SELECT max(Serial) FROM ' + opt.AccOwnerName + 'DocGroups ' +
  // 'WHERE CompanyCode=' +
  // IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  // if not opt.AccOldAvailable then
  // s := s + ' AND  YearID = ' + IntToStr(YearID_);
  //
  // if not opt.AccOldAvailable then
  // MskSerial.Text := IntToStr(GetANewCode('Bsell', s, 'Serial',
  // DMf.adcAccounting, 1, True));

  GetSerial(ExtIPCoffer, cmbCompany, MskSerial, YearID_);

  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('FormNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('FormNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('FormDateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('FormDateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('AidDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidDate'], ftDate);
    Parameters.ParamByName('AidDateTo').Value :=
      GetcTo(myParams.ParamValues['AidDate'], ftDate);

    Parameters.ParamByName('DateSelect').Value :=
      GetcFrom(myParams.ParamValues['DateSelect'], ftInteger);

    Parameters.ParamByName('CustNoFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerID1'], ftInteger);
    Parameters.ParamByName('CustNoTo').Value :=
      GetcTo(myParams.ParamValues['CustomerID1'], ftInteger);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('PayTypesFrom').Value :=
      GetcFrom(myParams.ParamValues['PayTypes'], ftInteger);
    Parameters.ParamByName('PayTypesTo').Value :=
      GetcTo(myParams.ParamValues['PayTypes'], ftInteger);

    // Active:=True;
  end; // with
  with qryItems.Parameters do
  begin
    LblShowLimitPlace2.Caption := 'از شماره ' +
      IntToStr(ParamByName('FormNumberFrom').Value) + ' تا ' +
      IntToStr(ParamByName('FormNumberTo').Value);
    LblShowLimitPlace1.Caption := 'از تاريخ ' + ParamByName('FormDateFrom')
      .Value + ' تا ' + ParamByName('FormDateTo').Value;
  end; // with
  actMakeDoc.Enabled := False;
  actMakeDocumentPostF.Enabled := actMakeDoc.Enabled;
  actShowDoc.Execute;
end;

procedure TMakeDocumentCofferF.actFilterExecute(Sender: TObject);
var
  SQLtxt: string;
begin
  inherited;
  MakeDocumentPostF := nil;
  PnlUnderButton.Enabled := False;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterPayTypes1);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      // \_____________________________________________________________________/
      if Customer4Filter = EmptyStr then
        SQLtxt := 'select Min(CustID),Max(CustID) From Customers '
      else
        SQLtxt := 'SELECT ' + Customer4Filter + ',' + Customer4Filter;

      AddItem(DMf.adcBSell, 'CustomerID1', ' بانك/صندوقدار ', 'كد', ftInteger,
        dvMinMax, Customer4Filter, Customer4Filter, ciLookup,
        'SELECT CustID , CustName FROM Customers WHERE CustomerGrpID in(1,2)',
        SQLtxt);
      // \_____________________________________________________________________/
      if (Number4Filter = EmptyStr) or (var_tmp_str <> EmptyStr) then
        SQLtxt := 'SELECT Min(FormNumber),Max(formNumber) FROM Forms WHERE YearID = '
          + IntToStr(YearID_)
      else
        SQLtxt := 'SELECT ' + Number4Filter + ',' + Number4Filter;

      AddItem(DMf.adcBSell, 'Number', ' فرم ', 'شماره', ftInteger, dvMinMax,
        Number4Filter, Number4Filter, ciSimple, '', SQLtxt, True);

      AddItemFilter(GetFilter, TFilterAidDate);

      // \_____________________________________________________________________/
      if (Date4Filter = EmptyStr) or (var_tmp_str <> EmptyStr) then
        SQLtxt := 'SELECT  ''' + APPBank.StartYear +
          ''',Max(FormDate) FROM Forms WHERE YearID = ' + IntToStr(YearID_)
      else
        SQLtxt := 'SELECT ''' + Date4Filter + ''',''' + Date4Filter + '''';

      AddItem(DMf.adcBSell, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvMinMax, '',
        '', ciSimple, '', SQLtxt);
      // \_____________________________________________________________________/

      AddItem(DMf.adcBSell, 'DateSelect', 'انتخاب تاریخ برای محدوده', '',
        ftUnknown, dvDefaults, '0', '', ciRadioGroup,
        'SELECT 0 As MasterType,''تاریخ فرم '' as MasterName ' + ' Union All ' +
        'SELECT 1 ,''تاریخ کمکی''  ');

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

procedure TMakeDocumentCofferF.actAccountExecute(Sender: TObject);
begin
  inherited;
  Accountf.Enter(qryItems)
end;

procedure TMakeDocumentCofferF.init_Combos;
begin
  cmbGroups.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    sql.Text := 'SELECT  FormType, FormCaption FROM     FormTypes ';
    sql.Add('WHERE (MakeDoc =1) AND (DisplayFormType in(0,7)) ORDER BY FormType');
    // ,3
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
    sql.Text :=
      'SELECT DocTypeCode, DocTypeName_L1  FROM acc.DocTypes ORDER BY DocTypeCode';
    if optA.AccOldAvailable then
      sql.Text := 'SELECT DocTypes.DocType, DocTypes.Desc  FROM DocTypes ';
    Active := True;
    while not eof do
    begin
      CmbDocType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    sql.Text :=
      'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies ORDER BY CompanyCode';
    if optA.AccOldAvailable then
      sql.Text :=
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
  cmbGroups.ItemIndex := 0;
  mySelected := IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]));

  // cmbCompany.ItemIndex := 0;
end;

procedure TMakeDocumentCofferF.FormShow(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height :=
    StrToInt(ReadConfig(APPID, frmMakeDocs1.Name +
    IntToStr(frmMakeDocs1.DocKind) + 'DBGrid1Height', '0'));
  if frmMakeDocs1.Height < frmMakeDocs1.myHeight then
    frmMakeDocs1.Height := frmMakeDocs1.myHeight;
  myParams.Clear;
end;

procedure TMakeDocumentCofferF.frmMakeDocs1srcMakeDocsStateChange
  (Sender: TObject);
begin
  inherited;
  BtnReject.Cancel := not(frmMakeDocs1.qryMakeDocs.State in dseditmodes);
end;

procedure TMakeDocumentCofferF.FormCreate(Sender: TObject);
begin
  inherited;
  rgDocDate.ItemIndex := StrToInt(ReadConfig(APPID, 'rgDocDate', '0'));
  YearID_ := APPBank.Year;
  if not optA.AccOldAvailable then
  begin
    InitComboYearID(cmbYearID);
    if cmbYearID.ItemIndex > -1 then
      YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
    CheckDoc1.YearID := YearID_;
  end;

  frmMakeDocs1.DocKind := 2;
  if var_tmp_str <> EmptyStr then
    ActiveControl := nil;

  SetLookUpCash(qryItems);
  if not optA.CanRelation then
    DBGrid1.PopupMenu := nil;
  if optA.AccOldAvailable then
  begin
    Caption := Caption + ' (سامان) ';
    PnlSerial.Visible := False;
    qryInitcmb.Connection := DMf.adcOldAccounting;
    qryItems.Fields.Remove(qryItems.FieldByName('_CTopicCode2'));
    DBTxt_CTopicCode2.DataField := '_CTopicName';
    DBTxt_CTopicCode2.Visible := False;
    Lbl_CTopicCode2.Visible := False;
    qryDocuments.Connection := DMf.adcOldAccounting;
    qryDocGroups.Connection := DMf.adcOldAccounting;
    CheckDoc1.Connection := DMf.adcOldAccounting;
    CheckDoc1.oldAccounting := True;
    qryDocGroups.sql.Text := 'SELECT * FROM DocGroups where 0=1';
    qryDocuments.sql.Text := 'Select * FROM Documents where 0=1';
  end;
  Sql__Text := qryItems.sql.Text;
  init_Combos;
  // cmbCompany.ItemIndex := 0;
  NewDoc := True;
  setColumns2(DBGrid1, optA.ActiveCurrencyInTrialBalance, 'ArzAmount');

end;

procedure TMakeDocumentCofferF.actMakeDocExecute(Sender: TObject);
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
      Warn('اسناد در اين تاريخ '+mskDocDate.Text+' دائم شده‏اند.!‏', mtError);
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
      FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCoffer);
      // , '', '', 'Bsell'
      actShowDoc.Execute;
    end;

  except
    on E: Exception do
    begin
      Warn2(E.Message);
      // if MakeDocumentPostF = nil then
      begin
        DMf.adcBSell.RollbackTrans;
        DMf.adcAccounting.RollbackTrans;
      end;
    end;
  end;
end;

procedure TMakeDocumentCofferF.actMakeDocumentPostFExecute(Sender: TObject);
var
  WHERE4SQL, FromSQL: string;
begin
  inherited;
  if CmbDocType.ItemIndex = -1 then
  Begin
    Warn('نوع سند انتخاب نشده است.!‏', mtError);
    Exit;
  end;
  WHERE4SQL := ' WHERE (Forms.FormType IN ( ' + mySelected + ' )) ';
  WHERE4SQL := WHERE4SQL + format(' AND(FormNumber BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['Number'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['Number'], ftInteger))]);

  WHERE4SQL := WHERE4SQL + setInOrNotIn4QRy(TADOQuery(nil), myParams, 'number',
    'Forms.FormNumber');

  WHERE4SQL := WHERE4SQL + format(' AND(FormDate BETWEEN %s AND %s)',
    [QuotedStr(GetcFrom(myParams.ParamValues['Date'], ftDate)),
    QuotedStr(GetcTo(myParams.ParamValues['Date'], ftDate))]);

  WHERE4SQL := WHERE4SQL + format(' AND(Forms.CustomerID1 BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('CustNoFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('CustNoTo').Value)]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(Forms.SellsEmporium BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('SellsEmporiumFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('SellsEmporiumTo').Value)]);

  WHERE4SQL := WHERE4SQL + format(' AND(Forms.PayTypes BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('PayTypesFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('PayTypesTo').Value)]);

  if GetcFrom(myParams.ParamValues['DateSelect'], ftInteger) = 0 then

    WHERE4SQL := WHERE4SQL +
      format(' AND(((ISNULL(Forms.AidInfoDate,'''') ='''')OR(Forms.AidInfoDate =''/  /'')OR (Forms.AidInfoDate BETWEEN %s AND %s)))',
      [QuotedStr(GetcFrom(myParams.ParamValues['AidDate'], ftDate)),
      QuotedStr(GetcTo(myParams.ParamValues['AidDate'], ftDate))])

  else
    WHERE4SQL := WHERE4SQL + format(' AND(Forms.AidInfoDate BETWEEN %s AND %s)',
      [QuotedStr(GetcFrom(myParams.ParamValues['AidDate'], ftDate)),
      QuotedStr(GetcTo(myParams.ParamValues['AidDate'], ftDate))]);

  WHERE4SQL := WHERE4SQL +
    ' AND(FormTypes.DisplayFormType  in(0,7)) AND (Forms.DocNo =0) AND (Forms.FormState < 10)';

  WHERE4SQL := WHERE4SQL +
    'AND ((case when FormTypes.FormStateDefault4Doc = 0 then Forms.FormState else FormTypes.FormStateDefault4Doc end) = Forms.FormState)';

  FromSQL := ' INNER JOIN FormTypes ON Forms.FormType = FormTypes.FormType ';

  if var_tmp_str <> EmptyStr then
    WHERE4SQL := WHERE4SQL + ' AND (Forms.ID IN (' + var_tmp_str + ')) ';

  MakeDocumentPostF.ShowPost(WHERE4SQL, FromSQL, Self.Name)
end;

procedure TMakeDocumentCofferF.AddDetail(DocID: Integer);
var
  qry: TADOQuery;
begin
  inherited;
  if var_tmp_str <> EmptyStr then
  begin
    addIDFilter := ' AND (MakeDocuments_Coffer.ID IN (' + var_tmp_str + ')) ';
    addIDFilterUp := ' AND (Forms.ID IN (' + var_tmp_str + ')) ';
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
              FieldByName('Comment').AsString;
            qryDocuments.FieldByName('bed').AsCurrency := FieldByName('Debt')
              .AsCurrency;
            qryDocuments.FieldByName('bes').AsCurrency := FieldByName('Credit')
              .AsCurrency;
            qryDocuments.FieldByName('DoPrint').AsBoolean := True;

            if (opt.MakeDocumentPost and Integer(CHkAidDocNo)) <> 0 then
              qryDocuments.FieldByName('Aid_DocNo').AsString :=
                FieldByName('AidInfoNo').AsString;
            if (opt.MakeDocumentPost and Integer(CHkAidDocDateCo)) <> 0 then
              qryDocuments.FieldByName('Aid_DocDate').AsString :=
                FieldByName('AidInfoDate').AsString;
          end
          else
          begin
            qryDocuments.FieldByName('Serial').AsInteger := DocID;
            qryDocuments.FieldByName('YearID').AsInteger := YearID_;
            qryDocuments.FieldByName('CompanyCode').AsInteger :=
              Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);


            // IfThen(FieldByName('_CompanyCode').IsNull,
            // Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]),
            // FieldByName('_CompanyCode').AsInteger);

            qryDocuments.FieldByName('CTopicCode2').AsInteger :=
              FieldByName('CTopicCode2').AsInteger;
            qryDocuments.FieldByName('CTopicCode3').AsInteger :=
              FieldByName('CTopicCode3').AsInteger;
            qryDocuments.FieldByName('Comment_L1').AsString :=
              FieldByName('Comment').AsString;

            qryDocuments.FieldByName('CurrencyType').AsInteger :=
              FieldByName('ArzTypeID').AsInteger;

            qryDocuments.FieldByName('Debt').AsCurrency := FieldByName('Debt')
              .AsCurrency;
            qryDocuments.FieldByName('Credit').AsCurrency :=
              FieldByName('Credit').AsCurrency;
            if (opt.MakeDocumentPost and Integer(CHkAidDocNoFormID)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsInteger :=
                FieldByName('FormID').AsInteger;

            if ((opt.MakeDocumentPost and Integer(CHkAidAmountco)) <> 0) then
            begin
              if optA.ActiveCurrencyInTrialBalance then
                qryDocuments.FieldByName('AidAmount').AsFloat :=
                  RoundTo(FieldByName('ArzAmount').AsFloat, -2)

            end;

            if (opt.MakeDocumentPost and Integer(CHkAidDocDateCo)) <> 0 then
              qryDocuments.FieldByName('AidDocDate').AsString :=
                FieldByName('FormDate').AsString;
            if (opt.MakeDocumentPost and Integer(CHkAidDocNo)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsString :=
                FieldByName('FormNumber').AsString;

            if (opt.MakeDocumentPost and Integer(CHkAidDocNo2AidDocNocof)) <> 0
            then
            begin
              qryDocuments.FieldByName('AidDocNo').AsString :=
                FieldByName('AidInfoNo').AsString;
              qryDocuments.FieldByName('AidDocDate').AsString :=
                FieldByName('AidInfoDate').AsString;

            end;

            if (opt.MakeDocumentPost and Integer(CHkBudgetTopicID)) <> 0 then
            begin
              // s := LeftStr(FieldByName('TopicCode').AsString, 1);
              // if (s = '7') or (s = '8') then
              qryDocuments.FieldByName('BudgetTopicID').AsInteger :=
                FieldByName('BudgetCode').AsInteger;
            end;

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

    /// /////////////////
    ///
    qry := TADOQuery.Create(Self);
    with qry do
      try
        Connection := DMf.adcBSell;
        sql.Text := 'UPDATE Forms';
        sql.Add('SET DocNo = :DocNo, DocDate = :DocDate');
        sql.Add(',FormState=CASE WHEN FormState>' +
          IntToStr(opt.DocReciptStateDefault) + ' THEN FormState ELSE  ' +
          IntToStr(opt.DocReciptStateDefault) + ' END ');
        sql.Add(format(', UserRegistrationDoc = %s ', [QuotedStr(User.Name)]));

        sql.Add('FROM Forms INNER JOIN');
        sql.Add('FormTypes ON Forms.FormType = FormTypes.FormType');

        sql.Add('WHERE (Forms.DocNo =0) AND (Forms.FormNumber BETWEEN :FormNumberFrom AND :FormNumberTo) AND');
        sql.Add('(Forms.FormDate BETWEEN :FormDateFrom AND :FormDateTo) AND');
        sql.Add('(Forms.FormType IN ( ' + mySelected + ' ) )');
        sql.Add('AND (Forms.CustomerID1 between :CustNoFrom and :CustNoTo) ');
        sql.Add('AND (Forms.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
        sql.Add('AND (Forms.PayTypes BETWEEN :PayTypesFrom AND :PayTypesTo)');
        sql.Add('AND ((case when FormTypes.FormStateDefault4Doc = 0 then Forms.FormState else FormTypes.FormStateDefault4Doc end) = Forms.FormState)');

        setInOrNotIn4QRy(qry, myParams, 'number', 'Forms.FormNumber');

        sql.Add(format
          (' AND(((ISNULL(Forms.AidInfoDate,'''') ='''')OR(Forms.AidInfoDate =''/  /'')OR (Forms.AidInfoDate BETWEEN %s AND %s)))',
          [QuotedStr(GetcFrom(myParams.ParamValues['AidDate'], ftDate)),
          QuotedStr(GetcTo(myParams.ParamValues['AidDate'], ftDate))]));

        if (addIDFilterUp <> EmptyStr) then
          sql.Add(addIDFilterUp);

        if (MakeDocumentPostF <> nil) AND (qryItems.Filter <> EmptyStr) then
          sql.Add('AND (' + qryItems.Filter + ')');

        Parameters.ParamByName('DocNo').Value := MskDocNo.Text;
        // qryDocGroups.FieldByName('SecondaryDocNo').AsInteger;
        Parameters.ParamByName('DocDate').Value := mskDocDate.Text;
        Parameters.ParamByName('FormNumberFrom').Value :=
          qryItems.Parameters.ParamByName('FormNumberFrom').Value;
        Parameters.ParamByName('FormNumberTo').Value :=
          qryItems.Parameters.ParamByName('FormNumberTo').Value;

        Parameters.ParamByName('FormDateFrom').Value :=
          qryItems.Parameters.ParamByName('FormDateFrom').Value;
        Parameters.ParamByName('FormDateTo').Value :=
          qryItems.Parameters.ParamByName('FormDateTo').Value;

        Parameters.ParamByName('CustNoFrom').Value :=
          GetcFrom(myParams.ParamValues['CustomerID1'], ftInteger);
        Parameters.ParamByName('CustNoTo').Value :=
          GetcTo(myParams.ParamValues['CustomerID1'], ftInteger);
        Parameters.ParamByName('SellsEmporiumFrom').Value :=
          GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
        Parameters.ParamByName('SellsEmporiumTo').Value :=
          GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

        Parameters.ParamByName('PayTypesFrom').Value :=
          GetcFrom(myParams.ParamValues['PayTypes'], ftInteger);
        Parameters.ParamByName('PayTypesTo').Value :=
          GetcTo(myParams.ParamValues['PayTypes'], ftInteger);

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
      end;
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

procedure TMakeDocumentCofferF.actShowDocExecute(Sender: TObject);
var
  ErrorCount: Integer;
  OrderBy: String;
  ParamList: String;
begin
  inherited;
  ParamList :=
    ' 0, :FormDateFrom, :FormDateTo,:FormNumberFrom, :FormNumberTo , :CustNoFrom  , :CustNoTo , :SellsEmporiumFrom , :SellsEmporiumTo '
    + #13#10 + ', :PayTypesFrom , :PayTypesTo ,' + IfThen(chkTajmia.Checked,
    '2', '1') + ' , :AidDateFrom , :AidDateTo ,:DateSelect ';

  if var_tmp_str <> EmptyStr then
  begin
    addIDFilter := ' AND (MakeDocuments_Coffer.ID IN (' + var_tmp_str + ')) ';
    addIDFilterUp := ' AND (ID IN (' + var_tmp_str + ')) ';
  end;

  addIDFilter := addIDFilter + setInOrNotIn4QRy(TADOQuery(nil), myParams,
    'number', 'FormNumber');

  lslWarnings.Visible := False;

  OrderBy :=
    ' ORDER BY  FormId,FormDate,FormCaption ,bedbes , TopiCcode ,DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3 ';
  with qryItems do
  begin
    Active := False;
    case RdGKindDoc.ItemIndex of
      0:
        sql.Text :=
          ' SELECT 0 as FormId,MAX(ArzTypeID) AS ArzTypeID,0 AS ServerID,0 AS YearID, TopicCode, '
          + #13#10 + 'DetailCode, CTopicCode, CTopicCode2,CTopicCode3 ,' +
          GetComment + #13#10 +
        // ''' بابت ''+ FormCaption +'' بتاريخ ''+ FormDate  as Comment ' +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit , AidInfoNo, AidInfoDate,0.0 as ArzAmount  ,0 AS FormNumber,FormDate '
          + ',MIN(PO) AS PO ,BudgetCode,ProjectID,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   MakeDocuments_Coffer(' + ParamList +
          ' ) MakeDocuments_Coffer ' + ' WHERE     (FormType IN ( ' + mySelected
          + #13#10 + ' )) ' + addIDFilter +
          ' GROUP BY FormCaption,TopicCode, DetailCode, CTopicCode, CTopicCode2'
          + #13#10 +
          ',CTopicCode3, bedbes,  formdate , AidInfoNo, AidInfoDate ,BudgetCode,ProjectID'
          + frmMakeDocs1.GetGROUPBY + OrderBy;
      1:
        sql.Text :=
          ' SELECT FormCaption,bedbes,FormId,ArzTypeID, ServerID,YearID,TopiCcode ,DetailCode ,'
          + #13#10 + ' CTopicCode, CTopicCode2,CTopicCode3, ' + GetComment
          + #13#10 +
        // '''' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم شماره ''+ ltrim(str(FormNumber)) as Comment' +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit, AidInfoNo, AidInfoDate , ArzAmount ,FormNumber, FormDate,MIN(PO) AS PO,BudgetCode,ProjectID '
          + ' ,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   MakeDocuments_Coffer(' + ParamList +
          ') MakeDocuments_Coffer ' + ' WHERE     (FormType IN ( ' + mySelected
          + #13#10 + ' )) ' + addIDFilter +
          ' group By FormCaption ,FormID,ArzTypeID, ServerID, YearID, FormNumber,'
          + 'FormDate,topiccode ,DetailCode ,CtopicCode,CTopicCode2,CTopicCode3'
          + ', bedbes , AidInfoNo, AidInfoDate, ArzAmount,BudgetCode,ProjectID '
          + #13#10 + frmMakeDocs1.GetGROUPBY + OrderBy;

      2:
        sql.Text :=
          ' SELECT 0 as  FormId,MAX(ArzTypeID) AS ArzTypeID,0 AS ServerID,0 AS YearID, TopicCode, DetailCode, CTopicCode,'
          + #13#10 + ' CTopicCode2,CTopicCode3 ,' + GetComment + #13#10 +
        // '' '' بابت '' + FormCaption + '' از تاريخ   '' + Min(FormDate) +'' تا '' + max(FormDate)  + ''  طي فرمهاي  '' + ltrim(rtrim(str(min(FormNumber))))+ ''  تا  '' +'
        // + ' ltrim(rtrim(str(max(FormNumber)))) as Comment' +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit , AidInfoNo, AidInfoDate ,0.0 as ArzAmount ,0 AS FormNumber,'''' as FormDate,MIN(PO) AS PO ,BudgetCode,ProjectID '
          + ' ,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   MakeDocuments_Coffer(' + ParamList +
          ') MakeDocuments_Coffer ' + #13#10 + ' WHERE     (FormType IN ( ' +
          mySelected + #13#10 + ' )) ' + addIDFilter + #13#10 +
          ' group By FormCaption ,topiccode ,DetailCode ,CtopicCode ,CtopicCode2,CTopicCode3 ,bedbes '
          + #13#10 +
          ', AidInfoNo, AidInfoDate ,BudgetCode,ProjectID ' +
          ' ORDER BY  FormCaption ,bedbes , TopiCcode ,DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3 ';
      3:
        sql.Text :=
          ' select FormId,ArzTypeID, ServerID, YearID,TopiCcode ,DetailCode ,CTopicCode, CTopicCode2,CTopicCode3,'
          + #13#10 + GetComment +
        // '' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم ش ''+ ltrim(str(FormNumber))+'' ش''  +str(AidInfoNo) as Comment' +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit ' + #13#10 +
          ' , AidInfoNo, AidInfoDate,ArzAmount  , FormNumber,FormDate,MIN(PO) AS PO ,BudgetCode,ProjectID,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   MakeDocuments_Coffer(' + ParamList +
          ') MakeDocuments_Coffer ' + ' WHERE     (FormType IN ( ' + mySelected
          + #13#10 + ' )) ' + addIDFilter + #13#10 +
          ' group By FormCaption ,FormID,ArzTypeID, ServerID, YearID, FormNumber,FormDate,topiccode ,DetailCode '
          + #13#10 +
          ',CtopicCode,CTopicCode2,CTopicCode3 ,bedbes , AidInfoNo, AidInfoDate, ArzAmount ,BudgetCode,ProjectID '
          + #13#10 + OrderBy;

      4:
        sql.Text :=
          ' select FormId,ArzTypeID, ServerID, YearID,TopiCcode ,DetailCode ,CTopicCode, CTopicCode2,CTopicCode3, '
          + #13#10 + GetComment +
        // '''' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم ش ''+ ltrim(str(FormNumber))+'' ش''  +str(AidInfoNo)+isnull(FomNote,'''')  as Comment' +
          ',' + ' SUM(debt) AS Debt, SUM(credit) AS Credit, AidInfoNo, AidInfoDate ,ArzAmount, FormNumber,FormDate,MIN(PO) AS PO ,BudgetCode,ProjectID '
          + ' ,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   MakeDocuments_Coffer(' + ParamList +
          ') MakeDocuments_Coffer ' + ' WHERE     (FormType IN ( ' + mySelected
          + #13#10 + ' )) ' + addIDFilter + #13#10 +
          ' group By FormCaption ,FormID,ArzTypeID, ServerID, YearID, FormNumber,FormDate,topiccode ,DetailCode ,CtopicCode,CTopicCode2,CTopicCode3 ,bedbes '
          + #13#10 +
          ', FomNote, AidInfoNo, AidInfoDate, ArzAmount ,BudgetCode,ProjectID  '
          + OrderBy;

      5:
        sql.Text :=
          ' select 0 AS FormId,MAX(ArzTypeID) AS ArzTypeID,0 AS ServerID,0 AS YearID,TopiCcode ,DetailCode ,CTopicCode, CTopicCode2,CTopicCode3, '
          + #13#10 + GetComment +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit,  min(AidInfoNo) as AidInfoNo , min(AidInfoDate) as AidInfoDate ,0.0 as ArzAmount,0 AS FormNumber,'''' as FormDate,MIN(PO) AS PO ,BudgetCode,ProjectID '
          + ' ,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM MakeDocuments_Coffer(' + ParamList +
          ') MakeDocuments_Coffer ' + #13#10 + ' WHERE (FormType IN ( ' +
          mySelected + ' )) ' + addIDFilter + #13#10 +
          ' group By FomNote,FormCaption ,topiccode ,DetailCode ,CtopicCode,CTopicCode2,CTopicCode3 ,bedbes ,BudgetCode,ProjectID '
          + #13#10 + 'order by bedbes';

      6:
        sql.Text :=
          ' select FormId,ArzTypeID, ServerID, YearID,TopiCcode ,DetailCode ,CTopicCode, CTopicCode2,CTopicCode3,'
          + #13#10 + GetComment +
        // '' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم ش ''+ ltrim(str(FormNumber))+'' ش''  +str(AidInfoNo) as Comment' +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit ' + #13#10 +
          ',  AidInfoNo, AidInfoDate , ArzAmount , FormNumber, FormDate,MIN(PO) AS PO ,BudgetCode,ProjectID,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '
          + #13#10 + ' FROM   MakeDocuments_Coffer(' + ParamList +
          ') MakeDocuments_Coffer ' + #13#10 + ' WHERE     (FormType IN ( ' +
          mySelected + #13#10 + ' )) ' + addIDFilter + #13#10 +
          ' group By FormCaption ,FormID,ArzTypeID, ServerID, YearID, FormNumber,FormDate,topiccode ,DetailCode ,CtopicCode,CTopicCode2,CTopicCode3 ,bedbes , AidInfoNo, AidInfoDate, AidInfoNo, AidInfoDate '
          + #13#10 +
          ',CustName2,FomNote, ArzAmount,BudgetCode,ProjectID' +
          #13#10 + OrderBy;

      7, 8:
        sql.Text :=
          'select max(FormId) FormId,ArzTypeID,max(ServerID) ServerID,max(YearID) YearID,TopiCcode ,DetailCode ,CTopicCode,'
          + ' CTopicCode2,CTopicCode3,' + #13#10 + GetComment +
          ', SUM(debt) AS Debt, SUM(credit) AS Credit' +
          ' , ''0.0'' AidInfoNo,'''' AidInfoDate ,0.0 ArzAmount ,max( FormNumber)FormNumber,max( FormDate) FormDate,MIN(PO) AS PO ,max('
          + ' BudgetCode)BudgetCode,max( ProjectID)ProjectID,sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,max(CurrencyRate)CurrencyRate '
          + ' FROM MakeDocuments_Coffer(' + ParamList + ') MakeDocuments_Coffer'
          + ' WHERE (FormType IN ( ' + mySelected + #13#10 + '  ))' +
          addIDFilter + #13#10 +
          ' group By FormCaption ,ArzTypeID, topiccode ,DetailCode ,case when bedbes = '
          + IfThen(RdGKindDoc.ItemIndex = 7, '1', '0') +
          ' then FormId else 0 end' +
          ' ,CtopicCode,CTopicCode2,CTopicCode3 ,bedbes' + #13#10 + OrderBy;

    end; // case
    Filtered := False;
    Active := True;
  end; // with
  ErrorCount := Error;
  if ErrorCount > 0 then
  begin
    zbal.Title := ansistring(IntToStr(ErrorCount) + 'خطا وجود دارد');
    zbal.Prompt.Text := 'جهت رويت از ليست خطاها استفاده كنيد.';
    zbal.Show(Self);
    FlashAControl(Self);
  end; // if
end;

procedure TMakeDocumentCofferF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, 'rgDocDate', IntToStr(rgDocDate.ItemIndex));

  FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCoffer);
  // , '', '', 'Bsell'
  var_tmp_str := EmptyStr;
  Var_glb_NoFilter := False;
end;

procedure TMakeDocumentCofferF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  AccDBGrid1CKeyPress(Sender, Key);
end;

procedure TMakeDocumentCofferF.qryItemsAfterOpen(DataSet: TDataSet);
var
  Debt, Credit: Currency;
begin
  inherited;
  Debt := CalcSumFileds(qryItems, 'Debt');
  edtBed.Text := CurrToStrF(Debt, ffCurrency, 0);
  Credit := CalcSumFileds(qryItems, 'Credit');
  edtBes.Text := CurrToStrF(Credit, ffCurrency, 0);
  edtDifference.Text := CurrToStrF(Debt - Credit, ffCurrency, 0);
  // StatusBar2.Panels[0].Text:=IntToStr(qryItems.RecordCount);
  actMakeDoc.Visible := (Debt <> 0) and (Credit <> 0) and (Debt - Credit = 0);
  actMakeDocumentPostF.Visible := actMakeDoc.Visible;
end;

procedure TMakeDocumentCofferF.chkTajmiaClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentCofferF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  MskDocTopic.Text := ' سند خزانه‏داري _ ‏' + cmbGroups.Text;

  FnDocTypeCode(cmbGroups, CmbDocType, DocPostKind);

  RdGKindDoc.OnClick := nil;
  RdGKindDoc.ItemIndex := IfThen(DocPostKind = -1, 0, DocPostKind);
  RdGKindDoc.OnClick := RdGKindDocClick;
  RdGKindDoc.Visible := DocPostKind = -1;
  Panel4.Visible := RdGKindDoc.Visible;
  frmMakeDocs1.Visible := RdGKindDoc.Visible and User.PowerUser;

  mySelected := IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]));
  if myParams.FindParam('Date') = nil then
    actFilter.Execute
  else
    UpdateFilter;
end;

procedure TMakeDocumentCofferF.rgDocDateClick(Sender: TObject);
begin
  inherited;
  case rgDocDate.ItemIndex of
    0:
      mskDocDate.Text := var_glb_CurrentDate;
    1:
      if myParams.FindParam('Date') <> nil then
        mskDocDate.Text := GetcTo(myParams.ParamValues['Date'], ftDate);
    2:
      mskDocDate.Text := Date4Filter // .......................
  end;
end;

procedure TMakeDocumentCofferF.RdGKindDocClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute
end;

function TMakeDocumentCofferF.Error: Integer;
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
        (FieldByName('_Detailname').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('CTopicCode').Value <> 0) and
        (FieldByName('_CTopicname').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TMakeDocumentCofferF.actErrorListExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  lslWarnings.Clear;
  lslWarnings.Visible := True;
  with qryItems do
  begin
    DisableControls;
    First;
    try
      while not eof do
      begin
        s := IfThen((FieldByName('_TopicName').AsString = '') and
          (FieldByName('TopicCode').AsString <> '0'), FieldByName('TopicCode')
          .AsString);
        s := s + IfThen((FieldByName('_CTopicName').AsString = '') and
          (FieldByName('CTopicCode').AsString <> '0'),
          '-' + FieldByName('CTopicCode').AsString);
        s := s + IfThen((FieldByName('_DetailName').AsString = '') and
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

procedure TMakeDocumentCofferF.lslWarningsClick(Sender: TObject);
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

procedure TMakeDocumentCofferF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMakeDocumentCofferF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TMakeDocumentCofferF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TMakeDocumentCofferF.SBtnReciptNumberClick(Sender: TObject);
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
  // Txt := 'SELECT Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate, '
  // + ' COUNT(Acc.Documents.Serial) AS RecNo' +
  // ' FROM Acc.DocGroups LEFT OUTER JOIN' + ' Acc.Documents ON  ' +
  // ' Acc.DocGroups.Serial = Acc.Documents.Serial ' +
  // ' AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode ' +
  // ' AND  Acc.DocGroups.YearID = Acc.Documents.YearID ' +
  // ' WHERE (Acc.DocGroups.Status IN (1)) ' +
  // ' AND (Acc.DocGroups.PrimaryDocNo = 0) AND (Acc.DocGroups.YearID = %d ) ' +
  // IfThen(opt.SendDoc2OtherSystems, '',
  // 'AND (Acc.DocGroups.SourceDataBase = %s )') +
  // ' GROUP BY Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate';
  //
  // If opt.SendDoc2OtherSystems Then
  // Txt := format(Txt, [YearID_])
  // else
  // Txt := format(Txt, [YearID_, QuotedStr(APPBank.Name + '.dbo.' + formName)]);
  //
  // b := searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' ليست اسناد موجود  ',
  // Txt, ['سريال سند', 'شماره موقت', 'تاريخ سند', ''], Results,
  // [80, 80, 80, 0], alLeft);
end;

procedure TMakeDocumentCofferF.MskSerialExit(Sender: TObject);
begin
  inherited;
  if optA.AccOldAvailable then
    Exit;
  with DMf.qryAccounting do
  begin
    Active := False;
    sql.Text :=
      'select count(serial) as countserial from ACC.docgroups where serial= ' +
      trim(MskSerial.Text);
    sql.Add('AND CompanyCode=' +
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
    sql.Text :=
      'select Serial,SecondaryDocNo,DocDate from ACC.docgroups where serial= ' +
      trim(MskSerial.Text);
    sql.Add('AND CompanyCode=' +
      IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
      ' AND  YearID = ' + IntToStr(YearID_));
    Active := True;
    MskSerial.Text := FieldByName('Serial').AsString;
    MskDocNo.Text := FieldByName('SecondaryDocNo').AsString;
    mskDocDate.Text := FieldByName('DocDate').AsString;
    // popDate.Items.Enabled := False;
    rgDocDate.Enabled := False;
    Active := False;
  end; // with
end;

procedure TMakeDocumentCofferF.actCheckDocumentExecute(Sender: TObject);
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

procedure TMakeDocumentCofferF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qryItems.FieldByName('FormID').AsInteger = 0 then
  begin
    Warn('در اين  نحوه ثبت سند حسابداري  نمايش فرم وجود ندارد.‏',
      mtInformation);
    Exit;
  end;
  ShowFormTypesForms(qryItems, Self);
end;

procedure TMakeDocumentCofferF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True
end;

procedure TMakeDocumentCofferF.cmbYearIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentCofferF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  SendWarnDBGridToExcelC(DBGrid1, lslWarnings)
end;

procedure TMakeDocumentCofferF.btnSelectClick(Sender: TObject);
var
  Txt: String;
begin
  inherited;
  Txt := 'SELECT  FormType, FormCaption FROM FormTypes WHERE (MakeDoc =1 ) ' +
    'AND (DisplayFormType in(0,7)) ORDER BY FormType';
  // ,3
  mySelected := selectedF.ShowSelect(DMf.adcBSell, 'انتخاب فرم', Txt,
    ['كد', 'فرم'], alLeft, [50, 400], mySelected);
  if mySelected <> EmptyStr then
    UpdateFilter
end;

procedure TMakeDocumentCofferF.actDatasetToXMLExecute(Sender: TObject);
begin
  inherited;
  DatasetToXML(qryItems, 'lstConst', 'Consts')
end;

procedure TMakeDocumentCofferF.setDocPostKind(DocPost: SmallInt);
var
  s: string;
begin
  inherited;
  if not CheckUserlevel2(opt.DocPostKindLevelID) then
    Exit;
  s := 'UPDATE FormTypes ' + 'SET DocPostKind = %D WHERE (FormType  IN ( ' +
    mySelected + ' ) )';
  s := format(s, [DocPost]);
  DMf.adcBSell.Execute(s);
  RdGKindDoc.Visible := DocPost = -1;
  Panel4.Visible := RdGKindDoc.Visible;
  frmMakeDocs1.Visible := RdGKindDoc.Visible and User.PowerUser;
end;

procedure TMakeDocumentCofferF.actDocPostKind1Execute(Sender: TObject);
begin
  inherited;
  setDocPostKind(RdGKindDoc.ItemIndex)
end;

procedure TMakeDocumentCofferF.actDocPostKind_1Execute(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height := 123;
  setDocPostKind(-1)
end;

function TMakeDocumentCofferF.GetComment: String;
begin
  With frmMakeDocs1 do
  begin
    DocTypeIndex := RdGKindDoc.ItemIndex;
    DocType := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    if IsFirstTime then
      case DocTypeIndex of
        0:
          begin
            // ''' بابت ''+ FormCaption +'' بتاريخ ''+ FormDate  as Comment ' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
          end;

        1:
          begin
            // '''' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم شماره ''+ ltrim(str(FormNumber)) as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
            InsertDocCaption('طي فرم شماره', 'ltrim(str(FormNumber))');
          end;

        2:
          begin
            // '' '' بابت '' + FormCaption + '' از تاريخ   '' + Min(FormDate) +'' تا '' + max(FormDate)  + ''  طي فرمهاي  '' + ltrim(rtrim(str(min(FormNumber))))+ ''  تا  '' +'
            // + ' ltrim(rtrim(str(max(FormNumber)))) as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('از تاريخ', 'Min(FormDate)');
            InsertDocCaption('تا', 'max(FormDate)');
            InsertDocCaption('طي فرمهاي', 'ltrim(rtrim(str(min(FormNumber))))');
            InsertDocCaption('تا', 'ltrim(rtrim(str(max(FormNumber))))');
          end;
        3:
          begin
            // '' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم ش ''+ ltrim(str(FormNumber))+'' ش''  +str(AidInfoNo) as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
            InsertDocCaption('طي فرم ش', 'ltrim(str(FormNumber))');
            InsertDocCaption('ش',
              'AidInfoNo ');
          end;

        4:
          begin
            // '''' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم ش ''+ ltrim(str(FormNumber))+'' ش''  +str(AidInfoNo)+isnull(FomNote,'''')  as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
            InsertDocCaption('طي فرم ش', 'ltrim(str(FormNumber))');
            InsertDocCaption('ش',
              'AidInfoNo ');
            InsertDocCaption(' ', 'isnull(FomNote,'''')');
          end;

        5:
          begin
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('از تاريخ', 'min(FormDate)');
            InsertDocCaption('تا', 'max(FormDate)');
            InsertDocCaption('طي فرم ش', 'ltrim(str(min(FormNumber)))');
            InsertDocCaption('تا', 'ltrim(str(max(FormNumber)))');
            // InsertDocCaption('ش', 'str(AidInfoNo)');
            // InsertDocCaption(' ', 'isnull(FomNote,'''')');
          end;
        6:
          begin
            // '' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي فرم ش ''+ ltrim(str(FormNumber))+'' ش''  +str(AidInfoNo) as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
            InsertDocCaption('طي فرم ش', 'ltrim(str(FormNumber))');
            InsertDocCaption(' ش ',
              'Cast(Cast(AidInfoNo AS bigint) AS varchar(50))');
            InsertDocCaption(' ت ', 'AidInfoDate');
            InsertDocCaption(' ', 'CustName2');
            InsertDocCaption(' ', 'FomNote');
          end;

        7, 8:
          begin
            InsertDocCaption('بابت', 'FormCaption');
          end;

      end; // case
    Result := GetMakeDocs;
  end;
end;

end.
