unit FormDesignAcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, ppBands,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, Menus, ppParameter, StrUtils, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TMyQry = class(TADOQuery)
  Private
    MsgCancel: Boolean;
  protected
    procedure CreateFields; override;
    procedure DoBeforeDelete; override;
    procedure DoAfterInsert; override;
    procedure DoAfterPost; override;
    procedure DoBeforePost; override;
    procedure DoBeforeCancel; override;
  end;

  TMyGrid = class(TDBGrid)
  protected
    procedure KeyPress(var Key: Char); override;
    procedure EditButtonClick; override;
  end;

  TFormDesignAccF = class(Ttemplate2MDIF)
    srcDetail: TDataSource;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnSearch_: TBitBtn;
    btnSort: TBitBtn;
    actSendToExcel: TAction;
    BitBtn5: TBitBtn;
    srcMaster: TDataSource;
    pnlMaster: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    actSeachMaster: TAction;
    actSendToExcelMaster: TAction;
    actSortMaster: TAction;
    Button2: TButton;
    Button3: TButton;
    grpMaster: TGroupBox;
    edtMasterCode: TDBEdit;
    spdMaster: TSpeedButton;
    edtMasterName: TDBEdit;
    DBNavigator1: TDBNavigator;
    actPrint: TAction;
    Button4: TButton;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppReport1: TppReport;
    popPrint: TPopupMenu;
    mnuExampel: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    popOther: TPopupMenu;
    mnuScan: TMenuItem;
    N2: TMenuItem;
    actOther: TAction;
    N1: TMenuItem;
    actSort: TAction;
    procedure FormCreate(Sender: TObject);
    procedure srcDetailStateChange(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortMasterExecute(Sender: TObject);
    procedure actSeachMasterExecute(Sender: TObject);
    procedure actSendToExcelMasterExecute(Sender: TObject);
    procedure edtMasterCodeKeyPress(Sender: TObject; var Key: Char);
    procedure spdMasterClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure mnuExampelClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure mnuScanClick(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure GrdMasterKeyPress(Sender: TObject; var Key: Char);
  private
    QInit: TADOQuery;

    DBgrid: TMyGrid;
    DBgridMaster: TDBGrid;
    FormType: Integer;
    ReportName: String;
    CaptionName: String;
    TblScan: ShortString;
    FldScan: ShortString;
    Tabl4GetANew: String;
    MsgOK: Boolean;
    function GetValuInit(flName, ResultfldName: String): String;
    Procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    Procedure MyMasterScroll(DataSet: TDataSet);
    procedure MyGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure MySetText(Sender: TField; const Text: String);
    procedure InitReportFile(ReportName: TppReport; GeneralFileName: string);
    { Private declarations }
  public
      QItems: TMyQry;
    QMaster: TADOQuery;  { Public declarations }
  end;

var
  FormDesignACCF: TFormDesignAccF;

implementation

uses Dm, GlobalPro, searchCode_ADO, search2,
  sort2, sndkey32, mmessage, DBGrid2Print, ScanImage, GetExcel;

{$R *.dfm}

procedure TFormDesignAccF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet :   TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        if DBgrid.Columns.Count - 1 = nextIndex then
          nextIndex := -1
        else
          nextIndex := curIndex + 1;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBgrid.Columns[nextIndex].Visible) OR
          (DBgrid.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if (Sender as TDBGrid).Columns[nextIndex]
        .ButtonStyle = cbsEllipsis then
    begin
      Key := #0;
      DBgrid.EditButtonClick;
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < DBgrid.Columns.Count) and
      (not(DBgrid.Columns[nextIndex].Visible) OR
      (DBgrid.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
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

procedure TFormDesignAccF.FormCreate(Sender: TObject);
begin
  inherited;
  MsgOK := True;
  try
    FormType := var_glb_gParam;
    InitForm;
  except
    Warn('بروز رساني گزارشات پویا را اجرا كنيد.‏' + #13#10 + ' فرم ' +
      IntToStr(FormType) + 'وجود ندارد.‏');
  end;
end;

procedure TFormDesignAccF.GrdMasterKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, QMaster.Fields[0]);
end;

procedure TFormDesignAccF.InitForm;
const
  SqlTxt = ' SELECT *  FROM FormDesignItems INNER JOIN' +
    ' BaseConnections ON FormDesignItems.LookUpConnection = BaseConnections.ConnectionCode'
    + ' WHERE (FormDesignItems.FormID = %d) and type = %d' +
    ' ORDER BY FormDesignItems.Row';
var
  SQLItem: String;
  SQLMASTER: String;
  CnName: TADOConnection;
  Fld: TField;
  FormKind: Byte;
begin
  lblCaption.Hint := IntToStr(FormType);
  QInit := TADOQuery.Create(Self);
  QItems := TMyQry.Create(Self);
  DBgrid := TMyGrid.Create(Self);
  with QInit do
  begin
    Close;
    Connection := Dmf.adcFaraSystem;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM FormDesign INNER JOIN');
    SQL.Add('BaseConnections ON FormDesign.ConnectionCode = BaseConnections.ConnectionCode');
    SQL.Add('WHERE (FormDesign.FormID = ' + IntToStr(FormType) + ')');
    Open;
    CnName := TADOConnection(Dmf.FindComponent(fieldbyname('ConnectionName')
      .AsString));
    Self.Caption := Trim(fieldbyname('FormCaption').AsString);
    SQLItem := Trim(fieldbyname('DetailSQL').AsString);
    SQLMASTER := Trim(fieldbyname('MasterSQL').AsString);
    FormKind := fieldbyname('FormKind').AsInteger;
    ReportName := fieldbyname('PrintFileNames').AsString;
    CaptionName := fieldbyname('PrintCaptions').AsString;
    TblScan := fieldbyname('TableScan').AsString;
    FldScan := fieldbyname('FieldScan').AsString;
    mnuScan.Visible := TblScan <> EmptyStr;
    QItems.MsgCancel := fieldbyname('MsgCancel').AsInteger = 1;
    Close;
    SQL.Text := Format(SqlTxt, [FormType, 0]);
    Open;
  end; // qryInit

  // -------------------------set qry--------------------------------
  with QItems do
  begin
    Close;
    Connection := CnName;
    SQL.Text := SQLItem;
    srcDetail.DataSet := QItems;
    if Parameters.FindParam('YearID') <> nil then
      Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
  end;

  with DBgrid do
  begin
    DataSource := srcDetail;
    Name := 'GrdItems';
    Align := alClient;
    Color := clCream;
    Tag := 111;
    Options := Options + [dgAlwaysShowEditor];
    Parent := Panel3;
  end; // Grif Detail

  // ------------------------------------Sql Master-----------------------------
  if SQLMASTER <> EmptyStr then
  begin
    QMaster := TADOQuery.Create(Self);
    with QMaster do
    begin
      Close;
      QMaster.Connection := QItems.Connection;
      SQL.Text := SQLMASTER;
      srcMaster.DataSet := QMaster;
      AfterScroll := MyMasterScroll;
      if Parameters.FindParam('YearID') <> nil then
        Parameters.ParamByName('YearID').Value := APPBank.Year;
      Open;
    end;

    if FormKind <> 2 then
    begin
      pnlMaster.Visible := True;
      DBgridMaster := TDBGrid.Create(Self);
      with DBgridMaster do
      begin
        DataSource := srcMaster;
        Name := 'GrdMaster';
        Color := clCream;
        Align := alClient;
        OnKeyPress := GrdMasterKeyPress;
        case FormKind of
          0:
            begin
              pnlMaster.Align := alRight;
              pnlMaster.Width := TRUNC(Panel3.Width / 3)
            end;
          1:
            begin
              pnlMaster.Align := alTop;
              pnlMaster.Width := TRUNC(Panel3.Height / 3)
            end;
        end;

        Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines,
          dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection,
          dgConfirmDelete, dgCancelOnExit];
        ReadOnly := True;
        Parent := pnlMaster;
      end;
    end
    else
    begin
      grpMaster.Visible := not pnlMaster.Visible;
      edtMasterCode.DataField := QMaster.Fields[0].FieldName;
      edtMasterName.DataField := QMaster.Fields[1].FieldName;
    end;

    with TADOQuery.Create(nil) do
      try
        Connection := QInit.Connection;
        Close;
        SQL.Text := Format(SqlTxt, [FormType, 1]);
        Open;
        while not Eof do
        begin
          Fld := QMaster.fieldbyname(Trim(fieldbyname('fldName').AsString));
          Fld.DisplayLabel := Trim(fieldbyname('fldcaption').AsString);
          case fieldbyname('align').AsInteger of
            0:
              Fld.Alignment := taRightJustify;
            1:
              Fld.Alignment := taLeftJustify;
            2:
              Fld.Alignment := taCenter;
          end; // case
          If fieldbyname('ShowSearch').AsInteger <> 0 then
            Fld.Tag := 3;
          if FormKind <> 2 then
            with DBgridMaster.Columns.Add do
            begin
              FieldName := Fld.FieldName;
              case fieldbyname('StateShow').AsInteger of
                0:
                  Visible := True;
                1:
                  Visible := false;
                2:
                  ReadOnly := True;
              end; // case
            end; // with
          next;
        end; // while
      finally
        Free;
      end; // try
  end; // if
end;

{ TMyQry }

procedure TMyQry.CreateFields;
var
  FldName: ShortString;
  CnLookUp: TADOConnection;
  QLookUp: TADOQuery;
  ALookUp: Boolean;
  APickList: Boolean;
  FList: TStringList;
  i: Byte;
begin
  inherited;
  FList := TStringList.Create;
  try
    FormDesignaccF.QInit.First;
    with FormDesignAccF.QInit do
      while not Eof do
      begin
        FldName := Trim(fieldbyname('fldName').AsString);
        Self.fieldbyname(FldName).DisplayLabel :=
          Trim(fieldbyname('fldCaption').AsString);
        Self.fieldbyname(FldName).Required := fieldbyname('Required')
          .AsInteger <> 0;
        Self.fieldbyname(FldName).ReadOnly := fieldbyname('StateShow')
          .AsInteger = 2;
        Self.fieldbyname(FldName).Index := fieldbyname('row').AsInteger;
        if Self.fieldbyname(FldName).DataType in [ftCurrency, ftBCD] then
          TCurrencyField(Self.fieldbyname(FldName)).currency := True;

        if pos('DATE', UpperCase(FldName)) <> 0 then
          Self.fieldbyname(FldName).EditMask := '9999/99/99';
        ALookUp := fieldbyname('StatePost').AsInteger = 2;
        APickList := fieldbyname('StatePost').AsInteger = 4;
        if APickList then
        begin
          Self.fieldbyname(FldName).OnGetText := FormDesignAccF.MyGetText;
          Self.fieldbyname(FldName).OnSetText := FormDesignAccF.MySetText;
        end;
        If fieldbyname('ShowSearch').AsInteger <> 0 then
          Self.fieldbyname(FldName).Tag := 3;
        case FormDesignAccF.QInit.fieldbyname('align').AsInteger of
          0:
            Self.fieldbyname(FldName).Alignment := taRightJustify;
          1:
            Self.fieldbyname(FldName).Alignment := taLeftJustify;
          2:
            Self.fieldbyname(FldName).Alignment := taCenter;
        end;

        If ALookUp then
        begin
          QLookUp := TADOQuery.Create(FormDesignAccF);
          with QLookUp do
          begin
            Close;
            if FormDesignAccF.QInit.fieldbyname('LookUpConnection').AsString <>
              EmptyStr then
              CnLookUp := TADOConnection
                (Dmf.FindComponent(FormDesignAccF.QInit.fieldbyname
                ('ConnectionName').AsString))
            else
              CnLookUp := Self.Connection;

            Connection := CnLookUp;
            SQL.Text := FormDesignAccF.QInit.fieldbyname('SqlTxt').AsString;
            Filter := FormDesignAccF.QInit.fieldbyname('WhereSearch').AsString;
            Open;
            FList.Text :=
              StringReplace(FormDesignAccF.QInit.fieldbyname('LookUpCaption')
              .AsString, ',', #13, [rfReplaceAll]);
            for i := 0 to FList.Count - 1 do
              QLookUp.Fields[i].DisplayLabel := FList[i];
          end;
          with TStringField.Create(Self) do
          begin
            FieldName := '_' + FldName;
            DisplayLabel := QLookUp.Fields
              [FormDesignAccF.QInit.fieldbyname('IndexLookUpName').AsInteger]
              .DisplayLabel;
            FieldKind := fkLookup;
            DataSet := Self;
            KeyFields := FldName;
            Name := Self.Name + FieldName;
            ReadOnly := True;
            Size := 150;
            LookUpDataset := QLookUp;
            LookUpKeyFields := QLookUp.Fields
              [FormDesignAccF.QInit.fieldbyname('IndexLookUpKey').AsInteger]
              .FieldName;
            LookUpResultField := QLookUp.Fields
              [FormDesignAccF.QInit.fieldbyname('IndexLookUpName').AsInteger]
              .FieldName;
            Self.FieldDefs.Add(Name, ftString, 150, True);
          end;
        end;

        if ColumnIndexByFieldName(FormDesignAccF.DBgrid, FldName) = -1 then
          with FormDesignAccF.DBgrid.Columns.Add do
          begin
            if ALookUp then
              ButtonStyle := cbsEllipsis;
            FieldName := FldName;
            ReadOnly := false;
            Visible := false;
            case FormDesignAccF.QInit.fieldbyname('StateShow').AsInteger of
              0:
                Visible := True;
              1:
                Visible := false;
              2:
                begin
                  ReadOnly := True;
                  Visible := True;
                end;
            end;
            if (ALookUp) then
              FormDesignAccF.DBgrid.Columns.Add.FieldName := '_' + FldName;
            if APickList then
              PickList.Text := FormDesignAccF.QInit.fieldbyname('SqlTxt').AsString;
          end;
        next;
      end;
  finally
    FList.Free;
  end;
end;

procedure TFormDesignAccF.srcDetailStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := QItems.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, FormDesignAccF.Tabl4GetANew);
  DBgrid.ReadOnly := newPanel.Visible
end;

procedure TFormDesignAccF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QItems);
end;

procedure TFormDesignAccF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QItems);
end;

procedure TFormDesignAccF.FormResize(Sender: TObject);
begin
  inherited;
  if Assigned(DBgrid) then
    SetColSize(DBgrid, 1, True, IntToStr(FormType));
  if Assigned(DBgridMaster) then
    SetColSize(DBgridMaster, 1, True, IntToStr(FormType));
end;

procedure TFormDesignAccF.FormDestroy(Sender: TObject);
var
  i: Byte;
begin
  inherited;
  if Assigned(DBgrid) then
    SaveColWidth(DBgrid, IntToStr(FormType));
  if Assigned(DBgridMaster) then
    SaveColWidth(DBgridMaster, IntToStr(FormType));
  for i := 0 to QItems.FieldCount - 1 do
    if QItems.Fields[i].FieldKind in [fkLookup] then
      QItems.Fields[i].LookUpDataset.Free;
  if Assigned(QInit) then
    FreeAndNil(QInit);
  if Assigned(QItems) then
    FreeAndNil(QItems);
  if Assigned(QMaster) then
    FreeAndNil(QMaster);
end;

procedure TFormDesignAccF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBgrid);
end;

function TFormDesignAccF.GetValuInit(flName, ResultfldName: String): String;
begin
  Result := EmptyStr;
  if QInit.Locate('FldName', flName, []) then
    Result := QInit.fieldbyname(ResultfldName).AsString
end;

procedure TFormDesignAccF.MyMasterScroll(DataSet: TDataSet);
var
  i: Byte;
begin
  if QItems.Parameters.Count > 0 then
    for i := 0 to QItems.Parameters.Count - 1 do
      if DataSet.FindField(QItems.Parameters[i].Name) <> nil then
        with QItems do
        begin
          Close;
          Parameters[i].Value := DataSet.fieldbyname
            (Parameters[i].Name).AsString;
          Open;
        end;
end;

procedure TFormDesignAccF.actSortMasterExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QMaster)
end;

procedure TFormDesignAccF.actSeachMasterExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QMaster);
end;

procedure TFormDesignAccF.actSendToExcelMasterExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBgridMaster);
end;

procedure TMyQry.DoAfterInsert;
var
  i: Byte;
  Kind: Byte;
  SqlNewCode: string;
  strParam: string;
  intPos: Integer;
begin
  inherited;
  FormDesignAccF.DBgrid.SetFocus;
  for i := 0 to Self.FieldCount - 1 do
  begin
    SqlNewCode := Trim(FormDesignAccF.GetValuInit(Self.Fields[i].FieldName,
      'sqlTxt'));
    Kind := StrToIntDef(FormDesignAccF.GetValuInit(Self.Fields[i].FieldName,
      'StatePost'), 0);
    case Kind of
      0:
        Self.Fields[i].AsString := SqlNewCode;
      1:
        begin
          FormDesignAccF.Tabl4GetANew := SqlNewCode;
          if pos(':', SqlNewCode) <> 0 then
          begin
            intPos := pos(':', SqlNewCode);

            strParam := Midstr(SqlNewCode, intPos + 1,
              PosEx(' ', SqlNewCode, intPos) - intPos - 1);

            if FormDesignAccF.QMaster.FindField(strParam) <> nil then
              FormDesignAccF.Tabl4GetANew := ReplaceStr(FormDesignAccF.Tabl4GetANew,
                ':' + Trim(strParam), FormDesignAccF.QMaster.fieldbyname(strParam)
                .AsString);

          end;
          Self.Fields[i].AsInteger := GetANewCode('',FormDesignAccF.Tabl4GetANew,
            Self.Fields[i].FieldName, FormDesignAccF.QItems.Connection);
        end;
      2:
        Self.Fields[i].AsInteger := 0;
      3:
        if FormDesignAccF.QMaster.FindField(SqlNewCode) <> nil then
          Self.Fields[i].AsString := FormDesignAccF.QMaster.fieldbyname
            (SqlNewCode).AsString;
      5:
        Self.Fields[i].AsString := var_glb_CurrentDate;
    end;
    if UpperCase(Self.Fields[i].FieldName) = 'YEARID' then
      Self.Fields[i].AsInteger := APPBank.Year;
  end;
end;

procedure TMyQry.DoAfterPost;
begin
  inherited;
  if FormDesignAccF.MsgOK then
    BigMessage('ثبت شد.‏', 1);
end;

procedure TMyQry.DoBeforeCancel;
begin
  inherited;
  if MsgCancel then
    if get_response('آيا از تغييرات انصراف ميدهيد؟') <> mrYes then
      Abort;
end;

procedure TMyQry.DoBeforeDelete;
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TMyQry.DoBeforePost;
begin
  inherited;
  if Not CheckRequiredFields(Self) then
    Abort;
  if Not ValidateDatasetDates(Self) then
    Abort;
  TrimStringFields(Self);

end;

{ TMyGrid }

procedure TMyGrid.EditButtonClick;
var
  INX, i: Byte;
  FldName: ShortString;
  aDataSet: TADOQuery;
  LookUpCaption: array of String;
  Results: array of String;
  lookUpSize: array of Smallint;
  SqlTxt: String;
  SqlWhere: String;
begin
  inherited;
  INX := Self.SelectedIndex;
  if Self.Columns[INX].ButtonStyle = cbsEllipsis then
  begin
    FldName := Self.Columns[INX].FieldName;
    aDataSet := TADOQuery(FormDesignAccF.QItems.fieldbyname('_' + FldName)
      .LookUpDataset);
    SqlTxt := aDataSet.SQL.Text;
    SetLength(Results, aDataSet.FieldCount);
    SetLength(LookUpCaption, aDataSet.FieldCount);
    SetLength(lookUpSize, aDataSet.FieldCount);
    for i := 0 to aDataSet.FieldCount - 1 do
    begin
      LookUpCaption[i] := aDataSet.Fields[i].DisplayLabel;
      if aDataSet.FieldCount > 4 then
        lookUpSize[i] := 80
      else
        lookUpSize[i] := 100;
      if aDataSet.Fields[i].DisplayLabel = EmptyStr then
        lookUpSize[i] := 0;
    end;
    SqlWhere := aDataSet.Filter;
    for i := 0 to FormDesignAccF.QItems.FieldCount - 1 do
      SqlWhere := StringReplace(SqlWhere, ':' + FormDesignAccF.QItems.Fields[i]
        .FieldName, FormDesignAccF.QItems.Fields[i].AsString, [rfReplaceAll]);

    if searchCode_ADOF.SearchCode2(TADOQuery(aDataSet).Connection, 'جستجو',
      SqlTxt + ' ' + SqlWhere, LookUpCaption, Results, lookUpSize, alLeft) then
    begin
      if not(FormDesignAccF.QItems.State in dseditmodes) then
        FormDesignAccF.QItems.Edit;
      FormDesignAccF.QItems.fieldbyname(FldName).AsString :=
        Results[StrToIntDef(FormDesignAccF.GetValuInit(FldName,
        'IndexLookUpKey'), 0)];
    end;
  end;
end;

procedure TMyGrid.KeyPress(var Key: Char);
begin
  inherited;
  FormDesignAccF.gridkeyenter(Self, Key);
end;

procedure TFormDesignAccF.edtMasterCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  spdMaster.Click
end;

procedure TFormDesignAccF.spdMasterClick(Sender: TObject);
var
  i: Byte;
  LookUpCaption: array of String;
  Results: array of String;
  lookUpSize: array of Smallint;
  SqlTxt: String;
begin
  inherited;
  SqlTxt := QMaster.SQL.Text;
  SetLength(Results, QMaster.FieldCount);
  SetLength(LookUpCaption, QMaster.FieldCount);
  SetLength(lookUpSize, QMaster.FieldCount);
  for i := 0 to QMaster.FieldCount - 1 do
    if QMaster.Fields[i].Tag = 3 then
    begin
      LookUpCaption[i] := QMaster.Fields[i].DisplayLabel;
      if QMaster.FieldCount > 4 then
        lookUpSize[i] := 80
      else
        lookUpSize[i] := 100;
      if QMaster.Fields[i].DisplayLabel = EmptyStr then
        lookUpSize[i] := 0;
    end;

  if searchCode_ADOF.SearchCode2(QMaster.Connection, 'جستجو', SqlTxt,
    LookUpCaption, Results, lookUpSize, alLeft) then
  begin
    if not(FormDesignAccF.QItems.State in dseditmodes) then
      FormDesignAccF.QItems.Edit;
    QMaster.Locate(QMaster.Fields[0].FieldName, Results[0], []);
  end;
end;

procedure TFormDesignAccF.MyGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  INX: Shortint;
begin
  inherited;
  INX := ColumnIndexByFieldName(DBgrid, Sender.FieldName);
  if INX <> -1 then
    Text := DBgrid.Columns[INX].PickList[Sender.AsInteger]
end;

procedure TFormDesignAccF.MySetText(Sender: TField; const Text: String);
var
  INX: Shortint;
begin
  inherited;
  INX := ColumnIndexByFieldName(DBgrid, Sender.FieldName);
  if INX <> -1 then
    Sender.AsInteger := DBgrid.Columns[INX].PickList.IndexOf(Text)
end;

procedure TFormDesignAccF.InitReportFile(ReportName: TppReport;
  GeneralFileName: string);
var
  FileName: String;
begin
  with ReportName do
    try
      FileName := GeneralFileName;
      Template.FileName := GetReportFileWithPath(FileName);
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي مورد نظر يافت نشد.!‏');
      PreviewFormSettings.SinglePageOnly := True;
      Print;
    finally
    end; // try
end;

procedure TFormDesignAccF.actPrintExecute(Sender: TObject);
var
  i: Integer;
  TSC, TSF: TStringList;
  NewItem: TMenuItem;
begin
  popPrint.Items.Clear;
  TSC := TStringList.Create;
  TSF := TStringList.Create;
  TSF.Text := StringReplace(ReportName, ';', #13, [rfReplaceAll]);
  TSC.Text := StringReplace(CaptionName, ';', #13, [rfReplaceAll]);
  try
    if TSC.Text = EmptyStr then
      TSC.Text := 'چاپ';
    for i := 0 to TSF.Count - 1 do
      with NewItem do
      begin
        NewItem := TMenuItem.Create(popPrint);
        Name := 'mnu0' + IntToStr(i);
        Hint := TSF[i];
        Caption := TSC[i];
        OnClick := mnuExampelClick;
        popPrint.Items.Add(NewItem);
      end;

  finally
    if popPrint.Items.Count = 1 then
      mnuExampelClick(popPrint.FindComponent('mnu00'))
    else
      popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
    FreeAndNil(TSC);
    FreeAndNil(TSF);
  end;

end;

procedure TFormDesignAccF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TFormDesignAccF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Self.Caption;
end;

procedure TFormDesignAccF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TFormDesignAccF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TFormDesignAccF.mnuExampelClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TFormDesignAccF.N2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBgrid, FormType);
end;

procedure TFormDesignAccF.mnuScanClick(Sender: TObject);
begin
  inherited;
  // ScanImageF.ScanImage(Dmf.adcBSell,TblScan,QItems.FieldValues[FldScan],0)
end;

procedure TFormDesignAccF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFormDesignAccF.N1Click(Sender: TObject);
begin
  inherited;
  try
    MsgOK := false;
    GetExcelF.ShowImPortExcel(QItems);
  finally
    MsgOK := True;
  end;
end;

procedure TFormDesignAccF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QItems);
end;

procedure TFormDesignAccF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QItems);
end;

end.
