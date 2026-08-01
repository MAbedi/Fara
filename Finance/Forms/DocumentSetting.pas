{ -----------------------------------------------------------------------------
  Unit Name: DocumentSetting
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit DocumentSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls,
  DB, ADODB, ComCtrls, IniFiles, Grids, Vcl.DBGrids, DBClient, sndkey32;

type
  TDocumentSettingF = class(TForm)
    cliDocSet: TClientDataSet;
    srcDocSet: TDataSource;
    cliDocSetBesKind: TSmallintField;
    cliDocSetCommentFieldName: TStringField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    cliDocSetID: TSmallintField;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    lblCaption: TLabel;
    edtBankTopic: TEdit;
    Label1: TLabel;
    edtRunTopic: TEdit;
    Label4: TLabel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    cliDocSetTopicCodeBed: TLargeintField;
    cliDocSetTopicCodeBes: TLargeintField;
    cliDocSetDetailCodeBed: TLargeintField;
    cliDocSetDetailCodeBes: TLargeintField;
    cliDocSetBedKind: TSmallintField;
    Panel4: TPanel;
    Label5: TLabel;
    pnlSheet: TPanel;
    Label3: TLabel;
    cmbSheetName: TComboBox;
    chk2007: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    qryExcel: TADOQuery;
    ProgressBar1: TProgressBar;
    lblCount: TLabel;
    qryDetailRange: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure AllGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure cmbSheetNameChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    aQry: TDataSet;
    DocSetPath: string;
    procedure saveOptionNew;
    procedure ReadOptionNew;
    procedure initForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function ExcelToList(Fname: String = ''): Boolean;
    { Private declarations }
  public
    procedure showDocumentSetting(Qry: TADOQuery);
    { Public declarations }
  end;

var
  DocumentSettingF: TDocumentSettingF;

implementation

uses dm, GlobalPro, GeneralDM, FaraConsts;

{$R *.dfm}
{ TDBGrid2PrintF1 }

procedure TDocumentSettingF.showDocumentSetting;
begin
  DocumentSettingF := TDocumentSettingF.Create(Application);
  with DocumentSettingF do
  begin
    try
      aQry := Qry;
      initForm;
      DocSetPath := extractFileDir(Application.exeName) + '\DocSet';
      CreateDir(DocSetPath);
      cliDocSet.FileName := DocSetPath + '\DocumentSetting.cds';
      if not FileExists(cliDocSet.FileName) then
        cliDocSet.CreateDataSet;
      if ShowModal = mrOk then
        saveOptionNew;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TDocumentSettingF.initForm;
var
  iBedKind, iBesKind: Integer;
begin
  With DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'ID')].PickList do
  begin
    Add('1- فيش صادر شده');
    Add('2- فيش ابطال شده');
    Add('3- فيش واريز شده');
    Add('4- چك دريافت شده');
    Add('5- چك ابطال شده');
    Add('6- چك برگشت شده');
    Add('7- چك وصول شده');
  end;
  iBedKind := ColumnIndexByFieldName(DBGrid1, 'BedKind');
  iBesKind := ColumnIndexByFieldName(DBGrid1, 'BesKind');
  With DBGrid1.Columns[iBedKind].PickList do
  begin
    Add('كد ثابت');
    Add('در آمد');
    Add('بانك');
    Add('اسناد در جريان وصول');
  end;
  DBGrid1.Columns[iBesKind].PickList := DBGrid1.Columns[iBedKind].PickList;

  edtBankTopic.Text:=ReadConfig(APPID,Self.Name+edtBankTopic.Name,edtBankTopic.Text);
  edtRunTopic.Text:=ReadConfig(APPID,Self.Name+edtRunTopic.Name,edtRunTopic.Text);


end;

procedure TDocumentSettingF.FormDestroy(Sender: TObject);
begin
  SaveConfig(APPID,Self.Name+edtBankTopic.Name,edtBankTopic.Text);
  SaveConfig(APPID,Self.Name+edtRunTopic.Name,edtRunTopic.Text);
end;

procedure TDocumentSettingF.FormShow(Sender: TObject);
begin
  ReadOptionNew;
end;

procedure TDocumentSettingF.ReadOptionNew;
begin
  cliDocSet.Open;
end;

procedure TDocumentSettingF.saveOptionNew;
begin
  cliDocSet.Close;
end;

procedure TDocumentSettingF.AllGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  i: Integer;
begin
  if Sender.IsNull then
    Exit;
  i := ColumnIndexByFieldName(DBGrid1, Sender.FieldName);
  Text := DBGrid1.Columns[i].PickList.Strings[Sender.AsInteger]
end;

procedure TDocumentSettingF.AllSetText(Sender: TField; const Text: String);
var
  i: Integer;
begin
  i := ColumnIndexByFieldName(DBGrid1, Sender.FieldName);
  Sender.AsInteger := DBGrid1.Columns[i].PickList.IndexOf(Text);
end;

procedure TDocumentSettingF.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  DoWhile: Boolean;
begin
  DoWhile := True;
  qryExcel.First;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := qryExcel.RecordCount;
  aQry.DisableControls;
  lblCount.Visible := True;
  qryDetailRange.Active:=True;
  try
    while (not qryExcel.eof and DoWhile) do
      with aQry do
      begin
        if cliDocSet.Locate('ID', qryExcel.FieldByName('Type')
          .AsInteger, []) then
        begin
          Append;
          case cliDocSetBedKind.AsInteger of
            0:
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  cliDocSetTopicCodeBed.AsLargeInt;
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  cliDocSetDetailCodeBed.AsLargeInt;
              end;
            1:
              if qryDetailRange.Locate('NationalID',
                  qryExcel.FieldByName('RCode').AsInteger,[])
              then
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  qryDetailRange.FieldByName('TopicCode').AsLargeInt;
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  qryDetailRange.FieldByName('DetailCode').AsLargeInt;
              end;
            2:
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  StrToInt64(edtBankTopic.Text);
                if qryDetailRange.Locate('NationalID',
                    qryExcel.FieldByName('ANo').AsInteger,[])
                then
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  qryDetailRange.FieldByName('DetailCode').AsLargeInt;
              end;
            3:
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  StrToInt64(edtRunTopic.Text);
                if qryDetailRange.Locate('NationalID',
                    qryExcel.FieldByName('ANo').AsInteger,[])
                then
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  qryDetailRange.FieldByName('DetailCode').AsLargeInt;
              end;

          end;

          if aQry.Fieldbyname('TopicCode').AsLargeInt<>0 then
          begin
            if qryExcel.FieldByName('Amount').AsCurrency<>0 then
              aQry.FieldByName('Debt').AsCurrency :=
                qryExcel.FieldByName('Amount').AsCurrency
            else
              aQry.FieldByName('Debt').AsCurrency :=
                qryExcel.FieldByName('Total').AsCurrency;

            aQry.FieldByName('Comment_l1').AsString :=
              cliDocSetCommentFieldName.AsString;
          end
          else
            Cancel;

          Append;
          case cliDocSetBedKind.AsInteger of
            0:
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  cliDocSetTopicCodeBes.AsLargeInt;
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  cliDocSetDetailCodeBes.AsLargeInt;
              end;
            1:
              if qryDetailRange.Locate('NationalID',
                  qryExcel.FieldByName('RCode').AsInteger,[])
              then
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  qryDetailRange.FieldByName('TopicCode').AsLargeInt;
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  qryDetailRange.FieldByName('DetailCode').AsLargeInt;
              end;
            2:
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  StrToInt64(edtBankTopic.Text);
                if qryDetailRange.Locate('NationalID',
                    qryExcel.FieldByName('ANo').AsInteger,[])
                then
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  qryDetailRange.FieldByName('DetailCode').AsLargeInt;
              end;
            3:
              begin
                aQry.FieldByName('TopicCode').AsLargeInt :=
                  StrToInt64(edtRunTopic.Text);
                if qryDetailRange.Locate('NationalID',
                    qryExcel.FieldByName('ANo').AsInteger,[])
                then
                aQry.FieldByName('DetailCode').AsLargeInt :=
                  qryDetailRange.FieldByName('DetailCode').AsLargeInt;
              end;

          end;

          if aQry.Fieldbyname('TopicCode').AsLargeInt<>0 then
          begin
            if qryExcel.FieldByName('Amount').AsCurrency<>0 then
              aQry.FieldByName('Credit').AsCurrency :=
                qryExcel.FieldByName('Amount').AsCurrency
            else
              aQry.FieldByName('Credit').AsCurrency :=
                qryExcel.FieldByName('Total').AsCurrency;

            aQry.FieldByName('Comment_l1').AsString :=
              cliDocSetCommentFieldName.AsString;
            Post;
          end
          else
            Cancel;
        end;
        lblCount.Caption := 'رديف:‏' + IntToStr(aQry.RecNo);
        If LastKeyPressed = VK_ESCAPE then
          if get_response('عمليات متوقف شود؟') = mrYes then
          begin
            DoWhile := False;
            LastKeyPressed := 0;
          end;
        LastKeyPressed := 0;
        qryExcel.Next;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
      end;
  finally
    aQry.EnableControls;
    Warn('انتقال انجام شد.‏', mtInformation);
    lblCount.Visible := False;
  end

end;

procedure TDocumentSettingF.BitBtn3Click(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
    try
      if chk2007.Checked then
        Filter := 'Excel|*.xlsx'
      else
        Filter := 'Excel|*.xls';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName)
    finally
      SaveConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', FileName);
      Free;
    end;
end;

procedure TDocumentSettingF.cmbSheetNameChange(Sender: TObject);
begin
  with qryExcel do
  begin
    Close;
    SQL.Text := 'select * from [' + cmbSheetName.Items
      [cmbSheetName.ItemIndex] + ']';
    Open;
    // qryExcel.GetFieldNames(lstExcel.Items);
  end;
end;

function TDocumentSettingF.ExcelToList(Fname: String = ''): Boolean;
var
  S: String;
begin
  if chk2007.Checked then
    S := Format
      ('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Extended Properties=excel 12.0;Persist Security Info=False',
      [Fname])
  else
    S := Format
      ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Extended Properties=excel 8.0;Persist Security Info=False',
      [Fname]);

  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := S;
      LoginPrompt := False;
      Open;
      GetTableNames(cmbSheetName.Items);
      // pnlSheet.Visible := cmbSheetName.Items.Count > 1;
      if pnlSheet.Visible then
        cmbSheetName.ItemIndex := 0;
    finally
      Free;
    end;
  with qryExcel do
  begin
    Close;
    ConnectionString := S;
    SQL.Text := 'select * from [' + cmbSheetName.Items[0] + ']';
    Open;
  end;
end;

procedure TDocumentSettingF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  gridkeyenter(Sender, Key);
end;

procedure TDocumentSettingF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
        if (curIndex > 0) and (aDataSet.FieldByName('ID').IsNull) then
        begin
          aDataSet.Cancel;
          Exit;
        end;
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      // DBGrid1EditButtonClick(sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

end.
