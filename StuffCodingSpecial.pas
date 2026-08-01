unit StuffCodingSpecial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, StrUtils, math, Menus, ComCtrls,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TStuffCodingSpecialF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryStuffCodingSpecial: TADOQuery;
    srcStuffCodingSpecial: TDataSource;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    BtnOther: TBitBtn;
    actPrintVijeh: TAction;
    qryStuffCodingSpecialID: TAutoIncField;
    qryStuffCodingSpecialStuffName: TStringField;
    qryStuffCodingSpecialStuffSize: TStringField;
    qryStuffCodingSpecialStuffDiameter: TFloatField;
    qryStuffCodingSpecialStuffAlloy: TStringField;
    qryStuffCodingSpecialminOrder: TFloatField;
    qryStuffCodingSpecialmaxOrder: TFloatField;
    qryStuffCodingSpecialorderPoint: TFloatField;
    qryStuffCodingSpecialorderEntity: TFloatField;
    qryStuffCodingSpecialNote: TStringField;
    MnuOther: TPopupMenu;
    N1: TMenuItem;
    actUpdate: TAction;
    actGetInOut: TAction;
    actStuffSpecialSearch: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    BitBtn7: TBitBtn;
    ProgressBar1: TProgressBar;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    actPrint: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    qryStuffCodingSpecialStuffCode: TLargeintField;
    qryStuffCodingSpecialTariffsID: TStringField;
    qryStuffCodingSpecialFormality: TFloatField;
    qryStuffCodingSpecialMinimum: TFloatField;
    qryStuffCodingSpecialEffectiveInventory: TFloatField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure srcStuffCodingSpecialStateChange(Sender: TObject);
    procedure qryStuffCodingSpecialAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryStuffCodingSpecialBeforeDelete(DataSet: TDataSet);
    procedure qryStuffCodingSpecialAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure BtnOtherClick(Sender: TObject);
    procedure actGetInOutExecute(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure qryStuffCodingSpecialBeforePost(DataSet: TDataSet);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure actStuffSpecialSearchExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    Procedure initForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function Unic: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffCodingSpecialF: TStuffCodingSpecialF;

implementation

uses DM, GlobalPro, sort2, search2, mmessage, sndkey32,
  DBGrid2Print, StuffCodingSpecialSearch, searchCode_ADO, Special_Search,
  FormFunctions;

{$R *.dfm}

procedure TStuffCodingSpecialF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
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
            nextIndex :=
              IfThen((aDataSet.FieldByName('StuffCode').AsLargeInt = 0), 0, 1);
          1:
            nextIndex :=
              IfThen((aDataSet.FieldByName('StuffName').AsString = ''), 1, 2);
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := 8;
          8:
            nextIndex := 9;
          9:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
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
      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
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

procedure TStuffCodingSpecialF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TStuffCodingSpecialF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TStuffCodingSpecialF.srcStuffCodingSpecialStateChange
  (Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  okPanel.Visible := qryStuffCodingSpecial.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
end;

procedure TStuffCodingSpecialF.qryStuffCodingSpecialAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StuffDiameter').AsFloat := 0;
  DBGrid1.SetFocus;
end;

procedure TStuffCodingSpecialF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm
end;

procedure TStuffCodingSpecialF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffCodingSpecial);
end;

procedure TStuffCodingSpecialF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffCodingSpecial);
end;

procedure TStuffCodingSpecialF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffCodingSpecialF.qryStuffCodingSpecialBeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mryes then
    Abort;
end;

procedure TStuffCodingSpecialF.qryStuffCodingSpecialAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ', 1);
end;

procedure TStuffCodingSpecialF.initForm;
begin
  with qryStuffCodingSpecial do
  begin
    Close;
    Open;
  end;
  Entity_Weight(DBGrid1);
end;

procedure TStuffCodingSpecialF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TStuffCodingSpecialF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffCodingSpecialF.BtnOtherClick(Sender: TObject);
begin
  inherited;
  MnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingSpecialF.actGetInOutExecute(Sender: TObject);
begin
  inherited;
  try
    With TADOQuery.Create(nil) do
    begin
      qryStuffCodingSpecial.DisableControls;
      Connection := DMf.adcBSell;
      qryStuffCodingSpecial.AfterPost := nil;
      Active := false;
      SQL.Text :=
        'SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName, ReciptItems.StuffSize, ReciptItems.StuffDiameter, ReciptItems.StuffAlloy';
      SQL.Add('FROM ReciptItems INNER JOIN StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode');
      SQL.Add('WHERE (ReciptItems.StuffSize <> '''') AND (ReciptItems.StuffDiameter <> 0 ) AND (ReciptItems.StuffAlloy <> '''' )');
      SQL.Add('GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName, ReciptItems.StuffSize, ReciptItems.StuffDiameter, ReciptItems.StuffAlloy');
      SQL.Add('HAVING (NOT ((STR(ReciptItems.StuffCode) + StuffCoding.c_StuffName + ReciptItems.StuffSize + STR');
      SQL.Add('(ReciptItems.StuffDiameter, 7, 3) + ReciptItems.StuffAlloy) IN ');
      SQL.Add('(SELECT STR(StuffCode) + StuffName + StuffSize + STR(StuffDiameter, 7, 3) + StuffAlloy AS Expr1 FROM StuffCodingSpecial)))');
      Active := True;
      if RecordCount > 0 then
      begin
        ProgressBar1.Max := RecordCount;
        ProgressBar1.Visible := True;
      end
      else
        Warn('ÂÌç «ÿ·«⁄«  »—«Ì «‰ ﬁ«· ÊÃÊœ ‰œ«—œ.˛', mtInformation);
      while not Eof do
      begin
        qryStuffCodingSpecial.Append;
        qryStuffCodingSpecial.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryStuffCodingSpecial.FieldByName('StuffName').AsString :=
          FieldByName('c_StuffName').AsString;
        qryStuffCodingSpecial.FieldByName('StuffSize').AsString :=
          FieldByName('StuffSize').AsString;
        qryStuffCodingSpecial.FieldByName('StuffDiameter').AsString :=
          FieldByName('StuffDiameter').AsString;
        qryStuffCodingSpecial.FieldByName('StuffAlloy').AsString :=
          FieldByName('StuffAlloy').AsString;
        ProgressBar1.StepIt;
        Next;
      end; // while
      if (qryStuffCodingSpecial.State in dseditmodes) then
        qryStuffCodingSpecial.post;
      Active := false;
      Free;
    end; // With
  finally
    qryStuffCodingSpecial.AfterPost := qryStuffCodingSpecialAfterPost;
    ProgressBar1.Position := 0;
    ProgressBar1.Visible := false;
    qryStuffCodingSpecial.EnableControls;
  end;
end;

procedure TStuffCodingSpecialF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qryStuffCodingSpecial.Requery();
end;

procedure TStuffCodingSpecialF.qryStuffCodingSpecialBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryStuffCodingSpecial) then
    Abort;
  if not Unic then
    Abort;
  if qryStuffCodingSpecialorderPoint.AsFloat +
    qryStuffCodingSpecialorderEntity.AsFloat > qryStuffCodingSpecialmaxOrder.AsFloat
  then
  begin
    Warn('‰ﬁÿÂ ”›«—‘+„ﬁœ«— ”›«—‘ »«Ìœ ﬂÊçﬂ — Ì« „”«ÊÌ Õœ«ﬂÀ— „ÊÃÊœÌ »«‘œ.');
    Abort;
  end;

  if not((qryStuffCodingSpecialorderPoint.AsFloat >=
    qryStuffCodingSpecialminOrder.AsFloat) and
    (qryStuffCodingSpecialorderPoint.AsFloat <=
    qryStuffCodingSpecialmaxOrder.AsFloat)) then
  begin
    Warn('‰ﬁÿÂ ”›«—‘ »«Ìœ „« »Ì‰ Õœ«ﬁ· Ê Õœ«ﬂÀ— „ÊÃÊœÌ »«‘œ.');
    Abort;
  end;
  if qryStuffCodingSpecialTariffsID.AsString = EmptyStr then
    qryStuffCodingSpecialTariffsID.AsVariant := Null;
end;

function TStuffCodingSpecialF.Unic;
begin
  Result := false;
  With DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT COUNT(*) ';
    SQL.Add('FROM  StuffCodingSpecial');
    SQL.Add('WHERE(StuffSize = ''' + qryStuffCodingSpecial.FieldByName
      ('StuffSize').AsString + ''') ');
    SQL.Add('AND  (StuffDiameter = ' + qryStuffCodingSpecial.FieldByName
      ('StuffDiameter').AsString + ')');
    SQL.Add('AND  (StuffAlloy = ''' + qryStuffCodingSpecial.FieldByName
      ('StuffAlloy').AsString + ''')');
    SQL.Add('AND  (StuffName = ''' + qryStuffCodingSpecial.FieldByName
      ('StuffName').AsString + ''')');
    SQL.Add('AND  (StuffCode = ' + qryStuffCodingSpecial.FieldByName
      ('StuffCode').AsString + ')');
    SQL.Add('AND  (ID <> ' + IntToStr(qryStuffCodingSpecial.FieldByName('ID')
      .AsInteger) + ')');
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('ﬂ«·«Ì Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
      exit;
    end; // if
    Active := false;
  end; // with
  Result := True;
end;

procedure TStuffCodingSpecialF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex = 4 then
    SetKeyboardLatin
  else
    SetKeyboardFarsi
end;

procedure TStuffCodingSpecialF.actStuffSpecialSearchExecute(Sender: TObject);
var
  Results: array [0 .. 5] of String;
begin
  inherited;
  if special_SearchF.SearchCode(DMf.adcBSell, ' ﬂ«·«Â«  ',
    ' SELECT  ID,StuffCode, StuffName, StuffSize, StuffDiameter, StuffAlloy ' +
    ' FROM StuffCodingSpecial ', ['', 'ﬂœ ﬂ«·«', '⁄‰Ê«‰ ﬂ«·«', '«»⁄«œ', '÷Œ«„ ',
    '¬·Ì«é'], Results, [0, 100, 100, 100, 100, 100], alLeft, 4) then
  begin
    // if not (qryStuffCodingSpecial.state in dsEditModes) then   qryStuffCodingSpecial.edit;
    qryStuffCodingSpecial.Locate('ID', Results[0], []);
  end;
end;

procedure TStuffCodingSpecialF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TStuffCodingSpecialF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  b: Boolean;
  Results: array [0 .. 1] of String;
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
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'ﬂœÌ‰ê ﬂ«·«',
          'SELECT c_StuffCode, c_StuffName FROM StuffCoding ', ['ﬂœ ', '‘—Õ'],
          Results, [100, 200], alLeft);
        if b then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.Edit;
          aDataSet.FieldByName('StuffCode').AsString := Results[0];
          aDataSet.FieldByName('StuffName').AsString := Results[1];
        end;
      end; // 0
  end; // case
end;

procedure TStuffCodingSpecialF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TStuffCodingSpecialF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TStuffCodingSpecialF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffCodingSpecialF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffCodingSpecial.DisableControls;
    InitReportFile(ppReport1, 'StuffCodingSpecial');
  finally
    qryStuffCodingSpecial.EnableControls;
  end; // try
end;

procedure TStuffCodingSpecialF.Panel2Click(Sender: TObject);
begin
  inherited;
  try
    qryStuffCodingSpecial.AfterPost := nil;
    StuffCodingSpecialSearchF.Enter(1, qryStuffCodingSpecial,
      var_glb_CurrentDate);
  finally
    qryStuffCodingSpecial.AfterPost := qryStuffCodingSpecialAfterPost;
  end;

end;

end.
