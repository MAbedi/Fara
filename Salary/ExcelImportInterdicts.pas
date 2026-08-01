unit ExcelImportInterdicts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, ImgList, DBActns,
  ActnList, DBCtrls, Grids, Vcl.DBGrids, Buttons, ExtCtrls, System.ImageList,
  System.Actions;

type
  TExcelImportInterdictsF = class(TForm)
    qryRecalClocks: TADOQuery;
    qryRecalClocksID: TAutoIncField;
    qryRecalClocksSalaryID: TIntegerField;
    qryRecalClocksExcelFieldName: TStringField;
    qryExcel: TADOQuery;
    PnlUnderButton: TPanel;
    lblproc: TLabel;
    BtnReject: TBitBtn;
    btnTransferOfExcel: TBitBtn;
    Panel1: TPanel;
    ImgTemplate: TImage;
    lblCaption: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    ActionList: TActionList;
    actExit: TAction;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    actSearch_: TAction;
    DataSetDelete1_: TDataSetDelete;
    actShowChart: TAction;
    actRecal: TAction;
    actSend: TAction;
    actGet: TAction;
    actOpenExcel: TAction;
    actTransferOfExcel: TAction;
    ImageList1: TImageList;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    srcRecalClocks: TDataSource;
    Panel5: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    qrySalaryID: TADOQuery;
    qryRecalClocksRecalClockName: TWordField;
    qryRecalClocksStartStr: TWordField;
    qryRecalClocksCountStr: TWordField;
    qryRecalClocksStartFloatStr: TWordField;
    qryRecalClocksCountFloatStr: TWordField;
    qryRecalClocksKind: TWordField;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    qryRecalClocksTableFieldName: TStringField;
    qrySalaryIDFormInfoID: TIntegerField;
    qrySalaryIDInfoName_L1: TStringField;
    actList: TAction;
    Panel4: TPanel;
    Label1: TLabel;
    BitBtn6: TBitBtn;
    cmbSheetName: TComboBox;
    BitBtn1: TBitBtn;
    procedure actRecalExecute(Sender: TObject);
    procedure qryRecalClocksAfterInsert(DataSet: TDataSet);
    procedure qryRecalClocksBeforePost(DataSet: TDataSet);
    procedure actSendExecute(Sender: TObject);
    procedure actGetExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cmbSheetNameChange(Sender: TObject);
    procedure actOpenExcelExecute(Sender: TObject);
    procedure actTransferOfExcelExecute(Sender: TObject);
    procedure srcRecalClocksStateChange(Sender: TObject);
    procedure MyGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure MySetText(Sender: TField; const Text: String);
    procedure MyStringGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure MyStringSetText(Sender: TField; const Text: String);
    procedure FormDestroy(Sender: TObject);
    procedure actListExecute(Sender: TObject);
  private
    { Private declarations }
    aQryM, aQryD: TADOQuery;
    procedure ExcelToList(Fname: String = '');
    function Add2Excel(PersonelID: string): Boolean;
    function Add2ItemsExcel: Boolean;
    procedure GetProc(lbl1: TLabel);
    procedure init;
  public
    { Public declarations }
    procedure ShowImPortExcel(QryMaster, QryDetails: TADOQuery);

  end;

var
  ExcelImportInterdictsF: TExcelImportInterdictsF;

implementation

uses DM, GlobalPro, GetExcel, searchCode_ADO, FaraConsts;

{$R *.dfm}

procedure TExcelImportInterdictsF.ShowImPortExcel(QryMaster,
  QryDetails: TADOQuery);
begin
  with TExcelImportInterdictsF.Create(Application) do
    try
      QryMaster.DisableControls;
      QryDetails.DisableControls;
      aQryM := QryMaster;
      aQryD := QryDetails;
      init;
      ShowModal;
    //  if ShowModal = mrClose then
    finally
      QryMaster.EnableControls;
      QryDetails.EnableControls;
      Free;
    end;
end;

procedure TExcelImportInterdictsF.srcRecalClocksStateChange(Sender: TObject);
begin
  okPanel.Visible := qryRecalClocks.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
end;

procedure TExcelImportInterdictsF.init;
var
  I: Byte;
  s: String;
begin
  with aQryM do
    For I := 0 to FieldCount - 1 do
    begin
      if (Fields[I].DisplayLabel <> Fields[I].FieldName) and
        (Fields[I].DisplayLabel <> EmptyStr) and
        (Fields[I].FieldKind in [fkData]) then
        DBGrid2.Columns[1].PickList.AddObject(aQryM.Fields[I].DisplayLabel,
          TObject(aQryM.Fields[I].FieldName));
    end;

  With qrySalaryID do
  begin
    Active := False;
    Active := True;
    while not eof do
    begin
      DBGrid2.Columns[2].PickList.AddObject(FieldByName('InfoName_L1').AsString,
        TObject(FieldByName('FormInfoID').AsInteger));
      Next;
    end;
  end;

  s := ReadConfig('', aQryM.Owner.Name + aQryM.Name + '_Filepath', '');
  if not FileExists(s) then
    s := EmptyStr;
  if s <> EmptyStr then
    ExcelToList(s);

end;

procedure TExcelImportInterdictsF.actTransferOfExcelExecute(Sender: TObject);
var
  pid: String;
  TransfredCount: Integer;
begin
  inherited;
  qryRecalClocks.DisableControls;
  qryExcel.First;
  With qryExcel do
    try
      TransfredCount := 0;
      while (Fields[0].AsString <> EmptyStr) and (not eof) do
      begin
        if Add2Excel(pid) then
        begin
          Next;
          Inc(TransfredCount, 1);
        end
        else
        begin
          Warn('ردیف:' + IntToStr(RecNo) + ' مقدار :' + qryExcel.Fields[0]
            .AsString);
          Break
        end;
      end;
      Warn('حکم ' + IntToStr(TransfredCount) + ' پرسنل به سيستم منتقل شد.',
        mtInformation);
    finally
      qryRecalClocks.Filtered := False;
      qryRecalClocks.EnableControls;
      FreeReservedCodes(Dmf.adcSalary, 'Pay.InterdictItems');
    end;
end;

function TExcelImportInterdictsF.Add2Excel(PersonelID: string): Boolean;
var
  ExlName, TblName: string;
begin
  try
    with qryRecalClocks do
    begin
      DisableControls;
      Filter := 'SalaryID=0';
      Filtered := True;
      First;
      aQryM.Insert;
      while not eof do
      begin
        GetProc(lblproc);
        ExlName := qryRecalClocksExcelFieldName.AsString;
        TblName := qryRecalClocksTableFieldName.AsString;
        if aQryM.FindField(TblName) <> nil then
          aQryM.FieldByName(TblName).AsString :=
            qryExcel.FieldByName(ExlName).AsString;
        Next;
      end;
      try
        Add2ItemsExcel
      finally
      end;
      aQryM.Post;
      aQryD.UpdateBatch;
    end;
    Result := True;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در  ' + #13#10 + E.Message);
      qryRecalClocks.EnableControls;
      Result := False;
      aQryM.Cancel;
    end;

  end;
end;

procedure TExcelImportInterdictsF.GetProc(lbl1: TLabel);
begin
  Application.ProcessMessages;
  if lbl1.Caption = '|' then
  begin
    lbl1.Caption := '/';
    Exit;
  end;
  if lbl1.Caption = '/' then
  begin
    lbl1.Caption := '_';
    Exit;
  end;
  if lbl1.Caption = '_' then
  begin
    lbl1.Caption := '\';
    Exit;
  end;
  if lbl1.Caption = '\' then
  begin
    lbl1.Caption := '|';
    Exit;
  end;
  lbl1.Caption := '|';
end;

function TExcelImportInterdictsF.Add2ItemsExcel: Boolean;
var
  ExlName, TblName: string;
begin
  try
    with qryRecalClocks do
    begin
      Filtered := False;
      Filter := 'SalaryID<>0 AND (  ExcelFieldName <>'''' )';
      Filtered := True;
      while not eof do
      begin
        GetProc(lblproc);
        ExlName := qryRecalClocksExcelFieldName.AsString;
        TblName := qryRecalClocksTableFieldName.AsString;
        aQryD.Insert;
        aQryD.FieldByName('SalaryID').AsInteger :=
          qryRecalClocksSalaryID.AsInteger;
        aQryD.FieldByName('Amount').AsInteger := qryExcel.FieldByName(ExlName)
          .AsInteger;
        aQryD.FieldByName('InterdictItemsID').AsInteger :=
          GetANewCode('','Pay.InterdictItems', 'InterdictItemsID');
        aQryD.FieldByName('Userid').Value := User.id;
        aQryD.FieldByName('InterdictID').Value :=
          aQryM.FieldByName('InterdictID').AsInteger;
        aQryD.FieldByName('ExpenseType').Value := 1;
        if aQryD.FieldByName('Amount').AsInteger > 0 then
          aQryD.Post
        else
          aQryD.Cancel;
        Next;
      end;
    end;
    Result := True;
  except
    on E: Exception do
    begin
      Result := False;
      add2log(E.Message);
      Warn('اشكال در' + #13#10 + E.Message);
    end;
  end;
end;

procedure TExcelImportInterdictsF.actListExecute(Sender: TObject);

var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 4] of String;
begin
  Txt := 'SELECT  FormTypes.FormType,FormTypes.FormCaption_L1, FormsInfo.FormInfoID, FormsInfo.InfoName_L1, FormsInfo.InfoID '
    + 'FROM Pay.FormTypes INNER JOIN Pay.FormsInfo ON FormTypes.FormType = FormsInfo.FormType';
  s := searchCode_ADOF.SearchCode2(Dmf.adcSalary,
    ' لیست سریالهای مورد استفاده در فایل Excel ', Txt,
    ['کد نوع', 'عنوان نوع', 'سریال', 'عنوان ', 'ردیف'], Results,
    [60, 60, 200, 60, 300], alLeft);
  if s then
    Warn(Results[2]);
end;

procedure TExcelImportInterdictsF.actOpenExcelExecute(Sender: TObject);
begin
  inherited;
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName)
    finally
      SaveConfig('', Self.Name + qryExcel.Name + '_Filepath', FileName);
      Free;
    end;
end;

procedure TExcelImportInterdictsF.ExcelToList(Fname: String = '');
var
  s: String;
begin
  if ExtractFileExt(Fname) = '.xlsx' then
    s := Format('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;' +
      'Extended Properties=excel 12.0;Persist Security Info=False', [Fname])

  else
    s := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;' +
      'Extended Properties=excel 8.0;Persist Security Info=False', [Fname]);

  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := s;
      LoginPrompt := False;
      Open;
      GetTableNames(cmbSheetName.Items);
      cmbSheetName.ItemIndex := 0;
    finally
      Free;
    end;
  with qryExcel do
  begin
    Close;
    ConnectionString := s;
    SQL.Text := 'SELECT * FROM [' + cmbSheetName.Items[0] + ']';
    Open;
    qryExcel.GetFieldNames(DBGrid2.Columns[0].PickList);
  end;
  // qryRecalClocks.Active := False;
  qryRecalClocks.Active := True;
end;

procedure TExcelImportInterdictsF.actRecalExecute(Sender: TObject);
var
  I, j: Integer;
  bInsert: Boolean;
begin
  inherited;
  if get_response('آیا برای ارتباط عناوین مشابه مطمئن هستید') = mrYes then
    With qryExcel do
    begin
      for I := 0 to FieldCount - 1 do
      begin
        /// پیدا کردن فلیدهای مشابه اکسل با عناوین حقوق مزایا
        if qrySalaryID.Locate('InfoName_L1', Fields[I].DisplayLabel, []) then
        begin
          qryRecalClocks.Insert;
          qryRecalClocks.FieldByName('SalaryID').AsInteger :=
            qrySalaryID.FieldByName('FormInfoID').AsInteger;
          qryRecalClocks.FieldByName('ExcelFieldName').AsString :=
            Fields[I].FieldName;
          qryRecalClocks.Post;
          Continue;
        end;
        bInsert := False;
        /// پیدا کردن فیلدهای مشابه مستر با اکسل
        for j := 0 to aQryM.FieldCount - 1 do
        begin
          if Fields[I].DisplayLabel = aQryM.Fields[j].DisplayLabel then
          begin
            bInsert := True;
            qryRecalClocks.Insert;
            qryRecalClocks.FieldByName('TableFieldName').AsString :=
              aQryM.Fields[j].FieldName;
            qryRecalClocks.FieldByName('ExcelFieldName').AsString :=
              Fields[I].FieldName;
            qryRecalClocks.Post;
            Break;
          end;
        end;
        if not bInsert then
        begin
          qryRecalClocks.Insert;
          qryRecalClocks.FieldByName('ExcelFieldName').AsString :=
            Fields[I].FieldName;
          qryRecalClocks.Post;
        end;

      end;
    end;
end;

procedure TExcelImportInterdictsF.qryRecalClocksAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With qryRecalClocks do
  begin
    FieldByName('RecalClockName').AsInteger := 0;
    FieldByName('SalaryID').AsInteger := 0;
    FieldByName('StartStr').AsInteger := 0;
    FieldByName('CountStr').AsInteger := 0;
    FieldByName('StartFloatStr').AsInteger := 0;
    FieldByName('CountFloatStr').AsInteger := 0;
    FieldByName('Kind').AsInteger := 1;
  end;
end;

procedure TExcelImportInterdictsF.qryRecalClocksBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('ExcelFieldName').AsString = EmptyStr) then
  begin
    DataSet.Cancel;
    Abort
  end;
  if ((DataSet.FieldByName('SalaryID').AsInteger <> 0) and
    (DataSet.FieldByName('TableFieldName').AsString <> EmptyStr)) then
  begin
    Warn(DataSet.FieldByName('SalaryID').DisplayLabel + ' و ' +
      DataSet.FieldByName('TableFieldName').DisplayLabel +
      ' هردو نباید ورود اطلاعات شوند');
    Abort
  end;

end;

procedure TExcelImportInterdictsF.MyGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := DBGrid2.Columns[ColumnIndexByFieldName(DBGrid2, Sender.FieldName)];
  if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
    Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TExcelImportInterdictsF.MySetText(Sender: TField; const Text: String);
var
  col: TColumn;
  I: Integer;
begin
  inherited;
  col := DBGrid2.Columns[ColumnIndexByFieldName(DBGrid2, Sender.FieldName)];
  I := col.PickList.IndexOf(Text);
  if I <> -1 then
    Sender.AsInteger := Integer(col.PickList.Objects[I])
end;

procedure TExcelImportInterdictsF.MyStringGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);

begin
  inherited;
  if aQryM.FindField(Sender.AsString) <> nil then
    Text := aQryM.FieldByName(Sender.AsString).DisplayLabel;
end;

procedure TExcelImportInterdictsF.MyStringSetText(Sender: TField;
  const Text: String);
var
  col: TColumn;
  I: Integer;
begin
  inherited;
  col := DBGrid2.Columns[ColumnIndexByFieldName(DBGrid2, Sender.FieldName)];
  I := col.PickList.IndexOf(Text);
  if I <> -1 then
    Sender.AsString := String(col.PickList.Objects[I])
end;

procedure TExcelImportInterdictsF.actSendExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2)
end;

procedure TExcelImportInterdictsF.actGetExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryRecalClocks);
end;

procedure TExcelImportInterdictsF.cmbSheetNameChange(Sender: TObject);
begin
  inherited;
  with qryExcel do
  begin
    Close;
    SQL.Text := 'SELECT * FROM [' + cmbSheetName.Items
      [cmbSheetName.ItemIndex] + ']';
    Open;
    qryExcel.GetFieldNames(DBGrid2.Columns[0].PickList);
  end;
end;

procedure TExcelImportInterdictsF.FormDestroy(Sender: TObject);
begin
  SaveColWidth(DBGrid2);
end;

procedure TExcelImportInterdictsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 1, False);
end;

end.
