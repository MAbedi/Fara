{ -----------------------------------------------------------------------------
  Unit Name: ReciptsDeficitsPostAll
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit ReciptsDeficitsPostAll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, StrUtils,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, Provider, DBClient,
  SumDBGrid, System.ImageList, System.Actions;

type
  TReciptsDeficitsPostAllF = class(Ttemplate2MDIF)
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnSlelectInverse: TBitBtn;
    btnSelectAll: TBitBtn;
    StatusBar1: TStatusBar;
    actSendExel: TAction;
    actSort: TAction;
    DBGrid2: TDBGrid;
    cliTypesItems: TClientDataSet;
    cliTypesItems_checked: TBooleanField;
    DataSetProvider1: TDataSetProvider;
    cliTypesItemsReciptNumber: TIntegerField;
    cliTypesItemsReciptDate: TStringField;
    cliTypesItemsPersonID1: TIntegerField;
    cliTypesItemsCustName: TStringField;
    cliTypesItemsReciptState: TSmallintField;
    cliTypesItemsReciptID: TIntegerField;
    Image2: TImage;
    Image3: TImage;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actPost: TAction;
    BitBtn1: TBitBtn;
    cliTypesItemsServerID: TIntegerField;
    cliTypesItemsYearID: TIntegerField;
    qryDeficits: TADOQuery;
    qryPersonID2: TADOQuery;
    srcPersonID2: TDataSource;
    qryPersonID2PersonID2: TIntegerField;
    qryPersonID2CustName: TStringField;
    pnl1: TPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    mskDateFrom: TMaskEdit;
    mskDateTo: TMaskEdit;
    mskReciptNumberFrom: TMaskEdit;
    mskReciptNumberTo: TMaskEdit;
    lbl6: TLabel;
    btn1: TSpeedButton;
    mskDeficits: TMaskEdit;
    lblDeficits: TLabel;
    cliTypesItemsDeficitAdd_Dec: TBCDField;
    lbl8: TLabel;
    mskPersonID1From: TMaskEdit;
    lbl9: TLabel;
    mskPersonID1To: TMaskEdit;
    grpPersonID2: TGroupBox;
    btnMaster: TSpeedButton;
    lbl1: TLabel;
    dbedtPersonID2: TDBEdit;
    dbedtCustName: TDBEdit;
    dbnvgr1: TDBNavigator;
    cliTypesItemsReciptValue: TBCDField;
    cliTypesItemsCalcDeficitAdd_Dec: TBCDField;
    rgDeficitAdd_Dec: TRadioGroup;
    mskDeficitAdd_Dec: TMaskEdit;
    btn2: TButton;
    actFilter: TAction;
    qryInitQry: TADOQuery;
    btnSelectAll1: TBitBtn;
    cliTypesItemsSumDeficitAdd_Dec: TAggregateField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cliTypesItemsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure btnMasterClick(Sender: TObject);
    procedure qryPersonID2AfterScroll(DataSet: TDataSet);
    procedure mskDateFromExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure grpPersonID2DblClick(Sender: TObject);
    procedure rgDeficitAdd_DecClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cliTypesItemsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    ReciptType: Integer;
    Field_Add_Dec: String;
    HeightgrpPersonID2: Integer;
    procedure UpdateFilter;
    procedure ToggleCheck;
    procedure InsertReciptsDeficits;
    procedure InitForm;
    procedure UpdateMaskEdits;

  public
    { Public declarations }
  end;

var
  ReciptsDeficitsPostAllF: TReciptsDeficitsPostAllF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  searchCode_ADO, TreeChart,
  DBGrid2Print, search1, sort, mmessage, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TReciptsDeficitsPostAllF.UpdateFilter;
begin
  with qryTypesItems do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Parameters.ParamByName('ReciptDateFrom').Value := mskDateFrom.Text;
    Parameters.ParamByName('ReciptDateTo').Value := mskDateTo.Text;
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      mskReciptNumberFrom.Text;
    Parameters.ParamByName('ReciptNumberTo').Value := mskReciptNumberTo.Text;
    Parameters.ParamByName('PersonID1From').Value := mskPersonID1From.Text;
    Parameters.ParamByName('PersonID1To').Value := mskPersonID1To.Text;

    if rgDeficitAdd_Dec.ItemIndex = 0 then
      Parameters.ParamByName('Co').Value := 0
    else
    begin
      if Trim(mskDeficitAdd_Dec.Text) = EmptyStr then
        mskDeficitAdd_Dec.Text := '3';
      Parameters.ParamByName('Co').Value := mskDeficitAdd_Dec.Text;
    end;

    if grpPersonID2.Height = HeightgrpPersonID2 then
    begin
      qryPersonID2.Parameters[0].Value := ReciptType;
      qryPersonID2.Open;
      // Parameters.ParamByName('PersonID2From').Value:=qryPersonID2PersonID2.AsInteger;
      // Parameters.ParamByName('PersonID2To').Value:=qryPersonID2PersonID2.AsInteger;
    end
    else
    begin
      Parameters.ParamByName('PersonID2From').Value := 0;
      Parameters.ParamByName('PersonID2To').Value := 2147483647;
    end;

  end; // with
  qryTypesItems.Open;

end;

procedure TReciptsDeficitsPostAllF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 6);
end;

procedure TReciptsDeficitsPostAllF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2)
end;

procedure TReciptsDeficitsPostAllF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TReciptsDeficitsPostAllF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliTypesItems);
end;

procedure TReciptsDeficitsPostAllF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliTypesItems);
end;

procedure TReciptsDeficitsPostAllF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TReciptsDeficitsPostAllF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid2.Canvas.Rectangle(Rect);
    if cliTypesItems_checked.AsBoolean then
      DBGrid2.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid2.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TReciptsDeficitsPostAllF.cliTypesItemsReciptStateGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(cliTypesItems.FieldByName('ReciptState').AsInteger)
end;

procedure TReciptsDeficitsPostAllF.qryTypesItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliTypesItems.Active := False;
  cliTypesItems.Active := True;
end;

procedure TReciptsDeficitsPostAllF.DBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TReciptsDeficitsPostAllF.ToggleCheck;
begin
  with cliTypesItems do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TReciptsDeficitsPostAllF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliTypesItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TReciptsDeficitsPostAllF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliTypesItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TReciptsDeficitsPostAllF.actPostExecute(Sender: TObject);
begin
  inherited;
  try
    mskDeficitAdd_Dec.Tag := StrToInt(Trim(mskDeficitAdd_Dec.Text));
    mskDeficits.Tag := StrToInt(Trim(mskDeficits.Text));
  except
    Warn('ﬂœ Ì« „»·€ ﬂ”Ê—« /«÷«›«  ’ÕÌÕ ‰„Ì »«‘œ.');
  end;

  if (mskDeficitAdd_Dec.Tag <= 0) or (mskDeficits.Tag = 0) then
    Exit;
  BigMessageProgBar('œ— Õ«· «‰ ﬁ«· ﬂ”Ê—«  Â« ', cliTypesItems.RecordCount);
  With cliTypesItems do
    try
      DisableControls;
      Filter := '_checked=True';
      Filtered := True;
      First;
      while not eof do
      begin
        if FieldByName('_checked').AsBoolean then
          InsertReciptsDeficits;
        Next;
      end; // while
      EnableControls;
    finally
      Filtered := False;
      UpdateFilter;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
      CloseMessage;
    end;
end;

procedure TReciptsDeficitsPostAllF.InsertReciptsDeficits;
begin
  With qryDeficits do
  begin
    Open;
    Insert;
    FieldByName('ReciptDeficitID').AsInteger :=
      GetANewID(qryDeficits, Self.Name, 'ReciptsDeficits', 'ReciptDeficitID',
      cliTypesItems, 1);
    FieldByName('ReciptID').AsInteger := cliTypesItems.FieldByName('ReciptID')
      .AsInteger;

    FieldByName(Field_Add_Dec).AsInteger := mskDeficitAdd_Dec.Tag +
      cliTypesItems.FieldByName('CalcDeficitAdd_Dec').AsInteger;
    FieldByName('DeficitID').AsInteger := mskDeficits.Tag;
    FieldByName('DeficitNote').AsString := Caption + ' œ—  «—ÌŒ ' +
      var_glb_CurrentDate + ' ﬂ«—»— ' + User.Name;

    Post;
  end; // while
end;

procedure TReciptsDeficitsPostAllF.btnMasterClick(Sender: TObject);
var
  c, Txt, s: String;
begin
  inherited;
  Txt := 'SELECT DISTINCT Recipts.PersonID2, Customers.CustName FROM Recipts INNER JOIN '
    + ' Customers ON Recipts.PersonID2 = Customers.CustID WHERE Recipts.ReciptType = '
    + IntToStr(ReciptType); // (Recipts.PersonID2 <> 0)
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, '—«‰‰œÂ', Txt,
    ['òœ', '‰«„ '], alLeft);
  if s <> '' then
    qryPersonID2.Locate('PersonID2', StrToInt(c), []);

end;

procedure TReciptsDeficitsPostAllF.qryPersonID2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTypesItems do
  begin
    Close;
    Parameters.ParamByName('PersonID2From').Value :=
      qryPersonID2PersonID2.AsInteger;
    Parameters.ParamByName('PersonID2To').Value :=
      qryPersonID2PersonID2.AsInteger;
    Open;
  end
end;

procedure TReciptsDeficitsPostAllF.mskDateFromExit(Sender: TObject);
begin
  inherited;
  // UpdateFilter;
end;

procedure TReciptsDeficitsPostAllF.FormCreate(Sender: TObject);
begin
  inherited;
  ReciptType := var_glb_gParam;
  InitForm;
end;

procedure TReciptsDeficitsPostAllF.InitForm;
begin
  lblCaption.Hint := IntToStr(ReciptType);
  HeightgrpPersonID2 := grpPersonID2.Height;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end;
end;

procedure TReciptsDeficitsPostAllF.UpdateMaskEdits;
begin
  mskReciptNumberFrom.Text := GetcFrom(myParams.ParamValues['number'],
    ftInteger);
  mskReciptNumberTo.Text := GetcTo(myParams.ParamValues['number'], ftInteger);
  mskDateFrom.Text := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
  mskDateTo.Text := GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
  mskPersonID1From.Text := GetcFrom(myParams.ParamValues['PersonID1'],
    ftString);
  mskPersonID1To.Text := GetcTo(myParams.ParamValues['PersonID1'], ftString);
end;

procedure TReciptsDeficitsPostAllF.btn1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT DeficitID, DeficitName + (CASE DeficitType WHEN 1 THEN ''(«÷«›« )'''
    + ' ELSE ''(ﬂ”Ê—« )'' END) AS DeficitName, DeficitType FROM Deficits';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' ﬂ”Ê—«  Ê «÷«›«   ', Txt,
    ['ﬂœ', '⁄‰Ê«‰', ''], Results, [50, 150, 0], alLeft);
  if b then
  begin
    mskDeficits.Text := Results[0];
    mskDeficits.Hint := Results[1];
    lblDeficits.Caption := Results[1];
    if Results[2] = '1' then
      Field_Add_Dec := 'DeficitAdd'
    else
      Field_Add_Dec := 'DeficitDec';
  end; // if
end;

procedure TReciptsDeficitsPostAllF.grpPersonID2DblClick(Sender: TObject);
begin
  inherited;
  if grpPersonID2.Height = HeightgrpPersonID2 then
    grpPersonID2.Height := 14
  else
    grpPersonID2.Height := HeightgrpPersonID2;
  UpdateFilter;
end;

procedure TReciptsDeficitsPostAllF.rgDeficitAdd_DecClick(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TReciptsDeficitsPostAllF.btn2Click(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TReciptsDeficitsPostAllF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'PersonID1', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
        + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
        + Trim(qryInitQry.FieldByName('CustomerKind1').AsString) + '))',

        'SELECT 0,2147483647');

      AddItem(DMf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'number', '', '‘„«—Â', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateMaskEdits;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TReciptsDeficitsPostAllF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
end;

procedure TReciptsDeficitsPostAllF.cliTypesItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // cliTypesItemsSumDeficitAdd_Dec.Active:=True;
  Warn(cliTypesItemsSumDeficitAdd_Dec.AsString)
end;

end.
