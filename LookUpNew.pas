unit LookUpNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, DB, ADODB, zAPIBalloon,
  Grids, Vcl.DBGrids, DBCtrls, Mask, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TLookUpNewF = class(Ttemplate2MDIF)
    qry_Lookup: TADOQuery;
    qry_LookupLookUpID: TIntegerField;
    qry_LookupCode: TSmallintField;
    qry_LookupName: TStringField;
    qry_LookupKind: TWordField;
    qry_Lookupacc_CTopicCode3: TStringField;
    qry_Lookupacc_CTopicCode: TStringField;
    qry_Lookupacc_DetailCode: TStringField;
    qry_Lookup_MoeenName: TStringField;
    qry_Lookup_CTopicName2: TStringField;
    qry_Lookup_CTopicName: TStringField;
    qry_Lookup_DetailName: TStringField;
    qry_LookupStartCode: TIntegerField;
    qry_LookupFinishCode: TIntegerField;
    qry_LookupAmount1: TFloatField;
    qry_LookupAmount2: TFloatField;
    qry_LookupAmount3: TFloatField;
    src_LookUp: TDataSource;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    zbal: TzAPIBalloon;
    ActSort: TAction;
    ActSearch: TAction;
    actSend2Excel: TAction;
    actPrintVijeh: TAction;
    actPrint: TAction;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBPipeline1: TppDBPipeline;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtName: TDBEdit;
    edtLookUpID: TDBEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    EdtAllKeyDown: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    grpStart_FinishCode: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    EdtStartCode: TDBEdit;
    EdtFinishCode: TDBEdit;
    edtCode: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qryMasterLookUpID: TIntegerField;
    qryMasterName: TStringField;
    qryMasterStartCode: TIntegerField;
    qryMasterFinishCode: TIntegerField;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    qry_LookupChangeState: TIntegerField;
    DBText5: TDBText;
    SpeedButton5: TSpeedButton;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    qry_Lookupacc_CTopicCode2: TStringField;
    qry_Lookup_CTopicName22: TStringField;
    qry_Lookupacc_TopicCode: TLargeintField;
    qry_LookupExportDateTime: TDateTimeField;
    lbl1: TLabel;
    medtExportDateTime: TMaskEdit;
    qry_LookupLookUpNote: TStringField;
    GroupBox2: TGroupBox;
    dbmmoLookUpNote: TDBMemo;
    qry_LookupLookUpNote2: TStringField;
    GroupBox3: TGroupBox;
    dbmmoLookUpNote2: TDBMemo;
    qry_LookupPayType: TStringField;
    GroupBox4: TGroupBox;
    edtPayType: TDBEdit;
    qry_LookupFactorType: TStringField;
    Label11: TLabel;
    edtFactorType: TDBEdit;
    procedure qry_LookupAfterInsert(DataSet: TDataSet);
    procedure src_LookUpStateChange(Sender: TObject);
    procedure qry_LookupBeforeDelete(DataSet: TDataSet);
    procedure qry_LookupAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_LookupBeforePost(DataSet: TDataSet);
    procedure ActSortExecute(Sender: TObject);
    procedure ActSearchExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSend2ExcelExecute(Sender: TObject);
    procedure EdtAllKeyDownKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qry_LookupBeforeEdit(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qry_LookupAfterEdit(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qry_LookupAfterScroll(DataSet: TDataSet);
  private
    KindId, b4LookUpID: Integer;
    Form_Type: Byte;
    procedure valid;
    procedure valid2;
    // function ValidCode: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookUpNewF: TLookUpNewF;

implementation

uses DM, sort2, search2, searchCode_ADO, DBGrid2Print, GlobalPro, mmessage,
  FormFunctions, shamsiDate;

{$R *.dfm}

procedure TLookUpNewF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qry_Lookup);
  Form_Type := var_glb_gParam;
  case Form_Type of
    1:
      begin
        Caption := 'ê—ÊÂ »‰œÌ «ÿ·«⁄«  Å«ÌÂ Ê À«» ';
        DBGrid2.Visible := False;
        qryMasterAfterScroll(nil);
      end;
    2:
      begin
        qryMaster.Active := True;
        Caption := 'À»  Ê ÊÌ—«Ì‘ «ÿ·«⁄«  Å«ÌÂ Ê À«» ';
        grpStart_FinishCode.Visible := False;
        setColumns2(DBGrid1, False, 'StartCode');
        setColumns2(DBGrid1, False, 'FinishCode');
      end;
  end;
  // if opt.AccOldAvailable then
  // begin
  // qry_Lookup.FieldByName('_CTopicName2').LookupKeyFields:='CTopicCode';
  // qry_Lookup.FieldByName('_CTopicName2').LookupResultField:='Desc';
  //
  // qry_Lookup.FieldByName('_DetailName').LookupResultField:='Desc';
  // qry_Lookup.FieldByName('_CTopicName').LookupResultField:='Desc';
  // end;//if

end;

procedure TLookUpNewF.qry_LookupAfterInsert(DataSet: TDataSet);
var
  Txt: String;
begin
  inherited;
  DataSet.FieldByName('LookUpID').AsInteger :=
    GetANewCode(Self.Name, 'SELECT MAX(LookUpID)FROM LookUps WHERE(Kind = ' +
    IntToStr(KindId) + ')', 'LookUpID', dmF.adcBSell);
  if (Form_Type = 2) and (DataSet.FieldByName('LookUpID').AsInteger = 1) then
    DataSet.FieldByName('LookUpID').AsInteger :=
      qryMaster.FieldByName('StartCode').AsInteger;
  Txt := 'SELECT MAX(Code)FROM LookUps WHERE(Kind = ' + IntToStr(KindId) + ')';
  DataSet.FieldByName('Code').AsInteger := GetANewCode(Self.Name, Txt, 'Code',
    dmF.adcBSell);
  DataSet.FieldByName('Kind').AsInteger := KindId;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  edtName.SetFocus;
end;

procedure TLookUpNewF.src_LookUpStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Lookup.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell, '', '', Self.Name);
  medtExportDateTime.ReadOnly := newPanel.Visible;
  if qry_LookupExportDateTime.AsDateTime <> 0 then
    medtExportDateTime.Text :=
      miladi2Shamsi(qry_LookupExportDateTime.AsDateTime);
end;

procedure TLookUpNewF.qry_LookupBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ⁄‰Ê«‰ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TLookUpNewF.qry_LookupAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TLookUpNewF.qry_LookupAfterScroll(DataSet: TDataSet);
begin
  inherited;
  medtExportDateTime.Text := miladi2Shamsi(qry_LookupExportDateTime.AsDateTime);
  if (trim(medtExportDateTime.Text) = '-2/10/09') then
    medtExportDateTime.Text := EmptyStr

end;

procedure TLookUpNewF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TLookUpNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
  SetColSize(DBGrid2, 1);
end;

procedure TLookUpNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TLookUpNewF.qry_LookupBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if not ValidCode then Abort;
  if not CheckRequiredFields(qry_Lookup) then
    Abort;
  TrimStringFields(DataSet);
  case Form_Type of
    1:
      valid;
    /// /////// 'ê—ÊÂ »‰œÌ «ÿ·«⁄«  Å«ÌÂ Ê À«» '
    2:
      valid2;
    /// //////  'À»  Ê ÊÌ—«Ì‘ «ÿ·«⁄«  Å«ÌÂ Ê À«» '
  end;

  if trim(medtExportDateTime.Text) <> EmptyStr then
    qry_LookupExportDateTime.AsDateTime :=
      Shamsi2Miladi(trim(medtExportDateTime.Text));

  if not UnicFieldName(qry_LookupLookUpID, qry_LookupName, 'Lookups', 0,
    Format('AND (Kind = %d)', [Form_Type])) then
    Abort;

end;

procedure TLookUpNewF.valid;
var
  canInsert: Boolean;
  FinishCode, StartCode: String;
begin
  inherited;
  StartCode := qry_Lookup.FieldByName('StartCode').AsString;
  FinishCode := qry_Lookup.FieldByName('FinishCode').AsString;
  // if qry_Lookup.FieldByName('LookUpID').AsInteger>255 then begin
  // Warn('ﬂœ ‰»«Ìœ «“ 255 »“—ê — ‘Êœ.˛');
  // Abort;
  // end;
  if Form_Type = 1 then
  begin
    if qry_Lookup.FieldByName('StartCode').AsInteger < 256 then
    begin
      Warn('«“ ﬂœ ‰»«Ìœ «“ 256 ﬂÊçﬂ — ‘Êœ.˛');
      Abort;
    end;
    if (FinishCode = StartCode) then
    begin
      Warn('·ÿ›« „ÕœÊœÂ ﬂœÌ‰ê —« Ê«—œ ﬂ‰Ìœ');
      EdtStartCode.SetFocus;
      Abort;
    end // if
    else if StrToInt(FinishCode) <= StrToInt(StartCode) then
    begin
      Warn('œ— „ÕœÊœÂ ﬂœÌ‰ê («“ ﬂœ) »«Ìœ ﬂÊçﬂ — «“ ( « ﬂœ) »«‘œ.');
      EdtFinishCode.SetFocus;
      Abort;
    end; // if

    with dmF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(LookUpID) FROM LookUps ';
      SQL.Add('WHERE ((' + StartCode + '  BETWEEN StartCode AND FinishCode)');
      SQL.Add('  AND (LookUpID <> ' + qry_Lookup.FieldByName('LookUpID')
        .AsString + ')');
      SQL.Add('  AND (LookUpID <> ' + IntToStr(b4LookUpID) + '))or(');

      SQL.Add('   (' + FinishCode + ' BETWEEN StartCode AND FinishCode)');
      SQL.Add('  AND (LookUpID <> ' + qry_Lookup.FieldByName('LookUpID')
        .AsString + ')');
      SQL.Add('  AND (LookUpID <> ' + IntToStr(b4LookUpID) + '))');

      Active := True;
      canInsert := Fields[0].AsInteger <> 0;
      Active := False;
    end; // with
    if canInsert then
    begin
      Warn('„ÕœÊœÂ  ⁄—Ì› ‘œÂ »« „ÕœÊœÂ Â«Ì ﬁ»·Ì   œ«Œ· œ«—œ.');
      EdtStartCode.SetFocus;
      Abort;
    end; // if
  end; // it type
end;

procedure TLookUpNewF.ActSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Lookup);
end;

procedure TLookUpNewF.ActSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Lookup);
end;

procedure TLookUpNewF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qry_Lookup)
end;

procedure TLookUpNewF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qry_Lookup)
end;

procedure TLookUpNewF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qry_Lookup)
end;

procedure TLookUpNewF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qry_Lookup)
end;

procedure TLookUpNewF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qry_Lookup)
end;

procedure TLookUpNewF.actSend2ExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TLookUpNewF.valid2;
begin
  with dmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT StartCode,FinishCode FROM LookUps WHERE LookUpID =' +
      qryMaster.FieldByName('LookUpID').AsString;
    Active := True;
    if (StrToInt(edtLookUpID.Text) < Fields[0].AsInteger) or
      (StrToInt(edtLookUpID.Text) > Fields[1].AsInteger) then
    begin
      zbal.Title := 'ﬂœ ‰«„⁄ »—';
      zbal.Prompt.Text := 'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â Œ«—Ã «“„ÕœÊœÂ  ⁄—Ì› ‘œÂ «” .';
      zbal.Show(edtLookUpID);
      edtLookUpID.SetFocus;
      Abort;
    end; // if
  end; // with

end;

// function TLookUpNewF.ValidCode;
// begin
// Result:=False;
// With DMf.qryTmpTmp do begin
// Active:=False;
// SQL.Text:='SELECT COUNT(*) FROM LookUps WHERE(kind = '+IntToStr(KindId)+')AND(Code='
// +qry_Lookup.Fieldbyname('Code').AsString+')';
// Active:=True;
// if (Fields[0].AsInteger<>0) then begin
// Warn('‘„«—Â —œÌ› Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
// edtCode.SetFocus;
// Exit;
// end;//if
// Active:=False;
// end;//with
// With DMf.qryTmpTmp do begin
// Active:=False;
// SQL.Text:='SELECT COUNT(LookUpID) FROM LookUps WHERE ';
// SQL.Add('(LookUpID='+qry_Lookup.Fieldbyname('LookUpID').AsString+')and');
// SQL.Add('(LookUpID<>'+qry_Lookup.Fieldbyname('LookUpID').AsString+')');
// Active:=True;
// if (Fields[0].AsInteger<>0) then begin
// Warn('ﬂœ Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
// edtLookUpID.SetFocus;
// Exit;
// end;//if
// Active:=False;
// end;//with
// Result:=True;
// end;

procedure TLookUpNewF.EdtAllKeyDownKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('SpeedButton' + IntToStr((Sender as TDBEdit)
      .Tag))).Click;
end;

procedure TLookUpNewF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TLookUpNewF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Lookup.DisableControls;
    InitReportFile(ppReport1, 'LookUpF', True);
  finally
    qry_Lookup.EnableControls;
  end;

end;

procedure TLookUpNewF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
  if DBGrid2.Visible then
    Text := qryMaster.FieldByName('Name').AsString
end;

procedure TLookUpNewF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TLookUpNewF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TLookUpNewF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TLookUpNewF.qry_LookupBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  b4LookUpID := qry_Lookup.FieldByName('LookUpID').AsInteger
end;

procedure TLookUpNewF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not DBGrid2.Visible then
    KindId := 0
  else
    KindId := qryMaster.FieldByName('LookUpID').AsInteger;
  with qry_Lookup do
  begin
    Active := False;
    Parameters.ParamByName('kind').Value := KindId;
    Active := True;
  end; // with
end;

procedure TLookUpNewF.qry_LookupAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qry_Lookup.FieldByName('ChangeState').AsInteger := 1
end;

end.
