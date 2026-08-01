unit ContrastAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, template2MDI, DB, ADODB, ComCtrls, Buttons, StdCtrls, Mask,
  DBCtrls, ImgList, DBActns, ActnList, ExtCtrls, Grids, Vcl.DBGrids, GlobalPro,
  searchCode_L1_L2, AddAttachFile, jpeg, MMESSAGE, SNDKEY32, System.ImageList,
  System.Actions;

type
  TContrastAccountF = class(Ttemplate2MDIF)
    qryContrastAccount: TADOQuery;
    srcContrastAccount: TDataSource;
    srcDiffType: TDataSource;
    qryDiffType: TADOQuery;
    qryContrastAccountMasterID: TIntegerField;
    qryContrastAccountParentID: TIntegerField;
    qryContrastAccountDetailCode: TIntegerField;
    qryContrastAccountDiffType: TWordField;
    qryContrastAccountValue: TLargeintField;
    qryContrastAccountContrastDate: TStringField;
    qryContrastAccountDescription: TWideStringField;
    qryContrastAccountExpense: TLargeintField;
    qryContrastAccountCheckNo: TWideStringField;
    qryContrastAccountDocNo: TWideStringField;
    qryContrastAccountDocDate: TWideStringField;
    qryContrastAccountZinaf: TWideStringField;
    qryContrastAccountYearID: TIntegerField;
    qryContrastAccountMonth: TWordField;
    qryContrastAccountF1: TStringField;
    qryContrastAccountF2: TStringField;
    qryDiffTypeMasterID: TIntegerField;
    qryDiffTypeParentID: TIntegerField;
    qryDiffTypeDetailCode: TIntegerField;
    qryDiffTypeDiffType: TWordField;
    qryDiffTypeValue: TLargeintField;
    qryDiffTypeContrastDate: TStringField;
    qryDiffTypeDescription: TWideStringField;
    qryDiffTypeExpense: TLargeintField;
    qryDiffTypeCheckNo: TWideStringField;
    qryDiffTypeDocNo: TWideStringField;
    qryDiffTypeDocDate: TWideStringField;
    qryDiffTypeZinaf: TWideStringField;
    qryDiffTypeYearID: TIntegerField;
    qryDiffTypeMonth: TWordField;
    qryDiffTypeF1: TStringField;
    qryDiffTypeF2: TStringField;
    qryAttachment: TADOQuery;
    tbDiffType: TTabControl;
    lblNote: TLabel;
    qryAttachmentID: TAutoIncField;
    qryAttachmentParentID: TIntegerField;
    qryAttachmentAttachment: TBlobField;
    qryAttachmentExtension: TWideStringField;
    qryAttachmentDescription: TWideStringField;
    pnlAttachment: TPanel;
    SpeedButton6: TSpeedButton;
    qryDiffAttachment: TADOQuery;
    Label5: TLabel;
    qryAttachmentAttachmentName: TWideStringField;
    srcAttachment: TDataSource;
    srcDiffAttachment: TDataSource;
    qryDiffAttachmentID: TAutoIncField;
    qryDiffAttachmentParentID: TIntegerField;
    qryDiffAttachmentAttachment: TBlobField;
    qryDiffAttachmentAttachmentName: TWideStringField;
    qryDiffAttachmentExtension: TWideStringField;
    qryDiffAttachmentDescription: TWideStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    cmbMonth: TComboBox;
    pnlBtnSpeed: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pnlNew: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pnlOK: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qry_lookupDetails: TADOQuery;
    qryContrastAccountTopicCode: TIntegerField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    grdDiffType: TDBGrid;
    pnlDiffnew: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    PnlDiffok: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPost: TAction;
    SpeedButton3: TSpeedButton;
    pnlBtnSpeed2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid1: TDBGrid;
    DeleteAttach: TDataSetDelete;
    DeleteDiffAttach: TDataSetDelete;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label6: TLabel;
    DBText5: TDBText;
    qryCategories: TADOQuery;
    qryFormsInfo: TADOQuery;
    DBText4: TDBText;
    qryContrastAccount_DetailName: TStringField;
    qryContrastAccount_TopicName: TStringField;
    qryContrastAccount_Shaba: TStringField;
    qryContrastAccount_BankTypeName: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    qryContrastAccountMojoodiTebgheDaftar: TLargeintField;
    qryContrastAccountMojoodiTebgheBank: TLargeintField;
    procedure qryContrastAccountAfterScroll(DataSet: TDataSet);
    procedure tbDiffTypeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryDiffTypeAfterScroll(DataSet: TDataSet);
    procedure qryDiffAttachmentBeforeInsert(DataSet: TDataSet);
    procedure qryDiffAttachmentAfterInsert(DataSet: TDataSet);
    procedure srcContrastAccountStateChange(Sender: TObject);
    procedure qryDiffTypeAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryContrastAccountAfterInsert(DataSet: TDataSet);
    procedure qryDiffTypeAfterDelete(DataSet: TDataSet);
    procedure qryAttachmentAfterInsert(DataSet: TDataSet);
    procedure qryContrastAccountBeforePost(DataSet: TDataSet);
    procedure qryContrastAccountAfterPost(DataSet: TDataSet);
    procedure qryContrastAccountAfterCancel(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbMonthEnter(Sender: TObject);
    procedure tbDiffTypeChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormResize(Sender: TObject);
    procedure grdDiffTypeEnter(Sender: TObject);
    procedure grdDiffTypeKeyPress(Sender: TObject; var Key: Char);
    procedure qryDiffTypeBeforePost(DataSet: TDataSet);
    procedure srcDiffTypeStateChange(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qryContrastAccountBeforeDelete(DataSet: TDataSet);
    procedure qryDiffAttachmentAfterPost(DataSet: TDataSet);
    procedure qryDiffAttachmentAfterDelete(DataSet: TDataSet);

  private
    procedure QueryRefresh;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContrastAccountF: TContrastAccountF;

implementation

uses ImagePreview;

{$R *.dfm}

procedure TContrastAccountF.actPostExecute(Sender: TObject);
begin
  inherited;
  try
    qryContrastAccount.Post;
  finally
    BigMessage('ثبت شد.', 1);
  end;
end;

procedure TContrastAccountF.cmbMonthEnter(Sender: TObject);
begin
  inherited;
  cmbMonth.DroppedDown := True;
end;

procedure TContrastAccountF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TContrastAccountF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdDiffType, 3, False);
end;

procedure TContrastAccountF.FormShow(Sender: TObject);
begin
  inherited;

  with qryContrastAccount do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
    Last;
  end;
  tbDiffTypeChange(tbDiffType);
end;

procedure TContrastAccountF.grdDiffTypeEnter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TContrastAccountF.grdDiffTypeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TContrastAccountF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
begin
  if Key = #13 then
  begin
    curIndex := (Sender as TDBGrid).SelectedIndex;
    nextIndex := curIndex + 1;
    while (nextIndex < (Sender as TDBGrid).Columns.Count) and
      (not((Sender as TDBGrid).Columns[nextIndex].Visible) or
      ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
    if nextIndex >= (Sender as TDBGrid).Columns.Count then
      nextIndex := -1;
    if nextIndex = -1 then
    begin
      sendkey(vk_down, [], False);
      (Sender as TDBGrid).SelectedIndex := 0;
    end
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;

  end;
end;

procedure TContrastAccountF.qryAttachmentAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryAttachmentParentID.AsInteger := qryContrastAccountMasterID.AsInteger;
end;

procedure TContrastAccountF.qryContrastAccountAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if qryAttachment.Active then
    qryAttachment.CancelBatch;
  if qryDiffType.Active then
    qryDiffType.CancelBatch;
  if qryDiffAttachment.Active then
    qryDiffAttachment.CancelBatch;
end;

procedure TContrastAccountF.qryContrastAccountAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryContrastAccountMasterID.AsInteger := GetANewCode('','Acc.ContrastAccountSanama',
    'MasterID',dmf.adcAccounting);
  qryContrastAccountDiffType.AsInteger := 0;
  qryContrastAccountYearID.AsInteger := APPBank.Year;
  qryContrastAccountContrastDate.AsString := var_glb_CurrentDate;
  cmbMonth.ItemIndex := var_glb_CurrentMonth - 1;
  DBEdit1.SetFocus;
end;

procedure TContrastAccountF.qryContrastAccountAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryAttachment.Active then
    qryAttachment.UpdateBatch;
  if qryDiffType.Active then
    qryDiffType.UpdateBatch;
  if qryDiffAttachment.Active then
    qryDiffAttachment.UpdateBatch;
end;

procedure TContrastAccountF.qryContrastAccountAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QueryRefresh;
  with qryAttachment do
  begin
    Close;
    Parameters.ParamByName('ParentID').Value :=
      qryContrastAccountMasterID.AsInteger;
    Open;
  end;
  if not(DataSet.State = dsInsert) then
    cmbMonth.ItemIndex := qryContrastAccountMonth.AsInteger - 1;
end;

procedure TContrastAccountF.qryContrastAccountBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آیا برای حذف مطمئن هستید؟') <> mrYes then
    Abort;

end;

procedure TContrastAccountF.qryContrastAccountBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qryContrastAccountDetailCode.AsString = EmptyStr) or
    (qryContrastAccount_DetailName.AsString = EmptyStr) then
  begin
    Warn('کد تفصیلی معتبر نمیباشد');
    DBEdit1.SetFocus;
    Abort;
  end;
  qryContrastAccountMonth.AsInteger := cmbMonth.ItemIndex + 1;
  if qryDiffType.State in dsEditModes then
    qryDiffType.Post;
end;

procedure TContrastAccountF.qryDiffAttachmentAfterDelete(DataSet: TDataSet);
begin
  inherited;
  actPost.Execute;
end;

procedure TContrastAccountF.qryDiffAttachmentAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryDiffAttachmentParentID.AsInteger := qryDiffTypeMasterID.AsInteger;
end;

procedure TContrastAccountF.qryDiffAttachmentAfterPost(DataSet: TDataSet);
begin
  inherited;
  actPost.Execute;
end;

procedure TContrastAccountF.qryDiffAttachmentBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if qryDiffType.IsEmpty then
  begin
    Warn('رکوردی برای ' + tbDiffType.Tabs[tbDiffType.TabIndex] +
      ' انتخاب نشده است');
    Abort;
  end;
  if qryDiffType.State = dsInsert then
    qryDiffType.Post;
end;

procedure TContrastAccountF.qryDiffTypeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  // with qryDiffAttachment do
  // try
  // DisableControls;
  // First;
  // while not Eof do
  // begin
  // qryDiffAttachment.Delete;
  // Next;
  // end;
  // finally
  // EnableControls;
  // end;
end;

procedure TContrastAccountF.qryDiffTypeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryDiffTypeMasterID.AsInteger := GetANewCode('','Acc.ContrastAccountSanama',
    'MasterID',dmf.adcAccounting);
  qryDiffTypeParentID.AsInteger := qryContrastAccountMasterID.AsInteger;
  qryDiffTypeDiffType.AsInteger := tbDiffType.TabIndex + 1;
  qryDiffTypeYearID.AsInteger := APPBank.Year;
end;

procedure TContrastAccountF.qryDiffTypeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDiffAttachment do
  begin
    Close;
    Parameters.ParamByName('ParentID').Value := qryDiffTypeMasterID.AsInteger;
    Open;
  end;
end;

procedure TContrastAccountF.qryDiffTypeBeforePost(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  i := 0;
  for i := 0 to DataSet.Fields.Count - 1 do
  begin
    if DataSet.Fields[i].Visible then
      if DataSet.Fields[i].AsString = EmptyStr then
      begin
        Warn(' فیلد ' + DataSet.Fields[i].DisplayLabel +
          ' فاقد مقدار می باشد ');
        Abort;
      end;
  end;
end;

procedure TContrastAccountF.QueryRefresh;
begin
  qryDiffAttachment.Close;
  with qryDiffType do
  begin
    Close;
    Parameters.ParamByName('ParentID').Value :=
      qryContrastAccountMasterID.AsInteger;
    Parameters.ParamByName('DiffType').Value := tbDiffType.TabIndex + 1;
    Open;
  end;
end;

procedure TContrastAccountF.SpeedButton1Click(Sender: TObject);
var
  Txt: string;
  s: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  Txt := 'SELECT Customers.CustID AS DetailCode, Customers.CustName AS DetailName,'
    + ' Acc.DetailRange.TopicCode, Acc.Categories.MoeenName_L1,' +
    ' Acc.TopicSanama.DefaultValue, Acc.FormsInfo.InfoName_L1' +
    ' FROM Customers INNER JOIN' +
    ' CustomersGroup ON CustomersGroup.CustomerGrpID = Customers.CustomerGrpID'
    + ' INNER JOIN Acc.DetailRange ON Customers.CustID = Acc.DetailRange.DetailCode'
    + ' INNER JOIN Acc.TopicSanama ON Acc.DetailRange.TopicCode = Acc.TopicSanama.TopicCode'
    + ' INNER JOIN Acc.FormsInfo ON Acc.TopicSanama.DefaultValue = Acc.FormsInfo.FormInfoID'
    + ' INNER JOIN Acc.Categories ON Acc.DetailRange.TopicCode = Acc.Categories.TopicCode'
    + ' WHERE (CustomersGroup.DetailType = 1) and (Acc.TopicSanama.FormType = 125)';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'بانک', Txt,
    ['کد تفصیلی', 'نام تفصیلی', 'کد حساب', 'نام حساب', '', 'مقدار سناما'],
    Results, [70, 150, 70, 150, 0, 100], alLeft) then
  begin
    qryContrastAccountDetailCode.AsString := Results[0];
    qryContrastAccountTopicCode.AsString := Results[2];
    qryContrastAccountValue.AsString := Results[4];
  end;
end;

procedure TContrastAccountF.SpeedButton3Click(Sender: TObject);
var
  jpg: TJPEGImage;
  Stream: TMemoryStream;
  qry: TADOQuery;
begin
  inherited;
  if (Sender as TSpeedButton).Tag = 0 then
    qry := qryAttachment
  else if (Sender as TSpeedButton).Tag = 1 then
    qry := qryDiffAttachment
  else
    Exit;
  if not qry.FieldByName('Attachment').IsNull then
    try
      jpg := TJPEGImage.Create;
      Stream := TMemoryStream.Create;
      // qryAttachmentAttachment.SaveToStream(Stream);
      TBlobField(qry.FieldByName('Attachment')).SaveToStream(Stream);
      Stream.Position := 0;
      jpg.LoadFromStream(Stream);
      ImagePreviewF.enter(jpg);
    finally
      jpg.Free;
      Stream.Free;
    end;
end;

procedure TContrastAccountF.SpeedButton4Click(Sender: TObject);
var
  jpg: TJPEGImage;
  TypeStr, FileName: string;
  m: TMemoryStream;
  bytes: TBytes;
begin
  inherited;
  try
    jpg := TJPEGImage.Create;
    AddAttachFileF.enter(jpg, TypeStr, FileName);
    if not jpg.Empty then
    begin
      m := TMemoryStream.Create;
      jpg.SaveToStream(m);
      m.Position := 0;

      SetLength(bytes, m.Size);
      if (Sender as TSpeedButton).Tag = 0 then
        with qryAttachment do
        begin
          Insert;
          qryAttachmentExtension.AsString := TypeStr;
          qryAttachmentAttachmentName.AsString := FileName;
          qryAttachmentAttachment.LoadFromStream(m);
          Post;
        end
      else if (Sender as TSpeedButton).Tag = 1 then
        with qryDiffAttachment do
        begin
          Insert;
          qryDiffAttachmentExtension.AsString := TypeStr;
          qryDiffAttachmentAttachmentName.AsString :=
            StringReplace(FileName, '.' + TypeStr, '', []);
          qryDiffAttachmentAttachment.LoadFromStream(m);
          Post;
        end;
    end;
  finally
    AddAttachFileF.Free;
    jpg.Free;
    m.Free;
  end;

end;

procedure TContrastAccountF.srcContrastAccountStateChange(Sender: TObject);
begin
  inherited;
  pnlOK.Visible := (Sender as TDataSource).State in dsEditModes;
  pnlNew.Visible := not pnlOK.Visible;
  Panel5.Visible := pnlOK.Visible;
  pnlBtnSpeed.Enabled := pnlOK.Visible;
  grdDiffType.ReadOnly := pnlNew.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'acc.ContrastAccountSanama',
    'MasterID');
end;

procedure TContrastAccountF.srcDiffTypeStateChange(Sender: TObject);
begin
  inherited;
  PnlDiffok.Visible := (Sender as TDataSource).State in dsEditModes;
  pnlDiffnew.Visible := not PnlDiffok.Visible;
  pnlBtnSpeed2.Enabled := PnlDiffok.Visible;
end;

procedure TContrastAccountF.tbDiffTypeChange(Sender: TObject);
var
  MasterID: Integer;
begin
  inherited;
  case tbDiffType.TabIndex of
    0:
      lblNote.Caption :=
        'وجوه مربوط به منابعی که به حساب بانک واریز شده اند ولی در دفتر ذیحسابی ثبت نشده اند';
    1:
      lblNote.Caption := 'وجوه فاقد مشخصات';
    2:
      lblNote.Caption := 'اضافه واریزی';
    3:
      lblNote.Caption := 'اشتباه عددی با ارجاع به سند مربوط - اضافه';
    4:
      lblNote.Caption := 'اشتباه عددی با ارجاع به سند مربوط - کسر';
    5:
      lblNote.Caption := 'سایر برداشت ها';
    6:
      lblNote.Caption := 'کارمزد بانکی';
    7:
      lblNote.Caption :=
        'برداشت به موجب احکام صادره از مراجع ذیصلاح که در دفتر ذیحسابی عمل نشده اند';
    8:
      lblNote.Caption := 'وجوه بین راهی';
    9:
      lblNote.Caption := 'وجوه چک های بین راهی';
    10:
      lblNote.Caption := 'اشتباه بانک - اضافه';
    11:
      lblNote.Caption := 'اشتباه بانک - اضافه';
  end;
  if tbDiffType.TabIndex = 9 then
  begin
    grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'ContrastDate')
      ].Field.DisplayLabel := 'تاریخ چک';
    grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'Description')
      ].Field.DisplayLabel := 'شرح چک';
  end
  else if tbDiffType.TabIndex = 7 then
    grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'Description')
      ].Field.DisplayLabel := 'ذکر مستندات/دعاوی'
  else
  begin
    grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'ContrastDate')
      ].Field.DisplayLabel := 'تاریخ';
    grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'Description')
      ].Field.DisplayLabel := 'شرح';
  end;
  QueryRefresh;
  grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'CheckNo')].Visible :=
    tbDiffType.TabIndex = 9;
  qryDiffTypeCheckNo.Visible := tbDiffType.TabIndex = 9;

  grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'Zinaf')].Visible :=
    tbDiffType.TabIndex = 9;
  qryDiffTypeZinaf.Visible := tbDiffType.TabIndex = 9;

  grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'DocDate')].Visible :=
    tbDiffType.TabIndex = 9;
  qryDiffTypeDocDate.Visible := tbDiffType.TabIndex = 9;

  grdDiffType.Columns[ColumnIndexByFieldName(grdDiffType, 'DocNo')].Visible :=
    tbDiffType.TabIndex in [9, 3, 4];
  qryDiffTypeDocNo.Visible := tbDiffType.TabIndex in [9, 3, 4];
end;

procedure TContrastAccountF.tbDiffTypeChanging(Sender: TObject;
  var AllowChange: Boolean);
var
  MasterID: Integer;
begin
  inherited;
  try
    if qryDiffType.State in dsEditModes then
      qryDiffType.Post;
    if qryContrastAccount.State in dsEditModes then
    begin
      MasterID := qryContrastAccountMasterID.AsInteger;
      qryContrastAccount.Post;
      qryContrastAccount.Locate('MasterID', MasterID, []);
      qryContrastAccount.Edit;
    end;
  except
    AllowChange := False;
  end;
end;

end.
