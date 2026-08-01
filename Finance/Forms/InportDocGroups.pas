unit InportDocGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, ImgList, DBActns, ActnList, ExtCtrls,
  Buttons, Mask, DB, ADODB, Grids, Vcl.DBGrids, DBClient, Provider, DBCtrls,
  GeneralDM, System.ImageList, System.Actions, FormFunctions, ListSQLServers;

type
  TSearchItem = class
    BankName: String;
    caption: String;
  end;

  // tSearchItem
  TInportDocGroupsF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    edtSecondFrom: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtSecendTo: TEdit;
    Label3: TLabel;
    mskDateFrom: TMaskEdit;
    mskDateTo: TMaskEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    qryFilter: TADOQuery;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    qryDocGroupSend: TADOQuery;
    SrcDocGroup: TDataSource;
    DataSetProvider1: TDataSetProvider;
    actSlelectInverse: TAction;
    actSelectAll: TAction;
    Image1: TImage;
    Image2: TImage;
    actFiltter: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actSort: TAction;
    qryDocumentSend: TADOQuery;
    qryDocGroup: TADOQuery;
    actsend: TAction;
    qryDocument: TADOQuery;
    BitBtn7: TBitBtn;
    actSendCode: TAction;
    Bevel1: TBevel;
    btnSendExcel: TBitBtn;
    actSendExcel: TAction;
    qryFilterMinDocNo: TIntegerField;
    qryFilterMaxDocNo: TIntegerField;
    qryFilterMinDocDate: TStringField;
    qryFilterMaxDocDate: TStringField;
    CliDocGroupSend: TClientDataSet;
    CliDocGroupSend_checket: TBooleanField;
    CliDocGroupSendSecondaryDocNo: TIntegerField;
    CliDocGroupSendPrimaryDocNo: TIntegerField;
    CliDocGroupSendDocTypeCode: TSmallintField;
    CliDocGroupSendStatus: TSmallintField;
    CliDocGroupSendCompanyCode: TSmallintField;
    CliDocGroupSendSerial: TIntegerField;
    CliDocGroupSendDocDate: TStringField;
    CliDocGroupSendDocTopic_L1: TStringField;
    CliDocGroupSendUserID: TIntegerField;
    CliDocGroupSendMakeDate: TDateTimeField;
    CliDocGroupSendAttachFolderName: TStringField;
    CliDocGroupSendDocNote_L1: TStringField;
    adcSrc: TADOConnection;
    qrySend: TADOQuery;
    qryDocumentID: TIntegerField;
    qryDocumentSerial: TIntegerField;
    qryDocumentTopicCode: TLargeintField;
    qryDocumentDetailCode: TIntegerField;
    qryDocumentCTopicCode: TIntegerField;
    qryDocumentCTopicCode2: TIntegerField;
    qryDocumentComment_L1: TStringField;
    qryDocumentComment_L2: TStringField;
    qryDocumentRow: TIntegerField;
    qryDocumentDebt: TFMTBCDField;
    qryDocumentCredit: TFMTBCDField;
    qryDocumentAidDocdate: TStringField;
    qryDocumentAidAmount: TFloatField;
    qryDocumentBudgetTopicID: TIntegerField;
    qryDocumentBudgetID: TIntegerField;
    qryDocumentReferenceNo: TIntegerField;
    qryDocumentReferenceTxt: TStringField;
    qryDocumentReferenceDate: TStringField;
    qryDocumentProjectID: TIntegerField;
    qryDocumentReferenceCheck: TWordField;
    CliDocGroupSendDocTopic_L2: TStringField;
    CliDocGroupSendFirstUser: TStringField;
    CliDocGroupSendSecondUser: TStringField;
    qryDocumentCompanyCode: TIntegerField;
    qryDocumentSendID: TIntegerField;
    qryDocumentSendSerial: TIntegerField;
    qryDocumentSendTopicCode: TLargeintField;
    qryDocumentSendDetailCode: TIntegerField;
    qryDocumentSendCTopicCode: TIntegerField;
    qryDocumentSendCTopicCode2: TIntegerField;
    qryDocumentSendComment_L1: TStringField;
    qryDocumentSendComment_L2: TStringField;
    qryDocumentSendRow: TIntegerField;
    qryDocumentSendDebt: TFMTBCDField;
    qryDocumentSendCredit: TFMTBCDField;
    qryDocumentSendAidDocdate: TStringField;
    qryDocumentSendAidAmount: TFloatField;
    qryDocumentSendBudgetTopicID: TIntegerField;
    qryDocumentSendBudgetID: TIntegerField;
    qryDocumentSendReferenceNo: TIntegerField;
    qryDocumentSendReferenceTxt: TStringField;
    qryDocumentSendReferenceDate: TStringField;
    qryDocumentSendProjectID: TIntegerField;
    qryDocumentSendReferenceCheck: TWordField;
    qryDocumentSendCompanyCode: TIntegerField;
    qryDocumentSendAuditDoPrint: TWordField;
    qryDocumentAuditDoPrint: TWordField;
    cmbDocTypeFrom: TComboBox;
    CliDocGroupSendDocTypeName_L1: TStringField;
    cmbDocTypeTo: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    CliDocGroupSendYearID: TIntegerField;
    grpYear: TGroupBox;
    cmbYear: TComboBox;
    grpKind: TRadioGroup;
    qryDocumentctopiccode3: TIntegerField;
    qryDocumentYearID: TIntegerField;
    qryDocumentRelatedID: TIntegerField;
    lstWarn: TListBox;
    Label7: TLabel;
    qryDocumentSendctopiccode3: TIntegerField;
    mmoNote: TMemo;
    BitBtn8: TBitBtn;
    qryDocumentAidDocNo: TFMTBCDField;
    qryDocumentSendAidDocNo: TFMTBCDField;
    CliDocGroupSendDocNote_L2: TStringField;
    btn3: TSpeedButton;
    mskCTCode3From: TMaskEdit;
    btn4: TSpeedButton;
    mskCTCode3To: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    cmbServerName: TComboBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox4: TGroupBox;
    cmbFirstUser: TComboBox;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actFiltterExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actsendExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actSendCodeExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure qryDocGroupSendAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CliDocGroupSendStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure cmbYearChange(Sender: TObject);
    procedure lstWarnDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure btnNoteClick(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mskCTCode3FromChange(Sender: TObject);
    procedure mskCTCode3FromKeyPress(Sender: TObject; var Key: Char);
    procedure mskCTCode3ToKeyPress(Sender: TObject; var Key: Char);
    procedure btn3Click(Sender: TObject);
    procedure cmbServerNameChange(Sender: TObject);
  private
    { Private declarations }
    sitem: TSearchItem;
    procedure ToggleCheck;
    procedure initCombo;
    procedure setqryDocumentSend;
    procedure initServerCombo;
    procedure CopyDocEntityImages(const OldSerial, OldCompany, OldYear,
      NewSerial, NewCompany, NewYear: Integer);
    // AssignBankName(adc: TADOConnection; dbName: String);
  public
    { Public declarations }
  end;

var
  InportDocGroupsF: TInportDocGroupsF;

implementation

uses GlobalPro, dm, sndkey32, search1, sort, mmessage, StrUtils, FaraConsts,
  HelpShow, searchCode_ADO;
{$R *.dfm}

procedure TInportDocGroupsF.initCombo;
begin
  // edit by abedi _ add serverName.
  CliDocGroupSend.Close;
  qryDocumentSend.Active := False;
  qryDocGroupSend.Active := False;
  if adcSrc.Connected then
    adcSrc.Connected := False;

  with TADOQuery.Create(DMf) do
    try
      ComboBox1.Clear;
      Active := False;
      Connection := DMf.adcFaraSystem;
      SQL.Text := 'if not exists (select server_id from sys.servers where name='
        + QuotedStr(cmbServerName.Text) + ') ' + 'exec sp_addlinkedserver ' +
        QuotedStr(cmbServerName.Text);
      ExecSQL;
      Active := False;
      SQL.Text := 'Select * from [' + cmbServerName.Text +
        '].FaraSystems.dbo.Sections ';
      SQL.Add('where ((sysid=:sysid)or(sysid=:sysid2)or(sysid=:sysid3))');
      if cmbServerName.Text = opt.ServerName then
        SQL.Add(' and(BankName<> ''' + APPBank.Name + ''')');

      SQL.Add(' order by createdate');
      Parameters.ParamByName('SYSID').Value := SYSID;
      Parameters.ParamByName('SYSID2').Value := 40;
      Parameters.ParamByName('SYSID3').Value := 4;
      Active := True;
      while not Eof do
      begin
        sitem := TSearchItem.Create;
        sitem.caption := Format('سال مالي %.2d - %s - %s',
          [FieldByName('MaliYear').AsInteger, FieldByName('CompanyName')
          .AsString, FieldByName('BankName').AsString]);
        sitem.BankName := FieldByName('BankName').AsString;
        ComboBox1.Items.AddObject(sitem.caption, sitem);
        Next;
      end; // while
      if ComboBox1.Items.Count > 0 then
        ComboBox1.ItemIndex := 0;
      // ComboBox1Change(ComboBox1);

    finally
      Free;
    end; // try

end;

procedure TInportDocGroupsF.initServerCombo;
begin
  BigMessage('1درحال بررسی سرورها و بانک ها...', 0);
  cmbServerName.Items.Clear;
  BigMessage('2درحال بررسی سرورها و بانک ها...', 0);
  ListAvailableSQLServers(cmbServerName.Items);
  BigMessage('3درحال بررسی سرورها و بانک ها...', 0);
  cmbServerName.ItemIndex := cmbServerName.Items.IndexOf
    (ReadConfig(APPID, 'Server4ImportDoc', opt.ServerName));
  BigMessage('4درحال بررسی سرورها و بانک ها...', 0);
  cmbServerNameChange(cmbServerName);
  BigMessage('5درحال بررسی سرورها و بانک ها...', 0);
end;

Procedure TInportDocGroupsF.ToggleCheck;
begin
  with CliDocGroupSend do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with

end;

procedure TInportDocGroupsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TInportDocGroupsF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with CliDocGroupSend do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TInportDocGroupsF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with CliDocGroupSend do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TInportDocGroupsF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
    sendkey(vk_down, [], False);;
  end;
end;

procedure TInportDocGroupsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if CliDocGroupSend.FieldByName('_checked').AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TInportDocGroupsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  n: Int64;
begin
  inherited;
  n := getKeyboardNumber(Key);
  if n > 0 then
    CliDocGroupSend.Locate('SecondaryDocNo', IntToStr(n), []);

end;

procedure TInportDocGroupsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5);
end;

procedure TInportDocGroupsF.FormDestroy(Sender: TObject);
begin
  inherited;
  if DBGrid1.DataSource.DataSet.Active then
    SaveColWidth(DBGrid1);
  if Assigned(sitem) then
    FreeAndNil(sitem);
end;

procedure TInportDocGroupsF.actFiltterExecute(Sender: TObject);
begin
  inherited;
  if ComboBox1.Text = '' then
  begin
    Warn('سال مالي را مشخص كنيد');
    ComboBox1.SetFocus;
  end
  else
    with qryDocGroupSend do
    begin
      Close;
      SQL.Text := 'SELECT acc.DocGroups.*, acc.DocTypes.DocTypeName_L1';
      SQL.Add('FROM acc.DocGroups LEFT OUTER JOIN');
      SQL.Add('acc.DocTypes ON acc.DocGroups.DocTypeCode = acc.DocTypes.DocTypeCode');

      if (Trim(mskCTCode3From.Text) <> '0') then
      begin
        SQL.Add('INNER JOIN Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial ');
        SQL.Add('AND Acc.DocGroups.YearID = Acc.Documents.YearID ');
        SQL.Add('AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode');
      end;
      SQL.Add('WHERE (acc.DocGroups.YearID = :YearID ) ');
      Parameters.ParamByName('YearID').Value :=
        Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);

      if (CompanyFilterinLogin) and (not user.PowerAdmin) then
        SQL.Add('AND Acc.DocGroups.CompanyCode = ' +
          FcompanyCodeLogin.ToString);

      if (Trim(edtSecondFrom.Text) <> '') then
      begin
        SQL.Add('And(acc.DocGroups.SecondaryDocNo Between :DocFrom And :DocTo )');
        Parameters.ParamByName('DocFrom').Value := edtSecondFrom.Text;
        Parameters.ParamByName('DocTo').Value := edtSecendTo.Text;
      end;
      if (Trim(mskDateFrom.Text) <> '') then
      begin
        SQL.Add('AND (acc.DocGroups.DocDate Between :DocDateFrom And :DocDateTo )');
        Parameters.ParamByName('DocDateFrom').Value := mskDateFrom.Text;
        Parameters.ParamByName('DocDateTo').Value := mskDateTo.Text;
      end;

      if cmbDocTypeFrom.ItemIndex <> -1 then
      begin
        SQL.Add('AND (acc.DocGroups.DocTypeCode Between :DocTypeFrom And :DocTypeTo)');
        Parameters.ParamByName('DocTypeFrom').Value :=
          Integer(cmbDocTypeFrom.Items.Objects[cmbDocTypeFrom.ItemIndex]);
        Parameters.ParamByName('DocTypeTo').Value :=
          Integer(cmbDocTypeTo.Items.Objects[cmbDocTypeTo.ItemIndex]);

      end;

      if (Trim(mskCTCode3From.Text) <> '0') then
      begin
        SQL.Add('AND (acc.Documents.ctopiccode3 Between :ctopiccode3From And :ctopiccode3To)');
        Parameters.ParamByName('ctopiccode3From').Value := mskCTCode3From.Text;
        Parameters.ParamByName('ctopiccode3To').Value := mskCTCode3To.Text;
      end;

      if cmbFirstUser.Text <> EmptyStr then
      begin
        SQL.Add('AND (acc.DocGroups.FirstUser = :FirstUser )');
        Parameters.ParamByName('FirstUser').Value := cmbFirstUser.Text;
      end;

      Open;
      CliDocGroupSend.Active := False;
      CliDocGroupSend.Active := True;
    end; // with
  DBGrid1.SetFocus;
end;

procedure TInportDocGroupsF._actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(CliDocGroupSend);
end;

procedure TInportDocGroupsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(CliDocGroupSend);
end;

procedure TInportDocGroupsF.btn3Click(Sender: TObject);
var
  Results: array [0 .. 5] of string;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(adcSrc, 'كدهاي تفصیلی 4', DMf.sqlSetText(20),
    ['كد تفصیلی 4', 'نام حساب', 'name'], Results, [150, 350, 350], alLeft) then
  begin
    if (Sender as TSpeedButton).Tag = 0 then
      mskCTCode3From.Text := Results[0]
    else
      mskCTCode3To.Text := Results[0];

  end;
end;

procedure TInportDocGroupsF.btnNoteClick(Sender: TObject);
begin
  inherited;

  HelpShowF.enter(mmoNote.Text, 'توضیحات چگونگی نوع فراخوانی');
end;

// ---------------------------------------------------------------------------
// روتین کمکی برای کپی تصاویر مرتبط با سند از EntityImages
// ---------------------------------------------------------------------------
procedure TInportDocGroupsF.CopyDocEntityImages(const OldSerial, OldCompany,
  OldYear, NewSerial, NewCompany, NewYear: Integer);
var
  qrySource, qryDest: TADOQuery;
  OldEntityID, NewEntityID: string;
  I: Integer;
  BlobField: TBlobField;
  MemStream: TMemoryStream;
begin
  // ساخت شناسه‌ها به فرمت مورد نظر: Serial_CompanyCode_YearID
  OldEntityID := Format('%d_%d_%d', [OldSerial, OldCompany, OldYear]);
  NewEntityID := Format('%d_%d_%d', [NewSerial, NewCompany, NewYear]);

  qrySource := TADOQuery.Create(nil);
  qryDest := TADOQuery.Create(nil);
  MemStream := TMemoryStream.Create;
  try
    qrySource.Connection := adcSrc; // یا کانکشن اصلی شما
    qryDest.Connection := DMf.adcAccounting;

    // خواندن تصاویر منبع با EntityType = 'DocumentF'
    qrySource.SQL.Text :=
      'SELECT * FROM EntityImages WHERE EntityType = :EntityType AND EntityID = :EntityID';
    qrySource.Parameters.ParamByName('EntityType').Value := 'DocumentF';
    qrySource.Parameters.ParamByName('EntityID').Value := OldEntityID;
    qrySource.Open;

    if qrySource.IsEmpty then
      Exit; // اگر تصویری نبود، خارج شو

    while not qrySource.Eof do
    begin
      qryDest.Close;
      qryDest.SQL.Text := 'INSERT INTO EntityImages ' +
        '(EntityType, EntityID, ImageType, ImageData, FileName1, FileSize, CreatedAt) '
        + 'VALUES (:EntityType, :EntityID, :ImageType, :ImageData, :FileName1, :FileSize, :CreatedAt)';

      with qryDest do
      begin
        Parameters.ParamByName('EntityType').Value := 'DocumentF';
        Parameters.ParamByName('EntityID').Value := NewEntityID; // شناسه جدید
        Parameters.ParamByName('ImageType').Value :=
          qrySource.FieldByName('ImageType').AsString;
        Parameters.ParamByName('FileName1').Value :=
          qrySource.FieldByName('FileName1').AsString;
        Parameters.ParamByName('FileSize').Value :=
          qrySource.FieldByName('FileSize').AsInteger;
        Parameters.ParamByName('CreatedAt').Value :=
          qrySource.FieldByName('CreatedAt').AsDateTime;

        // کپی صحیح فیلد باینری/تصویر
        BlobField := qrySource.FieldByName('ImageData') as TBlobField;
        if (BlobField <> nil) and (not BlobField.IsNull) then
        begin
          MemStream.Clear;
          BlobField.SaveToStream(MemStream);
          MemStream.Position := 0;
          // پارامتر ImageData را به صورت ftBlob تعریف و مقداردهی می‌کنیم
          Parameters.ParamByName('ImageData').LoadFromStream(MemStream, ftBlob);
        end
        else
          Parameters.ParamByName('ImageData').Value := Null;

        ExecSQL;
      end;
      qrySource.Next;
    end;
  finally
    MemStream.Free;
    qrySource.Free;
    qryDest.Free;
  end;
end;

// ---------------------------------------------------------------------------
// متد اصلی ارسال/کپی اسناد (اصلاح شده)
// ---------------------------------------------------------------------------
procedure TInportDocGroupsF.actsendExecute(Sender: TObject);
var
  Sn: Integer;
  SC: Integer;
  I: Byte;
  // متغیرهای کمکی برای نگهداری مقادیر قدیم و جدید جهت کپی تصاویر
  OldSerial, OldCompany, OldYear: Integer;
  NewSerial, NewCompany, NewYear: Integer;
begin
  inherited;
  lstWarn.Clear;
  qryDocument.Open;
  with CliDocGroupSend do
    try
      Filter := '_Checked=true';
      Filtered := True;
      DisableControls;
      First;
      if IsEmpty then
      begin
        Warn('يك مورد را انتخاب كنيد ');
        Exit;
      end;
      if get_response
        ('لطفا قبل انتقال اسناد انتقال كدينگ را انجام دهيد. آيا مظمئن هستيد؟')
        <> mrYes then
      begin
        Exit;
      end;

      BigMessageProgBar('در حال  انتقال اسناد', RecordCount);
      try

        while not Eof do
          with qryDocGroup do
          begin
            Close;
            SQL.Text := 'SELECT acc.DocGroups.*';
            SQL.Add('FROM acc.DocGroups');

            if (Trim(mskCTCode3From.Text) <> '0') then
            begin
              SQL.Add('INNER JOIN Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial ');
              SQL.Add('AND Acc.DocGroups.YearID = Acc.Documents.YearID ');
              SQL.Add('AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode');
            end;

            SQL.Add('WHERE (acc.DocGroups.CompanyCode =:CompanyNo )');
            SQL.Add('AND (acc.DocGroups.SecondaryDocNo = :DocNo) and (acc.DocGroups.YearID = :YearID)');

            if (CompanyFilterinLogin) and (not user.PowerAdmin) then
              SQL.Add('AND Acc.DocGroups.CompanyCode = ' +
                FcompanyCodeLogin.ToString);

            if (Trim(mskCTCode3From.Text) <> '0') then
            begin
              SQL.Add('AND (acc.Documents.ctopiccode3 Between :ctopiccode3From And :ctopiccode3To)');
              Parameters.ParamByName('ctopiccode3From').Value :=
                mskCTCode3From.Text;
              Parameters.ParamByName('ctopiccode3To').Value :=
                mskCTCode3To.Text;
            end;

            if grpKind.ItemIndex <> 2 then
            begin
              Parameters.ParamByName('CompanyNo').Value :=
                CliDocGroupSend.FieldByName('CompanyCode').AsInteger;
              Parameters.ParamByName('DocNo').Value :=
                CliDocGroupSend.FieldByName('SecondaryDocNo').AsInteger;
              Parameters.ParamByName('YearID').Value :=
                CliDocGroupSend.FieldByName('YearID').AsInteger;
            end;
            Open;
            if (not IsEmpty) then
              lstWarn.AddItem(Format('سند %d ارسال نشد ',
                [CliDocGroupSend.FieldByName('SecondaryDocNo').AsInteger]),
                TObject(0))
            else
            begin
              // --- ذخیره مقادیر قدیمی (مبدا) برای کپی تصاویر ---
              OldSerial := CliDocGroupSend.FieldByName('Serial').AsInteger;
              OldCompany := CliDocGroupSend.FieldByName('CompanyCode')
                .AsInteger;
              OldYear := CliDocGroupSend.FieldByName('YearID').AsInteger;

              Insert;
              for I := 0 to Fields.Count - 1 do
                if CliDocGroupSend.FindField(Fields[I].FieldName) <> nil then
                  FieldByName(Fields[I].FieldName).AsString :=
                    CliDocGroupSend.FieldByName(Fields[I].FieldName).AsString;
              case grpKind.ItemIndex of
                0:
                  FieldByName('Serial').AsInteger :=
                    CliDocGroupSend.FieldByName('Serial').AsInteger;
                1:
                  begin
                    Sn := GetANewCode('',
                      Format('select max(serial) from acc.docGroups where CompanyCode=%d And YearID=%d',
                      [CliDocGroupSend.FieldByName('CompanyCode').AsInteger,
                      CliDocGroupSend.FieldByName('YearID').AsInteger]),
                      'serial', DMf.adcAccounting);

                    FieldByName('Serial').AsInteger := Sn;
                  end;
                2:
                  begin
                    Sn := GetANewCode('',
                      Format('select max(serial) from acc.docGroups where CompanyCode=%d And YearID=%d',
                      [CliDocGroupSend.FieldByName('CompanyCode').AsInteger,
                      CliDocGroupSend.FieldByName('YearID').AsInteger]),
                      'serial', DMf.adcAccounting);
                    SC := GetANewCode('',
                      Format('select max(SecondaryDocNo) from acc.docGroups where CompanyCode=%d And YearID=%d',
                      [CliDocGroupSend.FieldByName('CompanyCode').AsInteger,
                      CliDocGroupSend.FieldByName('YearID').AsInteger]),
                      'SecondaryDocNo', DMf.adcAccounting);

                    FieldByName('SecondaryDocNo').AsInteger := SC;
                    FieldByName('Serial').AsInteger := Sn;
                    FieldByName('CompanyCode').AsInteger :=
                      CliDocGroupSend.FieldByName('CompanyCode').AsInteger;
                  end;
              end;

              // --- ذخیره مقادیر جدید (مقصد) برای کپی تصاویر ---
              NewSerial := FieldByName('Serial').AsInteger;
              NewCompany := FieldByName('CompanyCode').AsInteger;
              NewYear := FieldByName('YearID').AsInteger;

              setqryDocumentSend;
              if qryDocumentSend.RecordCount > 0 then
                Post;

              // کپی اسناد جزئی (Documents)
              with qryDocumentSend do
              begin
                DisableControls;
                First;
                while not Eof do
                  with qryDocument do
                  begin
                    Insert;
                    for I := 0 to Fields.Count - 1 do
                      if qryDocumentSend.FindField(Fields[I].FieldName) <> nil
                      then
                        FieldByName(Fields[I].FieldName).AsString :=
                          qryDocumentSend.FieldByName
                          (Fields[I].FieldName).AsString;
                    FieldByName('serial').AsInteger :=
                      qryDocGroup.FieldByName('serial').AsInteger;
                    FieldByName('CompanyCode').AsInteger :=
                      qryDocGroup.FieldByName('CompanyCode').AsInteger;
                    FieldByName('YearID').AsInteger :=
                      qryDocGroup.FieldByName('YearID').AsInteger;
                    Post;
                    qryDocumentSend.Next;
                  end;
              end;

              // *** فراخوانی روتین کپی تصاویر (EntityImages) ***
              // این بخش فقط در صورتی اجرا می‌شود که DocGroup و Documents با موفقیت ثبت شده باشند
              try
                CopyDocEntityImages(OldSerial, OldCompany, OldYear, NewSerial,
                  NewCompany, NewYear);
              except
                on E: Exception do
                begin
                  // اگر کپی تصویر خطا داد، لاگ می‌کنیم اما فرآیند اصلی را متوقف نمی‌کنیم
                  // (چون سند اصلی منتقل شده است)
                  lstWarn.AddItem('خطا در کپی تصاویر سند ' +
                    IntToStr(NewSerial), TObject(NewSerial));
                  add2log('خطا در کپی تصاویر سند ' + IntToStr(NewSerial) + ': '
                    + E.Message);
                end;
              end;

              lstWarn.AddItem
                (Format('سند %d ارسال  ' + ifthen(qryDocumentSend.RecordCount >
                0, 'شد', 'نـشد'), [CliDocGroupSend.FieldByName('SecondaryDocNo')
                .AsInteger]), TObject(1));
            end;

            GoProgressBar('');
            CliDocGroupSend.Next;
          end;
      except
        on E: Exception do
        begin
          add2log(E.Message);
          Warn('اشكال در كپي اسناد لطفا كدينگ خود را چك كنيد');
        end;

      end;
      BigMessage('انتقال اطلاعات به پايان رسيد.‏', 2);
    finally
      First;
      EnableControls;
      Filtered := False;
      qryDocumentSend.EnableControls;
      CloseMessage;
      qryDocGroup.Close;
      qryDocument.Close;
      SaveConfig(APPID, 'Server4ImportDoc', cmbServerName.Text);
    end;

end;

// ---------------------------------------------------------------------------
// متد تنظیم کوئری اسناد (بدون تغییر عمده، فقط جهت اطمینان از صحت)
// ---------------------------------------------------------------------------
procedure TInportDocGroupsF.setqryDocumentSend;
begin
  with qryDocumentSend do
  begin
    Close;
    SQL.Text := 'SELECT * FROM acc.Documents';
    SQL.Add('WHERE (serial =:serial ) and (YearID=:YearID)');
    SQL.Add('and (CompanyCode = :CompanyCode)');

    if (Trim(mskCTCode3From.Text) <> '0') then
    begin
      SQL.Add('AND (acc.Documents.ctopiccode3 Between :ctopiccode3From And :ctopiccode3To)');
      Parameters.ParamByName('ctopiccode3From').Value := mskCTCode3From.Text;
      Parameters.ParamByName('ctopiccode3To').Value := mskCTCode3To.Text;
    end;

    Parameters.ParamByName('YearID').Value := CliDocGroupSend.FieldByName
      ('YearID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      CliDocGroupSend.FieldByName('CompanyCode').AsInteger;
    Parameters.ParamByName('serial').Value := CliDocGroupSend.FieldByName
      ('serial').AsInteger;
    Open;
  end;
end;

procedure TInportDocGroupsF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // adc_InportDoc.Connected:=FALSE;
end;

procedure TInportDocGroupsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  // if cmbYear.ItemIndex = -1 then
  // CanClose := False;
end;

procedure TInportDocGroupsF.FormCreate(Sender: TObject);
begin
  inherited;
  // initCombo;
  initServerCombo;
end;

procedure TInportDocGroupsF.FormShow(Sender: TObject);
begin
  inherited;
  BigMessage('درحال دریافت...', 0);
  qryDocument.Active := True;
  CloseMessage;
end;

procedure TInportDocGroupsF.actSendCodeExecute(Sender: TObject);
begin
  inherited;
  adcSrc.BeginTrans;
  BigMessage('در حال انتقال كدينگ', 0);
  try
    with qrySend do
    begin

      Active := False;
      SQL.Clear;
      SQL.Text := ' INSERT INTO ' + APPBank.Name + '.acc.Companies ' +
        ' (CompanyCode, CompanyName_L1, CompanyName_L2, LevelID, Comment_L1, Comment_L2, MakeDate) '
        + ' SELECT CompanyCode, CompanyName_L1, CompanyName_L2, LevelID, Comment_L1, Comment_L2, MakeDate '
        + ' FROM [' + cmbServerName.Text + '].[' + sitem.BankName +
        '].acc.Companies WHERE (NOT (CompanyCode IN (SELECT CompanyCode FROM acc.Companies)))';
      qrySend.ExecSQL;

      Active := False;
      SQL.Clear;
      SQL.Text := 'INSERT INTO ' + APPBank.Name + '.acc.Categories ' +
        '(TopicCode, MoeenName_L1, MoeenName_L2, LevelID, FinancialID, AuditID, Essence, ReactionForRepEssence, TaxonomyType, '
        + 'TaxonomyTopicCode, LastYearTopicCode, LastTopicCode, AidInfoType, AuditReferenceNo, AuditReferenceTxt, RecalInterfaceID, BudgetTopicID, ProjectID, makeDate) '
        + 'SELECT SC.TopicCode, SC.MoeenName_L1, SC.MoeenName_L2, SC.LevelID, SC.FinancialID, '
        + 'SC.AuditID, SC.Essence, SC.ReactionForRepEssence, SC.TaxonomyType, SC.TaxonomyTopicCode, '
        + 'SC.LastYearTopicCode, SC.LastTopicCode, SC.AidInfoType, SC.AuditReferenceNo, SC.AuditReferenceTxt, '
        + 'SC.RecalInterfaceID, SC.BudgetTopicID, SC.ProjectID, SC.makeDate ' +
        ' FROM [' + cmbServerName.Text + '].[' + sitem.BankName +
        '].acc.Categories SC LEFT OUTER JOIN acc.Categories CC' +
        ' ON CC.TopicCode = SC.TopicCode ' + ' WHERE CC.TopicCode is null';
      qrySend.ExecSQL;

      // Active := false;
      // SQL.Clear;
      // SQL.Text := 'INSERT INTO ' + APPBank.Name +
      // '.acc.details (DetailCode, DetailName_L1, DetailName_L2, MakeDate, CompanyCode) '
      // + ' SELECT DetailCode, DetailName_L1, DetailName_L2, MakeDate, CompanyCode FROM acc.Details '
      // + ' WHERE (NOT (LTRIM(STR(DetailCode)) + LTRIM(STR(CompanyCode))) IN (SELECT (LTRIM(STR(DetailCode)) + LTRIM(STR(CompanyCode))) FROM '
      // + APPBank.Name + '.acc.Details))';
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := 'INSERT INTO ' + APPBank.Name +
      // '.acc.CenterTopics (CTopicCode, CTopicName_L1, CTopicName_L2, LevelID, AidNumber, AidDate, MakeDate) '
      // + ' SELECT CTopicCode, CTopicName_L1, CTopicName_L2, LevelID, AidNumber, AidDate, MakeDate FROM acc.CenterTopics '
      // + ' WHERE (NOT (CTopicCode IN (SELECT CTopicCode FROM ' + APPBank.Name +
      // '.acc.CenterTopics)))';
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := 'INSERT INTO ' + APPBank.Name +
      // '.acc.CenterTopics2 (CTopicCode2, CTopicName2_L1, CTopicName2_L2, LevelID, AidNumber, AidDate, MakeDate) '
      // + ' SELECT CTopicCode2, CTopicName2_L1, CTopicName2_L2, LevelID, AidNumber, AidDate, MakeDate FROM acc.CenterTopics2 '
      // + ' WHERE (NOT (CTopicCode2 IN (SELECT CTopicCode2 FROM ' + APPBank.Name
      // + '.acc.CenterTopics2))) ';
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := 'INSERT INTO ' + APPBank.Name +
      // '.Acc.CTopicCode3(CTopicCode3, CTopicName3_L1, CTopicName3_L2, AidNumber, AidQty, AidDate, MakeDate) '
      // + ' SELECT CTopicCode3, CTopicName3_L1, CTopicName3_L2, AidNumber, AidQty, AidDate, MakeDate FROM acc.CTopicCode3 '
      // + ' WHERE (NOT (CTopicCode3 IN (SELECT CTopicCode3 FROM ' + APPBank.Name
      // + '.acc.CTopicCode3))) ';
      // qrySend.ExecSQL;

      Active := False;
      SQL.Clear;
      SQL.Text := 'INSERT INTO ' + APPBank.Name +
        '.dbo.CustomersGroup (CustomerGrpID, CustomerGrpName, StartCode, FinishCode,'
        + ' acc_TopicCode, acc_ChecksTopicCode, acc_ReChecksTopicCode, acc_CertifyTopicCode,'
        + ' acc_CTopicCode, GroupType, acc_InComingTopicCode, acc_AFootInComingTopicCode,'
        + ' acc_CTopicCode2, acc_CTopicCode3, DetailType, CustomerGrpName_L2, SellsTypeCodes) '
        + 'SELECT CG.CustomerGrpID, CG.CustomerGrpName, CG.StartCode, CG.FinishCode, CG.acc_TopicCode, '
        + 'CG.acc_ChecksTopicCode, CG.acc_ReChecksTopicCode, CG.acc_CertifyTopicCode, CG.acc_CTopicCode, '
        + 'CG.GroupType, CG.acc_InComingTopicCode, CG.acc_AFootInComingTopicCode, CG.acc_CTopicCode2, '
        + 'CG.acc_CTopicCode3, CG.DetailType, CG.CustomerGrpName_L2, CG.SellsTypeCodes '
        + 'FROM CustomersGroup AS CG LEFT OUTER JOIN ' + APPBank.Name +
        '.dbo.CustomersGroup AS CG2 ON CG.CustomerGrpID = CG2.CustomerGrpID ' +
        'WHERE CG2.CustomerGrpID IS NULL';
      qrySend.ExecSQL;

      Active := False;
      SQL.Clear;
      SQL.Text := ' INSERT INTO ' + APPBank.Name + '.dbo.Customers' +
        ' (CustID, CustomerGrpID, CustName, Balance, FirstBalance, Country, City, WebSite, Region, Address, Tel, Fax,'
        + ' email, pobox, acc_DetailCode, MaxCredit, ServiceCalcType, ServicePrice, ExtServicePrice,'
        + ' RevenuePercent, EconomicNumber, PostalCode, State, ModifyDate, OperatorID, CustomerNote, ValuationType,'
        + ' ProjectID, BudgetID, InfoWeight, InfoDate, GrpActionCustomer, ContactRate, acc_CTopicCode,'
        + ' acc_CTopicCode2, BankId, BankName, AccountNumber, AccountKind, BankReports, ManageName,'
        + ' ManagerSells, ContactNo, DiscountNote, Discount, DayTime, ConveyKind, ArzTypeID, accStateDefault,'
        + ' NationalID, Mobile, CustomersRow, PersonID1, EstablishDate, SellsMethod, SellsEmporium, SellsDefaultState,'
        + ' MasirID, MaxCreditCurrentForm, CustomerActive, ReagentName, Tel2, Tel3, PersonID3, UseUnitID,'
        + ' InsertAutoEffectID, EffectID, CustomerGrpID2, PurchasePercent, CustAccountNumber, TechnicalCode,'
        + ' acc_CTopicCode3, acc_TopicCode, RegisterNumber, HCTarafGaradadTypeCode, HCKharidarTypeCode,'
        + ' CustFirstName, PerCityCode, StateCode, CityCode, LastUser, FirstUser, CustomerState,'
        + ' HCForoushandeType1Code, Max4WaterCo, SupervisorAllocation, CustomerCheckNote, CustName_L2, sex,'
        + ' AlternativeCustID, VatValidityDate, BusinesslicenseValidityDate, LeaseValidityDate, Area, Degree, Score,'
        + ' NumberCreditInstallments, MaxWeeklyShoppingCredit, MinWeeklyShoppingAmount, DayOrder,'
        + ' AlternativeCustID2, PaymentCode)' +
        ' SELECT C1.CustID, C1.CustomerGrpID, C1.CustName, C1.Balance, C1.FirstBalance, C1.Country, C1.City, C1.WebSite,'
        + ' C1.Region, C1.Address, C1.Tel, C1.Fax, C1.email, C1.pobox, C1.acc_DetailCode, C1.MaxCredit,'
        + ' C1.ServiceCalcType, C1.ServicePrice, C1.ExtServicePrice, C1.RevenuePercent, C1.EconomicNumber,'
        + ' C1.PostalCode, C1.State, C1.ModifyDate, C1.OperatorID, C1.CustomerNote, C1.ValuationType, C1.ProjectID,'
        + ' C1.BudgetID, C1.InfoWeight, C1.InfoDate, C1.GrpActionCustomer, C1.ContactRate, C1.acc_CTopicCode,'
        + ' C1.acc_CTopicCode2, C1.BankId, C1.BankName, C1.AccountNumber, C1.AccountKind, C1.BankReports,'
        + ' C1.ManageName, C1.ManagerSells, C1.ContactNo, C1.DiscountNote, C1.Discount, C1.DayTime,'
        + ' C1.ConveyKind, C1.ArzTypeID, C1.accStateDefault, C1.NationalID, C1.Mobile, C1.CustomersRow, C1.PersonID1,'
        + ' C1.EstablishDate, C1.SellsMethod, C1.SellsEmporium, C1.SellsDefaultState, C1.MasirID,'
        + ' C1.MaxCreditCurrentForm, C1.CustomerActive, C1.ReagentName, C1.Tel2, C1.Tel3, C1.PersonID3, C1.UseUnitID,'
        + ' C1.InsertAutoEffectID, C1.EffectID, C1.CustomerGrpID2, C1.PurchasePercent, C1.CustAccountNumber,'
        + ' C1.TechnicalCode, C1.acc_CTopicCode3, C1.acc_TopicCode, C1.RegisterNumber,'
        + ' C1.HCTarafGaradadTypeCode, C1.HCKharidarTypeCode, C1.CustFirstName, C1.PerCityCode, C1.StateCode,'
        + ' C1.CityCode, C1.LastUser, C1.FirstUser, C1.CustomerState, C1.HCForoushandeType1Code,'
        + ' C1.Max4WaterCo, C1.SupervisorAllocation, C1.CustomerCheckNote, C1.CustName_L2, C1.sex,'
        + ' C1.AlternativeCustID, C1.VatValidityDate, C1.BusinesslicenseValidityDate, C1.LeaseValidityDate, C1.Area,'
        + ' C1.Degree, C1.Score, C1.NumberCreditInstallments, C1.MaxWeeklyShoppingCredit,'
        + ' C1.MinWeeklyShoppingAmount, C1.DayOrder, C1.AlternativeCustID2, C1.PaymentCode'
        + ' FROM Customers AS C1 LEFT OUTER JOIN ' + APPBank.Name +
        '.dbo.Customers AS C2 ON C1.CustID = C2.CustID' +
        ' WHERE (C2.CustID IS NULL)';
      qrySend.ExecSQL;

      // Active := false;
      // SQL.Clear;
      // SQL.Text := ' INSERT INTO ' + APPBank.Name +
      // '.acc.CenterTopicRange (TopicCode, CTopicCode) SELECT TopicCode, CTopicCode '
      // + ' FROM acc.CenterTopicRange WHERE ((LTRIM(RTRIM(TopicCode)) + LTRIM(RTRIM(CTopicCode)) '
      // + ' NOT IN (SELECT LTRIM(RTRIM(TopicCode))+ LTRIM(RTRIM(CTopicCode)) AS Code '
      // + ' FROM ' + APPBank.Name + '.acc.CenterTopicRange)))';
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := Format(' INSERT INTO ' +
      // '%s.acc.DetailRange (TopicCode, DetailCode, CompanyCode, AuditReferenceNo, AuditReferenceTxt) '
      // + ' SELECT TopicCode, DetailCode, CompanyCode, AuditReferenceNo, AuditReferenceTxt FROM acc.DetailRange '
      // + ' WHERE  (LTRIM(RTRIM(TopicCode)) + LTRIM(RTRIM(DetailCode)) NOT IN '
      // + ' (SELECT LTRIM(RTRIM(TopicCode)) + LTRIM(RTRIM(DetailCode)) AS Code '
      // + ' FROM %s.acc.DetailRange))', [APPBank.Name, APPBank.Name]);
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := Format(' INSERT INTO ' +
      // '%s.acc.CTopicRangeTogether (CTopicCode, CTopicCode2) ' +
      // ' SELECT CTopicCode, CTopicCode2 FROM acc.CTopicRangeTogether ' +
      // ' WHERE (LTRIM(RTRIM(CTopicCode)) + LTRIM(RTRIM(CTopicCode2)) ' +
      // ' NOT IN (SELECT LTRIM(RTRIM(CTopicCode)) + LTRIM(RTRIM(CTopicCode2)) AS Code '
      // + ' FROM %s.acc.CTopicRangeTogether))', [APPBank.Name, APPBank.Name]);
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := Format(' INSERT INTO ' +
      // '%s.Acc.CTopics2And3(CTopicCode3, CTopicCode2) ' +
      // ' SELECT CTopicCode3, CTopicCode2 FROM Acc.CTopics2And3 ' +
      // ' WHERE (LTRIM(RTRIM(CTopicCode3)) + LTRIM(RTRIM(CTopicCode2)) ' +
      // ' NOT IN (SELECT LTRIM(RTRIM(CTopicCode3)) + LTRIM(RTRIM(CTopicCode2)) AS Code '
      // + ' FROM %s.Acc.CTopics2And3))', [APPBank.Name, APPBank.Name]);
      // qrySend.ExecSQL;
      //
      // Active := false;
      // SQL.Clear;
      // SQL.Text := Format(' INSERT INTO ' +
      // '%s.Acc.CenterTopicAllRange(TopicCode,CTopicCode2,CTopicCode3) ' +
      // ' SELECT TopicCode,CTopicCode2,CTopicCode3 FROM Acc.CenterTopicAllRange '
      // + ' WHERE (LTRIM(RTRIM(CTopicCode3)) + LTRIM(RTRIM(CTopicCode2)) + LTRIM(RTRIM(TopicCode))'
      // + ' NOT IN (SELECT LTRIM(RTRIM(CTopicCode3)) + LTRIM(RTRIM(CTopicCode2)) + LTRIM(RTRIM(TopicCode)) AS Code '
      // + ' FROM %s.Acc.CenterTopicAllRange))', [APPBank.Name, APPBank.Name]);
      // qrySend.ExecSQL;

      Active := False;
      SQL.Clear;
      SQL.Text := ' INSERT INTO ' + APPBank.Name + '.Acc.TopicRange' +
        ' (TopicCode, DGID) SELECT TR.TopicCode, TR.DGID' +
        ' FROM Acc.TopicRange AS TR LEFT OUTER JOIN ' + APPBank.Name +
        '.Acc.TopicRange AS TR2 ON TR.TopicCode = TR2.TopicCode AND TR.DGID = TR2.DGID'
        + ' WHERE (TR2.TopicCode IS NULL) AND (TR2.DGID IS NULL)';
      qrySend.ExecSQL;

      Active := False;
      SQL.Clear;
      SQL.Text := Format(' INSERT INTO ' +
        '%s.Acc.FormsInfo(FormInfoID, InfoID, FormType, InfoName_L1, InfoName_L2, Comment, SortID)'
        + ' SELECT (SELECT MAX(FormInfoID) FROM %s.Acc.FormsInfo)+InfoID , InfoID, FormType, InfoName_L1, InfoName_L2, Comment, SortID '
        + ' FROM Acc.FormsInfo ' +
        ' WHERE(FormType = 1) AND (InfoID NOT IN (SELECT InfoID FROM %s.Acc.FormsInfo WHERE(FormType = 1))) ',
        [APPBank.Name, APPBank.Name, APPBank.Name]);
      qrySend.ExecSQL;

      adcSrc.CommitTrans;
      BigMessage('كدينگ حسابداري انتقال يافت.‏', 1);

    end;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      if adcSrc.InTransaction then
        adcSrc.RollbackTrans;
      Warn('اشكال در انتقال کدینگ');
      Exit;
    end;

  end // with qryImport

end;

procedure TInportDocGroupsF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInportDocGroupsF.qryDocGroupSendAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CliDocGroupSend.Close;
  CliDocGroupSend.Open;

end;

procedure TInportDocGroupsF.CliDocGroupSendStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'پيش نويس';
    1:
      Text := 'موقت';
    2:
      Text := 'قطعي';
    3:
      Text := 'دائم';
  end; // case
end;

procedure TInportDocGroupsF.ComboBox1Change(Sender: TObject);
begin
  inherited;
  sitem := TSearchItem(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
  adcSrc.Close;
  adcSrc.ConnectionString :=
    Format('Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;Initial Catalog=%s '
    + ';Data Source = %S ;User ID = FaraUser ; connect timeout=20',
    [sitem.BankName, cmbServerName.Text]);
  // assignServerName(adcSrc, sitem.BankName);

  cmbYear.Clear;
  cmbDocTypeFrom.Clear;

  with TADOQuery.Create(nil) do
    try
      Connection := adcSrc;
      Close;
      SQL.Text :=
        'SELECT MAX(SecondaryDocNo),MIN(SecondaryDocNo), MAX(DocDate) ,MIN(DocDate)FROM acc.DocGroups';
      Open;
      edtSecondFrom.Text := Fields[1].AsString;
      edtSecendTo.Text := Fields[0].AsString;
      mskDateFrom.Text := Fields[3].AsString;
      mskDateTo.Text := Fields[2].AsString;
      Close;
      SQL.Text :=
        'SELECT DocTypeName_L1, DocTypeCode FROM acc.DocTypes ORDER BY DocTypeCode';
      Open;
      while not Eof do
      begin
        cmbDocTypeFrom.AddItem(Fields[0].AsString,
          TObject(Fields[1].AsInteger));
        Next;
      end;
      cmbDocTypeTo.Items.Assign(cmbDocTypeFrom.Items);
      Close;
      SQL.Text :=
        'SELECT YearId, LTRIM(STR(YearID)) + ''--'' + StartYear + ''--'' + EndYear  FROM util.MaliYear';
      Open;
      while not Eof do
      begin
        cmbYear.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
      // cmbYear.ItemIndex := cmbYear.Items.IndexOfObject(TObject(APPBank.Year));
      cmbYear.ItemIndex := -1;
      if cmbDocTypeFrom.Items.Count > 0 then
        cmbDocTypeFrom.ItemIndex := 0;
      if cmbDocTypeTo.Items.Count > 0 then
        cmbDocTypeTo.ItemIndex := cmbDocTypeTo.Items.Count - 1;

    finally
      if (cmbYear.ItemIndex = -1) then
        // for I := 0 to 1 do
        FlashAControl(cmbYear);
      Free;
    end;
end;

procedure TInportDocGroupsF.ComboBox1Enter(Sender: TObject);
begin
  inherited;
  ComboBox1.DroppedDown := True;
end;

procedure TInportDocGroupsF.cmbServerNameChange(Sender: TObject);
begin
  inherited;
  initCombo;
end;

procedure TInportDocGroupsF.cmbYearChange(Sender: TObject);
begin
  inherited;
  if cmbYear.ItemIndex <> -1 then
  begin

    with TADOQuery.Create(DMf) do
      try
        Connection := adcSrc;
        SQL.Text := 'SELECT '''' AS FirstUser';
        SQL.Add('UNION ALL');
        SQL.Add('SELECT DISTINCT FirstUser');
        SQL.Add('FROM Acc.DocGroups');
        SQL.Add('WHERE (YearID = :YearID ) ');
        Parameters.ParamByName('YearID').Value :=
          Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
        Active := True;
        cmbFirstUser.Clear;
        while not Eof do
        begin
          cmbFirstUser.Items.AddObject(FieldByName('FirstUser').AsString,
            TObject(RecNo));
          Next;
        end;

      finally
        Free;
      end; // try

    actFiltter.Execute
  end;

end;

procedure TInportDocGroupsF.lstWarnDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
const
  Mas: array [0 .. 1] of Integer = (clRed, clGreen);
begin
  inherited;
  with (Control as TListBox).Canvas do
  begin
    Font.Color := Mas[Integer(lstWarn.Items.Objects[Index])];
    FillRect(Rect);
    TextOut(Rect.Left + 4, Rect.Top, lstWarn.Items[Index]);
  end;
end;

procedure TInportDocGroupsF.mskCTCode3FromChange(Sender: TObject);
begin
  inherited;
  mskCTCode3To.Text := (Sender as TMaskEdit).Text;
end;

procedure TInportDocGroupsF.mskCTCode3FromKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn3.Click;
end;

procedure TInportDocGroupsF.mskCTCode3ToKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn4.Click
end;

end.
