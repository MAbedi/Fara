unit MoveDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, Mask, template4, ImgList, DBClient, Provider,
  DBCtrls, SumDBGrid, StrUtils, System.ImageList, System.Actions, filter_ADO,
  FilterClass_ADO, Resource;

type
  TMoveDocF = class(Ttemplate2MDIF)
    qryDoc: TADOQuery;
    srcDoc: TDataSource;
    Panel1: TPanel;
    btnCutDoc: TBitBtn;
    actMoveDoc: TAction;
    Image2: TImage;
    Image1: TImage;
    qrySerchDoc: TADOQuery;
    qrySerchDocSecondaryDocNo: TIntegerField;
    qrySerchDocDocDate: TStringField;
    qrySerchDocDocTypeName_L1: TStringField;
    srcSearchDoc: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    btnactSearch: TBitBtn;
    qrySerchDocSerial: TIntegerField;
    btnSearch_: TBitBtn;
    actSort: TAction;
    btnSelectAll: TBitBtn;
    btnSlelectInverse: TBitBtn;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    Label5: TLabel;
    Panel4: TPanel;
    qryDocument: TADOQuery;
    qryDocumentTopicCode: TLargeintField;
    qryDocumentDetailCode: TIntegerField;
    qryDocumentCTopicCode: TIntegerField;
    qryDocumentCTopicCode2: TIntegerField;
    qryDocumentComment_L1: TStringField;
    qryDocumentCredit: TFMTBCDField;
    qryDocumentDebt: TFMTBCDField;
    srcDocument: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SumGrid1: TSumGrid;
    actFilter2: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrySerchDocMaxRow: TIntegerField;
    qrySerchDocDocNote_L1: TWideStringField;
    pnlCompany: TPanel;
    Label8: TLabel;
    cmbCompany: TComboBox;
    actFilter: TAction;
    BitBtn3: TBitBtn;
    rgSort: TRadioGroup;
    qryDocSecondaryDocNo: TIntegerField;
    qryDocDocDate: TStringField;
    qryDocDocTypeName_L1: TStringField;
    qryDocDocTopic_L1: TStringField;
    qryDocSerial: TIntegerField;
    qryDocSourceDataBase: TStringField;
    qryDocDocNote_L1: TStringField;
    qryDoc_Selected: TIntegerField;
    actDay: TAction;
    BitBtn4: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qrySerchDocAfterScroll(DataSet: TDataSet);
    procedure actMoveDocExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure qryDocumentAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actFilter2Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure cmbCompanyChange(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure rgSortClick(Sender: TObject);
    procedure btnactSearchClick(Sender: TObject);
    procedure actDayExecute(Sender: TObject);
  private
    FormType: Integer;
    CompanyCode: Integer;
    procedure ToggleCheck(B: Boolean = True);
    function MoveDoc: Boolean;
    procedure initcombo;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoveDocF: TMoveDocF;

implementation

uses GlobalPro, Dm, searchCode_ADO, mmessage, Math, Document, sort2, sort;
{$R *.dfm}

procedure TMoveDocF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4);
  SetColSize(DBGrid2, 4);
end;

procedure TMoveDocF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  // If Assigned(DocumentF)  then
  // begin
  // DocumentF.qry_DocGroups.Requery;
  // DocumentF.qry_DocGroups.Locate('Serial',qrySerchDoc.fieldbyname('Serial').asinteger,[]) ;
  // end;
end;

procedure TMoveDocF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initcombo;
end;

procedure TMoveDocF.initcombo;
begin
  cmbCompany.Clear;
  with DMf.qry_Temp do
  begin
    Close;
    SQL.Text := 'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies';
    Open;
    while not eof do
    begin
      cmbCompany.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    cmbCompany.ItemIndex := 0;
    pnlCompany.Visible := cmbCompany.Items.Count > 1;
    cmbCompanyChange(cmbCompany);
  end;
end;

procedure TMoveDocF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryDoc.FieldByName('_Selected').AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TMoveDocF.ToggleCheck;
begin
  with qryDoc do
  begin
    Edit;
    FieldByName('_Selected').AsInteger := IfThen(B, 1, 0);
    post;
  end;
end;

procedure TMoveDocF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck(qryDoc.FieldByName('_Selected').AsInteger = 0);
end;

function TMoveDocF.MoveDoc: Boolean;
var
  S, strDocNote: String;
  SourceDataBaseStatus: Boolean;
begin

  with qryDoc do
    try
      S := EmptyStr;
      strDocNote := EmptyStr;
      SourceDataBaseStatus := False;
      Filter := '_selected = 1';
      Filtered := True;
      while not eof do
      begin
        // Taghavi : asnadi ke az systemhaye digar amade check shavad
        if FieldByName('SourceDataBase').AsString <> EmptyStr then
          SourceDataBaseStatus := True;
        //
        S := S + FieldByName('Serial').AsString + ',';

        strDocNote := strDocNote + FieldByName('SecondaryDocNo').AsString +
          IfThen(FieldByName('DocNote_L1').AsString = EmptyStr, EmptyStr,
          '(' + FieldByName('DocNote_L1').AsString + ')') + ',';

        Next;
      end;

      if SourceDataBaseStatus then
        if get_response
          ('اسناد انتخاب شده از سیستم خریدوفروش ارسال شده است آیا مایل به ادغام آنها می باشید؟')
          = mrNo then
          Exit;

      SetLength(S, length(S) - 1);
      SetLength(strDocNote, length(strDocNote) - 2);
      strDocNote := Format('%s [اسناد ادغام شده با شماره های %s]',
        [IfThen(qrySerchDoc.FieldByName('DocNote_L1').AsString = EmptyStr,
        EmptyStr, qrySerchDoc.FieldByName('DocNote_L1').AsString + ' - '),
        strDocNote]);

      // if FieldByName('DocNote_L1').AsString <> EmptyStr then
      // strDocNote := Format('%s - %s',
      // [strDocNote, FieldByName('DocNote_L1').AsString]);

      // DMf.adcBsell.Connected := True;1
      // DMf.adcBsell.BeginTrans;
      if not DMf.adcAccounting.InTransaction then
        DMf.adcAccounting.BeginTrans;
      try
        // Dmf.adcAccounting.Execute
        // (Format(' Update acc.Documents set Serial = %d Where Serial In(%S) And YearID = %D'
        // + ' DELETE FROM acc.DocGroups WHERE (Serial IN (%s)) And YearID = %D'
        // + ' Update acc.DocGroups set DocNote_L1 = %s Where Serial = %d And YearID = %d',
        // [qrySerchDoc.FieldByName('Serial').AsInteger, S, APPBank.Year, S,
        // APPBank.Year, QuotedStr(strDocNote), qrySerchDoc.FieldByName('Serial')
        // .AsInteger, APPBank.Year]));
        First;

        // while not eof do
        // begin
        // if FieldByName('SourceDataBase').AsString <> EmptyStr then
        // DMf.adcBsell.Execute
        // (Format('UPDATE %s SET DocNo = %d , DocDate = %s WHERE (DocNo = %d) '
        // + 'AND (DocDate = %s)', [FieldByName('SourceDataBase').AsString,
        // qrySerchDoc.FieldByName('SecondaryDocNo').AsInteger,
        // QuotedStr(qrySerchDoc.FieldByName('DocDate').AsString),
        // FieldByName('SecondaryDocNo').AsInteger,
        // QuotedStr(FieldByName('DocDate').AsString)]));
        // Next;
        // end;

        DMf.adcAccounting.Execute
          (Format(' Update acc.Documents set Serial = %d, Row = Row + %d ' +
          ' Where Serial In(%S) And YearID = %d AND CompanyCode = %d',
          [qrySerchDoc.FieldByName('Serial').AsInteger,
          qrySerchDoc.FieldByName('MaxRow').AsInteger, S, APPBank.Year,
          CompanyCode]));

        DMf.adcAccounting.Execute
          (Format('UPDATE acc.DocGroups SET SourceDataBase = NULL ' +
          ' WHERE (Serial IN (%s)) And YearID = %d AND CompanyCode = %d' +
          ' DELETE FROM acc.DocGroups WHERE (Serial IN (%s)) And YearID = %d AND CompanyCode = %d',
          [S, APPBank.Year, CompanyCode, S, APPBank.Year, CompanyCode]));

        DMf.adcAccounting.Execute
          (Format(' Update acc.DocGroups set DocNote_L1 = %s ' +
          ' Where Serial = %d And YearID = %d AND CompanyCode = %d',
          [QuotedStr(strDocNote), qrySerchDoc.FieldByName('Serial').AsInteger,
          APPBank.Year, CompanyCode]));

        if DMf.adcAccounting.InTransaction then
          DMf.adcAccounting.CommitTrans;
        // DMf.adcBsell.CommitTrans;
        BigMessage('انجام شد', 1);

      except
        on E: Exception do
        begin
          add2log(E.Message);
          if DMf.adcAccounting.InTransaction then
            DMf.adcAccounting.RollbackTrans;
          // DMf.adcBsell.RollbackTrans;
          Warn('اشكال در انتقال' + #13#10 + E.Message);
        end;

      end;
    finally
      Filtered := False;
      qryDoc.Close;
      qryDoc.Open;
    end;
end;

procedure TMoveDocF.qrySerchDocAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // with qryDoc do
  // begin
  // Close;
  // Parameters.ParamByName('sn').Value := DataSet.FieldByName('Serial')
  // .AsInteger;
  // Parameters.ParamByName('YearID').Value := qrySerchDoc.Parameters.ParamValues
  // ['YearID'];
  // Open;
  // end;

  UpdateList
end;

procedure TMoveDocF.rgSortClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TMoveDocF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(self, myParams) do
    try
      AddItem(DMf.adcAccounting, 'type', 'انواع سند', '', ftUnknown, dvDefaults,
        'true', '', ciCheck, strLookUpDocType, '');
      AddItem(DMf.adcAccounting, 'DocDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', Format(strMaxMinDocDate, [APPBank.Year]));

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end
    finally
      Free
    end; // try

end;

procedure TMoveDocF.actMoveDocExecute(Sender: TObject);
begin
  inherited;
  MoveDoc;
end;

procedure TMoveDocF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryDoc do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      ToggleCheck;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TMoveDocF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qryDoc do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      ToggleCheck(FieldByName('_Selected').AsInteger = 0);
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TMoveDocF.qryDocumentAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
end;

procedure TMoveDocF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDocSecondaryDocNo);
end;

procedure TMoveDocF.actDayExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('آیا برای ادغام اسناد به صورت روزانه و اتومات مطمئن  هستید در صورت انجام برگشت پذیر نیست',
    clRed) = mrNo then
    Exit;
  with DMf.qryTmpTmp do
  begin
    SQL.Text := '';
    SQL.Add('DECLARE @YearID int = ' + APPBank.Year.ToString);
    SQL.Add('UPDATE Acc.Documents');
    SQL.Add('SET Serial = DocDay.Serial');
    SQL.Add('FROM Acc.DocGroups INNER JOIN');
    SQL.Add('Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial AND Acc.DocGroups.YearID = Acc.Documents.YearID AND');
    SQL.Add('Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('(SELECT YearID, CompanyCode, DocDate, MIN(Serial) AS Serial');
    SQL.Add('FROM Acc.DocGroups AS DocGroups_1');
    SQL.Add('GROUP BY YearID,CompanyCode,DocDate, YearID');
    SQL.Add('HAVING (YearID = @YearID)) AS DocDay ON Acc.DocGroups.DocDate = DocDay.DocDate AND');
    SQL.Add('Acc.DocGroups.YearID = DocDay.YearID AND Acc.DocGroups.CompanyCode =DocDay.CompanyCode');
    SQL.Add('WHERE (Acc.Documents.YearID = @YearID) AND (Acc.Documents.Serial <> DocDay.Serial)');
    SQL.Add('');
    SQL.Add('DELETE FROM Acc.DocGroups');
    SQL.Add('FROM Acc.DocGroups LEFT OUTER JOIN');
    SQL.Add('Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial AND Acc.DocGroups.YearID =');
    SQL.Add('Acc.Documents.YearID AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode');
    SQL.Add('WHERE (Acc.DocGroups.YearID = @YearID) AND (Acc.Documents.Serial IS NULL)');

    Warn(ExecSQL.ToString + ' آرتیکل انجام شد ',mtInformation);
  end;

end;

procedure TMoveDocF.actFilter2Execute(Sender: TObject);
begin
  inherited;
  with qryDoc do
  begin
    Filter := '_selected = 1';
    Filtered := not Filtered;
  end;

end;

procedure TMoveDocF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDoc);
end;

procedure TMoveDocF.btnactSearchClick(Sender: TObject);
var
  results: array [0 .. 10] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, 'جستجوي سند',
    'SELECT  acc.DocGroups.Serial, acc.DocGroups.SecondaryDocNo,acc.DocGroups.PrimaryDocNo, '
    + ' acc.DocGroups.DocDate,acc.DocGroups.DocTopic_L1,' +
    ' acc.DocTypes.DocTypeName_L1,' +
    ' case when ( status=1 ) then ''پيش نويس''' +
    '      when ( status=2 ) then ''موقت''' +
    '      when ( status=2 ) then ''قطعي''' +
    '      when ( status=2 ) then ''دائم''  end as statusName,' +
    ' acc.DocGroups.CompanyCode,acc.Companies.CompanyName_L1' +
    ' FROM acc.DocGroups INNER JOIN acc.Companies ON acc.DocGroups.CompanyCode = acc.Companies.CompanyCode '
    + ' INNER JOIN ' +
    ' acc.DocTypes ON acc.DocGroups.DocTypeCode = acc.DocTypes.DocTypeCode ' +
    ' where  acc.DocGroups.Status in (0,1) And  acc.DocGroups.YearID = ' +
    IntToStr(APPBank.Year) + Format(' AND (Acc.DocGroups.CompanyCode = %d )',
    [CompanyCode]), ['', 'شماره فرعي', 'شماره سند', 'تاريخ', 'شرح سند',
    'نوع سند', 'وضعيت سند', 'كد شركت', 'نام شركت'], results,
    [0, 50, 50, 50, 250, 30, 50, 50, 150], alLeft) then
    if (Sender as TBitBtn).Name = btnactSearch.Name then
      qrySerchDoc.Locate('Serial', results[0], [])
    else
      qryDoc.Locate('Serial', results[0], []);
end;

procedure TMoveDocF.cmbCompanyChange(Sender: TObject);
begin
  inherited;
  CompanyCode :=
    Integer(TObject(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  qryDocument.Parameters.ParamByName('CompanyCode').Value := CompanyCode;

  with qrySerchDoc do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('CompanyCode').Value := CompanyCode;
    Open;
  end;
  if FormType <> 0 then
    qrySerchDoc.Locate('Serial', FormType, []);
  qryDocument.Close;
  qryDocument.Parameters.ParamByName('YearID').Value :=
    qrySerchDoc.Parameters.ParamValues['YearID'];
  qryDocument.Open;
end;

procedure TMoveDocF.UpdateList;
var
  docType: string;
begin
  with qryDoc do
  begin
    Active := False;
    SQL.Text := 'SELECT acc.DocGroups.Serial,acc.DocGroups.SecondaryDocNo';
    SQL.Add(', acc.DocGroups.DocDate, acc.DocTypes.DocTypeName_L1, acc.DocGroups.DocTopic_L1,');
    SQL.Add('DocNote_L1, Acc.DocGroups.SourceDataBase, Fitful.DetailCode AS _Selected');
    SQL.Add('FROM acc.DocGroups INNER JOIN');
    SQL.Add('acc.DocTypes ON acc.DocGroups.DocTypeCode =acc. DocTypes.DocTypeCode');
    SQL.Add('CROSS JOIN Fitful');
    SQL.Add('where (acc.DocGroups.Serial <> :SN)');
    SQL.Add('AND(acc.DocGroups.YearID = :YearID)');
    SQL.Add('AND(acc.DocGroups.Status in (0,1))');
    SQL.Add('AND(Acc.DocGroups.CompanyCode = :CompanyCode )');

    Parameters.ParamByName('sn').Value := qrySerchDoc.FieldByName('Serial')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := qrySerchDoc.Parameters.ParamValues
      ['YearID'];
    Parameters.ParamByName('CompanyCode').Value := CompanyCode;

    if myParams.FindParam('DocDate') <> nil then
    begin
      docType := GetcFrom(myParams.ParamValues['type'], ftString);
      SQL.Add('AND(Acc.DocGroups.DocDate BETWEEN :DocDateFrom AND :DocDateTo)');
      SQL.Add('AND(Acc.DocGroups.DocTypeCode in (' + docType + '))');
      Parameters.ParamByName('DocDateFrom').Value :=
        GetcFrom(myParams.ParamValues['DocDate'], ftDate);
      Parameters.ParamByName('DocDateTo').Value :=
        GetcTo(myParams.ParamValues['DocDate'], ftDate);
    end;
    case rgSort.ItemIndex of
      0:
        SQL.Add('ORDER BY acc.DocGroups.Serial');
      1:
        SQL.Add('ORDER BY acc.DocGroups.DocDate');
      2:
        SQL.Add('ORDER BY acc.DocGroups.SecondaryDocNo');
    end;

    Active := True;
  end; // with
end;

end.
