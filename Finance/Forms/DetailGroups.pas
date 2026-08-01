unit DetailGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ppCtrls, ppPrnabl,
  ppClass, ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppVar, ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  System.StrUtils;

type
  TDetailGroupsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcDetailGroups: TDataSource;
    qryDetailGroups: TADOQuery;
    btnPrint: TButton;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    Button1: TButton;
    actSendToExecl: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine6: TppLine;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Pnl_L1: TPanel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Pnl_L2: TPanel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    BitBtn5: TBitBtn;
    btnactSearch: TBitBtn;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine8: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    Panel_l2: TPanel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    Panel_l1: TPanel;
    GroupBox3: TGroupBox;
    DBMemo2: TDBMemo;
    actDesign: TAction;
    actImportExcel: TAction;
    btnPrint1: TButton;
    pnlType: TPanel;
    lbl1: TLabel;
    COMDType: TDBComboBox;
    qryDetailGroupsDGID: TIntegerField;
    qryDetailGroupsDGName_L1: TStringField;
    qryDetailGroupsDGName_L2: TStringField;
    qryDetailGroupsComment_L1: TStringField;
    qryDetailGroupsComment_L2: TStringField;
    qryDetailGroupsMakeDate: TDateTimeField;
    qryDetailGroupsUseKindInCo: TWordField;
    qryDetailGroupsDetailType: TIntegerField;
    lblWarn: TLabel;
    actPostCustGroup: TAction;
    actDeleteCustGroup: TAction;
    qryDetailGroupsStartRange: TIntegerField;
    qryDetailGroupsEndRange: TIntegerField;
    // procedure valid;
    procedure srcDetailGroupsStateChange(Sender: TObject);
    procedure qryDetailGroupsBeforePost(DataSet: TDataSet);
    procedure actSendToExeclExecute(Sender: TObject);
    procedure qryDetailGroupsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryDetailGroupsBeforeInsert(DataSet: TDataSet);
    procedure qryDetailGroupsBeforeEdit(DataSet: TDataSet);
    procedure qryDetailGroupsAfterScroll(DataSet: TDataSet);
    procedure actImportExcelExecute(Sender: TObject);
    procedure actPostCustGroupExecute(Sender: TObject);
    procedure actDeleteCustGroupExecute(Sender: TObject);
    procedure qryDetailGroupsAfterPost(DataSet: TDataSet);
    procedure qryDetailGroupsBeforeDelete(DataSet: TDataSet);
    procedure qryDetailGroupsAfterDelete(DataSet: TDataSet);
  private
    FormType: Integer;
    DGID4Edit: Integer;
    Function valid: Boolean;
    function CanDelete: Boolean;
    procedure HasDetail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailGroupsF: TDetailGroupsF;

implementation

uses Dm, GlobalPro, search2, sort2, mmessage, GetExcel;

{$R *.dfm}

procedure TDetailGroupsF.srcDetailGroupsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDetailGroups.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.DetailGroups');

end;

Function TDetailGroupsF.valid: Boolean;
var
  canInsert: Boolean;
  FinishCode, StartCode: String;
  DGID: Integer;
begin
  inherited;
  StartCode := DBEdit1.Text;
  FinishCode := DBEdit2.Text;
  Result := True;
  if StrToInt(FinishCode) <= StrToInt(StartCode) then
  begin
    Warn('œ— „ÕœÊœÂ ﬂœ Õ”«»  ›’Ì·Ì («“ﬂœ) »«Ìœ ﬂÊçﬂ — «“ ( « ﬂœ) »«‘œ.˛');
    DBEdit2.SetFocus;
    Result := False;
    Exit;
  end;
  if qryDetailGroups.State = dsEdit then
    DGID := DGID4Edit
  else
    DGID := StrToInt(DBEdit3.Text);
  with Dmf.qry_Temp do
  begin
    Active := False;
    // SQL.Text := 'SELECT COUNT(DGID) FROM acc.DetailGroups ';
    // SQL.Add('WHERE (' + StartCode +
    // ' BETWEEN StartRange AND EndRange) AND (DGID <> ' + DBEdit3.Text
    // + ') OR');
    // SQL.Add('(DGID <> ' + DBEdit3.Text + ') AND (' + FinishCode +
    // ' BETWEEN StartRange AND EndRange)');
    SQL.Text := Format('SELECT COUNT(DGID) FROM acc.DetailGroups ' +
      'WHERE (DGID <> %d) AND ((%d BETWEEN StartRange AND EndRange) OR ' +
      '(%d BETWEEN StartRange AND EndRange) OR (StartRange BETWEEN %d AND %d) '
      + 'OR (EndRange BETWEEN %d AND %d))', [DGID, StrToInt(StartCode),
      StrToInt(FinishCode), StrToInt(StartCode), StrToInt(FinishCode),
      StrToInt(StartCode), StrToInt(FinishCode)]);
    Active := True;
    canInsert := Fields[0].AsInteger <> 0;
    Active := False;
  end; // with

  if canInsert then
  begin
    Warn('„ÕœÊœÂ  ⁄—Ì› ‘œÂ »« „ÕœÊœÂ Â«Ì ﬁ»·Ì   œ«Œ· œ«—œ.');
    DBEdit1.SetFocus;
    Result := False;
    Exit;
  end; // if
end;

procedure TDetailGroupsF.qryDetailGroupsBeforePost(DataSet: TDataSet);
begin
  // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then abort;
  if not CheckRequiredFields(qryDetailGroups) then
    abort;
  if not valid then
    abort;
  TrimStringFields(qryDetailGroups);
  if qryDetailGroupsDetailType.AsInteger < 1 then
    qryDetailGroupsDetailType.AsInteger := 1;
  if qryDetailGroupsDetailType.AsInteger > 4 then
    qryDetailGroupsDetailType.AsInteger := 4;
end;

procedure TDetailGroupsF.actSendToExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDetailGroupsF.qryDetailGroupsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› «‰Ã«„ ‘œ', 1);
end;

procedure TDetailGroupsF.qryDetailGroupsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fields.FieldByName('DGID').AsInteger :=
    GetANewCode('','acc.detailGroups', 'DGID',dmf.adcAccounting);
  DataSet.Fields.FieldByName('MakeDate').AsDateTime := Now;
  DataSet.Fields.FieldByName('DetailType').AsInteger := 1;
  // COMDType.ItemIndex := 0;
  DBEdit4.SetFocus;
end;

procedure TDetailGroupsF.qryDetailGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TDetailGroupsF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  lblCaption.Hint := IntToStr(FormType);
  // with Dmf.qry_Temp do
  // begin
  // Active := False;
  // SQL.Text := 'SELECT UseKindInCoActive FROM acc.Config';
  // Active := True;
  // end;

  // qryDetailGroups.SQL.Text := 'SELECT * FROM acc. DetailGroups ' +
  // ifthen(opta.AddStuffcoding, ' ', 'where (Kind = 1)') + 'ORDER BY StartRange';
  qryDetailGroups.Active := True;

end;

procedure TDetailGroupsF.actDeleteCustGroupExecute(Sender: TObject);
begin
  inherited;
  // if not Dmf.CheckLevel(DelLevel, FormType) then
  // abort;
  // if not CanDelete then
  // begin
  // Warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
  // abort;
  // end;
  // if get_response('¬Ì« »—«Ì Õ–› —ﬂÊ—œ „ÿ„∆‰ Â” Ìœø') <> mrYes then
  // abort;
  // FDGID := qryDetailGroupsDGID.AsInteger;
  // with Dmf.qry_Temp do
  // try
  // Close;
  // SQL.Text := 'delete from dbo.CustomersGroup where CustomerGrpID = ' +
  // qryDetailGroupsDGID.AsString;
  // ExecSQL;
  // BigMessage('Õ–› «‰Ã«„ ‘œ', 1);
  // Close;
  // qryDetailGroups.Requery;
  // except
  // on E: Exception do
  // begin
  // add2log(E.Message);
  // Warn('«‘ﬂ«· œ— Õ–›');
  // end;
  // end;
end;

procedure TDetailGroupsF.actImportExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryDetailGroups.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryDetailGroups);
  finally
    qryDetailGroups.AfterPost := qryDetailGroupsAfterPost;
  end; // try
end;

procedure TDetailGroupsF.actPostCustGroupExecute(Sender: TObject);
var
  FCustomerGrpID: Integer;
begin
  inherited;
  // {$REGION 'BeforPost'}
  // if not CheckRequiredFields(qryDetailGroups) then
  // abort;
  // if not valid then
  // abort;
  // TrimStringFields(qryDetailGroups);
  // if qryDetailGroupsDetailType.AsInteger < 1 then
  // qryDetailGroupsDetailType.AsInteger := 1;
  // if qryDetailGroupsDetailType.AsInteger > 4 then
  // qryDetailGroupsDetailType.AsInteger := 4;
  // {$ENDREGION}
  // FCustomerGrpID := qryDetailGroupsDGID.AsInteger;
  // with Dmf.qry_Temp do
  // try
  // Close;
  // if qryDetailGroupskind.AsInteger = 2 then
  // begin
  // SQL.Text := 'update dbo.StuffGroups set AccDetailType =' +
  // qryDetailGroupsDetailType.AsString + '  where GroupID = ' +
  // FCustomerGrpID.ToString;
  // ExecSQL;
  // Close;
  // end
  // else
  // begin
  // SQL.Text :=
  // Format('SELECT CustomerGrpID, CustomerGrpName, CustomerGrpName_L2,' +
  // ' StartCode , FinishCode , DetailType '
  // + 'FROM dbo.CustomersGroup WHERE  CustomerGrpID = %d ', [FDGID]);
  // // Format('INSERT INTO dbo.CustomersGroup (CustomerGrpID, CustomerGrpName,'
  // // + ' CustomerGrpName_L2, StartCode, FinishCode, DetailType) ' +
  // // 'VALUES        ( %d , %s , %s , %d , %d , %d )',
  // // [FDGID, qryDetailGroupsDGName_L1.AsString,
  // // qryDetailGroupsDGName_L2.AsString, qryDetailGroupsStartRange.AsLargeInt,
  // // qryDetailGroupsEndRange.AsLargeInt,
  // // qryDetailGroupsDetailType.AsInteger]);
  // Open;
  // Edit;
  // FieldByName('CustomerGrpID').AsInteger := FCustomerGrpID;
  // FieldByName('CustomerGrpName').AsString :=
  // qryDetailGroupsDGName_L1.AsString;
  // FieldByName('CustomerGrpName_L2').AsString :=
  // qryDetailGroupsDGName_L2.AsString;
  // FieldByName('StartCode').AsLargeInt :=
  // qryDetailGroupsStartRange.AsLargeInt;
  // FieldByName('FinishCode').AsLargeInt :=
  // qryDetailGroupsEndRange.AsLargeInt;
  // FieldByName('DetailType').AsInteger :=
  // qryDetailGroupsDetailType.AsInteger;
  // Post;
  // Close;
  // AddCoding(2, FCustomerGrpID);
  // end;
  // BigMessage('À»  ‘œ.', 1);
  // qryDetailGroups.Cancel;
  // qryDetailGroups.Requery();
  // qryDetailGroups.Locate('DGID', FCustomerGrpID, []);
  // except
  // on E: Exception do
  // begin
  // add2log(E.Message);
  // Warn('«‘ﬂ«· œ— À» ');
  // end;
  // end;

end;

procedure TDetailGroupsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDetailGroups.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := True;
    ppReport1.Print;
  finally
    qryDetailGroups.EnableControls;
  end;
end;

procedure TDetailGroupsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TDetailGroupsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDetailGroupsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetailGroups);
end;

procedure TDetailGroupsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetailGroups);
end;

procedure TDetailGroupsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDetailGroupsF.ppLabel8GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDetailGroupsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDetailGroupsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetailGroups.FieldByName('DGID'));
end;

procedure TDetailGroupsF.qryDetailGroupsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (not opta.EditableDetailRange) then
    HasDetail;
end;

procedure TDetailGroupsF.qryDetailGroupsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(AddLevel, FormType) then
    abort;
end;

procedure TDetailGroupsF.qryDetailGroupsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(DelLevel, FormType) then
    abort;
  if not CanDelete then
  begin
    Warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    abort;
  end;
  if get_response('¬Ì« »—«Ì Õ–› —ﬂÊ—œ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    abort;
end;

procedure TDetailGroupsF.qryDetailGroupsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(EdtLevel, FormType) then
    abort;
  DGID4Edit := qryDetailGroupsDGID.AsInteger;
end;

function TDetailGroupsF.CanDelete: Boolean;
begin
  with Dmf.qry_Temp do
    try
      Close;
      SQL.Text := 'SELECT DetailCode FROM Acc.Details';
      SQL.Add('WHERE (DetailCode BETWEEN :StartRange AND :EndRange )');
      Parameters[0].Value := qryDetailGroupsStartRange.AsInteger;
      Parameters[1].Value := qryDetailGroupsEndRange.AsInteger;
      Open;
      CanDelete := Fields[0].IsNull;
    finally
      Close;
    end;
end;

procedure TDetailGroupsF.HasDetail;
const
  CSql = 'SELECT count(*) FROM Acc.Details WHERE ( DetailCode BETWEEN %d AND %d ) AND (DetailCode <> 0)';
begin
  with Dmf.qry_Temp do
    try
      Active := False;
      SQL.Text := Format(CSql, [qryDetailGroupsStartRange.AsInteger,
        qryDetailGroupsEndRange.AsInteger]);
      Active := True;
      DBEdit1.Enabled := not(Fields[0].AsInteger > 0);
      DBEdit2.Enabled := DBEdit1.Enabled;
      lblWarn.Visible := not(DBEdit2.Enabled);
    finally
      Active := False;
    end;
end;

// procedure TDetailGroupsF.valid;
// var
// canInsert: Boolean;
// FinishCode, StartCode,GroupName: String;
// begin
// StartCode := DBEdit1.Text;
// FinishCode := DBEdit2.Text;
// inherited;
// if (FinishCode = StartCode) then
// begin
// Warn('·ÿ›« „ÕœÊœÂ ﬂœÌ‰ê —« Ê«—œ ﬂ‰Ìœ');
// DBEdit1.SetFocus;
// Abort;
// end // if
// else if StrToInt(FinishCode) <= StrToInt(StartCode) then
// begin
// Warn('œ— „ÕœÊœÂ ﬂœÌ‰ê («“ ﬂœ) »«Ìœ ﬂÊçﬂ — «“ ( « ﬂœ) »«‘œ.');
// DBEdit2.SetFocus;
// Abort;
// end; // if
// with DMf.qry_Temp do
// begin
// Active := False;
// SQL.Text := 'SELECT LTRIM(STR(CustomerGrpID)) + DGName_L1 AS Name FROM Acc.DetailGroups ';
// SQL.Add('WHERE (' + StartCode +
// ' BETWEEN StartRange AND EndRange) AND (CustomerGrpID <> ' + DBEdit3.Text
// + ') OR');
// SQL.Add('(CustomerGrpID <> ' + DBEdit3.Text + ') AND (' + FinishCode +
// ' BETWEEN StartRange AND FinishRange)');
// Active := True;
// GroupName := Trim(Fields[0].AsString);
// canInsert := GroupName <> EmptyStr;
// Active := False;
// end; // with
// if canInsert then
// begin
// Warn('„ÕœÊœÂ  ⁄—Ì› ‘œÂ »« „ÕœÊœÂ –Ì·  œ«Œ· œ«—œ.' + #13#10 +
// GroupName);
// DBEdit1.SetFocus;
// Abort;
// end; // if
// end;

end.
