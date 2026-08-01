// mahmood
unit GetDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB,  zAPIBalloon,
  Menus, CheckDocument, FormFunctions, MySplitter, DBClient, Provider,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.DBCtrls;

type
  TGetDocumentF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label2: TLabel;
    txtDateFrom: TMaskEdit;
    pnlWarning: TPanel;
    Panel5: TPanel;
    qry_Documents: TADOQuery;
    BitBtn1: TBitBtn;
    actMakeDoc: TAction;
    qryItems: TADOQuery;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    qryInitcmb: TADOQuery;
    actFilter: TAction;
    srcItems: TDataSource;
    Panel8: TPanel;
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
    qry_DocGroups: TADOQuery;
    BitBtn4: TBitBtn;
    actErrorList: TAction;
    lslWarnings: TListBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSendExel: TAction;
    actSort: TAction;
    zbal: TzAPIBalloon;
    actCheckDocument: TAction;
    actShowForm: TAction;
    Lbl_CTopicCode2: TLabel;
    DBTxt_CTopicCode2: TDBText;
    StatusBar2: TStatusBar;
    PnlSerial: TPanel;
    actAddCode: TAction;
    PopupMenuDBGrid1: TPopupMenu;
    mnu_All_Click_: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actSendWarnToExcel: TAction;
    btnSendWarnToExcel: TBitBtn;
    actDatasetToXML: TAction;
    actDocPostKind1: TAction;
    actDocPostKind_1: TAction;
    zAPIBalloon1: TzAPIBalloon;
    Label1: TLabel;
    txtDateTo: TMaskEdit;
    Label8: TLabel;
    cmbType: TComboBox;
    BitBtn9: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    MskDocTopic: TMaskEdit;
    CmbDocType: TComboBox;
    chkTajmia: TCheckBox;
    Label9: TLabel;
    txtServerName: TMaskEdit;
    Label10: TLabel;
    txtDatabase: TMaskEdit;
    qry_Details: TADOQuery;
    qry_CTopics: TADOQuery;
    qry_Categories: TADOQuery;
    qry_CTopics2: TADOQuery;
    qry_CTopics3: TADOQuery;
    myspltr1: TMySplitter;
    qryCheck: TADOQuery;
    Panel9: TPanel;
    qryItems_TopicCode: TStringField;
    qryItems_DetailCode: TStringField;
    qryItems_CTopicCode: TStringField;
    qryItems_CTopicCode2: TStringField;
    qryItems_CTopicCode3: TStringField;
    qryItemsTopicCode: TIntegerField;
    qryItemsDetailCode: TIntegerField;
    qryItemsCTopicCode: TIntegerField;
    qryItemsCTopicCode2: TIntegerField;
    qryItemsCTopicCode3: TIntegerField;
    qryItemsComment: TStringField;
    qryItemsCompanyCode: TIntegerField;
    qryItemsAidDocdate: TStringField;
    qryItemsDebt: TFMTBCDField;
    qryItemsCredit: TFMTBCDField;
    qryItemsCurrencyType: TIntegerField;
    qryItemsAidDocNo: TFMTBCDField;
    qryItemsAidAmount: TFloatField;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);

    procedure FormDestroy(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);

    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);

    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure mnu_All_Click_Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSendWarnToExcelExecute(Sender: TObject);

    procedure actDatasetToXMLExecute(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure srcItemsStateChange(Sender: TObject);

  private
    SqlText: String;
    mande: Currency;
    NewDoc, SecondTypeActive: Boolean;
    mySelected: String;
    Rec_No: Integer;
    FormType: Byte;
    FunName: String;
    DocPostKind: SmallInt;
    procedure AddDetail(DocID: Integer);
    procedure init_Combos;

    function Error: Integer;

    function AddCode(Kind: Byte): Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);

    function AddMaster: Integer;

    function ValidateDocument: Boolean;
    function ValidateArticle(out ResultMessage: String;
      QryDoc: TADOQuery = nil): Boolean;

  public
    { Public declarations }
  end;

var
  GetDocumentF: TGetDocumentF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sndkey32,
  sort2, Math, StrUtils, mmessage, searchCode_ADO,
  selected, ExportXml, FaraConsts, shamsiDate, search1, sort;

{$R *.dfm}

procedure TGetDocumentF.init_Combos;
begin
  CmbDocType.Clear;
  with qryInitcmb do
  begin
    Active := False;
    SQL.Text :=
      'SELECT DocTypeCode,DocTypeName_L1 FROM ACC.DocTypes ORDER BY DocTypeCode';
    Active := True;
    while not eof do
    begin
      CmbDocType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end;
    Active := False;
  end;
end;

procedure TGetDocumentF.FormCreate(Sender: TObject);
begin
  inherited;

  FormType := var_glb_gParam;
  FunName := 'Aid_GetDocuments';

  if var_tmp_str <> EmptyStr then
    ActiveControl := nil;

  // SetLookUpCash(qryItems);
  if not opta.CanRelation then
    DBGrid1.PopupMenu := nil;
  SqlText := qryItems.SQL.Text;
  init_Combos;
  NewDoc := True;

  txtServerName.Text := ReadConfig(APPID, Self.Name + 'ServerName', '');
  txtDatabase.Text := ReadConfig(APPID, Self.Name + 'DatabaseName', '');
  txtDateFrom.Text := ReadConfig(APPID, Self.Name + 'DateFrom', '');
  txtDateTo.Text := ReadConfig(APPID, Self.Name + 'DateTo', '');
  MskDocTopic.Text := ReadConfig(APPID, Self.Name + 'DocTopic', '');

  pnlWarning.Visible := False;

end;

procedure TGetDocumentF.actMakeDocExecute(Sender: TObject);
var
  DocID: Integer;
begin
  inherited;

  if CmbDocType.ItemIndex = -1 then
  Begin
    Warn('نوع سند انتخاب نشده است.!‏', mtError);
    Exit;
  end;

  try
    actMakeDoc.Enabled := False;
    DocID := AddMaster();
    AddDetail(DocID);
    BigMessage('ثبت شد.‏', 1);
  finally
    FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups', 0);
    actShowDoc.Execute;
  end;
end;

procedure TGetDocumentF.AddDetail(DocID: Integer);
var
  addFilter: String;
begin
  inherited;
  with qryItems do
  begin
    First;
    qry_Documents.Active := True;
    while not eof do
    begin
      qry_Documents.Insert;
      qry_Documents.FieldByName('Serial').AsInteger := DocID;
      qry_Documents.FieldByName('YearID').AsInteger := APPBank.Year;
      qry_Documents.FieldByName('CompanyCode').AsInteger :=
        FieldByName('CompanyCode').AsInteger;
      qry_Documents.FieldByName('DetailCompany').AsInteger :=
        FieldByName('CompanyCode').AsInteger;
      qry_Documents.FieldByName('CTopicCode2').AsInteger :=
        FieldByName('CTopicCode2').AsInteger;
      qry_Documents.FieldByName('CTopicCode3').AsInteger :=
        FieldByName('CTopicCode3').AsInteger;
      qry_Documents.FieldByName('Comment_L1').AsString :=
        FieldByName('Comment').AsString;
      qry_Documents.FieldByName('Debt').AsCurrency := FieldByName('Debt')
        .AsCurrency;
      qry_Documents.FieldByName('Credit').AsCurrency := FieldByName('Credit')
        .AsCurrency;

      qry_Documents.FieldByName('TopicCode').AsInteger :=
        FieldByName('TopicCode').AsInteger;
      qry_Documents.FieldByName('DetailCode').AsInteger :=
        FieldByName('DetailCode').AsInteger;
      qry_Documents.FieldByName('CTopicCode').AsInteger :=
        FieldByName('CTopicCode').AsInteger;
      qry_Documents.FieldByName('AidDocNo').AsInteger := FieldByName('AidDocNo')
        .AsInteger;
      qry_Documents.FieldByName('AidDocdate').AsString :=
        FieldByName('AidDocdate').AsString;
      qry_Documents.FieldByName('AidAmount').AsInteger :=
        FieldByName('AidAmount').AsInteger;
      qry_Documents.FieldByName('CurrencyType').AsInteger :=
        FieldByName('CurrencyType').AsInteger;

      qry_Documents.FieldByName('Row').AsInteger := RecNo + Rec_No;
      Next;
    end;
    qry_Documents.Post;
    qry_Documents.Active := False;
  end;
end;

procedure TGetDocumentF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, Self.Name + 'ServerName', txtServerName.Text);
  SaveConfig(APPID, Self.Name + 'DatabaseName', txtDatabase.Text);
  SaveConfig(APPID, Self.Name + 'DateFrom', txtDateFrom.Text);
  SaveConfig(APPID, Self.Name + 'DateTo', txtDateTo.Text);
  SaveConfig(APPID, Self.Name + 'DocTopic', MskDocTopic.Text);

  // FreeReservedCodes(dmf.qryAccOldAndNew.Connection, '', '', 'Bsell');
  var_tmp_str := EmptyStr;
  Var_glb_NoFilter := False;
end;


procedure TGetDocumentF.qryItemsAfterOpen(DataSet: TDataSet);
var
  Debt, Credit: Currency;
begin
  inherited;

  Debt := CalcSumFileds(qryItems, 'Debt');
  StatusBar1.Panels[0].Text := CurrToStrF(Debt, ffCurrency, 0);
  Credit := CalcSumFileds(qryItems, 'Credit');
  StatusBar1.Panels[1].Text := CurrToStrF(Credit, ffCurrency, 0);
  StatusBar3.Panels[0].Text := CurrToStrF(Debt - Credit, ffCurrency, 0);
  StatusBar2.Panels[0].Text := IntToStr(qryItems.RecordCount);
  actMakeDoc.Visible := (Debt <> 0) and (Credit <> 0) and (Debt - Credit = 0);
  mande := Debt - Credit;

end;

function TGetDocumentF.Error: Integer;
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

procedure TGetDocumentF.actErrorListExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  lslWarnings.Clear;
  lslWarnings.Visible := True;
  pnlWarning.Visible := lslWarnings.Visible;

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
          lslWarnings.Items.AddObject(Format('[رديف %d]: [خطا كد %s]',
            [RecNo, s]), TObject(qryItems.RecNo));
        Next;
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TGetDocumentF.lslWarningsClick(Sender: TObject);
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

procedure TGetDocumentF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TGetDocumentF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TGetDocumentF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TGetDocumentF.actCheckDocumentExecute(Sender: TObject);
begin
  inherited;
  if ValidateDocument then
  begin
    Warn('سند مورد تأييد است.');
    actMakeDoc.Enabled := True;
  end
  else
  begin
    Warn('سند نامعتبر است.');
    actMakeDoc.Enabled := False;
  end;
  lslWarnings.Visible := lslWarnings.Items.Count > 0

end;

procedure TGetDocumentF.SBtnReciptNumberClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate, CASE WHEN MAX'
    + ' (Acc.Documents.Row) IS NULL' +
    ' THEN 0 ELSE MAX(Acc.Documents.Row) END AS RecNo' +
    ' FROM Acc.DocGroups LEFT OUTER JOIN' + ' Acc.Documents ON  ' +
    ' Acc.DocGroups.Serial = Acc.Documents.Serial ' +
    ' AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode ' +
    ' AND  Acc.DocGroups.YearID = Acc.Documents.YearID ' +
    ' WHERE (Acc.DocGroups.Status IN (0, 1)) AND (Acc.DocGroups.PrimaryDocNo = 0)'
    + ' AND Acc.DocGroups.YearID =  ' + IntToStr(APPBank.Year) +
    ' GROUP BY Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate';
  b := searchCode_ADOF.SearchCode2(dmf.adcAccounting, ' ليست اسناد موجود  ',
    Txt, ['سريال سند', 'شماره سند', 'تاريخ سند', 'رديف'], Results,
    [50, 50, 50, 50], alLeft);
  if b then
  begin
    Rec_No := StrToInt(Results[3]);
    NewDoc := False;
  end;

end;

procedure TGetDocumentF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  BtnReject.Cancel := not(qryItems.State in dsEditModes);
end;

function TGetDocumentF.AddCode;
var
  b: Boolean;
  msg: String;
begin
  Result := False;
  b := False;
  if not opta.CanRelation then
    Exit;
  with TADOQuery.Create(nil) do
  begin
    Connection := qry_Documents.Connection;
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
          .AsString + ') AND (DetailCode= ' + qryItems.FieldByName('DetailCode')
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
          FieldByName('TopicCode').AsInteger :=
            qryItems.FieldByName('TopicCode').AsInteger;
          FieldByName('DetailCode').AsInteger :=
            qryItems.FieldByName('DetailCode').AsInteger;
          b := True;
        end;
        /// /if
      end; // if
    // --------------------------AddCTopicCode-----------------------------------
    if Kind = 2 then
      if get_response('آيا ارتباط بين مركزهزينه و حساب برقرار گردد')
        = mrYes then
      begin
        msg := 'كد تفصیلی 1';
        if qryItems.FieldByName('CTopicCode').AsInteger = 0 then
          Exit;
        Active := False;
        SQL.Text := 'SELECT COUNT(*) AS Expr1';
        SQL.Add('FROM CenterTopicRange');
        SQL.Add('WHERE (TopicCode = ' + qryItems.FieldByName('TopicCode')
          .AsString + ') AND (CTopicCode= ' + qryItems.FieldByName('CTopicCode')
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
          FieldByName('TopicCode').AsInteger :=
            qryItems.FieldByName('TopicCode').AsInteger;
          FieldByName('CTopicCode').AsInteger :=
            qryItems.FieldByName('CTopicCode').AsInteger;
          b := True;
        end;
        /// /if
      end; // if
    // -------------------------AddCTopicCode2-----------------------------------
    if Kind = 3 then
      if get_response('آيا ارتباط بين مركزهزينه2 و حساب برقرار گردد')
        = mrYes then
      begin
        msg := 'كد تفصیلی 3';
        if qryItems.FieldByName('CTopicCode2').AsInteger = 0 then
          Exit;
        Active := False;
        SQL.Text := 'SELECT COUNT(*) AS Expr1';
        SQL.Add('FROM CTopicRangeTogether');
        SQL.Add('WHERE (CTopicCode = ' + qryItems.FieldByName('CTopicCode')
          .AsString + ') AND (CTopicCode2= ' + qryItems.FieldByName
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

procedure TGetDocumentF.mnu_All_Click_Click(Sender: TObject);
begin
  inherited;
  AddCode((Sender as TMenuItem).Tag)
end;

procedure TGetDocumentF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TGetDocumentF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;

begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      // #32,#157:  if curIndex in [1..4] then begin
      // key:=#0;
      /// /      DBGrid1EditButtonClick(sender);
      // end;//if
    end; // case
    if nextIndex >= 0 then
      while (nextIndex < DBGrid1.Columns.Count) and
        (not(DBGrid1.Columns[nextIndex].Visible) OR
        (DBGrid1.Columns[nextIndex].ReadOnly)) do
        Inc(nextIndex);
    if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], False);
            (Sender as TCedarDbgrid).SelectedIndex := 0;
          end; // 0
        -2:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; // -2
        -3:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
  end; // case

end;

procedure TGetDocumentF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  SendWarnDBGridToExcelC(DBGrid1, lslWarnings)
end;

procedure TGetDocumentF.actDatasetToXMLExecute(Sender: TObject);
begin
  inherited;
  DatasetToXML(qryItems, 'lstConst', 'Consts')
end;

function TGetDocumentF.AddMaster: Integer;
var
  SecondaryDocNo, serial: Integer;
begin

  with qry_DocGroups do
  begin
    Active := True;
    begin
      Insert;

      FieldByName('FirstUser').AsString := user.Name;
      FieldByName('CompanyCode').AsInteger := opta.DefaultCompany;
      FieldByName('MakeDate').AsDateTime := Now;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('DocDate').AsString := txtDateTo.Text;

      FieldByName('DocTypeCode').AsInteger :=
        Integer(CmbDocType.Items.Objects[CmbDocType.ItemIndex]);;
      FieldByName('DocTopic_L1').AsString := MskDocTopic.Text;

      FieldByName('Status').AsInteger :=
        IfThen(dmf.ReadBankConfigAcc('AssignedDocForm') = '0', 0, 1);

      If gv_MultiCompany And opta.RestDocCode then
        SecondaryDocNo :=
          GetANewCode
          ('',Format('select max(SecondaryDocNo) from acc.docGroups where (CompanyCode = %d )'
          + ' and (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
          [qryItemsCompanyCode.AsInteger, APPBank.Year, opta.StartLimitID,
          opta.EndLimitID]), 'SecondaryDocNo',dmf.adcAccounting)

      else
        SecondaryDocNo :=
          GetANewCode
          ('',Format('select max(SecondaryDocNo) from acc.docGroups where (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
          [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'SecondaryDocNo',dmf.adcAccounting);

      if SecondaryDocNo < opta.StartLimitID then
        FieldByName('SecondaryDocNo').AsInteger := opta.StartLimitID
      else
        FieldByName('SecondaryDocNo').AsInteger := SecondaryDocNo;

      serial := GetANewCode
        ('',Format('select max(serial) from acc.docGroups where (YearID = %d) AND (serial BETWEEN %d AND %d)',
        [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'serial',dmf.adcAccounting);

      if serial < opta.StartLimitID then
        FieldByName('serial').AsInteger := opta.StartLimitID
      else
        FieldByName('serial').AsInteger := serial;
      FieldByName('Userid').AsInteger := user.id;

      Post;

      Result := serial;
    end

  end; // with
end;

procedure TGetDocumentF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  qry_DocGroups.Active := False;
  qry_Documents.Active := False;
  qry_DocGroups.Active := True;
  qry_Documents.Active := True;
  WITH qryItems do
  begin
    Active := False;
    ConnectionString :=
      Format('Provider=SQLOLEDB.1;Password=fara213378;Persist Security Info=True;User ID=fararayaneh;Initial Catalog=%S ;Data Source=%s',
      [txtDatabase.Text, txtServerName.Text]);
    Parameters.ParamByName('DateFrom').Value := txtDateFrom.Text;
    Parameters.ParamByName('DateTo').Value := txtDateTo.Text;
    if cmbType.ItemIndex <> -1 then
      Parameters.ParamByName('ExtraParam').Value :=
        Integer(cmbType.Items.Objects[cmbType.ItemIndex]);
    Active := True;
  end;

end;

function TGetDocumentF.ValidateDocument: Boolean;
var
  msg: String;
  s, StartDate: String;
  ClonDoc: TADOQuery;
begin
  Result := True;
  ClonDoc := TADOQuery.Create(Self);
  try
    lslWarnings.Clear;
    ClonDoc.Clone(qryItems, ltBatchOptimistic);
    with qryItems do
      try
        First;
        sort := qry_Documents.sort;

        if mande <> 0 then
        begin
          lslWarnings.Items.AddObject('سند موازنه نيست.', TObject(0));
          Warn('سند موازنه نيست.');
          Result := False;
        end; // if

        s := txtDateTo.Text;
        StartDate := GetLastConstDocDate;

        if Length(trim(s)) < 7 then
        begin
          lslWarnings.Items.AddObject('تاريخ سند معتبر نيست', TObject(0));
          Warn('تاريخ سند معتبر نيست‏');
          Result := False;
        end;

        if not validate_date(True, APPBank.StartYear, APPBank.endYear,
          'تاریخ سند', s) then
        begin
          lslWarnings.Items.AddObject('تاريخ سند معتبر نيست.', TObject(0));
          Result := False;
        end
        else if not(((qry_DocGroups.State in [dsedit]) and
          (dmf.CheckLevel(edtState2, FormType, False) or
          dmf.CheckLevel(edtState3, FormType, False)))) then
          if not validate_date(False, StartDate, APPBank.endYear, 'تاريخ سند',
            s, False) then
          begin

            lslWarnings.Items.AddObject('سند در اين تاريخ دائم شده است .‏',
              TObject(0));
            Warn('سند در اين تاريخ دائم شده است .‏');
            Result := False;
          end;
        while not eof do
        begin
          if not ValidateArticle(msg, qryItems) then
          begin
            Result := False;
            lslWarnings.Items.AddObject(Format('[رديف %d]: %s', [RecNo, msg]),
              TObject(RecNo));
          end; // if
          Next;
        end; // while
        pnlWarning.Visible := lslWarnings.Items.Count > 0;

        // lblWarnCount.Caption := 'تعداد خطاها = ' + IntToStr(lslWarnings.Count);
      finally
        // ClonDoc.Free;
        CloseMessage;
      end; // try
  except
    Result := False
  end;
end;

function TGetDocumentF.ValidateArticle(out ResultMessage: String;
  QryDoc: TADOQuery = nil): Boolean;
var
  Q: TADOQuery;
begin
  ResultMessage := EmptyStr;
  Result := False;
  if QryDoc = nil then
    Q := qry_Documents
  else
    Q := QryDoc;

  with Q do
  begin

    With qryCheck do
    begin
      Close;
      Parameters.ParamByName('TopicCode').Value :=
        Q.FieldByName('TopicCode').AsString;
      Parameters.ParamByName('DetailCode').Value := Q.FieldByName('DetailCode')
        .AsInteger;
      Parameters.ParamByName('CtopicCode1').Value := Q.FieldByName('CTopicCode')
        .AsInteger;
      Parameters.ParamByName('CTopicCode2').Value :=
        Q.FieldByName('CTopicCode2').AsInteger;
      Parameters.ParamByName('CtopicCode3').Value :=
        Q.FieldByName('CTopicCode3').AsInteger;
      Open;
    end;

    if not dmf.CheckDetailComapany(Q.FieldByName('DetailCode').AsInteger,
      Q.FieldByName('CompanyCode').AsInteger) then
    begin
      ResultMessage := 'تفصیلی برای شرکت تعریف نشده است ';
      Exit;

    end;

    if qryCheck.FieldByName('HassMoeen').AsInteger = 0 then
    begin
      ResultMessage := 'كد حساب معتبر نيست.';
      Exit;
      // Abort;
    end; // if
    // end; //with
    if qryCheck.FieldByName('HassDetail').AsInteger > 0 then
    begin
      if qryCheck.FieldByName('IsValidDetailForMoeen').IsNull then
      begin

        DBGrid1.SelectedIndex := 4;
        ResultMessage := 'كد تفصيلي معتبر نيست.';
        Exit;
      end;

    end
    else
    begin
      if FieldByName('DetailCode').AsInteger <> 0 then
      begin
        ResultMessage := 'كد تفصيلي ' + FieldByName('DetailCode').AsString +
          'براي كد حساب ' + FieldByName('TopicCode').AsString + ' معتبر نيست.';
        DBGrid1.SelectedIndex := 4;
        Exit;

      end;

    end; // else not HasDetail

    if qryCheck.FieldByName('HassCTopic3').AsInteger > 0 then
    begin
      if qryCheck.FieldByName('IsValidCTopic3ForCTopics2').IsNull then
      begin
        ResultMessage := 'كد تفصیلی 1 3 معتبر نيست.';
        DBGrid1.SelectedIndex := 1;
        Exit;
      end;
    end
    else
    begin
      if FieldByName('CTopicCode3').AsInteger <> 0 then
      begin
        ResultMessage := ' كد تفصیلی 1 3 ' + FieldByName('CTopicCode3')
          .AsString + ' براي كد تفصیلی 1 2 ' + FieldByName('CTopicCode2')
          .AsString + ' معتبر نيست.';
        DBGrid1.SelectedIndex := 1;
        Exit;
      end;
    end;

    if qryCheck.FieldByName('HassCTopic2').AsInteger > 0 then
    begin
      if qryCheck.FieldByName('IsValidCTopic2ForCTopics').IsNull then
      begin
        ResultMessage := 'كد تفصیلی 3 معتبر نيست.';
        DBGrid1.SelectedIndex := 2;
        Exit;
      end;
    end
    else
    begin
      if FieldByName('CTopicCode2').AsInteger <> 0 then
      begin
        ResultMessage := ' كد تفصیلی 1 2 ' + FieldByName('CTopicCode2')
          .AsString + ' براي كد مركزهزينه1 ' + FieldByName('CTopicCode')
          .AsString + ' معتبر نيست.';
        DBGrid1.SelectedIndex := 2;
        Exit;
      end;

    end;

    if qryCheck.FieldByName('HassCTopic').AsInteger > 0 then
    begin
      if qryCheck.FieldByName('IsValidCTopicForMoeen').IsNull then
      begin
        ResultMessage := 'كد تفصیلی 1__ معتبر نيست.';
        DBGrid1.SelectedIndex := 3;
        Exit;
      end;
    end
    else if FieldByName('CTopicCode').AsInteger <> 0 then
    begin
      ResultMessage := '__كد تفصیلی 1 ' + FieldByName('CTopicCode').AsString +
        'براي كد حساب ' + FieldByName('TopicCode').AsString + ' معتبر نيست.';
      DBGrid1.SelectedIndex := 3;
      Exit;
    end;

    if (FieldByName('Debt').AsCurrency < 0) or
      (FieldByName('Credit').AsCurrency < 0) then
    begin
      ResultMessage := 'مبلغ منفي معتبر نيست.';
      DBGrid1.SelectedIndex := 8;
      Exit;
    end; // if

    if (FieldByName('Debt').AsCurrency > 0) and
      (FieldByName('Credit').AsCurrency > 0) then
    begin
      ResultMessage := 'مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.';
      DBGrid1.SelectedIndex := 8;
      Exit;
    end;

    if (FieldByName('Debt').AsCurrency + FieldByName('Credit')
      .AsCurrency) = 0 then
    begin
      ResultMessage := 'مبلغ وارد نشده ';
      DBGrid1.SelectedIndex := 8;
      Exit;
    end; // if

    if (FieldByName('Debt').AsString = Null) then
      FieldByName('Debt').AsCurrency := 0;
    if (FieldByName('Credit').AsString = Null) then
      FieldByName('Credit').AsCurrency := 0;

  end; // with

  Result := True;

end;

end.
