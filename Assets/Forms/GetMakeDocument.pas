unit GetMakeDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, Grids, DBGrids, DBCtrls, zAPIBalloon,
  Menus, Provider, DBClient, Xmlxform,
  SumDBGrid, xmldom, CheckDoc, System.ImageList, System.Actions;

type
  TGetMakeDocumentF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Panel5: TPanel;
    actMakeDoc: TAction;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    MskDocTopic: TMaskEdit;
    CmbDocType: TComboBox;
    Label5: TLabel;
    actFilter: TAction;
    LblDate: TLabel;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    actErrorList: TAction;
    BitBtn5: TBitBtn;
    btnSearch: TBitBtn;
    BitBtn7: TBitBtn;
    actSendExel: TAction;
    actSort: TAction;
    actPrint: TAction;
    zbal: TzAPIBalloon;
    BitBtn8: TBitBtn;
    PopMnuForm: TPopupMenu;
    MenuItem1: TMenuItem;
    N5: TMenuItem;
    MenuItem4: TMenuItem;
    N9: TMenuItem;
    MenuItem2: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    qryDocuments: TADOQuery;
    qryDocGroups: TADOQuery;
    qryAInitcmb: TADOQuery;
    qryExportDoc: TADOQuery;
    Label2: TLabel;
    mskDocDate: TMaskEdit;
    MskDocNo: TMaskEdit;
    Label1: TLabel;
    cmbCompany: TComboBox;
    Panel6: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel6: TBevel;
    qryExportDoctopiccode: TLargeintField;
    qryExportDocdetailcode: TIntegerField;
    qryExportDocctopiccode: TIntegerField;
    qryExportDocctopiccode2: TIntegerField;
    qryExportDocctopiccode3: TIntegerField;
    qryExportDocDebt: TFMTBCDField;
    qryExportDocCredit: TFMTBCDField;
    qryExportDoc_TopicName: TStringField;
    qryExportDoc_DetailName: TStringField;
    qryExportDocCtopicName1: TStringField;
    qryExportDoc_CtopicName2: TStringField;
    qryExportDoc_CtopicName3: TStringField;
    srcExportDoc: TDataSource;
    qryExportDocComment: TStringField;
    actSendXml: TAction;
    BitBtn9: TBitBtn;
    CliXml: TClientDataSet;
    XMLPrv: TXMLTransformProvider;
    Panel4: TPanel;
    Bevel5: TBevel;
    Bevel7: TBevel;
    StatusBar1: TStatusBar;
    lblCompany: TLabel;
    lslWarnings: TListBox;
    DBGrid1: TDBGrid;
    TabControl1: TTabControl;
    SumGrid1: TSumGrid;
    btnFilter: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmbGroupsChange(Sender: TObject);
    procedure RdGKindDocClick(Sender: TObject);
    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendXmlExecute(Sender: TObject);
    procedure qryExportDocAfterOpen(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    // procedure qryExportDocBeforeOpen(DataSet: TDataSet);
    procedure TabControl1Change(Sender: TObject);
    procedure qryExportDocBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);

  private
    fOrgSql: string;
    function MackDocs(SendAcc: Boolean = False): Boolean;
    procedure InitForm;
    procedure initCombos;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  GetMakeDocumentF: TGetMakeDocumentF;

implementation

uses DM, shamsiDate, GlobalPro, Math, StrUtils, search2, sort2,
  mmessage, FaraConsts, filter_ADO, FilterClass_ADO;
{$R *.dfm}

procedure TGetMakeDocumentF.UpdateFilter;
begin
  with qryExportDoc do
  begin
    Active := False;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftLargeint);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftLargeint);
    // Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
    // Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['Date'],ftDate);
    // Parameters.ParamByName('StoreIDFrom1').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    // Parameters.ParamByName('StoreIDTo1').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    // Parameters.ParamByName('NumberFrom1').Value:=GetcFrom(myParams.ParamValues['Number'],ftInteger);
    // Parameters.ParamByName('NumberTo1').Value:=GetcTo(myParams.ParamValues['Number'],ftInteger);
    // Parameters.ParamByName('DateFrom1').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
    // Parameters.ParamByName('DateTo1').Value:=GetcTo(myParams.ParamValues['Date'],ftDate);
    Active := True;
  end; // with
  // with qryExportDoc.Parameters do begin
  // LblNum.Caption:='از شماره '+IntToStr(ParamByName('NumberFrom').Value)+' تا '+IntToStr(ParamByName('NumberTo').Value);
  // LblDate.Caption:='از تاريخ '+ParamByName('DateFrom').Value+' تا '+ParamByName('DateTo').Value;
  // LblStore.Caption:='از كد انبار '+IntToStr(ParamByName('StoreIDFrom').Value)+' تا '+IntToStr(ParamByName('StoreIDTo').Value);
  // end;//with

end;

procedure TGetMakeDocumentF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBsell, 'TopicCode', 'سرفصل حساب', 'کد', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT AccTopicCode, AccDesc FROM Assets.AccTopics',
        'Select Min(AccTopicCode),max(AccTopicCode) from Assets.Amval');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TGetMakeDocumentF.initCombos;
begin
  // cmbGroups.Clear;
  // with DMf.qryTmpTmp do begin
  // Active:=False;
  // SQL.Text:='SELECT ReciptType,ReciptCaption FROM ReciptTypes ';
  // SQL.Add  ('WHERE MakeDoc = 1  ORDER BY ReciptType');
  // Active:=True;
  // while not eof do begin
  // cmbGroups.AddItem(Fields[1].AsString,TObject(Fields[0].AsInteger));
  // Next;
  // end;//while
  // Active:=False;
  // end;//with
  // //////////////////////////////////////////////////////////////////
  CmbDocType.Clear;
  // cmbCompany.Clear;
  with qryAInitcmb do
  begin
    Active := False;
    Sql.Clear;
    Sql.Text :=
      'SELECT InfoID,InfoName_L1 FROM acc.FormsInfo WHERE (FormType = 1) ORDER BY InfoID ';
    Active := True;
    while not eof do
    begin
      CmbDocType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while   }
    Active := False;
    Sql.Text :=
      'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ORDER BY CompanyCode';
    Active := True;
    while not eof do
    begin
      cmbCompany.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while

    if CmbDocType.Items.Count > 0 then
      CmbDocType.ItemIndex := 0;

    if cmbCompany.Items.Count > 0 then
      cmbCompany.ItemIndex := 0;

    cmbCompany.Visible := cmbCompany.Items.Count > 1;
    lblCompany.Visible := cmbCompany.Visible;

    Active := False;
  end; // with

  CmbDocType.ItemIndex := CmbDocType.Items.IndexOfObject
    (TObject(opt.DefaultDocType));
end;

procedure TGetMakeDocumentF.InitForm;
var
  sqltxt: string;
begin
  mskDocDate.Text := IfThen(var_glb_CurrentDate < APPBank.endYear,
    var_glb_CurrentDate, APPBank.endYear);
  fOrgSql := qryExportDoc.Sql.Text;

  sqltxt := Format
    ('Select  Max(SecondaryDocNo) From acc.DocGroups where Yearid = %d ',
    [APPBank.Year]);
  MskDocNo.Text := IntToStr(GetANewCode(Self.Name,sqltxt, 'SecondaryDocNo',
    DMF.adcAccounting));
  TabControl1Change(TabControl1);
end;

procedure TGetMakeDocumentF.FormCreate(Sender: TObject);
begin
  inherited;
  initCombos;
  InitForm;
  // qryExportDoc.Active := True;

end;

procedure TGetMakeDocumentF.actMakeDocExecute(Sender: TObject);
var
  S: String;
begin
  inherited;

  if qryExportDoc.IsEmpty then
  begin
    Warn('موردي براي صدور سند وجود ندارد');
    Exit;
  end;

  With TADOQuery.Create(Self) do
    try
      Connection := DMF.adcAccounting;
      Sql.Text := 'select StartYear,EndYear From  Util.MaliYear';
      Sql.add('Where YearId = :Year');
      Parameters[0].Value := APPBank.Year;
      Open;
      S := mskDocDate.Text;
      if not validate_date(True, Fields[0].AsString, Fields[1].AsString, '', S,
        False) then
      begin
        Warn('تاريخ وارد شده نامعتبر است');
        Exit;
      end;

    finally
      Free;
    end;

  // actErrorList.Execute;
  lslWarnings.Visible := lslWarnings.Items.Count > 0;
  if lslWarnings.Visible then
  begin
    zbal.Title := 'خطا!‏';
    zbal.Prompt.Text := 'خطاها موجود در سند را اصلاح كنيد';
    zbal.Show(lslWarnings);
    Exit
  end;

  if MackDocs(True) then
    BigMessage('با موفقيت ارسال شد', 1)
  else
    Warn('اشکال در صدور سند');

  FreeReservedCodes(DMF.adcAccounting);
  qryExportDoc.Requery;
end;

procedure TGetMakeDocumentF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  FreeReservedCodes(DMF.adcBsell);
  FreeReservedCodes(DMF.adcAccounting);

end;

procedure TGetMakeDocumentF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True);
end;

procedure TGetMakeDocumentF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if (myParams.FindParam('TopicCode') = nil) then
    Close;
end;

procedure TGetMakeDocumentF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TGetMakeDocumentF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute
end;

procedure TGetMakeDocumentF.RdGKindDocClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute
end;

procedure TGetMakeDocumentF.TabControl1Change(Sender: TObject);
begin
  inherited;
  with qryExportDoc do
  begin
    case TabControl1.TabIndex of
      0:
        begin
          Active := False;
          Sql.Text := Format(fOrgSql,
            [QuotedStr(' بابت ثبت هزينه استهلاك تا تاريخ ' + opt.BaseDate),
            'Assets.MakeDoc', IntToStr(APPBank.Year)]);
          Active := True;
          MskDocTopic.Text := 'بابت ثبت هزينه استهلاك تا تاريخ ';
        end;

      1:
        begin
          Active := False;
          Sql.Text := Format(fOrgSql,
            [QuotedStr('بابت ثبت فروش، اسقاط و برکناری تا تاریخ' +
            opt.BaseDate), 'Assets.MakeDecreaseDoc', QuotedStr(opt.BaseDate) +
            ' , ' + IntToStr(APPBank.Year)]);
          Active := True;
          MskDocTopic.Text := 'بابت ثبت سند حسابداري  فروش ، اسقاط و برکناری ';
        end;
    end;
  end;
end;

procedure TGetMakeDocumentF.actErrorListExecute(Sender: TObject);
var
  S: String;
  i: Integer;
begin
  inherited;
  if qryExportDoc.IsEmpty then
  begin
    Warn('موردي براي چك كردن سند نيست');
    Exit;
  end;

  lslWarnings.Clear;
  lslWarnings.Visible := True;
  with qryExportDoc do
  begin
    DisableControls;
    First;
    i := 0;
    try
      while not eof do
      begin
        S := IfThen((FieldByName('_TopicName').AsString = '') and
          (FieldByName('TopicCode').AsInteger <> 0), FieldByName('TopicCode')
          .AsString);
        S := S + IfThen((FieldByName('_CtopicName1').AsString = '') and
          (FieldByName('CTopicCode').AsInteger <> 0),
          '-' + FieldByName('CTopicCode').AsString);
        S := S + IfThen((FieldByName('_CtopicName2').AsString = '') and
          (FieldByName('CTopicCode2').AsInteger <> 0),
          '-' + FieldByName('CTopicCode2').AsString);
        S := S + IfThen((FieldByName('_CtopicName3').AsString = '') and
          (FieldByName('CTopicCode3').AsInteger <> 0),
          '-' + FieldByName('CTopicCode3').AsString);
        S := S + IfThen((FieldByName('_DetailName').AsString = '') and
          (FieldByName('DetailCode').AsInteger <> 0),
          '-' + FieldByName('DetailCode').AsString);
        inc(i);
        if S <> '' then
          lslWarnings.Items.AddObject(Format('[رديف %d]: [خطا كد %s]', [i, S]),
            TObject(i));
        Next;
      end; // while

      if opt.ValidateDocument(qryExportDoc, lslWarnings) then
      begin
        Warn('سند مورد تأييد است.', mtConfirmation);
        actMakeDoc.Enabled := True;
      end
      else
      begin
        Warn('سند نامعتبر است.');
        actMakeDoc.Enabled := False;
      end; // else

    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TGetMakeDocumentF.lslWarningsClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  qryExportDoc.First;
  qryExportDoc.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);
end;

procedure TGetMakeDocumentF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TGetMakeDocumentF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryExportDoc);
end;

procedure TGetMakeDocumentF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryExportDoc);
end;

procedure TGetMakeDocumentF.actSendXmlExecute(Sender: TObject);
var
  XtrToDb: String;
  XtrToXml: String;
  Xml: String;

begin
  inherited;
  XtrToDb := ExtractFilePath(Application.ExeName) + 'Xml\ToDp.xtr';
  XtrToXml := ExtractFilePath(Application.ExeName) + 'Xml\ToXml.xtr';
  Xml := ExtractFilePath(Application.ExeName) + 'Xml\data.xml';
  XMLPrv.TransformRead.TransformationFile := XtrToDb;
  XMLPrv.TransformWrite.TransformationFile := XtrToXml;

  with TSaveDialog.Create(Self) do
    try
      Filter := 'XMlFile|*.Xml';
      DefaultExt := '.xml';
      if Execute then
      begin
        CopyFile(pchar(Xml), pchar(filename), True);
        Xml := filename;
        XMLPrv.XMLDataFile := Xml;
        CliXml.Open;
        with qryExportDoc do
          try
            BigMessageProgBar('در حال ارسال به XMl', RecordCount);
            DisableControls;
            First;
            while not eof do
            begin
              CliXml.Insert;
              CliXml.FieldByName('Det2').AsString :=
                FieldByName('_DetailName').AsString;
              CliXml.FieldByName('Deb').AsString := FieldByName('Debt')
                .AsString;
              CliXml.FieldByName('Acc').AsString :=
                FieldByName('_TopicName').AsString;
              CliXml.FieldByName('Desc').AsString :=
                FieldByName('Comment').AsString;
              CliXml.FieldByName('Cre').AsString :=
                FieldByName('Credit').AsString;
              CliXml.FieldByName('Det1').AsString :=
                FieldByName('_DetailName').AsString;
              CliXml.Post;
              Next;
              GoProgressBar(IntToStr(RecNo));
            end;
            MackDocs;
            CliXml.ApplyUpdates(0);
            BigMessage('ارسال شد.', 1);
          finally
            EnableControls;
          end;
      end;
    finally
      Free;
    end;

end;

procedure TGetMakeDocumentF.qryExportDocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text := 'مانده :‏' +
    CurrToStr(SumGrid1.GetValueField('Debt') - SumGrid1.GetValueField('Credit'))
end;

procedure TGetMakeDocumentF.qryExportDocBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // ShowQryParam(qryExportDoc);
end;

function TGetMakeDocumentF.MackDocs;
var
  LastSn: Integer;
begin
  LastSn := GetANewCode
    (Self.Name,Format('select max(serial) from acc.docGroups where YearID=%d',
    [APPBank.Year]), 'serial', DMF.adcAccounting);
  // GetANewCode('acc.DocGroups', 'Serial', DMf.adcAccounting);
  Result := True;
  if SendAcc then
  begin
    qryDocGroups.Open;
    qryDocuments.Open;
    with qryDocGroups do
    begin
      Insert;
      FieldByName('Serial').AsInteger := LastSn;
      FieldByName('SecondaryDocNo').AsInteger := StrToInt(Trim(MskDocNo.Text));
      FieldByName('DocTypeCode').AsInteger :=
        Integer(CmbDocType.Items.Objects[CmbDocType.ItemIndex]);
      FieldByName('CompanyCode').AsInteger :=
        Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
      FieldByName('UserID').AsInteger := User.id;
      FieldByName('DocTopic_L1').AsString := MskDocTopic.Text;
      FieldByName('DocDate').AsString := mskDocDate.Text;
      FieldByName('Status').AsInteger := 1;
      FieldByName('MakeDate').AsDateTime := Now;
      FieldByName('DocDate').AsString := mskDocDate.Text;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('DocNote_L1').AsString := 'ثبت سند توسط ' +
        Application.MainForm.Caption;
      if FindField('SourceDataBase') <> nil then
        FieldByName('SourceDataBase').AsString := APPBank.Name +
          '.Assets.DocExports';
      Post;
    end;

    try
    dmf.adcBsell.Execute
      (Format('assets.InsertDocExports %D , %S , %D , %d , %d ,%d',
      [LastSn, QuotedStr(opt.BaseDate), TabControl1.TabIndex,
      StrToInt64(VarToStr(qryExportDoc.Parameters.ParamByName('TopicCodeFrom')
      .Value)), StrToInt64(VarToStr(qryExportDoc.Parameters.ParamByName
      ('TopicCodeTo').Value)), APPBank.Year]))
    except
         Result := False;
    end;

    With TADOQuery.Create(Self) do
      try
        Connection := DMF.adcBsell;
        Sql.Text :=
          Format('select * from Assets.DocExports where Document_Serial = %d ' +
          'ORDER BY CASE WHEN dEBT > 0 THEN 1 ELSE 0 END DESC', [LastSn]);
        Open;
        BigMessageProgBar('در حال ارسال سند', RecordCount);

        while not eof do
          try
            qryDocuments.Insert;
            qryDocuments.FieldByName('Serial').AsInteger := LastSn;
            qryDocuments.FieldByName('Row').AsInteger := RecNo;
            qryDocuments.FieldByName('TopicCode').AsInteger :=
              FieldByName('TopicCode').AsInteger;
            qryDocuments.FieldByName('DetailCode').AsInteger :=
              FieldByName('DetailCode').AsInteger;
            qryDocuments.FieldByName('CTopicCode').AsInteger :=
              FieldByName('CTopicCode').AsInteger;
            qryDocuments.FieldByName('CTopicCode2').AsInteger :=
              FieldByName('CTopicCode2').AsInteger;
            qryDocuments.FieldByName('ctopiccode3').AsInteger :=
              FieldByName('ctopiccode3').AsInteger;
            qryDocuments.FieldByName('Comment_L1').AsString :=
              FieldByName('Comments').AsString;
{$REGION 'در خواست شرگت چاه نفت'}
            qryDocuments.FieldByName('Debt').AsCurrency :=
              round(FieldByName('Debt').AsCurrency);
            qryDocuments.FieldByName('Credit').AsCurrency :=
              round(FieldByName('Credit').AsCurrency);
{$ENDREGION}
            qryDocuments.FieldByName('CompanyCode').AsInteger :=
              Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
            qryDocuments.FieldByName('DetailCompany').AsInteger :=
              Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
            qryDocuments.FieldByName('YearID').AsInteger := APPBank.Year;
            qryDocuments.Post;
            Next;
            GoProgressBar(IntToStr(RecNo));

          Except
            Result := False;
          end;
        if Result then
          with TADOQuery.Create(nil) do
          begin
            Connection := DMF.adcBsell;
            Sql.Text := Format('UPDATE Assets.DocExports ' +
              ' SET DocNo = %d , DocDate = %s WHERE Document_Serial = %d ',
              [qryDocGroups.FieldByName('SecondaryDocNo').AsInteger,
              QuotedStr(mskDocDate.Text), LastSn]);
            ExecSQL;
            Free;
          end; // with

      finally
        qryDocGroups.Close;
        qryDocuments.Close;
        CloseMessage;
        Free;
      end;

  end;

end;

procedure TGetMakeDocumentF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryExportDoc);
end;

// procedure TGetMakeDocumentF.qryExportDocBeforeOpen(DataSet: TDataSet);
// begin
// inherited;
// TADOQuery(DataSet).Sql.Text := Format(TADOQuery(DataSet).Sql.Text,
// [QuotedStr(' بابت ثبت هزينه استهلاك تا تاريخ ' + opt.BaseDate)]);
//
// ShowQryParam(qryExportDoc);
// end;

end.
