unit ReciptsImport;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms, template2MDI, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, Vcl.DBGrids, ADODB, Grids, ImgList, DBActns,
  System.ImageList, System.Actions, System.StrUtils;

type
  TReciptsImportF = class(Ttemplate2MDIF)
    qryReciptsImport: TADOQuery;
    srcReciptsImport: TDataSource;
    DBGrid1: TDBGrid;
    actFilter: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    BitBtn1: TBitBtn;
    actReciptsPost: TAction;
    BitBtn2: TBitBtn;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    cmdFirstRun1: TADOCommand;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    qryinit: TADOQuery;
    spLinksServer_NewRecipts: TADOStoredProc;
    sp_ReciptsImportBase: TADOStoredProc;
    RadioGroup1: TRadioGroup;
    cmdFirstRun2: TADOCommand;
    qryDeficits: TADOQuery;
    BitBtn6: TBitBtn;
    actBasePost: TAction;
    CheckBox1: TCheckBox;
    edtLinkServer: TEdit;
    procedure actFilterExecute(Sender: TObject);
    procedure actReciptsPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryReciptsImportAfterOpen(DataSet: TDataSet);
    procedure qryReciptsImportBeforeOpen(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actBasePostExecute(Sender: TObject);
  private
    procedure UpdateList;
    procedure AddRecipt(var ReciptID: Integer);
    procedure AddReciptItems(var ReciptID: Integer);
    procedure Fn_ReciptsImport;
    procedure AddReciptDeficit(var ReciptID: Integer);
    procedure Callsp_ReciptsImportBase;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptsImportF: TReciptsImportF;

implementation

uses FaraConsts, DM, GlobalPro, FilterClass_ADO, filter_ADO, MMESSAGE,
  FormFunctions, search2, sort2;

{$R *.dfm}

procedure TReciptsImportF.actBasePostExecute(Sender: TObject);
begin
  inherited;
  Callsp_ReciptsImportBase;
end;

procedure TReciptsImportF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      if RadioGroup1.ItemIndex = 0 then
        AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
          ftLargeint, dvMinMax, '', '', ciLookup,
          'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
          + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
          + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
          'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
          + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
          + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');

      if RadioGroup1.ItemIndex = 0 then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_l1 FROM acc.Companies ',
          'SELECT Min(CompanyCode)  , Max(CompanyCode)  FROM acc.Companies');

      if RadioGroup1.ItemIndex = 2 then
        AddItem(DMF.adcBSell, 'TopicCode', 'كد و نام تیکت', 'تیکت', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT distinct TopicCode , TopicName FROM dbo.Fn_ReciptsImport (0 , 999999999 ,0 ,999999999 , 0 ,'''', ''9999/99/99'') ',
          'SELECT Min(TopicCode) , Max(TopicCode)FROM dbo.Fn_ReciptsImport (0 , 999999999 ,0 ,999999999 , 0 ,'''', ''9999/99/99'') ');

      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select min(DocDate) ,max(DocDate) from acc.DocGroups');

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        pnlLblLimitPlace.Hint := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      fi.Free;
    end; // t
  end;

end;

procedure TReciptsImportF.AddReciptItems(var ReciptID: Integer);
var
  i: Integer;
  ColIsItem: string;
begin
  if (qryReciptsImport.FindField('StuffCode') <> nil) and
    (qryReciptsImport.fieldbyname('StuffCode').AsLargeInt <> 0) then
    with qryReciptItems Do
      try
        Open;
        Insert;
        for i := 0 to Fields.Count - 1 do
          if (not Fields[i].ReadOnly) then
          begin
            if (qryReciptsImport.FindField(Fields[i].FieldName) <> nil) then
              Fields[i].AsString := qryReciptsImport.fieldbyname
                (Fields[i].FieldName).AsString;

            ColIsItem := 'ColIsItem' + Fields[i].FieldName;
            if (qryReciptsImport.FindField(ColIsItem) <> nil) then
              Fields[i].AsString := qryReciptsImport.fieldbyname
                (ColIsItem).AsString;

          end;
        fieldbyname('ReciptID').AsInteger := ReciptID;
        fieldbyname('ReciptItemID').AsInteger :=
          GetanewID(qryReciptItems, Self.Name, 'ReciptItems ', 'ReciptItemID',
          qryRecipts, 1);
        fieldbyname('FirstUser').AsString := User.Name;
        Post;
      finally

      end;
end;

procedure TReciptsImportF.AddReciptDeficit(var ReciptID: Integer);
var
  i: Integer;
  FldName, DeficitID: string;
begin
  with qryReciptsImport Do
    try
      qryDeficits.Open;
      for i := 0 to Fields.Count - 1 do
      begin
        FldName := LowerCase(Fields[i].FieldName);

        if Leftstr(FldName, 10) = 'deficitadd' then
        begin
          qryDeficits.Insert;
          DeficitID := ReplaceStr(FldName, 'deficitadd', '');
          qryDeficits.fieldbyname('deficitadd').AsString :=
            fieldbyname(Fields[i].FieldName).AsString;
        end;
        if Leftstr(FldName, 10) = 'deficitdec' then
        begin
          qryDeficits.Insert;
          DeficitID := ReplaceStr(FldName, 'deficitdec', '');
          qryDeficits.fieldbyname('deficitdec').AsString :=
            fieldbyname(Fields[i].FieldName).AsString;
        end;

        if qryDeficits.State in [dsInsert] then
        begin
          qryDeficits.fieldbyname('DeficitID').AsString := DeficitID;
          qryDeficits.fieldbyname('ReciptID').AsInteger := ReciptID;
          qryDeficits.fieldbyname('ReciptDeficitID').AsInteger :=
            GetanewID(qryDeficits, Self.Name, 'ReciptsDeficits',
            'ReciptDeficitID', qryRecipts, 1);
          qryDeficits.Post;
        end;

      end;
    finally

    end;
end;

procedure TReciptsImportF.AddRecipt(var ReciptID: Integer);
var
  i: Integer;
begin
  with qryRecipts Do
    try
      Open;
      Insert;
      for i := 0 to Fields.Count - 1 do
        if (not Fields[i].ReadOnly) and
          (qryReciptsImport.FindField(Fields[i].FieldName) <> nil) then
          Fields[i].AsString := qryReciptsImport.fieldbyname
            (Fields[i].FieldName).AsString;
      ReciptID := GetanewID(qryRecipts, Self.Name, 'Recipts',
        'ReciptID', nil, 1);
      myStore.code := qryReciptsImport.fieldbyname('StoreID').AsInteger;
      qryinit.Locate('ReciptType', qryReciptsImport.fieldbyname('ReciptType')
        .AsInteger, []);

      if fieldbyname('ReciptNumber').AsInteger = 0 then
        GetReciptNumber(qryinit, qryRecipts, 0, myStore);
      fieldbyname('OperatorID').AsInteger := User.id;
      fieldbyname('ModifyDate').AsDateTime := Now;
      if fieldbyname('FirstUser').AsString = EmptyStr then
        fieldbyname('FirstUser').AsString := User.Name;
      Post;
    finally

    end;

end;

procedure TReciptsImportF.actReciptsPostExecute(Sender: TObject);
var
  ReciptID, Serial: Integer;
begin
  inherited;
  if RadioGroup1.ItemIndex = 1 then
  begin
    With spLinksServer_NewRecipts do
    begin
      Active := False;
      Parameters.Refresh;
      Parameters.ParamByName('@ReciptDateFrom').Value :=
        GetcFrom(myParams.ParamValues['DocDate'], ftDate);
      Parameters.ParamByName('@ReciptDateTo').Value :=
        GetcTo(myParams.ParamValues['DocDate'], ftDate);
      Parameters.ParamByName('@LinkServerName').Value :=
        edtLinkServer.Text;
      Parameters.ParamByName('@Message').Value := '';
      BigMessage('در حال ثبت اطلاعات ...', 0);
      ExecProc;
      CloseMessage;
      Warn(Parameters.ParamByName('@Message').Value);
      Active := False;
    end; // With
  end
  else
  begin
    if RadioGroup1.ItemIndex = 2 then
    begin
      Callsp_ReciptsImportBase;
    end;

    ReciptID := 0;

    Serial := 0;
    with qryReciptsImport Do
      try
        BigMessageProgBar('در حال ثبت', RecordCount);
        DisableControls;
        First;
        while not Eof do
        begin
          if fieldbyname('Serial').AsInteger <> Serial then
          begin
            AddRecipt(ReciptID);
            AddReciptDeficit(ReciptID);
            Serial := fieldbyname('Serial').AsInteger;
          end;
          AddReciptItems(ReciptID);
          GoProgressBar(fieldbyname('Serial').AsString);
          Next;
        end;
      finally
        EnableControls;
        CloseMessage;
        FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
        // FreeReservedCodes(DMF.adcBSell, 'recipts', '',
        // qryRecipts.fieldbyname('ReciptType').AsString + '_' +
        // qryRecipts.fieldbyname('StoreID').AsString);
        FreeReservedCodes(DMF.adcBSell, 'recipts', 'reciptnumber',
          qryRecipts.fieldbyname('ReciptType').AsString);
        // FreeReservedCodes(DMF.adcBSell, '', 'reciptnumber', Self.Name);

      end;
  end;
end;

procedure TReciptsImportF.Callsp_ReciptsImportBase;
begin
  With sp_ReciptsImportBase do
  begin
    Active := False;
    Parameters.Refresh;
    Parameters.ParamByName('@DateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftDate);
    Parameters.ParamByName('@DateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftDate);
    // Parameters.ParamByName('@Message').Value := '';
    BigMessage('در حال ثبت اطلاعات پایه ...', 0);
    ExecProc;
    CloseMessage;
    // Warn(Parameters.ParamByName('@Message').Value);
    Active := False;
    qryReciptsImport.Requery([]);
  end; // With

end;

procedure TReciptsImportF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReciptsImport);
end;

procedure TReciptsImportF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TReciptsImportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReciptsImport);
end;

procedure TReciptsImportF.Fn_ReciptsImport;
begin
  // CREATE FUNCTION Fn_ReciptsImport (....)
  // برای ایجاد فانکش برای اولین بار این کد نوشته شده و توسط پشتیبان ها این فانکشن در اسکیوال ویرایش می شود
  with cmdFirstRun1 Do
    try
      CommandText := StringReplace(CommandText, ':Acc_FaraRayaneh',
        opt.AccountName, [rfReplaceAll]);
      // Parameters.ParamByName('Acc_FaraRayaneh.Acc.Documents').Value :=
      // opt.AccountName + '.Acc.Documents';
      // Parameters.ParamByName('Acc_FaraRayaneh.Acc.DocGroups').Value :=
      // opt.AccountName + '.Acc.DocGroups';
      Execute;
    except
      on e: Exception do
      begin
        // Warn(e.Message);
        // پیغام نباید دیده شود
      end;
    end;

  with cmdFirstRun2 Do
    try
      Execute;
    except
      on e: Exception do
      begin
        // Warn(e.Message);
        // پیغام نباید دیده شود
      end;
    end;

end;

procedure TReciptsImportF.FormCreate(Sender: TObject);
begin
  inherited;
  edtLinkServer.Text := ReadConfig(APPID, 'ReciptsImportFLinkName',
    edtLinkServer.Text);
  Fn_ReciptsImport;
  with qryinit do
  begin
    Active := False;
    Active := True;
  end;
end;

procedure TReciptsImportF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveConfig(APPID, 'ReciptsImportFLinkName', edtLinkServer.Text);
end;

procedure TReciptsImportF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 0, True)
end;

procedure TReciptsImportF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  // actFilter.Execute;
  // if myParams.FindParam('TopicCode') = nil then
  // Close;
end;

procedure TReciptsImportF.qryReciptsImportAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  with qryReciptsImport Do
    for i := 0 to Fields.Count - 1 do
      Fields[i].Tag := 3;
  CloseMessage
end;

procedure TReciptsImportF.qryReciptsImportBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BigMessage('در حال دریافت اطلاعات ...', 0);
end;

procedure TReciptsImportF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if myParams.FindParam('DocDate') = nil then
    actFilter.Execute
  else
    UpdateList
end;

procedure TReciptsImportF.UpdateList;
var
  ReciptDateFrom, ReciptDateTo: string;
begin
  case RadioGroup1.ItemIndex of
    1:
      with qryReciptsImport do
      begin
        Active := False;
        ReciptDateFrom := GetcFrom(myParams.ParamValues['DocDate'], ftDate);
        ReciptDateTo := GetcTo(myParams.ParamValues['DocDate'], ftDate);
        SQL.Text := 'select *';
        SQL.Add('from openquery ([' + edtLinkServer.Text +
          '], ''SELECT * FROM [Bama].[dbo].GetReceipt4Fara ( ''''' +
          ReciptDateFrom + ''''' , ''''' + ReciptDateTo + ''''' , -1 )'')');
        Active := CheckBox1.Checked;
      end;

  else
    begin
      with qryReciptsImport Do
      begin
        Active := False;
        SQL.Text := 'SELECT * FROM';
        SQL.Add('dbo.Fn_ReciptsImport (:TopicCodeFrom , :TopicCodeTo , :CompanyCodeFrom');
        SQL.Add(', :CompanyCodeTo , :YearID ,:DocDateFrom , :DocDateTo )');

        Parameters.ParamByName('YearID').DataType := ftInteger;
        Parameters.ParamByName('YearID').Value := APPBank.Year;

        Parameters.ParamByName('TopicCodeFrom').DataType := ftLargeint;
        Parameters.ParamByName('TopicCodeFrom').Value :=
          GetcFrom(myParams.ParamValues['TopicCode'], ftLargeint);

        Parameters.ParamByName('TopicCodeTo').DataType := ftLargeint;
        Parameters.ParamByName('TopicCodeTo').Value :=
          GetcTo(myParams.ParamValues['TopicCode'], ftLargeint);

        Parameters.ParamByName('CompanyCodeFrom').DataType := ftInteger;
        Parameters.ParamByName('CompanyCodeTo').DataType := ftInteger;
        if RadioGroup1.ItemIndex = 0 then
        begin
          Parameters.ParamByName('CompanyCodeFrom').Value :=
            GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
          Parameters.ParamByName('CompanyCodeTo').Value :=
            GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
        end
        else
        begin
          Parameters.ParamByName('CompanyCodeFrom').Value := 0;
          Parameters.ParamByName('CompanyCodeTo').Value := 2147483647;
        end;

        Parameters.ParamByName('DocDateFrom').DataType := ftString;
        Parameters.ParamByName('DocDateFrom').Value :=
          GetcFrom(myParams.ParamValues['DocDate'], ftDate);

        Parameters.ParamByName('DocDateTo').DataType := ftString;
        Parameters.ParamByName('DocDateTo').Value :=
          GetcTo(myParams.ParamValues['DocDate'], ftDate);

        Active := CheckBox1.Checked;
      end;
    end;

  end;

end;

end.
