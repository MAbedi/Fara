unit FormDesign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, Mask, DBCtrls, ppBands,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, Menus, ppParameter;

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

  TFormDesignF = class(Ttemplate2MDIF)
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
  private
    QInit: TADOQuery;
    QItems: TMyQry;
    QMaster: TADOQuery;
    DBgrid: TMyGrid;
    DBgridMaster: TDBGrid;
    FormType: Integer;
    ReportName: String;
    CaptionName: String;
    TblScan: ShortString;
    FldScan: ShortString;
    function GetValuInit(flName, ResultfldName: String): String;
    Procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    Procedure MyMasterScroll(DataSet: TDataSet);
    procedure MyGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure MySetText(Sender: TField; const Text: String);
    procedure InitReportFile(ReportName: TppReport; GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDesignF: TFormDesignF;

implementation

uses Dm, GlobalPro, searchCode_ADO, search2,
  sort2, sndkey32, mmessage, DBGrid2Print, GetExcel;

{$R *.dfm}

procedure TFormDesignF.gridkeyenter(Sender: TObject; var Key: Char);
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

procedure TFormDesignF.FormCreate(Sender: TObject);
begin
  inherited;
  try
    FormType := var_glb_gParam;
    InitForm;
  except
    Warn('»—Ê“ —”«‰Ì ê“«—‘«  «“ ›«Ì· —« «Ã—« ﬂ‰Ìœ.˛' + #13#10 + ' ›—„ ' +
      IntToStr(FormType) + 'ÊÃÊœ ‰œ«—œ.˛');
  end;
end;

procedure TFormDesignF.InitForm;
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

  // --------------------------------------Sql Master------------------------------
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
                  begin
                    ReadOnly := True;
                    Visible := True;
                  end;
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
    FormDesignF.QInit.First;
    with FormDesignF.QInit do
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
          Self.fieldbyname(FldName).OnGetText := FormDesignF.MyGetText;
          Self.fieldbyname(FldName).OnSetText := FormDesignF.MySetText;
        end;
        If fieldbyname('ShowSearch').AsInteger <> 0 then
          Self.fieldbyname(FldName).Tag := 3;
        case FormDesignF.QInit.fieldbyname('align').AsInteger of
          0:
            Self.fieldbyname(FldName).Alignment := taRightJustify;
          1:
            Self.fieldbyname(FldName).Alignment := taLeftJustify;
          2:
            Self.fieldbyname(FldName).Alignment := taCenter;
        end;

        If ALookUp then
        begin
          QLookUp := TADOQuery.Create(FormDesignF);
          with QLookUp do
          begin
            Close;
            if FormDesignF.QInit.fieldbyname('LookUpConnection').AsString <>
              EmptyStr then
              CnLookUp := TADOConnection
                (Dmf.FindComponent(FormDesignF.QInit.fieldbyname
                ('ConnectionName').AsString))
            else
              CnLookUp := Self.Connection;

            Connection := CnLookUp;
            SQL.Text := FormDesignF.QInit.fieldbyname('SqlTxt').AsString;
            Filter := FormDesignF.QInit.fieldbyname('WhereSearch').AsString;
            Open;
            FList.Text :=
              StringReplace(FormDesignF.QInit.fieldbyname('LookUpCaption')
              .AsString, ',', #13, [rfReplaceAll]);
            for i := 0 to FList.Count - 1 do
              QLookUp.Fields[i].DisplayLabel := FList[i];
          end;
          with TStringField.Create(Self) do
          begin
            FieldName := '_' + FldName;
            DisplayLabel := QLookUp.Fields
              [FormDesignF.QInit.fieldbyname('IndexLookUpName').AsInteger]
              .DisplayLabel;
            FieldKind := fkLookup;
            DataSet := Self;
            KeyFields := FldName;
            Name := Self.Name + FieldName;
            ReadOnly := True;
            LookUpDataset := QLookUp;
            LookUpKeyFields := QLookUp.Fields
              [FormDesignF.QInit.fieldbyname('IndexLookUpKey').AsInteger]
              .FieldName;
            LookUpResultField := QLookUp.Fields
              [FormDesignF.QInit.fieldbyname('IndexLookUpName').AsInteger]
              .FieldName;
            Self.FieldDefs.Add(Name, ftString, 150, True);
          end;
        end;

        if ColumnIndexByFieldName(FormDesignF.DBgrid, FldName) = -1 then
          with FormDesignF.DBgrid.Columns.Add do
          begin
            if ALookUp then
              ButtonStyle := cbsEllipsis;
            FieldName := FldName;
            ReadOnly := false;
            Visible := false;
            case FormDesignF.QInit.fieldbyname('StateShow').AsInteger of
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
              FormDesignF.DBgrid.Columns.Add.FieldName := '_' + FldName;
            if APickList then
              PickList.Text := FormDesignF.QInit.fieldbyname('SqlTxt').AsString;
          end;
        next;
      end;
  finally
    FList.Free;
  end;
end;

procedure TFormDesignF.srcDetailStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := QItems.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);
  DBgrid.ReadOnly := newPanel.Visible
end;

procedure TFormDesignF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QItems);
end;

procedure TFormDesignF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QItems);
end;

procedure TFormDesignF.FormResize(Sender: TObject);
begin
  inherited;
  if Assigned(DBgrid) then
    SetColSize(DBgrid, 1, True, IntToStr(FormType));
  if Assigned(DBgridMaster) then
    SetColSize(DBgridMaster, 1, True, IntToStr(FormType));
end;

procedure TFormDesignF.FormDestroy(Sender: TObject);
var
  i: Integer;
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

procedure TFormDesignF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBgrid);
end;

function TFormDesignF.GetValuInit;
begin
  Result := EmptyStr;
  if QInit.Locate('FldName', flName, []) then
    Result := QInit.fieldbyname(ResultfldName).AsString
end;

procedure TFormDesignF.MyMasterScroll(DataSet: TDataSet);
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

procedure TFormDesignF.actSortMasterExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QMaster)
end;

procedure TFormDesignF.actSeachMasterExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QMaster);
end;

procedure TFormDesignF.actSendToExcelMasterExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBgridMaster);
end;

procedure TMyQry.DoAfterInsert;
var
  i: Byte;
  Kind: Byte;
  SqlNewCode: String;
begin
  inherited;
  FormDesignF.DBgrid.SetFocus;
  for i := 0 to Self.FieldCount - 1 do
  begin
    SqlNewCode := FormDesignF.GetValuInit(Self.Fields[i].FieldName, 'sqlTxt');
    Kind := StrToIntDef(FormDesignF.GetValuInit(Self.Fields[i].FieldName,
      'StatePost'), 0);
    case Kind of
      0:
        Self.Fields[i].AsString := SqlNewCode;
      1:
        Self.Fields[i].AsInteger := GetANewCode('',SqlNewCode,
          Self.Fields[i].FieldName, FormDesignF.QItems.Connection);
      2:
        Self.Fields[i].AsInteger := 0;
      3:
        Self.Fields[i].AsString := FormDesignF.QMaster.fieldbyname
          (SqlNewCode).AsString;
    end;
  end;
end;

procedure TMyQry.DoAfterPost;
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TMyQry.DoBeforeCancel;
begin
  inherited;
  if MsgCancel then
    if get_response('¬Ì« «“  €ÌÌ—«  «‰’—«› „ÌœÂÌœø') <> mrYes then
      Abort;
end;

procedure TMyQry.DoBeforeDelete;
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
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
    aDataSet := TADOQuery(FormDesignF.QItems.fieldbyname('_' + FldName)
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
    for i := 0 to FormDesignF.QItems.FieldCount - 1 do
      SqlWhere := StringReplace(SqlWhere, ':' + FormDesignF.QItems.Fields[i]
        .FieldName, FormDesignF.QItems.Fields[i].AsString, [rfReplaceAll]);

    if searchCode_ADOF.SearchCode2(TADOQuery(aDataSet).Connection, 'Ã” ÃÊ',
      SqlTxt + ' ' + SqlWhere, LookUpCaption, Results, lookUpSize, alLeft) then
    begin
      if not(FormDesignF.QItems.State in dseditmodes) then
        FormDesignF.QItems.Edit;
      FormDesignF.QItems.fieldbyname(FldName).AsString :=
        Results[StrToIntDef(FormDesignF.GetValuInit(FldName,
        'IndexLookUpKey'), 0)];
    end;
  end;
end;

procedure TMyGrid.KeyPress(var Key: Char);
begin
  inherited;
  FormDesignF.gridkeyenter(Self, Key);
end;

procedure TFormDesignF.edtMasterCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  spdMaster.Click
end;

procedure TFormDesignF.spdMasterClick(Sender: TObject);
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

  if searchCode_ADOF.SearchCode2(QMaster.Connection, 'Ã” ÃÊ', SqlTxt,
    LookUpCaption, Results, lookUpSize, alLeft) then
  begin
    if not(FormDesignF.QItems.State in dseditmodes) then
      FormDesignF.QItems.Edit;
    QMaster.Locate(QMaster.Fields[0].FieldName, Results[0], []);
  end;
end;

procedure TFormDesignF.MyGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  INX: Shortint;
begin
  inherited;
  INX := ColumnIndexByFieldName(DBgrid, Sender.FieldName);
  if INX <> -1 then
    Text := DBgrid.Columns[INX].PickList[Sender.AsInteger]
end;

procedure TFormDesignF.MySetText(Sender: TField; const Text: String);
var
  INX: Shortint;
begin
  inherited;
  INX := ColumnIndexByFieldName(DBgrid, Sender.FieldName);
  if INX <> -1 then
    Sender.AsInteger := DBgrid.Columns[INX].PickList.IndexOf(Text)
end;

procedure TFormDesignF.InitReportFile(ReportName: TppReport;
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
        Warn('›«Ì· ç«ÅÌ „Ê—œ ‰Ÿ— Ì«›  ‰‘œ.!˛');
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
end;

procedure TFormDesignF.actPrintExecute(Sender: TObject);
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
      TSC.Text := 'ç«Å';
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

procedure TFormDesignF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TFormDesignF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Self.Caption;
end;

procedure TFormDesignF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TFormDesignF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TFormDesignF.mnuExampelClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TFormDesignF.N2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBgrid, FormType);
end;

procedure TFormDesignF.mnuScanClick(Sender: TObject);
begin
  inherited;
  // ScanImageF.ScanImage(Dmf.adcBSell,TblScan,QItems.FieldValues[FldScan],0)
end;

procedure TFormDesignF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFormDesignF.N1Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(QItems);
end;

procedure TFormDesignF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QItems);
end;

procedure TFormDesignF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QItems);
end;

end.
