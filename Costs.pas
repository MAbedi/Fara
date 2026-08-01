unit Costs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, ValEdit, DBCtrls, Mask, ExtDlgs,
  ComCtrls, sndkey32, System.ImageList, System.Actions;

type
  TCostsF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    actFilter: TAction;
    actShow: TAction;
    actAdd: TAction;
    actRemove: TAction;
    actScan: TAction;
    actShowFile: TAction;
    actExcel: TAction;
    actSort: TAction;
    qryCosts: TADOQuery;
    srcCosts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsReciptNote: TStringField;
    OpenDialog1: TOpenDialog;
    qryInitQry: TADOQuery;
    btnSelectAll1: TBitBtn;
    btnShow: TBitBtn;
    TabControl1: TTabControl;
    DBGrid1: TDBGrid;
    qryReciptsAidDate: TStringField;
    qryCostsCostsID: TAutoIncField;
    qryCostsTypeOperations: TIntegerField;
    qryCostsInformationType: TIntegerField;
    qryCostsCostsCode: TIntegerField;
    qryCostsCostsDate: TStringField;
    qryCostsCostsAmount: TBCDField;
    qryCostsCostsNote: TStringField;
    qryCostsReciptID: TIntegerField;
    qryCostsServerID: TIntegerField;
    qryCostsYearID: TIntegerField;
    Panel7: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    edtReciptNumber: TDBEdit;
    edtReciptDate: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    Panel6: TPanel;
    Panel9: TPanel;
    ListView1: TListView;
    Panel5: TPanel;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    btnScan: TBitBtn;
    btnShowFile: TBitBtn;
    Label7: TLabel;
    qrySellsInfo: TADOQuery;
    qryCosts_CostsCode: TStringField;
    Panel1: TPanel;
    BtnDelete2: TBitBtn;
    BitBtn5: TBitBtn;
    btnSearch_: TBitBtn;
    btnExcel: TBitBtn;
    qryCostsCustID: TIntegerField;
    qryCustomers: TADOQuery;
    qryCosts_CustID: TStringField;
    qryCostsVAT: TBCDField;
    qryReciptsProformaNo: TStringField;
    qryReciptsLicenseNumberOrder: TStringField;
    qryReciptsProducingCountry: TStringField;
    qryReciptsBorderEntry: TStringField;
    qryRecipts_TransportBy: TWideStringField;
    qryReciptsCurrenciesName: TStringField;
    qryReciptsRialsEqual: TBCDField;
    qryReciptsArzAmount: TFloatField;
    qryReciptsTotalPrice: TBCDField;
    qryReciptsDeficitSum: TBCDField;
    lbl1: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label25: TLabel;
    lbl5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtProformaNo: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    qryReciptsLicenseDateOrder: TStringField;
    qryReciptsProformaDate: TDateTimeField;
    qryReciptsDeliveryDate: TDateTimeField;
    okPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actRemoveExecute(Sender: TObject);
    procedure qryCostsAfterPost(DataSet: TDataSet);
    procedure srcCostsStateChange(Sender: TObject);
    procedure qryCostsAfterInsert(DataSet: TDataSet);
    procedure actShowFileExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qryCostsBeforeDelete(DataSet: TDataSet);
    procedure edtReciptNumberKeyPress(Sender: TObject; var Key: Char);
    procedure actScanExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TabControl1Change(Sender: TObject);
    procedure qryCostsAfterScroll(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure DBEdit3MouseEnter(Sender: TObject);
  private
    FormType: Integer;
    FArchive: String;
    procedure RefreshFiles;
    procedure UpdateFilter;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostsF: TCostsF;

implementation

uses
  DM, GlobalPro, shamsiDate, mmessage, DateUtils, Math, searchCode_ADO,
  filter_ADO, FilterClass_ADO, FormFunctions, ScanImage, search2, sort2;

{$R *.dfm}

procedure TCostsF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  if FormType = 0 then
    Caption := Caption + ' »ÊœÃÂ'
  else
    Caption := Caption + ' Ê«ﬁ⁄Ì';

  qryInitQry.Active := True;
  FArchive := ExtractFilePath(Application.ExeName) + 'Archive\AllYear\Costs\';
  TabControl1Change(TabControl1);

end;

procedure TCostsF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCosts do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearId').Value := qryRecipts.FieldByName('YearId')
      .AsInteger;
    Parameters.ParamByName('ServerId').Value :=
      qryRecipts.FieldByName('ServerId').AsInteger;
    Active := True;
    ListView1.Clear;
  end;
  RefreshFiles;
end;

procedure TCostsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TCostsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCostsF.RefreshFiles;
var
  sr: TSearchRec;
  FileDate: String;
  CurPath: String;
  Itm: TListItem;
  fileDateTime: TDateTime;
begin
  ListView1.Clear;
  if not qryCosts.Active then
    Exit;
  CurPath := FArchive + qryCostsCostsID.AsString;
  CurPath := IncludeTrailingBackslash(CurPath);
  if FindFirst(CurPath + '*.*', faAnyFile - faDirectory, sr) = 0 then
  begin
    repeat
      FileAge(CurPath + sr.Name, fileDateTime);
      FileDate := miladi2Shamsi(fileDateTime);
      Itm := ListView1.Items.Add;
      Itm.Caption := sr.Name;
      Itm.SubItems.Add(FileDate);
      // ListView1.Items.AddItem(Itm);

    until FindNext(sr) <> 0;
    FindClose(sr);
  end;

end;

procedure TCostsF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 16] of String;
begin
  inherited;
  Txt := 'SELECT Recipts.ReciptID, Recipts.ServerID, Recipts.YearID,ProformaID,Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, '
    + 'Customers.CustName, Customers.Country, LookUps.Name ,RialsEqual ' +
    ',ProformaNo, LicenseNumberOrder,LicenseDateOrder,LettersCreditNo ' +
    'FROM Proforma INNER JOIN ' +
    'Recipts ON Proforma.ReciptID = Recipts.ReciptID AND Proforma.ServerID = Recipts.ServerID '
    + 'AND Proforma.YearID = Recipts.YearID INNER JOIN ' +
    'Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN ' +
    'LookUps ON Recipts.ArzTypeID = LookUps.LookUpID   ' +
    'WHERE     (Recipts.ReciptType = 60)';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' ›—„Â«  ', Txt,
    ['', '', '', '', '‘„«—Â', ' «—ÌŒ', 'ﬂœ ›—Ê‘‰œÂ', '›—Ê‘‰œÂ', 'ﬂ‘Ê—',
    '‰Ê⁄ «—“', '»—«»—Ì »« —Ì«·', '‘„«—Â Å—Ê›—„«', '‘„«—Â „ÃÊ“ ”›«‘',
    ' «—ÌŒ „ÃÊ“ ”›«—‘', '‘„«—Â «⁄ »«— «”‰«œÌ'], Results,
    [0, 0, 0, 0, 100, 100, 50, 100, 100, 50, 50, 100, 100, 100, 100], alLeft);
  if b then
  begin
    qryRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([Results[0], Results[1], Results[2]]), []);
  end;
end;

procedure TCostsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
  RefreshFiles;
end;

procedure TCostsF.actAddExecute(Sender: TObject);
var
  aFileName, CurPath: String;
begin
  inherited;
  If qryCosts.IsEmpty then
    Exit;
  if OpenDialog1.Execute then
  begin
    CurPath := IncludeTrailingBackslash(FArchive + qryCostsCostsID.AsString);
    SysUtils.ForceDirectories(CurPath);
    aFileName := ExtractFileName(OpenDialog1.FileName);
    CopyFile(PChar(OpenDialog1.FileName), PChar(CurPath + aFileName), False);
    RefreshFiles;
  end;
end;

procedure TCostsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCostsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'State', '', 'Ê÷⁄Ì ', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'Select Min(ReciptState),max(ReciptState) from Recipts ');
      AddItem(DMF.adcBSell, 'PersonID1', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
        + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
        + Trim(qryInitQry.FieldByName('CustomerKind1').AsString) + '))',

        'SELECT 0,2147483647');

      AddItem(DMF.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMF.adcBSell, 'number', '', '‘„«—Â', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TCostsF.UpdateFilter;
begin
  With qryCosts do
  begin
    Active := False;
    Parameters.ParamByName('InformationType').Value := FormType;
    Parameters.ParamByName('TypeOperations').Value := TabControl1.TabIndex;
  end;
  with qryRecipts Do
  begin
    Active := False;
    Parameters.ParamByName('ReciptStateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('ReciptStateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
  end; // with

end;

procedure TCostsF.actRemoveExecute(Sender: TObject);
var
  CurPath: String;
begin
  inherited;
  if ListView1.Items.Count > 0 then
  begin
    if get_response('¬Ì« «“Õ–› „ÿ„∆‰ Â” Ìœø˛') <> mrYes then
      Exit;
    CurPath := IncludeTrailingBackslash(FArchive + qryCostsCostsID.AsString);
    DeleteFile(CurPath + ListView1.Selected.Caption);
    RefreshFiles;
  end;
end;

procedure TCostsF.qryCostsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TCostsF.qryCostsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshFiles;
end;

procedure TCostsF.srcCostsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryCosts.State in dseditmodes;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
end;

procedure TCostsF.TabControl1Change(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(DBGrid1, 'CostsAmount');
  DBGrid1.Columns[i].Visible := TabControl1.TabIndex = 0;
  i := ColumnIndexByFieldName(DBGrid1, 'VAT');
  DBGrid1.Columns[i].Visible := TabControl1.TabIndex = 0;

  if TabControl1.TabIndex = 0 then
  begin
    DBGrid1.Columns[0].FieldName := 'CustID';
    DBGrid1.Columns[1].FieldName := '_CustID';
  end
  else
  begin
    DBGrid1.Columns[0].FieldName := 'CostsCode';
    DBGrid1.Columns[1].FieldName := '_CostsCode';
  end;

  With qrySellsInfo do
  begin
    Active := False;
    Parameters.ParamByName('SellsType').Value := TabControl1.TabIndex + 69;
  end;
  With qryCosts do
  begin
    Active := False;
    Parameters.ParamByName('TypeOperations').Value := TabControl1.TabIndex;
    Active := True;
  end;
end;

procedure TCostsF.qryCostsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if TabControl1.TabIndex = 0 then
    DataSet.FieldByName('CostsCode').AsInteger :=
      qrySellsInfo.FieldByName('SellsCode').AsInteger;
  DataSet.FieldByName('ReciptID').AsInteger := qryReciptsReciptID.AsInteger;
  DataSet.FieldByName('YearId').AsInteger := qryReciptsYearID.AsInteger;
  DataSet.FieldByName('ServerId').AsInteger := qryReciptsServerID.AsInteger;
  DataSet.FieldByName('CostsDate').AsString := var_glb_CurrentDate;

  DataSet.FieldByName('InformationType').AsInteger := FormType;
  DataSet.FieldByName('TypeOperations').AsInteger := TabControl1.TabIndex;

end;

procedure TCostsF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, Self, 0);
end;

procedure TCostsF.actShowFileExecute(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := IncludeTrailingBackslash(FArchive + qryCostsCostsID.AsString);
  S := S + ListView1.Selected.Caption;
  RunDoc(S);
end;

procedure TCostsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCosts);
end;

procedure TCostsF.DBEdit3MouseEnter(Sender: TObject);
begin
  inherited;
  (Sender as TDBEdit).Hint :=
    miladi2Shamsi(StrToDate(Trim((Sender as TDBEdit).Text)));

end;

procedure TCostsF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    Exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      if TabControl1.TabIndex = 0 then
      begin
        sqlText := qryCustomers.SQL.Text;
        if searchCode_ADOF.SearchCode2(DMF.adcBSell, '”—›’· Â«Ì Œ«’', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [100, 100], alLeft) then
        begin
          aDataSet.FieldByName('CustID').AsString := Results[0];
        end; // if
      end
      else
      begin
        sqlText := 'SELECT SellsCode, SellsName FROM SellsInfo ' +
          'WHERE (SellsType = ' + IntToStr(69 + TabControl1.TabIndex) + ')';
        if searchCode_ADOF.SearchCode2(DMF.adcBSell,
          '⁄‰«ÊÌ‰ ' + TabControl1.Tabs[TabControl1.TabIndex], sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [100, 100], alLeft) then
        begin
          aDataSet.FieldByName('CostsCode').AsString := Results[0];
        end; // if
      end;

  end; // case
end;

procedure TCostsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TCostsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TCostsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 2;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
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
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [0] then
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
          sendkey(vk_down, [], False);
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

procedure TCostsF.qryCostsBeforeDelete(DataSet: TDataSet);
var
  S: String;
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  »« ›«Ì· Â«Ì ÅÌÊ”  —œÌ› Ã«—Ì «“   ' +
    TabControl1.Tabs[TabControl1.TabIndex] + ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  S := FArchive + qryCostsCostsID.AsString;
  DelDir(S);
end;

procedure TCostsF.edtReciptNumberKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click;
end;

procedure TCostsF.actScanExecute(Sender: TObject);
begin
  inherited;
  If qryCosts.IsEmpty then
    Exit;
  ScanImageF.ScanImage(DMF.adcBSell, 'Costs', 'CostsID', 2, False, '', True,
    qryCostsCostsID.AsString);
  RefreshFiles;
end;

procedure TCostsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCosts);
end;

end.
