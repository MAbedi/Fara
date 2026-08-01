// Hassan Rezaei   And Mahmood Abedi
unit MakeDocumentCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, DBCtrls, zAPIBalloon,
  Menus, CheckDoc, FrMakeDocs, System.Actions, System.ImageList,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TMakeDocumentCheckF = class(Ttemplate2MDIF)
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
    qryItems_TopicName: TStringField;
    qryItems_Detailname: TStringField;
    qryItems_CTopicname: TStringField;
    qryItemsComment: TStringField;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
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
    qryItemsFormItemID: TIntegerField;
    qryItemsDebt: TFMTBCDField;
    DBTxt_CTopicCode2: TDBText;
    Lbl_CTopicCode2: TLabel;
    qryItemsFormID: TIntegerField;
    cmbCompany: TComboBox;
    Label10: TLabel;
    qryItemsDetailCode: TIntegerField;
    qryItemsCTopicCode: TIntegerField;
    qryItemsCTopicCode2: TIntegerField;
    qryItemsCredit: TFMTBCDField;
    qryItemsCheckDate: TStringField;
    qryItemsCheckNumber: TFloatField;
    grpCheckState: TGroupBox;
    cmbCheckState: TComboBox;
    actCheckDocument: TAction;
    BitBtn9: TBitBtn;
    actShowForm: TAction;
    PnlSerial: TPanel;
    SBtnReciptNumber: TSpeedButton;
    Label11: TLabel;
    MskSerial: TMaskEdit;
    qryItems_CTopicCode2: TStringField;
    actSendWarnToExcel: TAction;
    btnSendWarnToExcel: TBitBtn;
    btnSelect: TSpeedButton;
    actDatasetToXML: TAction;
    CheckDoc1: TCheckDoc;
    qryItems_TopicName2: TStringField;
    qryItemsDetailCode2: TStringField;
    qryItems_CTopicName2: TStringField;
    qryItems_CTopicName2_2: TStringField;
    pm1: TPopupMenu;
    XML1: TMenuItem;
    Excel1: TMenuItem;
    qryItemsBudgetCode: TIntegerField;
    qryItemsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    dbtxt_DetailName: TDBText;
    dbtxt_TopicName2: TDBText;
    dbtxt_CTopicName2: TDBText;
    dbtxt_BudgetName_L2: TDBText;
    qryItems_BudgetName_L2: TStringField;
    qryItems_CompanyCode: TIntegerField;
    qryItemsCtopicCode3: TIntegerField;
    actDocPostKind1: TAction;
    actDocPostKind_1: TAction;
    frmMakeDocs1: TfrmMakeDocs;
    Splitter2: TSplitter;
    qryItemsTopicCode: TLargeintField;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    chkTajmia: TCheckBox;
    pnlTop: TPanel;
    edtBed: TEdit;
    edtBes: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtDifference: TEdit;
    actMakeDocumentPostF: TAction;
    rgDocDate: TRadioGroup;
    BitBtn8: TBitBtn;
    cmbYearID: TComboBox;
    qryItemsArzAmount: TFloatField;
    actAccountf: TAction;
    qryItemsFormDate: TStringField;
    qryItemsFormNumber: TIntegerField;
    ctAddComment2: TAction;
    qryItemsComment2: TStringField;
    qryItemsPO: TStringField;
    qryItemsAidInfoDate: TStringField;
    qryItemsAidInfoDateItem: TStringField;
    qryItemsArzTypeID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryItemsCurrencyDebit: TFMTBCDField;
    qryItemsCurrencyCredit: TFMTBCDField;
    qryItemsCurrencyRate: TFMTBCDField;
    qryItemsAidInfoNo: TStringField;
    qryItemsAidInfoNoItem: TStringField;
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
    procedure cmbCheckStateChange(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure actSendWarnToExcelExecute(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure actDatasetToXMLExecute(Sender: TObject);
    procedure btnSendWarnToExcelClick(Sender: TObject);
    procedure actDocPostKind1Execute(Sender: TObject);
    procedure actDocPostKind_1Execute(Sender: TObject);
    procedure frmMakeDocs1srcMakeDocsStateChange(Sender: TObject);
    procedure chkTajmiaClick(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure actMakeDocumentPostFExecute(Sender: TObject);
    procedure rgDocDateClick(Sender: TObject);
    procedure cmbYearIDChange(Sender: TObject);
    procedure actAccountfExecute(Sender: TObject);
    procedure ctAddComment2Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    Sql__Text: String;
    NewDoc: Boolean;
    mySelected, SelectCompanyCode: String;
    Rec_No: Integer;
    DocPostKind: SmallInt;
    addIDFilter, addIDFilterup: String;
    procedure AddDetail(DocID: Integer);
    procedure init_Combos;
    function Error: Integer;
    procedure setDocPostKind(DocPost: SmallInt);
    function GetComment: String;
    procedure Commentset;
  public
    YearID_, UpdateDocNoCount: Integer;
    Number4Filter, Date4Filter, Customer4Filter: string;
    procedure Enter(qry: TADOQuery);
    procedure UpdateFilter;
    { Public declarations }
  end;

var
  MakeDocumentCheckF: TMakeDocumentCheckF;

const
  formName = 'Forms';

implementation

uses GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2, Math, StrUtils, DM,
  searchCode_ADO, mmessage, FormFunctions, selected, CheckDocument, FaraConsts,
  AccFunctions, main, MakeDocumentPost, Filter_ADO_Const, Account;

{$R *.dfm}

procedure TMakeDocumentCheckF.Enter(qry: TADOQuery);
begin
  With MakeDocumentCheckF do
    try
      // Var_glb_NoFilter := True;
      CreateMDIForm2(TMakeDocumentCheckF, MakeDocumentCheckF, mainf);
      Number4Filter := qry.FieldByName('FormNumber').AsString;
      Date4Filter := qry.FieldByName('FormDate').AsString;
      Customer4Filter := qry.FieldByName('CustomerID1').AsString;
      cmbGroups.DroppedDown := False;
      cmbGroups.ItemIndex := MakeDocumentCheckF.cmbGroups.Items.IndexOfObject
        (TObject(qry.FieldByName('FormType').AsInteger));
      cmbGroupsChange(cmbGroups);
      // MakeDocumentF.actFilter.Enabled := False;
    finally
      Var_glb_NoFilter := False;
    end;
end;

procedure TMakeDocumentCheckF.UpdateFilter;
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
  FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCheck);
  // mnuCurrentDateClick(mnuCurrentDate);

  GetSecondaryDocNo(ExtIPCheck, cmbCompany, MskDocNo, YearID_);

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
  GetSerial(ExtIPCheck, cmbCompany, MskSerial, YearID_);

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

    Parameters.ParamByName('CheckStateFrom').Value := 0;
    Parameters.ParamByName('CheckStateTo').Value := 99;
    if grpCheckState.Visible then
    begin
      Parameters.ParamByName('CheckStateFrom').Value :=
        Integer(cmbCheckState.Items.Objects[cmbCheckState.ItemIndex]);
      Parameters.ParamByName('CheckStateTo').Value :=
        Integer(cmbCheckState.Items.Objects[cmbCheckState.ItemIndex]);
    end; // if
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

procedure TMakeDocumentCheckF.actFilterExecute(Sender: TObject);
var
  SQLtxt: string;
begin
  inherited;
  MakeDocumentPostF := nil;
  PnlUnderButton.Enabled := False;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterAidDate);
      AddItemFilter(GetFilter, TFilterPayTypes1);
      AddItemFilter(GetFilter, TFilterSellsEmporium);

      // //_____________________________________________________________________/
      // if Customer4Filter = EmptyStr then
      // SQLtxt := 'select Min(CustID),Max(CustID) From Customers '
      // else
      // SQLtxt := 'SELECT ' + Customer4Filter + ',' + Customer4Filter;
      //
      // AddItem(DMf.adcBSell, 'CustomerID1', ' بانك/صندوقدار ', 'كد', ftInteger,
      // dvMinMax, Customer4Filter, Customer4Filter, ciLookup,
      // 'SELECT CustID , CustName FROM Customers WHERE CustomerGrpID in(1,2)',
      // SQLtxt);
      // ____________________________________________________________________/
      if (Number4Filter = EmptyStr) or (var_tmp_str <> EmptyStr) then
        SQLtxt := 'SELECT Min(FormNumber),Max(formNumber) FROM Forms WHERE YearID = '
          + IntToStr(YearID_)
      else
        SQLtxt := 'SELECT ' + Number4Filter + ',' + Number4Filter;

      AddItem(DMf.adcBSell, 'Number', ' فرم ', 'شماره', ftInteger, dvMinMax,
        Number4Filter, Number4Filter, ciSimple, '', SQLtxt, True);
      // _____________________________________________________________________/
      if (Date4Filter = EmptyStr) or (var_tmp_str <> EmptyStr) then
        SQLtxt := 'SELECT  ''' + APPBank.StartYear +
          ''',Max(FormDate) FROM Forms WHERE YearID = ' + IntToStr(YearID_)
      else
        SQLtxt := 'SELECT ''' + Date4Filter + ''',''' + Date4Filter + '''';

      AddItem(DMf.adcBSell, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvMinMax, '',
        '', ciSimple, '', SQLtxt);
      // _____________________________________________________________________/

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

procedure TMakeDocumentCheckF.actAccountfExecute(Sender: TObject);
begin
  inherited;
  Accountf.Enter(qryItems)
end;

procedure TMakeDocumentCheckF.init_Combos;
begin
  cmbGroups.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := ' SELECT FormType, FormCaption FROM   FormTypes  ';
    SQL.Add('WHERE (MakeDoc = 1 ) And DisplayFormType not in(0,7)  order by  FormType ');
    Active := True;
    while not eof do
    begin
      cmbGroups.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    SQL.Text := ' SELECT code,name  FROM  LookUps where kind = 16 ';
    Active := True;
    while not eof do
    begin
      cmbCheckState.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
  end; // with
  /// ///////////////////////////////////////////////////////////////
  CmbDocType.Clear;
  cmbCompany.Clear;
  with qryInitcmb do
  begin
    Active := False;
    SQL.Text :=
      'SELECT DocTypeCode, DocTypeName_L1  FROM acc.DocTypes ORDER BY DocTypeCode';
    if optA.AccOldAvailable then
      SQL.Text := 'SELECT DocTypes.DocType, DocTypes.Desc  FROM DocTypes ';
    Active := True;
    while not eof do
    begin
      CmbDocType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    SQL.Text :=
      'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies ORDER BY CompanyCode';
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
  cmbGroups.ItemIndex := 0;
  mySelected := IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]));
  cmbCompany.ItemIndex := 0;
  cmbCheckState.ItemIndex := 0;
end;

procedure TMakeDocumentCheckF.FormShow(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height :=
    StrToInt(ReadConfig(APPID, frmMakeDocs1.Name +
    IntToStr(frmMakeDocs1.DocKind) + 'DBGrid1Height', '0'));
  if frmMakeDocs1.Height < frmMakeDocs1.myHeight then
    frmMakeDocs1.Height := frmMakeDocs1.myHeight;
  myParams.Clear;
end;

procedure TMakeDocumentCheckF.frmMakeDocs1srcMakeDocsStateChange
  (Sender: TObject);
begin
  inherited;
  BtnReject.Cancel := not(frmMakeDocs1.qryMakeDocs.State in dseditmodes);
end;

procedure TMakeDocumentCheckF.FormCreate(Sender: TObject);
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

  frmMakeDocs1.DocKind := 1;
  // if opt.AccOldAvailable then
  // begin
  // qryItems.FieldByName('_TopicName2').LookupResultField:='MoeenName';
  // qryItems.FieldByName('_DetailName2').LookupResultField:='DetailName';
  // qryItems.FieldByName('_CTopicName2').LookupResultField:='CTopicName';
  // qryItems.FieldByName('_CTopicName2_2').LookupResultField:='CTopicName2';
  //
  // qryItems.FieldByName('_CTopicCode2').KeyFields:='CTopicCode';
  // qryItems.FieldByName('_CTopicCode2').LookupDataSet:=DMf.qryAccCenterTopics;
  // qryItems.FieldByName('_CTopicCode2').LookupKeyFields:='CTopicCode';
  // qryItems.FieldByName('_CTopicCode2').LookupResultField:='CTopicName';
  //
  // qryItems.FieldByName('_CTopicName2_2').KeyFields:='CTopicCode';
  // qryItems.FieldByName('_CTopicName2_2').LookupDataSet:=DMf.qryAccCenterTopics;
  // qryItems.FieldByName('_CTopicName2_2').LookupKeyFields:='CTopicCode';
  // qryItems.FieldByName('_CTopicName2_2').LookupResultField:='CTopicName';
  //
  // end;//if

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
    qryDocGroups.SQL.Text := 'SELECT * FROM DocGroups where 0=1';
    qryDocuments.SQL.Text := 'Select * FROM Documents where 0=1';

    qryDocuments.Connection := DMf.adcOldAccounting;
    qryDocGroups.Connection := DMf.adcOldAccounting;
    CheckDoc1.Connection := DMf.adcOldAccounting;
    CheckDoc1.oldAccounting := True;
  end;
  Sql__Text := qryItems.SQL.Text;
  init_Combos;
  cmbCompany.ItemIndex := 0;
  NewDoc := True;
  setColumns2(DBGrid1, optA.ActiveCurrencyInTrialBalance, 'ArzAmount');

end;

procedure TMakeDocumentCheckF.actMakeDocExecute(Sender: TObject);
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
      FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCheck);

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

procedure TMakeDocumentCheckF.actMakeDocumentPostFExecute(Sender: TObject);
var
  WHERE4SQL, FromSQL: string;
begin
  inherited;
  if CmbDocType.ItemIndex = -1 then
  Begin
    Warn('نوع سند انتخاب نشده است.!‏', mtError);
    Exit;
  end;
  WHERE4SQL := ' WHERE  (Forms.DocNo =0) AND (Forms.FormType IN ( ' +
    mySelected + ' )) ';
  WHERE4SQL := WHERE4SQL + format(' AND(FormNumber BETWEEN %d AND %d ) ',
    [StrToInt(GetcFrom(myParams.ParamValues['Number'], ftInteger)),
    StrToInt(GetcTo(myParams.ParamValues['Number'], ftInteger))]);

  WHERE4SQL := WHERE4SQL + setInOrNotIn4QRy(TADOQuery (nil), myParams, 'number',
    'Forms.FormNumber');

  WHERE4SQL := WHERE4SQL + format(' AND(FormDate BETWEEN %s AND %s)',
    [QuotedStr(GetcFrom(myParams.ParamValues['Date'], ftDate)),
    QuotedStr(GetcTo(myParams.ParamValues['Date'], ftDate))]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(FormItems.CheckState BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('CheckStateFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('CheckStateTo').Value)]);

  WHERE4SQL := WHERE4SQL +
    format(' AND(Forms.SellsEmporium BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('SellsEmporiumFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('SellsEmporiumTo').Value)]);

  WHERE4SQL := WHERE4SQL + format(' AND(Forms.PayTypes BETWEEN %s AND %s ) ',
    [VarToStr(qryItems.Parameters.ParamByName('PayTypesFrom').Value),
    VarToStr(qryItems.Parameters.ParamByName('PayTypesTo').Value)]);

  WHERE4SQL := WHERE4SQL + ' AND (Forms.FormState < 10) ' +
    'AND (FormItems.CheckType between 0 ' +
    'and (case when(FormTypes.DefaultTopic_Bed = 7 or FormTypes.DefaultTopic_Bes = 7)  then 0 else   99 end))';

  WHERE4SQL := WHERE4SQL +
    'AND ((case when FormTypes.FormStateDefault4Doc = 0 then Forms.FormState else FormTypes.FormStateDefault4Doc end) = Forms.FormState)';

  WHERE4SQL := WHERE4SQL +
    format(' AND(((ISNULL(Forms.AidInfoDate,'''') ='''')OR(Forms.AidInfoDate =''/  /'')OR (Forms.AidInfoDate BETWEEN %s AND %s)))',
    [QuotedStr(GetcFrom(myParams.ParamValues['AidDate'], ftDate)),
    QuotedStr(GetcTo(myParams.ParamValues['AidDate'], ftDate))]);

  FromSQL := ' INNER JOIN FormTypes ON Forms.FormType = FormTypes.FormType ';

  FromSQL := FromSQL +
    ' INNER JOIN FormItems ON Forms.FormID = FormItems.FormID ' +
    'AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID ';

  if var_tmp_str <> EmptyStr then
    WHERE4SQL := WHERE4SQL + ' AND (Forms.ID IN (' + var_tmp_str + ')) ';

  MakeDocumentPostF.ShowPost(WHERE4SQL, FromSQL, Self.Name)
end;

procedure TMakeDocumentCheckF.Commentset;
begin
  With qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      qryItemsComment2.AsString := qryItemsComment.AsString;
      Post;
      Next;
    end;
    EnableControls
  end;
end;

procedure TMakeDocumentCheckF.AddDetail(DocID: Integer);
var
  qry: TADOQuery;
begin
  inherited;
  if var_tmp_str <> EmptyStr then
  begin
    addIDFilter := ' AND (Forms.ID IN (' + var_tmp_str + ')) ';
    addIDFilterup := ' AND (Forms.ID IN (' + var_tmp_str + ')) ';

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
            // qryDocuments.FieldByName('desc').AsString :=
            // FieldByName('Comment').AsString;

            qryDocuments.FieldByName('desc').AsString :=
              FieldByName('Comment2').AsString;

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
            qryDocuments.FieldByName('CompanyCode').AsInteger :=
              Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);


            qryDocuments.FieldByName('CTopicCode2').AsInteger :=
              FieldByName('CTopicCode2').AsInteger;
            qryDocuments.FieldByName('CTopicCode3').AsInteger :=
              FieldByName('CTopicCode3').AsInteger;

            qryDocuments.FieldByName('Comment_L1').AsString :=
              FieldByName('Comment2').AsString;

            qryDocuments.FieldByName('CurrencyType').AsInteger :=
              FieldByName('ArzTypeID').AsInteger;

            qryDocuments.FieldByName('Debt').AsCurrency := FieldByName('Debt')
              .AsCurrency;
            qryDocuments.FieldByName('Credit').AsCurrency :=
              FieldByName('Credit').AsCurrency;
            if (opt.MakeDocumentPost and Integer(CHkAidDocNoFormID)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsInteger :=
                FieldByName('FormID').AsInteger;

            // if FieldByName('ArzAmount').AsFloat <> 0 then
            // begin
            if (opt.MakeDocumentPost and Integer(CHkAidDocDateCh)) <> 0 then
              qryDocuments.FieldByName('AidDocDate').AsString :=
                mskDocDate.Text;
            if (opt.MakeDocumentPost and Integer(CHkAidDocNo)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsString := MskDocNo.Text;
            // end;

            if ((opt.MakeDocumentPost and Integer(CHkAidAll2Aid)) <> 0) then
            begin
              qryDocuments.FieldByName('AidDocNo').AsString :=
                FieldByName('AidInfoNo').AsString;

              qryDocuments.FieldByName('AidDocdate').AsString :=
                FieldByName('AidInfoDate').AsString;

              qryDocuments.FieldByName('AidAmount').AsString :=
                FieldByName('CheckNumber').AsString;

            end;

            if RdGKindDoc.ItemIndex in [2, 5] then
            begin
              if (opt.MakeDocumentPost and Integer(CHkAidDocNo)) <> 0 then
                qryDocuments.FieldByName('AidDocNo').AsString :=
                  FieldByName('CheckNumber').AsString;
              if (opt.MakeDocumentPost and Integer(CHkAidDocDateCh)) <> 0 then
                qryDocuments.FieldByName('AidDocDate').AsString :=
                  FieldByName('CheckDate').AsString;
            end; // if

            if (opt.MakeDocumentPost and Integer(CHkAidDocNoItemcof)) <> 0 then
              qryDocuments.FieldByName('AidDocNo').AsString :=
                FieldByName('AidInfoNoItem').AsString;
            if (opt.MakeDocumentPost and Integer(CHkAidDocDateItem)) <> 0 then
              qryDocuments.FieldByName('AidDocDate').AsString :=
                FieldByName('AidInfoDateItem').AsString;

            if ((opt.MakeDocumentPost and Integer(CHkAidAmountCh)) <> 0) then
            begin
              if optA.ActiveCurrencyInTrialBalance then
                qryDocuments.FieldByName('AidAmount').AsFloat :=
                  RoundTo(FieldByName('ArzAmount').AsFloat, -2)
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
        end;
        // while
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
      end;
    /// /////////////////
    qry := TADOQuery.Create(Self);
    with qry do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'UPDATE Forms';
        SQL.Add('SET Forms.DocNo = :DocNo , Forms.DocDate = :DocDate');
        SQL.Add(',FormState=CASE WHEN FormState>' +
          IntToStr(opt.DocReciptStateDefault) + ' THEN FormState ELSE  ' +
          IntToStr(opt.DocReciptStateDefault) + ' END ');
        SQL.Add(format(', UserRegistrationDoc = %s ', [QuotedStr(User.Name)]));
        SQL.Add('FROM Forms INNER JOIN');
        SQL.Add('FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID INNER JOIN');
        SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType');
        SQL.Add('WHERE (Forms.DocNo =0) AND (Forms.FormNumber BETWEEN :FormNumberFrom AND :FormNumberTo)');
        SQL.Add('AND (Forms.FormDate BETWEEN :FormDateFrom AND :FormDateTo) AND (FormTypes.FormType IN ( '
          + mySelected + ' ) )');
        SQL.Add('AND (FormItems.CheckState BETWEEN :CheckStateFrom AND :CheckStateTo)');
        SQL.Add('AND (Forms.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
        SQL.Add('AND (Forms.PayTypes BETWEEN :PayTypesFrom AND :PayTypesTo)');

        SQL.Add('AND ((case when FormTypes.FormStateDefault4Doc = 0 then Forms.FormState else FormTypes.FormStateDefault4Doc end) = Forms.FormState)');

        setInOrNotIn4QRy(qry, myParams, 'number', 'Forms.FormNumber');

        if (addIDFilterup <> EmptyStr) then
          SQL.Add(addIDFilterup);

        if (MakeDocumentPostF <> nil) AND (qryItems.Filter <> EmptyStr) then
          SQL.Add('AND (' + qryItems.Filter + ')');

        SQL.Add(format
          (' AND(((ISNULL(Forms.AidInfoDate,'''') ='''')OR(Forms.AidInfoDate =''/  /'')OR (Forms.AidInfoDate BETWEEN %s AND %s)))',
          [QuotedStr(GetcFrom(myParams.ParamValues['AidDate'], ftDate)),
          QuotedStr(GetcTo(myParams.ParamValues['AidDate'], ftDate))]));

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
        Parameters.ParamByName('CheckStateFrom').Value := 0;
        Parameters.ParamByName('CheckStateTo').Value := 99;
        if grpCheckState.Visible then
        begin
          Parameters.ParamByName('CheckStateFrom').Value :=
            Integer(cmbCheckState.Items.Objects[cmbCheckState.ItemIndex]);
          Parameters.ParamByName('CheckStateTo').Value :=
            Integer(cmbCheckState.Items.Objects[cmbCheckState.ItemIndex]);
        end; // if
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

procedure TMakeDocumentCheckF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, 'rgDocDate', IntToStr(rgDocDate.ItemIndex));

  FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCheck);
  var_tmp_str := EmptyStr;
  Var_glb_NoFilter := False;
end;

procedure TMakeDocumentCheckF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  AccDBGrid1CKeyPress(Sender, Key);
end;

procedure TMakeDocumentCheckF.qryItemsAfterOpen(DataSet: TDataSet);
var
  Debt, Credit: Currency;
begin
  inherited;
  Commentset;
  Debt := CalcSumFileds(qryItems, 'Debt');
  edtBed.Text := CurrToStrF(Debt, ffCurrency, 0);
  Credit := CalcSumFileds(qryItems, 'Credit');
  edtBes.Text := CurrToStrF(Credit, ffCurrency, 0);
  edtDifference.Text := CurrToStrF(Debt - Credit, ffCurrency, 0);
  // StatusBar2.Panels[0].Text:=IntToStr(qryItems.RecordCount);
  actMakeDoc.Visible := (Debt <> 0) and (Credit <> 0) and (Debt - Credit = 0);
  actMakeDocumentPostF.Visible := actMakeDoc.Visible;
end;

procedure TMakeDocumentCheckF.cmbGroupsChange(Sender: TObject);
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
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormItems.CheckState';
    SQL.Add('FROM Forms INNER JOIN FormItems ON');
    SQL.Add('Forms.FormID = FormItems.FormID ');
    SQL.Add('AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID');
    SQL.Add('WHERE (Forms.FormType=:FormType)AND(FormItems.CheckState > 1)');
    Parameters.ParamByName('FormType').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Active := True;
    grpCheckState.Visible := not IsEmpty;
    Active := False;
  end; // with
  if myParams.FindParam('Date') = nil then
    actFilter.Execute
  else
    UpdateFilter;
end;

procedure TMakeDocumentCheckF.rgDocDateClick(Sender: TObject);
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

procedure TMakeDocumentCheckF.RdGKindDocClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute
end;

function TMakeDocumentCheckF.Error: Integer;

begin
  Result := 0;
  lslWarnings.Clear;
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
        lslWarnings.Items.AddObject(format('[رديف %d]: [خطا كد %s]',
          [RecNo, FieldByName('TopicCode').AsString]), TObject(qryItems.RecNo));

        Next;
      end;
      if (FieldByName('DetailCode').Value <> 0) and
        (FieldByName('_DetailName').IsNull) then
      begin
        Result := Result + 1;
        lslWarnings.Items.AddObject(format('[رديف %d]: [خطا كد %s]',
          [RecNo, FieldByName('DetailCode').AsString]),
          TObject(qryItems.RecNo));
        Next;
      end;
      if (FieldByName('CTopicCode').Value <> 0) and
        (FieldByName('_CTopicName').IsNull) then
      begin
        Result := Result + 1;
        lslWarnings.Items.AddObject(format('[رديف %d]: [خطا كد %s]',
          [RecNo, FieldByName('CTopicCode').AsString]),
          TObject(qryItems.RecNo));
        Next;
      end;
      Next;
    end; // while
    EnableControls;
  end; // with
  lslWarnings.Visible := lslWarnings.Items.Count > 0;
  Panel4.Visible := (RdGKindDoc.Visible) or (lslWarnings.Visible);

end;

procedure TMakeDocumentCheckF.actErrorListExecute(Sender: TObject);
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
      end;
      // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TMakeDocumentCheckF.lslWarningsClick(Sender: TObject);
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

procedure TMakeDocumentCheckF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMakeDocumentCheckF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TMakeDocumentCheckF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TMakeDocumentCheckF.SBtnReciptNumberClick(Sender: TObject);
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
    SelectCompanyCode := Results[6];

    rgDocDate.Enabled := False;
    NewDoc := False;
  end;
  // Txt := 'SELECT Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate,'
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

procedure TMakeDocumentCheckF.MskSerialExit(Sender: TObject);
begin
  inherited;
  if optA.AccOldAvailable then
    Exit;
  with DMf.qryAccounting do
  begin
    Active := False;
    SQL.Text :=
      'select count(serial) as countserial from ACC.docgroups where serial= ' +
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
      'select Serial,SecondaryDocNo,DocDate from ACC.docgroups where serial= ' +
      trim(MskSerial.Text);
    SQL.Add('AND CompanyCode=' +
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

procedure TMakeDocumentCheckF.chkTajmiaClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentCheckF.cmbCheckStateChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
  actShowDoc.Execute
end;

procedure TMakeDocumentCheckF.actCheckDocumentExecute(Sender: TObject);
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
      Warn('سند نامعتبر است.(1)');
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
    Warn('سند نامعتبر است.(2)');
    actMakeDoc.Enabled := False;
  end;
  // else
  if optA.AccChkBalancCTopicCode3 then
    if not BalancCTopicCode3(qryItems) then
    begin
      actMakeDoc.Enabled := False;
    end;
  Panel4.Visible := (RdGKindDoc.Visible) or (lslWarnings.Visible);
  PnlUnderButton.Enabled := True;
  actMakeDocumentPostF.Enabled := actMakeDoc.Enabled;
  if lslWarnings.Items.Count = 0 then
    Error;

end;

procedure TMakeDocumentCheckF.actShowFormExecute(Sender: TObject);
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

procedure TMakeDocumentCheckF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True
end;

procedure TMakeDocumentCheckF.cmbYearIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentCheckF.ctAddComment2Execute(Sender: TObject);
begin
  inherited;
  With qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      qryItemsComment2.AsString := qryItemsComment2.AsString + ' - ' +
      // qryItems_TopicName.AsString + ' - ' + qryItems_Detailname.AsString +        ' - ' +
        qryItems_CTopicname.AsString
      // + ' - ' +        qryItems_CTopicName2.AsString
        ;
      Post;
      Next;
    end;
    EnableControls
  end;
end;

procedure TMakeDocumentCheckF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  SendWarnDBGridToExcelC(DBGrid1, lslWarnings)
end;

procedure TMakeDocumentCheckF.btnSelectClick(Sender: TObject);
var
  Txt: String;
begin
  inherited;
  Txt := 'SELECT FormType, FormCaption FROM FormTypes WHERE (MakeDoc = 1 ) ' +
    'And DisplayFormType not in(0,7) order by  FormType';
  mySelected := selectedF.ShowSelect(DMf.adcBSell, 'انتخاب فرم', Txt,
    ['كد', 'فرم'], alLeft, [50, 400], mySelected);

  if mySelected <> EmptyStr then
    UpdateFilter
end;

procedure TMakeDocumentCheckF.actDatasetToXMLExecute(Sender: TObject);
var
  F1: TextFile;
  Acc: String;
  Detail: String;
  Ctopic1: String;
  Ctopic2: String;
  Desc: string;
  BudgetCode: string;
  CompanyCode: string;
  Debt: Real48;
  Credit: Real48;
  s: String;
begin
  inherited;
  with TSaveDialog.Create(Self) do
    try
      Filter := 'Xml|.Xml';
      FileName := 'DocXml.xml';
      if Execute then
        AssignFile(F1, FileName)
      else
        Exit;
    finally
      Free;
    end;
  // CreateFile('c:\D.xml',fmCreate);
  // Stream := TFileStream.Create(, fmCreate);

  Rewrite(F1);
  Writeln(F1, UTF8Encode('<?xml version="1.0" encoding="UTF-8" ?>'));
  Writeln(F1, UTF8Encode('<_XPXML>'));
  with qryItems do
    try
      DisableControls;
      First;
      BigMessageProgBar('در حال ساخت Xml ', RecordCount);
      CompanyCode :=
        IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
      while not eof do
      begin
        Acc := FieldByName('_TopicName2').AsString;
        Detail := FieldByName('_DetailName2').AsString;
        Ctopic1 := FieldByName('_CTopicName2').AsString;
        Ctopic2 := FieldByName('_CTopicName2_2').AsString;
        Desc := FieldByName('_TopicName').AsString;
        // fieldbyname('Comment').AsString ;
        Debt := (FieldByName('Debt').AsFloat);
        Credit := (FieldByName('Credit').AsFloat);
        BudgetCode := FieldByName('_BudgetName_L2').AsString;

        // if Debt <> 0 then
        // S := Format('<_FTrans Acc="%S" Det1="%S" Det2="%S" Det3="%S" Det4="%s" Det5="%S" Deb="%m" Desc="%S" />',
        // [Acc,          '',     Detail,    '',      '',   '0110/01', (Debt/100),Desc])
        // else
        // S := Format('<_FTrans Acc="%S" Det1="%S"  Det2="%S" Det3="%S" Det4="%s" Det5="%S" Cre="%m" Desc="%S" />',
        // [Acc,'',Detail,'','','0110/01',(Credit/100),Desc]);
        if Debt <> 0 then
          s := format
            ('<_FTrans Acc="%S" Det1="%S" Det2="%S" Det3="%S" Det4="%s" Det5="%S" Deb="%f" Desc="%S" />',
            [Acc, '', Detail, '', '0110/01', BudgetCode, (Debt / 100), Desc])
        else
          s := format
            ('<_FTrans Acc="%S" Det1="%S"  Det2="%S" Det3="%S" Det4="%s" Det5="%S" Cre="%f" Desc="%S" />',
            [Acc, '', Detail, '', '0110/01', BudgetCode, (Credit / 100), Desc]);

        Writeln(F1, UTF8Encode(s));
        Next;
        GoProgressBar('');
      end;
      Writeln(F1, UTF8Encode('</_XPXML>'));
    finally
      CloseFile(F1);
      CloseMessage;
      EnableControls;
    end;
end;

procedure TMakeDocumentCheckF.setDocPostKind(DocPost: SmallInt);
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

procedure TMakeDocumentCheckF.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  inherited;
  with StatusBar.Canvas do
  begin
    case Panel.Index of
      0:
        begin
          Brush.Color := $009FFF9F;
          // Font.Color := clNavy;
          // Font.Style := [fsBold];
        end;
      1:
        begin
          Brush.Color := clYellow;
          // Font.Color := clTeal;
          // Font.Style := [fsItalic];
          Font.Name := 'Badr';
        end;
    end;
    FillRect(Rect);
    TextOut(2 + Rect.Left, 2 + Rect.Top, Panel.Text);
    StatusBar.BiDiMode := bdRightToLeft;

  end;
end;

procedure TMakeDocumentCheckF.actDocPostKind1Execute(Sender: TObject);
begin
  inherited;
  setDocPostKind(RdGKindDoc.ItemIndex)
end;

procedure TMakeDocumentCheckF.actDocPostKind_1Execute(Sender: TObject);
begin
  inherited;
  frmMakeDocs1.Height := 123;
  setDocPostKind(-1)
end;

procedure TMakeDocumentCheckF.btnSendWarnToExcelClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TMakeDocumentCheckF.actShowDocExecute(Sender: TObject);
var
  ErrorCount: Integer;
  debt_credit, OrderBy: String;
  ParamList: String;
begin
  inherited;
  ParamList :=
    ' 0, :FormDateFrom, :FormDateTo,:FormNumberFrom, :FormNumberTo,  :CheckStateFrom, :CheckStateTo, :SellsEmporiumFrom , :SellsEmporiumTo'
    + #13#10 + ', :PayTypesFrom , :PayTypesTo ,' + IfThen(chkTajmia.Checked,
    '2', '1') + ' , :AidDateFrom , :AidDateTo ';
  if var_tmp_str <> EmptyStr then
  begin
    addIDFilter := ' AND (MD_C.ID IN (' + var_tmp_str + ')) ';
    addIDFilterup := ' AND (Forms.ID IN (' + var_tmp_str + ')) ';
  end;
  lslWarnings.Visible := False;

  addIDFilter := addIDFilter + setInOrNotIn4QRy(TADOQuery( nil), myParams, 'number',
    'FormNumber');

  OrderBy :=
    ' ORDER BY  FormDate,FormCaption ,bedbes , MD_C.TopiCcode ,MD_C.DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3 ';

  debt_credit :=
    ' ,SUM(case when debt - credit>0 then debt - credit else 0 end  ) AS Debt,	SUM(case when credit - debt >0 then  credit - debt  else 0 end ) AS credit ';
  with qryItems do
  begin
    Active := False;
    case RdGKindDoc.ItemIndex of
      0:
        SQL.Text :=
          ' SELECT  0 as FormNumber,FormDate,0 as FormItemID,MAX(ArzTypeID) AS ArzTypeID, 0 as FormID,0 AS ServerID,0 AS YearID, 0.0 as CheckNumber ,''0.0'' as AidInfoNoItem,'''' as AidInfoDateItem '
          + ', '''' as CheckDate ,''0.0'' as AidInfoNo,'''' as AidInfoDate,' +
          #13#10 + ' MD_C.TopicCode, MD_C.DetailCode, CTopicCode, CTopicCode2,CTopicCode3 ,0.0 as ArzAmount, '
          + #13#10 + GetComment +
        // '''' بابت  '' + FormCaption + '' بتاريخ ''+ FormDate  as Comment' +
          debt_credit + ' , MAX(BudgetCode) AS BudgetCode ' + #13#10

          + ',Fitful.Comment2, Fitful.FitfulNote AS _Dec ,MIN(PO) AS PO '
                   + #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '+

          ' FROM MakeDocuments_Check(' + ParamList + ' )MD_C ' +
          '  CROSS JOIN Fitful WHERE (FormType IN ( ' + mySelected + ' )) ' +
          #13#10 + addIDFilter + #13#10 +
          ' GROUP BY FormDate,FormCaption,MD_C.TopicCode, MD_C.DetailCode, CTopicCode, CTopicCode2,CTopicCode3, bedbes'
          + ',Fitful.Comment2, Fitful.FitfulNote '

          + frmMakeDocs1.GetGROUPBY + OrderBy;

      1:
        SQL.Text :=
          ' select  FormNumber,FormDate,0 as FormItemID,ArzTypeID, FormID , ServerID, YearID, 0.0 as CheckNumber ,''0.0'' as AidInfoNoItem,'''' as AidInfoDateItem , '''' as CheckDate'
          + ',AidInfoNo,AidInfoDate ' + #13#10 +
          ',MD_C.TopiCcode ,MD_C.DetailCode ,CTopicCode, CTopicCode2,CTopicCode3, 0.0 as ArzAmount,'
          + #13#10 + GetComment +
        // ''  + ' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي ف ش: ''+ ltrim(str(FormNumber)) as Comment' +
          debt_credit + ' , MAX(BudgetCode) AS BudgetCode ' + #13#10 +
          ',Fitful.Comment2, Fitful.FitfulNote AS _Dec ,MIN(PO) AS PO ' +
          #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '+
          ' FROM   MakeDocuments_Check(' + ParamList + ' ) MD_C ' +
          '  CROSS JOIN Fitful WHERE     (FormType IN ( ' + mySelected + #13#10
          + ' )) ' + addIDFilter + #13#10 +
          ' group By FormID,ArzTypeID, ServerID, YearID ,FormCaption , FormNumber,FormDate,AidInfoNo,AidInfoDate,MD_C.topiccode ,MD_C.DetailCode ,CtopicCode,CtopicCode2,CTopicCode3 ,bedbes '
          + #13#10 + ',Fitful.Comment2, Fitful.FitfulNote ' +
          frmMakeDocs1.GetGROUPBY + OrderBy;

      2:
        SQL.Text :=
          ' Select FormNumber,FormDate,FormItemID,ArzTypeID, FormID, ServerID, YearID,  ABS(LTRIM(RTRIM(CheckNumber)))  as  CheckNumber ,AidInfoNoItem,AidInfoDateItem  '
          + #13#10 +
          ',CheckDate,AidInfoNo,AidInfoDate, MD_C.TopiCcode ,MD_C.DetailCode ,CTopicCode, CTopicCode2,CTopicCode3, ArzAmount,'
          + #13#10 + GetComment +
        // ' '' چک ش:  '' + ltrim((CheckNumber)) + ''سررسيد  '' + CheckDate  + isnull(ItemNote,''-'') as Comment' +
          debt_credit.Replace('SUM(', '(', [rfReplaceAll]) + ' , BudgetCode ' +
          #13#10 + ',Fitful.Comment2, Fitful.FitfulNote AS _Dec , PO ' +
          #13#10 +
          ',Currencydebit,Currencycredit,CurrencyRate '+

          ' FROM   MakeDocuments_Check(' + ParamList + '  ) MD_C ' +
          '  CROSS JOIN Fitful WHERE     (FormType IN ( ' + mySelected + #13#10
          + ' )) ' + addIDFilter + OrderBy;

      3:
        SQL.Text :=
          ' SELECT 0 as FormNumber,'''' as FormDate,0 as FormItemID,MAX(ArzTypeID) AS ArzTypeID, 0 as FormId,0 AS ServerID,0 AS YearID '
          + ', 0.0 as CheckNumber,''0.0'' as AidInfoNoItem,'''' as AidInfoDateItem ,'''' as CheckDate,''0.0'' as AidInfoNo,'''' as AidInfoDate'
          + #13#10 +
          ' ,MD_C.TopicCode, MD_C.DetailCode, CTopicCode, CTopicCode2,CTopicCode3,0.0 as ArzAmount ,'
          + #13#10 + GetComment +
        // ' '' بابت '' + FormCaption + '' از تاريخ   '' + Min(FormDate) +'' تا '' + max(FormDate)  + ''  طي فرمهاي  '' + ltrim(rtrim(str(min(FormNumber))))+ ''  تا  '' +'
        // +' ltrim(rtrim(str(max(FormNumber)))) as Comment' +
          debt_credit + ' , MAX(BudgetCode) AS BudgetCode ' + #13#10 +
          ',Fitful.Comment2, Fitful.FitfulNote AS _Dec ,MIN(PO) AS PO ' +
          #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '+

          ' FROM   MakeDocuments_Check(' + ParamList + ' ) MD_C ' +
          '  CROSS JOIN Fitful WHERE     (FormType IN ( ' + mySelected + #13#10
          + ' )) ' + addIDFilter +
          ' group By FormCaption ,MD_C.topiccode ,MD_C.DetailCode ,CtopicCode ,CtopicCode2,CTopicCode3 ,bedbes '
          + #13#10 + ',Fitful.Comment2, Fitful.FitfulNote ' +
          frmMakeDocs1.GetGROUPBY +
          ' ORDER BY  FormCaption ,bedbes , MD_C.TopiCcode ,MD_C.DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3 ';

      4:
        SQL.Text :=
          ' select  FormNumber,FormDate,0 as FormItemID,ArzTypeID, FormID , ServerID, YearID, 0.0 as CheckNumber ,''0.0'' as AidInfoNoItem,'''' as AidInfoDateItem , '''' as CheckDate'
          + ',AidInfoNo,AidInfoDate' + #13#10 +
          ' ,MD_C.TopiCcode ,MD_C.DetailCode ,CTopicCode, CTopicCode2,CTopicCode3,  SUM( ArzAmount ) as  ArzAmount,'
          + #13#10 + GetComment +
        // ' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي ف ش: ''+ ltrim(str(FormNumber))+'' ''+isnull(FomNote,'''')+''''+isnull(ItemNote,'''') as Comment' +
          debt_credit + ' , MAX(BudgetCode) AS BudgetCode ' + #13#10 +
          ',Fitful.Comment2, Fitful.FitfulNote AS _Dec , MIN(PO) AS PO ' +
          #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '+

          ' FROM   MakeDocuments2_Check(' + ParamList + ' ) MD_C ' +
          '  CROSS JOIN Fitful WHERE     (FormType IN ( ' + mySelected + #13#10
          + ' )) ' + addIDFilter + #13#10 +
          ' group By  Tahator,ArzTypeID,FormID , ServerID, YearID,Row, FormCaption , FormNumber,'
          + 'FormDate,AidInfoNo,AidInfoDate,MD_C.topiccode ,MD_C.DetailCode ,CtopicCode,CtopicCode2,CTopicCode3 , bedbes,ItemNote,FomNote'
          + #13#10 + ',Fitful.Comment2, Fitful.FitfulNote ' +
          frmMakeDocs1.GetGROUPBY + #13#10 +
          ' Order by   FormID,bedbes,Row , ServerID, YearID';

      5:
        SQL.Text :=
          ' Select FormNumber,FormDate,FormItemID,ArzTypeID, FormID, ServerID, YearID,  ABS(LTRIM(RTRIM(CheckNumber)))  as  CheckNumber,AidInfoNoItem,AidInfoDateItem  '
          + #13#10 +
          ',CheckDate,AidInfoNo,AidInfoDate, MD_C.TopiCcode ,MD_C.DetailCode ,CTopicCode, CTopicCode2,CTopicCode3, ArzAmount ,'
          + #13#10 + GetComment + #13#10 +
        // ''' بابت '' + FormCaption + '' طي ف ش: ''+ ltrim((FormNumber))+'' ''+ '' چک ش:  '' + isnull(ltrim((CheckNumber)),'''') + ''سررسيد  '' + CheckDate  + isnull(ItemNote,'''') as Comment' +
          debt_credit.Replace('SUM(', '(', [rfReplaceAll]) + ' ,  BudgetCode ' +
          #13#10 + ',Fitful.Comment2, Fitful.FitfulNote AS _Dec , PO ' +
          #13#10 +
          ',Currencydebit,Currencycredit,CurrencyRate '+

          ' FROM MakeDocuments_Check(' + ParamList + ' ) MD_C ' +
          '  CROSS JOIN Fitful WHERE     (FormType IN ( ' + mySelected + #13#10
          + ' )) ' + addIDFilter + OrderBy;

      6:
        SQL.Text :=
          'SELECT FormNumber, FormDate,MAX(FormItemID) AS FormItemID, ArzTypeID, FormID, ServerID, YearID, ABS(LTRIM(RTRIM(CheckNumber))) AS CheckNumber,AidInfoNoItem,AidInfoDateItem ,'
          + #13#10 +
          ' CheckDate,AidInfoNo,AidInfoDate, MD_C.TopicCode, MD_C.DetailCode, CtopicCode, CtopicCode2,CTopicCode3, ArzAmount,'
          + #13#10 +
        // ''طي ف ش: '' + LTRIM(STR(FormNumber)) + '' چک ش: '' + ISNULL(LTRIM((CheckNumber)), '''')'
        // +' + ''سررسيد '' + CheckDate +SPACE(1)+ CustName AS Comment' +
          GetComment + debt_credit + ' , BudgetCode ' + #13#10 +
          ',Fitful.Comment2, Fitful.FitfulNote AS _Dec ,MIN(PO) AS PO ' +
          #13#10 +
          ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycredit,MAX(CurrencyRate) AS CurrencyRate '+

          ' FROM dbo.MakeDocuments_Check(' + ParamList + '  ) AS' + ' MD_C ' +
          '  CROSS JOIN Fitful WHERE (FormType IN ( ' + mySelected + ' )) ' +
          addIDFilter + #13#10 +
          ' GROUP BY FormDate,ArzTypeID,FormID, ServerID, YearID,MD_C.TopicCode, MD_C.DetailCode, CtopicCode,'
          + ' CtopicCode2,CTopicCode3, CustName,FormNumber,CheckNumber,AidInfoNoItem,AidInfoDateItem ,CheckDate,AidInfoNo,AidInfoDate, BudgetCode , ArzAmount '
          + #13#10 + ',Fitful.Comment2, Fitful.FitfulNote , BudgetCode ' +
          frmMakeDocs1.GetGROUPBY + #13#10 +
          ' ORDER BY MD_C.TopiCcode ,MD_C.DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3 ';

      7:
        SQL.Text := ' SELECT FormNumber, FormDate,*,0.0 as ArzAmount ' +
          ',Fitful.Comment2, Fitful.FitfulNote AS _Dec , PO ' +
          #13#10 +
          ',Currencydebit,Currencycredit,CurrencyRate '+

          ' FROM MakeDocuments_FormItems(' + ParamList + ' )MD_C  ' +
          '  CROSS JOIN Fitful WHERE (FormType IN ( ' + mySelected + ' )) ' +
          addIDFilter +
          ' ORDER BY MD_C.TopiCcode ,MD_C.DetailCode ,CtopicCode ,CTopicCode2,CTopicCode3 ';
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

function TMakeDocumentCheckF.GetComment: String;
begin
  With frmMakeDocs1 do
  begin
    DocTypeIndex := RdGKindDoc.ItemIndex;
    DocType := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    if IsFirstTime then
      case DocTypeIndex of
        0:
          begin
            // '''' بابت  '' + FormCaption + '' بتاريخ ''+ FormDate  as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
          end;

        1:
          begin
            // ''  + ' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي ف ش: ''+ ltrim(str(FormNumber)) as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
            InsertDocCaption('طي ف ش:', 'ltrim(str(FormNumber))');
          end;

        2:
          begin
            // ' '' چک ش:  '' + ltrim((CheckNumber)) + ''سررسيد  '' + CheckDate  + isnull(ItemNote,''-'') as Comment' +
            InsertDocCaption('چک ش:', 'ltrim((CheckNumber))');
            InsertDocCaption('سررسيد', 'CheckDate');
            InsertDocCaption('', 'isnull(ItemNote,''-'')');
          end;

        3:
          begin
            // ' '' بابت '' + FormCaption + '' از تاريخ   '' + Min(FormDate) +'' تا '' + max(FormDate)  + ''  طي فرمهاي  '' + ltrim(rtrim(str(min(FormNumber))))+ ''  تا  '' +'
            // +' ltrim(rtrim(str(max(FormNumber)))) as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('از تاريخ', 'Min(FormDate)');
            InsertDocCaption('تا', 'max(FormDate)');
            InsertDocCaption('طي فرمهاي', 'ltrim(rtrim(str(min(FormNumber))))');
            InsertDocCaption('تا', 'ltrim(rtrim(str(max(FormNumber))))');
          end;

        4:
          begin
            // ' '' بابت '' + FormCaption + '' بتاريخ  '' + FormDate +'' طي ف ش: ''+ ltrim(str(FormNumber))+'' ''+isnull(FomNote,'''')+''''+isnull(ItemNote,'''') as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('بتاريخ', 'FormDate');
            InsertDocCaption('طي ف ش:', 'ltrim(str(FormNumber))');
            InsertDocCaption(' ', 'isnull(FomNote,'''')');
            InsertDocCaption(' ', 'isnull(ItemNote,'''')');
          end;

        5:
          begin
            // ''' بابت '' + FormCaption + '' طي ف ش: ''+ ltrim(str(FormNumber))+'' ''+ '' چک ش:  '' + isnull(ltrim((CheckNumber)),'''') + ''سررسيد  '' + CheckDate  + isnull(ItemNote,'''') as Comment' +
            InsertDocCaption('بابت', 'FormCaption');
            InsertDocCaption('طي ف ش:', 'ltrim(str(FormNumber))');
            InsertDocCaption('چک ش:', 'isnull(ltrim((CheckNumber)),'''')');
            InsertDocCaption('سررسيد', 'CheckDate');
            InsertDocCaption(' ', 'isnull(ItemNote,'''')');
            InsertDocCaption(' ', 'CustName');
          end;
        6:
          begin
            // ''طي ف ش: '' + LTRIM((FormNumber)) + '' چک ش: '' + ISNULL(LTRIM((CheckNumber)), '''')'
            // +' + ''سررسيد '' + CheckDate +SPACE(1)+ CustName AS Comment' +
            InsertDocCaption('طي ف ش:', 'LTRIM(STR(FormNumber))');
            InsertDocCaption('چک ش:', 'ISNULL(LTRIM((CheckNumber)), '''')');
            InsertDocCaption('سررسيد', 'CheckDate');
            InsertDocCaption(' ', 'CustName');
          end;

      end; // case
    Result := GetMakeDocs;
  end;
end;

end.



