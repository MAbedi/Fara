unit FunctionSpecialControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, StrUtils,
  System.ImageList,
  System.Actions;

type
  TFunctionSpecialControlF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryFunction: TADOQuery;
    qryFunctionID: TAutoIncField;
    qryFunctionYearID: TIntegerField;
    qryFunctionControlDate: TStringField;
    qryFunctionPersonelNo: TIntegerField;
    qryFunctionOfficeCode: TIntegerField;
    qryFunctionProjectID: TIntegerField;
    qryFunctionCarCode: TIntegerField;
    qryFunctionActivityCode: TIntegerField;
    qryFunctionProcCode: TIntegerField;
    qryFunctionFunctionKind: TIntegerField;
    qryFunctionFunctionTime: TFloatField;
    qryFunctionFunAmount: TFloatField;
    srcFunction: TDataSource;
    pnlMaster: TPanel;
    Label1: TLabel;
    spdOffice: TSpeedButton;
    mskDate: TMaskEdit;
    Label2: TLabel;
    qryProject: TADOQuery;
    qryCar: TADOQuery;
    qryActivity: TADOQuery;
    qryProduct: TADOQuery;
    qryFunctionKind: TADOQuery;
    qryFunction_PersonName: TStringField;
    qryFunction_ProjectCaption: TStringField;
    qryFunction_CarCaption: TStringField;
    qryFunction_ProductCaption: TStringField;
    qryFunction_activityCaption: TStringField;
    qryFunction_FunctionCaption: TStringField;
    qryPersonelInfo: TADOQuery;
    actSort: TAction;
    actExcel: TAction;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnExcel: TBitBtn;
    pnl1: TPanel;
    actInsertForm: TAction;
    actDeleForm: TAction;
    qryOffice: TADOQuery;
    pnlNew: TPanel;
    btnInsertForm: TBitBtn;
    btnDeleForm: TBitBtn;
    mskOfficeCode: TMaskEdit;
    btnSearch: TBitBtn;
    btn1: TBitBtn;
    edtInfoName_L1: TEdit;
    procedure dbedtIDKeyPress(Sender: TObject; var Key: Char);
    procedure mskDateExit(Sender: TObject);
    procedure spdOfficeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure spdDateClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure qryFunctionBeforePost(DataSet: TDataSet);
    procedure qryFunctionBeforeDelete(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actDeleFormExecute(Sender: TObject);
    procedure mskOfficeCodeChange(Sender: TObject);
    procedure actInsertFormExecute(Sender: TObject);
    procedure mskOfficeCodeExit(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure qryOfficeAfterScroll(DataSet: TDataSet);
  private
    procedure UpdateParam;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FunctionSpecialControlF: TFunctionSpecialControlF;

implementation

uses DM, searchCode_ADO, GlobalPro, Math, sndkey32, sort2, search2,
  mmessage, Mymostafa, shamsiDate;

{$R *.dfm}

procedure TFunctionSpecialControlF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  grd: TDBGrid;
begin
  grd := (Sender as TDBGrid);
  curIndex := grd.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;

        case curIndex of
          0:
            nextIndex := IfThen(aDataSet.FieldByName('_PersonName')
              .AsString = EmptyStr, 0, 2);
          2:
            nextIndex := IfThen(aDataSet.FieldByName('FunctionTime')
              .AsInteger = 0, 0, 3);
          3:
            nextIndex := 5;
          5:
            nextIndex := 7;
          7:
            nextIndex := 9;
          9:
            nextIndex := 11;
          11:
            nextIndex := 13;
          13:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd.Columns[nextIndex].Visible) OR
          (grd.Columns[nextIndex].ReadOnly)) do
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
      if grd.DataSource.DataSet.State in dseditmodes then
        grd.DataSource.DataSet.Cancel;
    #32, #157:
      if curIndex in [0 .. 13] then
      begin
        Key := #0;
        DBGrid1EditButtonClick(Sender);
      end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < grd.Columns.Count) and
      (not(grd.Columns[nextIndex].Visible) OR
      (grd.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= grd.Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          grd.SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (grd.DataSource.DataSet.State in dseditmodes) then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if grd.DataSource.State in dseditmodes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      grd.SelectedIndex := nextIndex;
    end; // case

end;

procedure TFunctionSpecialControlF.dbedtIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdOffice.Click;
end;

procedure TFunctionSpecialControlF.UpdateParam;
begin
  with qryFunction do
  begin
    Close;
    Parameters.ParamByName('OCode').Value :=
      IfThen(Trim(mskOfficeCode.Text) = EmptyStr, '0',
      Trim(mskOfficeCode.Text));
    Parameters.ParamByName('Date').Value := Trim(mskDate.Text);
    Open;
    pnlMaster.Enabled := IsEmpty;
  end;
end;

procedure TFunctionSpecialControlF.mskDateExit(Sender: TObject);
begin
  inherited;
  UpdateParam;
end;

procedure TFunctionSpecialControlF.spdOfficeClick(Sender: TObject);
var
  Txt: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := 'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo' +
    ' WHERE (FormType = 12)';
  if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'Ê«Õœ ”«“„«‰Ì', Txt,
    ['ﬂœ', '⁄‰Ê«‰'], Results, [50, 100], alLeft) then

    mskOfficeCode.Text := Results[0];
end;

procedure TFunctionSpecialControlF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryFunction);
  mskDate.Text := var_glb_CurrentDate;
  qryOffice.Open;
  qryFunction.Open;
end;

procedure TFunctionSpecialControlF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TFunctionSpecialControlF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TFunctionSpecialControlF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 5] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText := qryPersonelInfo.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  „‘ —Ì', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('PersonelNo').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;

      end;
    3:
      begin
        sqlText := qryProject.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—ÊéÂ', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('ProjectID').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;
      end;
    5:
      begin
        sqlText := qryCar.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  ŒÊœ—Ê', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('CarCode').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;
      end;
    7:
      begin
        sqlText := qryProduct.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  „Õ’Ê·', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('ProcCode').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;
      end;
    9:
      begin
        sqlText := qryActivity.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcSalary, '›⁄«·Ì ', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('ActivityCode').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;
      end;
    11:
      begin
        sqlText := qryFunctionKind.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'ﬂ«—ﬂ—œ', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('FunctionKind').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;
      end;
  end; // case

end;

procedure TFunctionSpecialControlF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TFunctionSpecialControlF.spdDateClick(Sender: TObject);
var
  Txt: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := 'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo' +
    ' WHERE (FormType = 12)';
  if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'Ê«Õœ ”«“„«‰Ì', Txt,
    ['ﬂœ', '⁄‰Ê«‰'], Results, [50, 100], alLeft) then
    qryOffice.Locate('InfoID', Results[0], []);

end;

procedure TFunctionSpecialControlF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunction);
end;

procedure TFunctionSpecialControlF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunction);
end;

procedure TFunctionSpecialControlF.btn1Click(Sender: TObject);
var
  Txt: String;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT DISTINCT FunctionSpecialControl.ControlDate, FunctionSpecialControl.OfficeCode, FormsInfo.InfoName_L1'
    + ' FROM Pay.FunctionspecialControl INNER JOIN' +
    ' Pay.FormsInfo ON FunctionSpecialControl.OfficeCode = FormsInfo.InfoID' +
    ' WHERE (FormsInfo.FormType = 12)';
  if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'Ê«Õœ ”«“„«‰Ì', Txt,
    [' «—ÌŒ', 'ﬂœ', '⁄‰Ê«‰'], Results, [80, 50, 100], alLeft) then
  begin
    mskDate.Text := Results[0];
    mskOfficeCode.Text := Results[1];
  end;

end;

procedure TFunctionSpecialControlF.qryFunctionBeforePost(DataSet: TDataSet);
var
  S: String;
begin
  inherited;
  S := Trim(mskDate.Text);
  TrimStringFields(DataSet);
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('ControlDate').AsString := Trim(mskDate.Text);
  DataSet.FieldByName('OfficeCode').AsString := Trim(mskOfficeCode.Text);
  if ((mskOfficeCode.Font.Color = clRed) or
    (Trim(mskOfficeCode.Text) = EmptyStr)) then
  begin
    Warn('ﬂœ Ê«Õœ ”«“„«‰Ì „⁄ »— ‰„Ì »«‘œ');
    Abort;
  end;
  if not validate_date(false, '', '', ' «—ÌŒ', S) then
    Abort;
  mskDate.Text := S;

end;

procedure TFunctionSpecialControlF.qryFunctionBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TFunctionSpecialControlF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFunctionSpecialControlF.actDeleFormExecute(Sender: TObject);
Const
  SqlTxt = 'Delete FROM Pay.FunctionspecialControl where OfficeCode = %s And ControlDate = %s AND (YearID = %s) ';

begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') = mrYes then
    Abort;
  with DMF.qryTmpTmpp do
    try
      Close;
      SQL.Text := Format(SqlTxt, [Trim(mskOfficeCode.Text),
        QuotedStr(Trim(mskDate.Text)), APPBank.Year]);
      if ExecSQL > 0 then
        BigMessage('Õ–› ‘œ', 1);
      qryFunction.Requery();
    finally
      Close;
    end;

end;

procedure TFunctionSpecialControlF.mskOfficeCodeChange(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := Trim(mskOfficeCode.Text);
  if S <> EmptyStr then
  begin
    if qryOffice.Locate('OfficeCode', S, [loPartialKey]) then
      mskOfficeCode.Font.Color := clBlack
    else
      mskOfficeCode.Font.Color := clRed;
    UpdateParam;
  end;
end;

procedure TFunctionSpecialControlF.actInsertFormExecute(Sender: TObject);
begin
  inherited;
  pnlMaster.Enabled := True;
  mskOfficeCode.SetFocus;
  mskOfficeCode.Text := EmptyStr;
  mskDate.Text := EmptyStr;
  edtInfoName_L1.Text := EmptyStr;
  UpdateParam;
end;

procedure TFunctionSpecialControlF.mskOfficeCodeExit(Sender: TObject);
begin
  inherited;
  if mskOfficeCode.Font.Color = clRed then
  begin
    Warn('ﬂœ Ê«Õœ ”«“„«‰Ì „⁄ »— ‰„Ì »«‘œ');
    FlashAControl(mskOfficeCode);
    exit;
  end;

end;

procedure TFunctionSpecialControlF.btnSearchClick(Sender: TObject);
var
  Txt: String;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT DISTINCT FunctionSpecialControl.ControlDate, FunctionSpecialControl.OfficeCode, FormsInfo.InfoName_L1'
    + ' FROM Pay.FunctionspecialControl INNER JOIN' +
    ' Pay.FormsInfo ON FunctionSpecialControl.OfficeCode = FormsInfo.InfoID' +
    ' WHERE (FormsInfo.FormType = 12)';
  if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'Ê«Õœ ”«“„«‰Ì', Txt,
    [' «—ÌŒ', 'ﬂœ', '⁄‰Ê«‰'], Results, [80, 50, 100], alLeft) then
  begin
    mskDate.Text := Results[0];
    mskOfficeCode.Text := Results[1];
  end;
end;

procedure TFunctionSpecialControlF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TFunctionSpecialControlF.qryOfficeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Length(Trim(mskOfficeCode.Text)) > 0 then
    edtInfoName_L1.Text := DataSet.FieldByName('InfoName_L1').AsString;
end;

end.
