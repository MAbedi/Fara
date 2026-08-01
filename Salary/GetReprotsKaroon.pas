// mahmood
unit GetReprotsKaroon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  template2MDI, DB, ADODB, Grids, Vcl.DBGrids, StdCtrls, Mask, DBCtrls,
  ImgList, DBActns, ActnList, ExtCtrls, Buttons, System.ImageList,
  System.Actions;

type
  TGetReprotsKaroonF = class(Ttemplate2MDIF)
    qryGetReprots: TADOQuery;
    srcGetReprots: TDataSource;
    DBNavigator1: TDBNavigator;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    qryGetRptColumns: TADOQuery;
    srcGetRptColumns: TDataSource;
    Panel4: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PnlGetRptColumns: TPanel;
    okPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    newPanel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    btnDelete: TBitBtn;
    btnOtherRptFiles: TSpeedButton;
    DBEdit62: TDBEdit;
    Label110: TLabel;
    qryGetReprotsGetReprotsID: TIntegerField;
    qryGetReprotsGetReprotsName: TStringField;
    qryGetReprotsOtherRptFiles: TStringField;
    qryGetReprotsOtherRptCaptions: TStringField;
    qryGetRptColumnsColumnsID: TIntegerField;
    qryGetRptColumnsGetReprotsID: TIntegerField;
    qryGetRptColumnsColumnsName: TStringField;
    qryGetRptColumnsKind: TWordField;
    qryGetRptColumnsColumnsSalaryID: TStringField;
    qryGetRptColumnsAmount: TBCDField;
    actSort2: TAction;
    qryWage: TADOQuery;
    SrcWage: TDataSource;
    qryWageFormInfoID: TIntegerField;
    qryWageInfoID: TIntegerField;
    qryWageInfoName_L1: TStringField;
    qryWageInfoName_L2: TStringField;
    actCopy: TAction;
    BitBtn1: TBitBtn;
    qryGetRptColumnsColumnsSalaryIDSub: TWideStringField;
    qryGetRptColumnsColumnsRoundNo: TFloatField;
    qryGetRptColumnsColumnsCalc: TWideStringField;
    srcWageDec: TDataSource;
    qryGetRptColumnsConstID: TIntegerField;
    qryGetRptConstColumns: TADOQuery;
    qryGetRptColumns_ConstID: TStringField;
    qryGetReprotsActiveFunctionsItems: TWordField;
    dbchkActiveFunctionsItems: TDBCheckBox;
    btnaddLink: TBitBtn;
    qryGetReprotsDeleteColumnIfSumWageIsZero: TWordField;
    DBCheckBox1: TDBCheckBox;
    actDelete: TAction;
    grdItems: TDBGrid;
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    ColumnsSalaryID: TSpeedButton;
    Label1: TLabel;
    DBEdit20: TDBEdit;
    EdtSerialFrom: TDBEdit;
    rdoKind: TDBRadioGroup;
    edtColumnsSalaryID: TDBEdit;
    grdWages: TDBGrid;
    grdDecs: TDBGrid;
    pnlTop: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    qryRptColumnsWage: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    WordField1: TWordField;
    StringField2: TStringField;
    BCDField1: TBCDField;
    WideStringField1: TWideStringField;
    FloatField1: TFloatField;
    WideStringField2: TWideStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    qryRptColumnsDec: TADOQuery;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    WordField2: TWordField;
    StringField5: TStringField;
    BCDField2: TBCDField;
    WideStringField3: TWideStringField;
    FloatField2: TFloatField;
    WideStringField4: TWideStringField;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    srcRptColumnsWage: TDataSource;
    srcRptColumnsDec: TDataSource;
    qryRptColumnsFunctions: TADOQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField7: TStringField;
    WordField3: TWordField;
    StringField8: TStringField;
    BCDField3: TBCDField;
    WideStringField5: TWideStringField;
    FloatField3: TFloatField;
    WideStringField6: TWideStringField;
    IntegerField9: TIntegerField;
    StringField9: TStringField;
    srcRptColumnsFunctions: TDataSource;
    grdOtherDec: TDBGrid;
    Label7: TLabel;
    qryOtherDec: TADOQuery;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField10: TStringField;
    WordField4: TWordField;
    StringField11: TStringField;
    BCDField4: TBCDField;
    WideStringField7: TWideStringField;
    FloatField4: TFloatField;
    WideStringField8: TWideStringField;
    IntegerField12: TIntegerField;
    StringField12: TStringField;
    srcOtherDec: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcGetReprotsStateChange(Sender: TObject);
    procedure qryGetReprotsBeforePost(DataSet: TDataSet);
    procedure qryGetReprotsAfterDelete(DataSet: TDataSet);
    procedure qryGetReprotsAfterInsert(DataSet: TDataSet);
    procedure qryGetReprotsAfterPost(DataSet: TDataSet);
    procedure qryGetReprotsBeforeDelete(DataSet: TDataSet);
    procedure srcGetRptColumnsStateChange(Sender: TObject);
    procedure qryGetRptColumnsAfterInsert(DataSet: TDataSet);
    procedure qryGetRptColumnsBeforeDelete(DataSet: TDataSet);
    procedure qryGetReprotsAfterScroll(DataSet: TDataSet);
    procedure qryGetRptColumnsBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure btnOtherRptFilesClick(Sender: TObject);
    procedure actSort2Execute(Sender: TObject);
    procedure actSearch_2Execute(Sender: TObject);
    procedure ColumnsSalaryIDClick(Sender: TObject);
    procedure qryGetRptColumnsAfterScroll(DataSet: TDataSet);
    procedure grdItemsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actCopyExecute(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure qryGetRptColumnsBeforePost(DataSet: TDataSet);
    procedure grdItemsEditButtonClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnaddLinkClick(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure qryGetRptColumnsAfterOpen(DataSet: TDataSet);
    procedure qryGetRptColumnsAfterPost(DataSet: TDataSet);
    procedure qryRptColumnsFunctionsAfterScroll(DataSet: TDataSet);
    procedure qryRptColumnsWageAfterScroll(DataSet: TDataSet);
    procedure qryRptColumnsDecAfterScroll(DataSet: TDataSet);
    procedure qryGetRptColumnsAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetReprotsKaroonF: TGetReprotsKaroonF;

implementation

uses DM, GlobalPro, mmessage, StrUtils,
  sort2, search2, addRemoveRpt, ChooseItem, Dialogs, FaraConsts, searchCode_ADO;

{$R *.dfm}

procedure TGetReprotsKaroonF.FormCreate(Sender: TObject);
begin
  inherited;
  With DMf.qryWageDec do
  begin
    Active := False;
    Active := True;
  end;
  qryGetReprots.Active := True;
end;

procedure TGetReprotsKaroonF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(grdItems, 1);
  SetColSize(grdWages, 2);
  SetColSize(grdDecs, 2);
end;

procedure TGetReprotsKaroonF.srcGetReprotsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryGetReprots.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  newPanel2.Visible := okPanel.Visible;
  PnlGetRptColumns.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TGetReprotsKaroonF.qryGetReprotsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات ذخيره شوند؟') <> mrYes then
    abort;
  TrimStringFields(qryGetReprots);
end;

procedure TGetReprotsKaroonF.qryGetReprotsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TGetReprotsKaroonF.qryGetReprotsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('GetReprotsID').AsInteger :=
    GetANewCode('','Pay.GetReprots', 'GetReprotsID', DMf.adcSalary);
  //
  DBEdit1.SetFocus;
  // FlashAControl(btnaddLink);
end;

procedure TGetReprotsKaroonF.qryGetReprotsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  if qryGetRptColumns.State in dsEditModes then
    qryGetRptColumns.Post;
  try
    // qryGetRptColumns.UpdateBatch;
    BigMessage('ثبت شد.', 1);
  except
    warn('اشكال در ثبت فرم');
  end; // try
  rid := qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  qryGetReprots.Requery;
  qryGetReprots.Locate('GetReprotsID', rid, []);
  // qryGetRptColumns.Requery;
  // qryGetRptColumns.Locate('ColumnsID', rid2, []);
end;

procedure TGetReprotsKaroonF.qryGetReprotsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين گزارش مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TGetReprotsKaroonF.srcGetRptColumnsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryGetRptColumns.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := newPanel2.Visible;
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qryRptColumnsWage.Requery();
  qryRptColumnsDec.Requery();
  qryRptColumnsFunctions.Requery();
  qryOtherDec.Requery();
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryGetReprots.State in dsEditModes) then
    qryGetReprots.edit;
  DataSet.FieldByName('ColumnsID').AsInteger :=
    qryGetRptColumns.RecordCount + 1;
  // GetANewCode('','SELECT MAX(ColumnsID) FROM Pay.GetRptColumns WHERE GetReprotsID = '+qryGetReprots.FieldByName('GetReprotsID').AsString,'ColumnsID',dmF.adcSalary)+;
  DataSet.FieldByName('GetReprotsID').AsInteger :=
    qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  DataSet.FieldByName('Kind').AsInteger := 1;
  DBEdit20.SetFocus;
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryRptColumnsWage.Open;
  qryRptColumnsDec.Open;
  qryRptColumnsFunctions.Open;
  qryOtherDec.Open;
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryRptColumnsWage.Requery();
  qryRptColumnsDec.Requery();
  qryRptColumnsFunctions.Requery();
  qryOtherDec.Requery();
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين ستون مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TGetReprotsKaroonF.qryGetReprotsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // qryWage.Active := False;
  With qryGetRptColumns do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value :=
      qryGetReprots.FieldByName('GetReprotsID').AsInteger;
    Active := True;
  end; // With
  With qryRptColumnsWage do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value :=
      qryGetReprots.FieldByName('GetReprotsID').AsInteger;
    Active := True;
  end; // With
  With qryRptColumnsDec do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value :=
      qryGetReprots.FieldByName('GetReprotsID').AsInteger;
    Active := True;
  end; // With
  With qryRptColumnsFunctions do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value :=
      qryGetReprots.FieldByName('GetReprotsID').AsInteger;
    Active := True;
  end; // With
  With qryOtherDec do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value :=
      qryGetReprots.FieldByName('GetReprotsID').AsInteger;
    Active := True;
  end; // With
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryGetReprots.State in dsEditModes) then
    abort;
end;

procedure TGetReprotsKaroonF.qryGetRptColumnsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryGetRptColumnsColumnsCalc.AsString + qryGetRptColumnsConstID.AsString +
    qryGetRptColumnsColumnsName.AsString = EmptyStr then
  begin
    DataSet.Cancel;
    abort;
  end;
  if not CheckRequiredFields(qryGetRptColumns) then
    abort;
end;

procedure TGetReprotsKaroonF.qryRptColumnsDecAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryGetRptColumns.Locate('ColumnsID', DataSet.FieldByName('ColumnsID')
    .AsInteger, []);
end;

procedure TGetReprotsKaroonF.qryRptColumnsFunctionsAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  qryGetRptColumns.Locate('ColumnsID', DataSet.FieldByName('ColumnsID')
    .AsInteger, []);
end;

procedure TGetReprotsKaroonF.qryRptColumnsWageAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryGetRptColumns.Locate('ColumnsID', DataSet.FieldByName('ColumnsID')
    .AsInteger, []);
end;

procedure TGetReprotsKaroonF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if ((Sender as TDBGrid).DataSource.DataSet.State in dsEditModes) then
    (Sender as TDBGrid).DataSource.DataSet.Post;
end;

procedure TGetReprotsKaroonF.btnAddClick(Sender: TObject);
begin
  if DMf.qryWageDec.RecordCount = 0 then
    Exit;

  if not(qryGetRptColumns.State in dsEditModes) then
    qryGetRptColumns.edit;
  if Trim(qryGetRptColumnsColumnsCalc.AsString) = EmptyStr then
    qryGetRptColumnsColumnsCalc.AsString := DMf.qryWageDecSalaryID.AsString
  else
    qryGetRptColumnsColumnsCalc.AsString :=
      Trim(qryGetRptColumnsColumnsCalc.AsString + ' + ' +
      DMf.qryWageDecSalaryID.AsString)
end;

procedure TGetReprotsKaroonF.btnaddLinkClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  BigMessageProgBar('در حال ثبت ...', qryGetRptConstColumns.RecordCount +
    DMf.qryWageDec.RecordCount);
  With qryGetRptConstColumns do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      qryGetRptColumns.Insert;
      qryGetRptColumns.FieldByName('ConstID').AsInteger :=
        FieldByName('ConstID').AsInteger;
      qryGetRptColumns.FieldByName('ColumnsName').AsString :=
        FieldByName('ColumnsCaption').AsString;
      qryGetRptColumns.Post;
      GoProgressBar(FieldByName('ColumnsCaption').AsString);
      Next;
    end;
    EnableControls;
  end;

  qry := TADOQuery.Create(nil);
  With qry do
    try
      Connection := DMf.qryWageDec.Connection;
      SQL.Text := DMf.qryWageDec.SQL.Text;
      Active := True;
      while not Eof do
      begin
        qryGetRptColumns.Append;
        qryGetRptColumns.FieldByName('Kind').AsInteger := FieldByName('Kind')
          .AsInteger;
        qryGetRptColumns.FieldByName('ColumnsCalc').AsString :=
          FieldByName('SalaryID').AsString;
        qryGetRptColumns.FieldByName('ColumnsName').AsString :=
          FieldByName('InfoName_L1').AsString;
        qryGetRptColumns.Post;
        GoProgressBar(FieldByName('InfoName_L1').AsString);
        Next;
      end;
    finally
      Free;
    end;
  BigMessage('انجام شد', 1);

end;

procedure TGetReprotsKaroonF.btnOtherRptFilesClick(Sender: TObject);
var
  aCaption: String;
  aReport: String;
begin
  inherited;
  aReport := qryGetReprots.FieldByName('OtherRptFiles').AsString;
  aCaption := qryGetReprots.FieldByName('OtherRptCaptions').AsString;
  addRemoveRptF.enter(aReport, aCaption);
  if aReport <> EmptyStr then
  begin
    if not(qryGetReprots.State in dsEditModes) then
      qryGetReprots.edit;
    qryGetReprots.FieldByName('OtherRptFiles').AsString := aReport;
    qryGetReprots.FieldByName('OtherRptCaptions').AsString := aCaption;
  end;
end;

procedure TGetReprotsKaroonF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryGetRptColumns)
end;

procedure TGetReprotsKaroonF.BitBtn2Click(Sender: TObject);
var
  S: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  S := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'فرمول',
    ReplaceStr(DMf.qryWageDec.SQL.Text, 'ORDER BY SalaryID', ''),
    ['كد ', 'عنوان', ''], Results, [80, 200, 0], alLeft);
  if S then
  begin
    if not(qryGetRptColumns.State in dsEditModes) then
      qryGetRptColumns.edit;
    if Trim(qryGetRptColumnsColumnsCalc.AsString) = EmptyStr then
      qryGetRptColumnsColumnsCalc.AsString := Results[0]
    else
      qryGetRptColumnsColumnsCalc.AsString :=
        Trim(qryGetRptColumnsColumnsCalc.AsString + ' + ' + Results[0])

  end

end;

procedure TGetReprotsKaroonF.actDeleteExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if grdItems.SelectedRows.Count > 1 then
  begin
    if get_response(IntToStr(grdItems.SelectedRows.Count) +
      ' سطر انتخاب شده است. آیا برای حذف مطمئن هستید؟') <> mrYes then
      abort;
    with grdItems.DataSource.DataSet do
    begin
      BeforeDelete := nil;
      for i := 0 to grdItems.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdItems.SelectedRows.Items[i]));
        Delete;
      end;
      BeforeDelete := qryGetRptColumnsBeforeDelete;
    end;
  end
  else
    qryGetRptColumns.Delete;
end;

procedure TGetReprotsKaroonF.actSearch_2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryGetRptColumns)
end;

procedure TGetReprotsKaroonF.ColumnsSalaryIDClick(Sender: TObject);
var
  S: String;
  t_a_g: Integer;
begin
  inherited;
  if not(qryGetRptColumns.State in dsEditModes) then
    qryGetRptColumns.edit;
  S := qryGetRptColumns.FieldByName((Sender as TSpeedButton).Name).AsString;

  if ChooseItemF.SelectChecks(S, 'FixedCalculated.SalaryID ',
    'FormsInfo_2.InfoName_L1 ',
    ' Pay.FixedCalculated LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID  ',
    ' GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID  ')
  then
    qryGetRptColumns.FieldByName((Sender as TSpeedButton).Name).AsString :=
      LeftStr(S, length(S) - 1);

end;

procedure TGetReprotsKaroonF.qryGetRptColumnsAfterScroll(DataSet: TDataSet);
var
  S: String;
begin
  inherited;
  S := qryGetRptColumns.FieldByName('ColumnsSalaryID').AsString;
  if S = EmptyStr then
    S := qryGetRptColumns.FieldByName('ColumnsSalaryIDSub').AsString;
  // s:=LeftStr(s,length(s)-1);
  With qryWage do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FormsInfo.FormInfoID, FormsInfo.InfoID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2';
    SQL.Add('FROM Pay.FormsInfo ');
    SQL.Add('WHERE FormInfoID IN (' + IfThen(S <> EmptyStr, S, '0') + ')');
    Active := S <> EmptyStr;
  end;
  //
  // With DMf.qryWageDec do
  // begin
  // DisableControls;
  // First;
  // lblColumnsCalc.Caption := qryGetRptColumnsColumnsCalc.AsString;
  // while not Eof do
  // begin
  // lblColumnsCalc.Caption := StringReplace(lblColumnsCalc.Caption,
  // FieldByName('SalaryID').AsString, FieldByName('InfoName_L1').AsString,
  // [rfReplaceAll]);
  // Next;
  // end;
  // EnableControls;
  // end;

end;

procedure TGetReprotsKaroonF.grdItemsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // if not(gdselected in State) then
  // begin
  // if qryGetRptColumns.FieldByName('Kind').AsInteger = 1 then
  // grdItems.Canvas.Brush.Color := const_fixed_columns_color;
  // end; // if
  // grdItems.DefaultDrawColumnCel(Rect, DataCol, Column, State);

end;

procedure TGetReprotsKaroonF.grdItemsEditButtonClick(Sender: TObject);
var
  S: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if not(qryGetRptColumns.State in dsEditModes) then
    qryGetRptColumns.edit;
  S := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'ستون هاي ثابت',
    'SELECT ConstID, ColumnsCaption FROM Pay.GetRptConstColumns', ['كد ', 'عنوان'],
    Results, [50, 150], alLeft);
  if S then
  begin
    if not(qryGetRptColumns.State in dsEditModes) then
      qryGetRptColumns.edit;
    qryGetRptColumns.FieldByName('ConstID').AsString := Results[0];
    if qryGetRptColumns.FieldByName('ColumnsName').AsString = EmptyStr then
      qryGetRptColumns.FieldByName('ColumnsName').AsString := Results[1];
  end;

end;

procedure TGetReprotsKaroonF.actCopyExecute(Sender: TObject);
var
  OldGetReprotsID, GetReprotsID, ColumnsID, MINItemsID: Integer;
begin
  inherited;
  OldGetReprotsID := qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT MAX(GetReprotsID)+1  FROM Pay.GetReprots';
    Active := True;
    GetReprotsID := Fields[0].AsInteger;

    Active := False;
    SQL.Text := 'SELECT MAX(ColumnsID)+1  FROM Pay.GetRptColumns';
    Active := True;
    ColumnsID := Fields[0].AsInteger;

    Active := False;
    SQL.Text := 'INSERT INTO Pay.GetReprots';
    SQL.Add('(GetReprotsID, GetReprotsName , OtherRptFiles, OtherRptCaptions,');
    SQL.Add(' ActiveFunctionsItems, DeleteColumnIfSumWageIsZero)');
    SQL.Add(' SELECT  ' + IntToStr(GetReprotsID) +
      ', GetReprotsName+ ''*'', OtherRptFiles, OtherRptCaptions,');
    SQL.Add(' ActiveFunctionsItems, DeleteColumnIfSumWageIsZero ');
    SQL.Add('FROM Pay.GetReprots');
    SQL.Add('WHERE (GetReprotsID = ' + IntToStr(OldGetReprotsID) + ')');
    ExecSQL;

    Active := False;
    SQL.Text := 'SELECT MIN(ColumnsID)FROM Pay.GetRptColumns WHERE GetReprotsID = '
      + IntToStr(OldGetReprotsID);
    Active := True;
    MINItemsID := Fields[0].AsInteger;

    Active := False;
    SQL.Text := 'INSERT INTO Pay.GetRptColumns';
    SQL.Add('(ColumnsID, GetReprotsID, ColumnsName, Kind, ColumnsSalaryID,');
    SQL.Add(' Amount, ColumnsSalaryIDSub, ColumnsRoundNo, ColumnsCalc, ConstID)');
    SQL.Add('SELECT ' + IntToStr(ColumnsID) + '+( ColumnsID-' +
      IntToStr(MINItemsID) + '), ' + IntToStr(GetReprotsID) +
      ', ColumnsName, Kind, ColumnsSalaryID, Amount, ColumnsSalaryIDSub,');
    SQL.Add(' ColumnsRoundNo, ColumnsCalc, ConstID ');
    SQL.Add('FROM Pay.GetRptColumns');
    SQL.Add('WHERE (GetReprotsID = ' + IntToStr(OldGetReprotsID) + ')');
    ExecSQL;
    Active := False;
  end;
  qryGetReprots.Requery();
  qryGetReprots.Locate('GetReprotsID', GetReprotsID, [])
end;

end.
