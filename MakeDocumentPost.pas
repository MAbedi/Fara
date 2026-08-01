unit MakeDocumentPost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TPostType = (TDoc, Txml, TxmlDetails);

  TMakeDocumentPostF = class(TForm)
    Panel1: TPanel;
    ImgTemplate: TImage;
    lblCaption: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qrySelect: TADOQuery;
    srcSelect: TDataSource;
    StatusBar1: TStatusBar;
    rgKindPost: TRadioGroup;
    DBGrid1: TCedarDbgrid;
    btnXml: TBitBtn;
    SaveDialog1: TSaveDialog;
    btnXmlDeti: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure qrySelectAfterOpen(DataSet: TDataSet);
    procedure rgKindPostClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnXmlClick(Sender: TObject);
    procedure btnXmlDetiClick(Sender: TObject);
  private
    WHERESQL, FromSQL: string;
    MasterFormName: string;
    procedure Calc(APost: TPostType);
    procedure CalcOn(APost: TPostType);
    { Private declarations }
  public
    procedure ShowPost(WHERE_SQL, From_SQL, Master_FormName: string);
    { Public declarations }
  end;

var
  MakeDocumentPostF: TMakeDocumentPostF;

implementation

uses DM, GlobalPro, MakeDocumentCheck, MakeDocumentCoffer, MakeDocument,
  GeneralDM, AccFunctions, XmlMapper, MMESSAGE;

{$R *.dfm}

procedure TMakeDocumentPostF.ShowPost(WHERE_SQL, From_SQL,
  Master_FormName: string);
begin
  MakeDocumentPostF := TMakeDocumentPostF.Create(Application);
  with MakeDocumentPostF do
  begin
    try
      WHERESQL := WHERE_SQL;
      FromSQL := From_SQL;
      MasterFormName := Master_FormName;
      rgKindPost.Items.Clear;
      rgKindPost.Items.Add('شماره فرم');
      rgKindPost.Items.Add('تاریخ فرم');
      // if MasterFormName = 'MakeDocumentF' then
      begin
        rgKindPost.Items.Add('خاص');
        rgKindPost.Items.Add('هفتگی');
      end;
      // if MasterFormName = 'MakeDocumentCofferF' then
      begin
        rgKindPost.Items.Add('تاریخ کمکی');
      end;

      myParams.Clear;
      rgKindPost.ItemIndex := ReadConfig('', MasterFormName + '_rgKindPost',
        '0').ToInteger;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TMakeDocumentPostF.BitBtn3Click(Sender: TObject);
begin
  try
    // DMf.adcBSell.BeginTrans;
    // DMf.adcAccounting.BeginTrans;

    Calc(TDoc);

    // if DMf.adcBSell.InTransaction then
    // DMf.adcBSell.CommitTrans;
    // if DMf.adcAccounting.InTransaction then
    // DMf.adcAccounting.CommitTrans;

  except
    on E: Exception do
    begin
      if DMf.adcBSell.InTransaction then
        DMf.adcBSell.RollbackTrans;
      if DMf.adcAccounting.InTransaction then
        DMf.adcAccounting.RollbackTrans;
      Warn2(E.Message);
    end;
  end;

end;

procedure TMakeDocumentPostF.btnXmlClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    BigMessage('در حال ساخت فایل...', 0);
    Calc(Txml);
    CloseMessage;
  end;
end;

procedure TMakeDocumentPostF.btnXmlDetiClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    BigMessage('در حال ساخت فایل با جزئیات...', 0);
    Calc(TxmlDetails);
    CloseMessage;
  end;

end;

procedure TMakeDocumentPostF.Calc(APost: TPostType);
var
  DoWhile: Boolean;
begin
  DoWhile := True;
  With qrySelect do
    try
      DisableControls;
      First;
      while (not Eof and DoWhile) do
      begin
        Application.ProcessMessages;
        CalcOn(APost);
        If LastKeyPressed = VK_ESCAPE then
          if get_response('عمليات متوقف شود؟') = mrYes then
          begin
            DoWhile := False;
            LastKeyPressed := 0;
          end;
        LastKeyPressed := 0;
        Next;
        Application.ProcessMessages;
      end;
    finally
      EnableControls;
      Warn2('صادر شد ');
      if MasterFormName = 'MakeDocumentCheckF' then
        With MakeDocumentCheckF do
        begin
          FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCheck,
            'Acc.DocGroups', 0);
          actShowDoc.Execute;
        end;
      if MasterFormName = 'MakeDocumentCofferF' then
        With MakeDocumentCofferF do
        begin
          FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPCoffer,
            'Acc.DocGroups', 0);
          actShowDoc.Execute;

        end;
      if MasterFormName = 'MakeDocumentF' then
        With MakeDocumentF do
        begin
          FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection, ExtIPRecipt,
            'Acc.DocGroups', 0);
          actShowDoc.Execute;
        end;
    end;

end;

procedure TMakeDocumentPostF.CalcOn(APost: TPostType);
var
  strFilter, FileName, s: string;
begin
  if MasterFormName = 'MakeDocumentCheckF' then
    With MakeDocumentCheckF do
    begin
      with qryItems do
      begin
        // Active := False;
        Filtered := False;
        case rgKindPost.ItemIndex of
          0:
            begin
              strFilter := ' FormNumber = %d ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormNumber').AsInteger]);
              Filter := strFilter;

              // Parameters.ParamByName('FormNumberFrom').Value :=
              // qrySelect.FieldByName('FormNumber').AsInteger;
              // Parameters.ParamByName('FormNumberTo').Value :=
              // qrySelect.FieldByName('FormNumber').AsInteger;
            end;
          1:
            begin
              strFilter := ' FormDate = ''%s'' ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormDate').AsString]);

              Filter := strFilter;
              // Parameters.ParamByName('FormDateFrom').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
              // Parameters.ParamByName('FormDateTo').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
            end;
        end;
        // Active := True;
        Filtered := True;
        mskDocDate.Text := qrySelect.FieldByName('FormDate').AsString;
      end;
      // actCheckDocument.Execute;
      actMakeDoc.Enabled := True;
      actMakeDoc.Execute;
      begin
        // FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection,
        // 'Acc.DocGroups', 0);
        GetSecondaryDocNo(ExtIPCheck, cmbCompany, MskDocNo, YearID_);
        GetSerial(ExtIPCheck, cmbCompany, MskSerial, YearID_);
      end;

    end;
  if MasterFormName = 'MakeDocumentCofferF' then
    With MakeDocumentCofferF do
    begin
      with qryItems do
      begin
        // Active := False;
        Filtered := False;
        case rgKindPost.ItemIndex of
          0:
            begin
              strFilter := ' FormNumber = %d ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormNumber').AsInteger]);

              Filter := strFilter;

              // Parameters.ParamByName('FormNumberFrom').Value :=
              // qrySelect.FieldByName('FormNumber').AsInteger;
              // Parameters.ParamByName('FormNumberTo').Value :=
              // qrySelect.FieldByName('FormNumber').AsInteger;
            end;
          1:
            begin
              mskDocDate.Text := qrySelect.FieldByName('FormDate').AsString;

              strFilter := ' FormDate = ''%s'' ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormDate').AsString]);
              Filter := strFilter;

              // Parameters.ParamByName('FormDateFrom').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
              // Parameters.ParamByName('FormDateTo').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
            end;

          4:
            begin
              mskDocDate.Text := qrySelect.FieldByName('FormDate').AsString;
              strFilter := ' AidInfoDate = ''%s'' ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormDate').AsString]);
              Filter := strFilter;
            end;

        end;
        // Active := True;
        Filtered := True;
        mskDocDate.Text := qrySelect.FieldByName('FormDate').AsString;
      end;
      // actCheckDocument.Execute;
      actMakeDoc.Enabled := True;
      actMakeDoc.Execute;
      begin
        // FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection,
        // 'Acc.DocGroups', 0);
        GetSecondaryDocNo(ExtIPCoffer, cmbCompany, MskDocNo, YearID_);
        GetSerial(ExtIPCoffer, cmbCompany, MskSerial, YearID_);
      end;
    end;

  if MasterFormName = 'MakeDocumentF' then
    With MakeDocumentF do
    begin
      with qryItems do
      begin
        case rgKindPost.ItemIndex of
          0:
            begin
              // Active := False;
              Filtered := False;
              strFilter := ' ReciptNumber = %d ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormNumber').AsInteger]);
              Filter := strFilter;

              // Parameters.ParamByName('NumberFrom').Value :=
              // qrySelect.FieldByName('FormNumber').AsInteger;
              // Parameters.ParamByName('NumberTo').Value :=
              // qrySelect.FieldByName('FormNumber').AsInteger;
            end;

          1:
            begin
              // Active := False;
              Filtered := False;
              strFilter := ' ReciptDate = ''%s'' ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormDate').AsString]);
              Filter := strFilter;

              // Parameters.ParamByName('DateFrom').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
              // Parameters.ParamByName('DateTo').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
            end;
          3:
            begin
              // Active := False;
              Filtered := False;
              strFilter := ' ReciptDate >= ''%s'' and  ReciptDate <= ''%s''  ';
              strFilter := Format(strFilter,
                [qrySelect.FieldByName('FormDate').AsString,
                qrySelect.FieldByName('ToDate').AsString]);
              Filter := strFilter;

              // Parameters.ParamByName('DateFrom').Value :=
              // qrySelect.FieldByName('FormDate').AsString;
              // Parameters.ParamByName('DateTo').Value :=
              // qrySelect.FieldByName('ToDate').AsString;
            end;

        end;
        // Active := True;
        Filtered := True;
        if rgKindPost.ItemIndex = 2 then
        begin
          strFilter := 'AidDate=%s AND TruckNumber=%s';
          strFilter := Format(strFilter,
            [QuotedStr(qrySelect.FieldByName('FormDate').AsString),
            QuotedStr(qrySelect.FieldByName('FormNumber').AsString)]);
          strFilter := Filter + ' and ' + strFilter;
          Filter := strFilter;

          Filtered := True;
        end;

        if rgKindPost.ItemIndex = 3 then
          mskDocDate.Text := qrySelect.FieldByName('ToDate').AsString
        else
          mskDocDate.Text := qrySelect.FieldByName('FormDate').AsString;
      end;
      // actCheckDocument.Execute;
      case APost of
        TDoc:
          begin
            actMakeDoc.Enabled := True;
            actMakeDoc.Execute;
          end;
      else
        begin
          // With qryItems do
          // try
          // DisableControls;
          // First;
          // while not Eof do
          // begin
          // Edit;
          // qryItems_Dec.AsWideString :=
          // UTF8String(qryItemsComment2.AsString);
          // Post;
          // Next
          // end;
          // finally
          // EnableControls;
          // end;

          XmlMapperF.ShowForm(qryItems, MskDocNo.Text, mskDocDate.Text,
            MskSerial.Text, MskDocTopic.Text, False);
          XmlMapperF.OpenQry;
          FileName := SaveDialog1.FileName;
          s := StringReplace(mskDocDate.Text, '/', '', [rfReplaceAll]);
          FileName := StringReplace(FileName, '.xml', s + '.xml',
            [rfReplaceAll]);
          if APost = Txml then
            XmlMapperF.MakeXML(FileName)
          else
            XmlMapperF.MakeXMLDetails(FileName);
          XmlMapperF.Free;
        end;

      end;
      begin
        // FreeReservedCodesAcc(DMf.qryAccOldAndNew.Connection,
        // 'Acc.DocGroups', 0);
        GetSecondaryDocNo(ExtIPRecipt, cmbCompany, MskDocNo, YearID_);
        GetSerial(ExtIPRecipt, cmbCompany, MskSerial, YearID_);
      end;

    end;

end;

procedure TMakeDocumentPostF.FormDestroy(Sender: TObject);
begin
  SaveConfig('', MasterFormName + '_rgKindPost', rgKindPost.ItemIndex.ToString);
end;

procedure TMakeDocumentPostF.qrySelectAfterOpen(DataSet: TDataSet);
begin
  StatusBar1.Panels[1].Text := 'تعداد:' + IntToStr(DataSet.RecordCount)
end;

procedure TMakeDocumentPostF.rgKindPostClick(Sender: TObject);
var
  TblName, AidDate, Date: string;
begin
  TblName := 'Form';
  AidDate := 'AidInfoDate';
  Date := 'FormDate';
  if MasterFormName = 'MakeDocumentF' then
  begin
    TblName := 'Recipt';
    AidDate := 'AidDate';
    Date := 'ReciptDate';
  end;

  With qrySelect do
  begin
    Active := False;
    case rgKindPost.ItemIndex of
      0:
        SQL.Text := 'SELECT DISTINCT ' + TblName + 'Number AS FormNumber,' +
          TblName + 'Date AS FormDate,'''' AS ToDate';
      1:
        SQL.Text := 'SELECT DISTINCT ' + TblName +
          'Date AS FormDate,'''' AS ToDate';

      2:
        SQL.Text := 'SELECT DISTINCT TruckNumber AS FormNumber, ' + TblName +
          's.' + AidDate + ' AS FormDate,'''' AS ToDate';
      3:
        SQL.Text := 'SELECT  DISTINCT MIN(' + Date + ') AS FormDate,MAX(' + Date
          + ') AS ToDate';

      4:
        SQL.Text := 'SELECT DISTINCT ' + TblName + 's.' + AidDate +
          ' AS FormDate,'''' AS ToDate';

    end;
    SQL.Add('FROM ' + TblName + 's');
    SQL.Add(FromSQL);
    if rgKindPost.ItemIndex = 3 then
      SQL.Add('INNER JOIN Tsh.Calendar on ' + Date +
        ' = Tsh.Calendar.CalendarDate');
    SQL.Add(WHERESQL);
    SQL.Add('AND (DocNo = 0)');
    if rgKindPost.ItemIndex = 2 then
      SQL.Add('AND (LEN(TruckNumber) > 0)');
    if rgKindPost.ItemIndex = 3 then
      SQL.Add('GROUP BY Tsh.Calendar.WeekInYear');

    case rgKindPost.ItemIndex of
      0:
        SQL.Add('order BY ' + TblName + 'Number');
      1:
        SQL.Add('order BY ' + TblName + 'Date');

      2:
        SQL.Add('order BY TruckNumber');

    end;

    SQL.Text := StringReplace(SQL.Text, 'Aid_MakeDocuments_Recipt.ID',
      'Recipts.ID', [rfReplaceAll]);

    Active := True;
    FieldByName('FormDate').DisplayLabel := 'تاریخ فرم';
    FieldByName('ToDate').DisplayLabel := 'تا تاریخ فرم';
    Fields[0].DisplayLabel := rgKindPost.Items[rgKindPost.ItemIndex];
    DBGrid1.setSizeColDBGrid;
    // setSizeColDBGrid(DBGrid1);
  end;
end;

end.
