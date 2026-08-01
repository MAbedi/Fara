// mahmood
unit GetReprots;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  template2MDI, DB, ADODB, Grids, Vcl.DBGrids, StdCtrls, Mask, DBCtrls,
  ImgList, DBActns, ActnList, ExtCtrls, Buttons, System.ImageList,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxDBEdit;

type
  TGetReprotsF = class(Ttemplate2MDIF)
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
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit20: TDBEdit;
    EdtSerialFrom: TDBEdit;
    grdItems: TDBGrid;
    PnlGetRptColumns: TPanel;
    okPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    newPanel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    btnDelete: TBitBtn;
    DBGrid3: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    btnOtherRptFiles: TSpeedButton;
    DBEdit62: TDBEdit;
    Label110: TLabel;
    edtAmount: TDBEdit;
    ColumnsSalaryID: TSpeedButton;
    edtColumnsSalaryID: TDBEdit;
    Label1: TLabel;
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
    Label4: TLabel;
    actCopy: TAction;
    BitBtn1: TBitBtn;
    qryGetRptColumnsColumnsSalaryIDSub: TWideStringField;
    Label5: TLabel;
    edtColumnsSalaryIDSub: TDBEdit;
    ColumnsSalaryIDSub: TSpeedButton;
    qryGetRptColumnsColumnsRoundNo: TFloatField;
    Label6: TLabel;
    edtColumnsRoundNo: TDBEdit;
    qryGetRptColumnsColumnsCalc: TWideStringField;
    GroupBox1: TGroupBox;
    dbmmoColumnsCalc: TDBMemo;
    DBGrid4: TDBGrid;
    srcWageDec: TDataSource;
    Panel5: TPanel;
    btnAdd: TBitBtn;
    qryGetRptColumnsConstID: TIntegerField;
    qryGetRptConstColumns: TADOQuery;
    qryGetRptColumns_ConstID: TStringField;
    qryGetReprotsActiveFunctionsItems: TWordField;
    dbchkActiveFunctionsItems: TDBCheckBox;
    BitBtn2: TBitBtn;
    lblColumnsCalc: TLabel;
    btnaddLink: TBitBtn;
    qryGetReprotsDeleteColumnIfSumWageIsZero: TWordField;
    DBCheckBox1: TDBCheckBox;
    actDelete: TAction;
    Label7: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
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
    procedure DBGrid4DblClick(Sender: TObject);
    procedure qryGetRptColumnsBeforePost(DataSet: TDataSet);
    procedure grdItemsEditButtonClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnaddLinkClick(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetReprotsF: TGetReprotsF;

implementation

uses DM, GlobalPro, mmessage, StrUtils,
  sort2, search2, addRemoveRpt, ChooseItem, Dialogs, FaraConsts, searchCode_ADO;

{$R *.dfm}

procedure TGetReprotsF.FormCreate(Sender: TObject);
begin
  inherited;
  With DMf.qryWageDec do
  begin
    Active := False;
    Active := True;
  end;
  qryGetReprots.Active := True;
end;

procedure TGetReprotsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(grdItems, 1);
  SetColSize(DBGrid3, 2);
end;

procedure TGetReprotsF.srcGetReprotsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryGetReprots.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  newPanel2.Visible := okPanel.Visible;
  PnlGetRptColumns.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TGetReprotsF.qryGetReprotsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات ذخيره شوند؟') <> mrYes then
    abort;
  TrimStringFields(qryGetReprots);
end;

procedure TGetReprotsF.qryGetReprotsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TGetReprotsF.qryGetReprotsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('GetReprotsID').AsInteger :=
    GetANewCode('','Pay.GetReprots', 'GetReprotsID', DMf.adcSalary);
  DBEdit1.SetFocus;
  FlashAControl(btnaddLink);
end;

procedure TGetReprotsF.qryGetReprotsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  if qryGetRptColumns.State in dsEditModes then
    qryGetRptColumns.Post;
  try
    qryGetRptColumns.UpdateBatch;
    BigMessage('ثبت شد.', 1);
  except
    warn('اشكال در ثبت فرم');
  end; // try
  rid := qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  qryGetReprots.Requery;
  qryGetReprots.Locate('GetReprotsID', rid, []);
  qryGetRptColumns.Requery;
  qryGetRptColumns.Locate('ColumnsID', rid2, []);
end;

procedure TGetReprotsF.qryGetReprotsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين گزارش مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TGetReprotsF.srcGetRptColumnsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryGetRptColumns.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := newPanel2.Visible;
end;

procedure TGetReprotsF.qryGetRptColumnsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryGetReprots.State in dsEditModes) then
    qryGetReprots.edit;
  DataSet.FieldByName('ColumnsID').AsInteger :=
    qryGetRptColumns.RecordCount + 1;
  // GetANewCode('SELECT MAX(ColumnsID) FROM Pay.GetRptColumns WHERE GetReprotsID = '+qryGetReprots.FieldByName('GetReprotsID').AsString,'ColumnsID',dmF.adcSalary)+;
  DataSet.FieldByName('GetReprotsID').AsInteger :=
    qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  DataSet.FieldByName('Kind').AsInteger := 0;
  DBEdit20.SetFocus;
end;

procedure TGetReprotsF.qryGetRptColumnsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين ستون مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TGetReprotsF.qryGetReprotsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryWage.Active := False;
  With qryGetRptColumns do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value :=
      qryGetReprots.FieldByName('GetReprotsID').AsInteger;
    Active := True;
  end; // With
end;

procedure TGetReprotsF.qryGetRptColumnsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryGetReprots.State in dsEditModes) then
    abort;
end;

procedure TGetReprotsF.qryGetRptColumnsBeforePost(DataSet: TDataSet);
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

procedure TGetReprotsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if ((Sender as TDBGrid).DataSource.DataSet.State in dsEditModes) then
    (Sender as TDBGrid).DataSource.DataSet.Post;
end;

procedure TGetReprotsF.btnAddClick(Sender: TObject);
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

procedure TGetReprotsF.btnaddLinkClick(Sender: TObject);
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

procedure TGetReprotsF.btnOtherRptFilesClick(Sender: TObject);
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

procedure TGetReprotsF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryGetRptColumns)
end;

procedure TGetReprotsF.BitBtn2Click(Sender: TObject);
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

procedure TGetReprotsF.actDeleteExecute(Sender: TObject);
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

procedure TGetReprotsF.actSearch_2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryGetRptColumns)
end;

procedure TGetReprotsF.ColumnsSalaryIDClick(Sender: TObject);
var
  S: String;
  t_a_g: Integer;
begin
  inherited;
  if not(qryGetRptColumns.State in dsEditModes) then
    qryGetRptColumns.edit;
  S := qryGetRptColumns.FieldByName((Sender as TSpeedButton).Name).AsString;
  t_a_g := qryGetRptColumns.FieldByName('Kind').AsInteger;
  if (Sender as TSpeedButton).Name = 'ColumnsSalaryIDSub' then
    t_a_g := 2;
  case t_a_g of
    1:
      if ChooseItemF.SelectChecks(S, 'FixedCalculated.SalaryID ',
        'FormsInfo_2.InfoName_L1 ',
        ' Pay.FixedCalculated LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID  ',
        ' WHERE (FixedCalculated.ShowListKind = 1) GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID  ')
      then
        qryGetRptColumns.FieldByName((Sender as TSpeedButton).Name).AsString :=
          LeftStr(S, length(S) - 1);
    2:
      if ChooseItemF.SelectChecks(S, 'FixedCalculated.SalaryID ',
        'MAX(CASE WHEN InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL THEN FormsInfo_2.InfoName_L1 ELSE InsuranceCONSTinfo.InsuranceLabel_L1 END)',
        'Pay.InsuranceCONSTinfo RIGHT OUTER JOIN Pay.FormsInfo AS FormsInfo_2 ON InsuranceCONSTinfo.FormInfoID = FormsInfo_2.FormInfoID RIGHT OUTER JOIN '
        + 'Pay.FixedCalculated ON FormsInfo_2.FormInfoID = FixedCalculated.SalaryID ',
        ' WHERE (FixedCalculated.ShowListKind = 2) GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID ')
      then
        qryGetRptColumns.FieldByName((Sender as TSpeedButton).Name).AsString :=
          LeftStr(S, length(S) - 1);
  else
    qryGetRptColumns.FieldByName((Sender as TSpeedButton).Name).AsString
      := EmptyStr;
  end;
end;

procedure TGetReprotsF.qryGetRptColumnsAfterScroll(DataSet: TDataSet);
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

  With DMf.qryWageDec do
  begin
    DisableControls;
    First;
    lblColumnsCalc.Caption := qryGetRptColumnsColumnsCalc.AsString;
    while not Eof do
    begin
      lblColumnsCalc.Caption := StringReplace(lblColumnsCalc.Caption,
        FieldByName('SalaryID').AsString, FieldByName('InfoName_L1').AsString,
        [rfReplaceAll]);
      Next;
    end;
    EnableControls;
  end;

end;

procedure TGetReprotsF.grdItemsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdselected in State) then
  begin
    if qryGetRptColumns.FieldByName('Kind').AsInteger = 1 then
      grdItems.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  grdItems.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TGetReprotsF.grdItemsEditButtonClick(Sender: TObject);
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

procedure TGetReprotsF.DBGrid4DblClick(Sender: TObject);
begin
  inherited;
  btnAddClick(btnAdd)
end;

procedure TGetReprotsF.actCopyExecute(Sender: TObject);
var
  OldGetReprotsID, GetReprotsID, ColumnsID, MINItemsID: Integer;
begin
  inherited;
  OldGetReprotsID := qryGetReprots.FieldByName('GetReprotsID').AsInteger;
  With DMf.qryTmpTmp do
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
