unit Insurances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, ValEdit, DBCtrls, Mask, ExtDlgs,
  ComCtrls, sndkey32, SumDBGrid, ppBands, ppCache, ppClass, ppDB,
  ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppVar, ppPrnabl,
  ppCtrls, ppDesignLayer, System.ImageList, System.Actions;

type
  TInsurancesF = class(Ttemplate2MDIF)
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
    qryInsurances: TADOQuery;
    srcInsurances: TDataSource;
    OpenDialog1: TOpenDialog;
    qryInitQry: TADOQuery;
    qryInsurancesReciptID: TIntegerField;
    qryInsurancesServerID: TIntegerField;
    qryInsurancesYearID: TIntegerField;
    Panel7: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    edtReciptNumber: TDBEdit;
    edtReciptDate: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
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
    BitBtn5: TBitBtn;
    btnSearch_: TBitBtn;
    btnExcel: TBitBtn;
    qryInsurancesCustID: TIntegerField;
    qryCustomers: TADOQuery;
    qryInsurances_CustID: TStringField;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BtnDelete2: TBitBtn;
    Panel8: TPanel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    Label8: TLabel;
    DBNavigator2: TDBNavigator;
    edtInsurancesNo: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    qryInsurancesInsurancesID: TIntegerField;
    qryInsurancesInsurancesNo: TIntegerField;
    qryInsurancesInsurancesDate: TStringField;
    qryInsurancesCurrenciesID: TIntegerField;
    qryInsurancesExchangeRates: TBCDField;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    srcInsurancesItems: TDataSource;
    qryInsurancesItems: TADOQuery;
    qryInsurancesItemsInsurancesItemsID: TAutoIncField;
    qryInsurancesItemsInsurancesID: TIntegerField;
    qryInsurancesItemsInsurancesCode: TIntegerField;
    qryInsurancesItemsPremiumRates: TBCDField;
    qryInsurancesItemsCurrencyAmount: TBCDField;
    qryInsurancesItemsRialEquivalent: TBCDField;
    cmbCurrenciesID: TDBComboBox;
    Label10: TLabel;
    qryInsurancesItems_InsurancesCode: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    SumGrid1: TSumGrid;
    qryReciptsReciptID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
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
    edtProformaNo: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    lbl5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    btnPrint: TBitBtn;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    qryInsurancesItemsVAT: TBCDField;
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
    qryReciptsLicenseDateOrder: TStringField;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    qryReciptsProformaDate: TDateTimeField;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actRemoveExecute(Sender: TObject);
    procedure qryInsurancesAfterPost(DataSet: TDataSet);
    procedure srcInsurancesStateChange(Sender: TObject);
    procedure qryInsurancesAfterInsert(DataSet: TDataSet);
    procedure actShowFileExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qryInsurancesBeforeDelete(DataSet: TDataSet);
    procedure actScanExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryInsurancesAfterScroll(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure qryInsurancesCurrenciesIDChange(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryInsurancesItemsAfterDelete(DataSet: TDataSet);
    procedure qryInsurancesItemsAfterInsert(DataSet: TDataSet);
    procedure qryInsurancesItemsBeforeDelete(DataSet: TDataSet);
    procedure qryInsurancesItemsBeforeEdit(DataSet: TDataSet);
    procedure qryInsurancesItemsBeforeInsert(DataSet: TDataSet);
    procedure qryInsurancesItemsBeforePost(DataSet: TDataSet);
    procedure qryInsurancesAfterDelete(DataSet: TDataSet);
    procedure qryInsurancesBeforeCancel(DataSet: TDataSet);
    procedure qryInsurancesBeforePost(DataSet: TDataSet);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure qryInsurancesItemsPremiumRatesChange(Sender: TField);
    procedure qryInsurancesItemsCurrencyAmountChange(Sender: TField);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryInsurancesItemsRialEquivalentChange(Sender: TField);
  private
    FormType: Integer;
    FArchive: String;
    procedure RefreshFiles;
    procedure UpdateFilter;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InitDBCombos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsurancesF: TInsurancesF;

implementation

uses
  DM, GlobalPro, shamsiDate, mmessage, DateUtils, Math, searchCode_ADO,
  filter_ADO, FilterClass_ADO, FormFunctions, ScanImage, search2, sort2;

{$R *.dfm}

procedure TInsurancesF.FormCreate(Sender: TObject);
begin
  inherited;
  InitDBCombos;
  FormType := var_glb_gParam;
  qryInitQry.Active := True;
  FArchive := ExtractFilePath(Application.ExeName) +
    'Archive\AllYear\Insurances\';
end;

procedure TInsurancesF.InitDBCombos;
begin
  cmbCurrenciesID.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
    Active := True;
    while not Eof do
    begin
      cmbCurrenciesID.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := false;
  end; // with
end;

procedure TInsurancesF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryInsurancesItems.Active := false;
  with qryInsurances do
  begin
    Active := false;
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

procedure TInsurancesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TInsurancesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TInsurancesF.RefreshFiles;
var
  sr: TSearchRec;
  FileDate: String;
  CurPath: String;
  Itm: TListItem;
  fileDateTime: TDateTime;
begin
  ListView1.Clear;
  if not qryInsurances.Active then
    Exit;
  CurPath := FArchive + qryInsurancesInsurancesID.AsString;
  CurPath := IncludeTrailingBackslash(CurPath);
  if FindFirst(CurPath + '*.*', faAnyFile - faDirectory, sr) = 0 then
  begin
    repeat
      CurPath := CurPath + sr.Name;
      FileAge(CurPath, fileDateTime);
      FileDate := miladi2Shamsi(fileDateTime);
      Itm := ListView1.Items.Add;
      Itm.Caption := sr.Name;
      Itm.SubItems.Add(FileDate);
      // ListView1.Items.AddItem(Itm);

    until FindNext(sr) <> 0;
    FindClose(sr);
  end;

end;

procedure TInsurancesF.SpeedButton1Click(Sender: TObject);
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
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' ›—„Â«  ', Txt,
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

procedure TInsurancesF.SpeedButton2Click(Sender: TObject);
var
  Txt: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := qryCustomers.SQL.Text;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, '”—›’· Â«Ì Œ«’', Txt,
    ['ﬂœ', '⁄‰Ê«‰'], Results, [100, 100], alLeft) then
    qryInsurances.FieldByName('CustID').AsString := Results[0];
end;

procedure TInsurancesF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
  RefreshFiles;
end;

procedure TInsurancesF.actAddExecute(Sender: TObject);
var
  aFileName, CurPath: String;
begin
  inherited;
  If qryInsurances.IsEmpty then
    Exit;
  if OpenDialog1.Execute then
  begin
    CurPath := IncludeTrailingBackslash
      (FArchive + qryInsurancesInsurancesID.AsString);
    SysUtils.ForceDirectories(CurPath);
    aFileName := ExtractFileName(OpenDialog1.FileName);
    CopyFile(PChar(OpenDialog1.FileName), PChar(CurPath + aFileName), false);
    RefreshFiles;
  end;
end;

procedure TInsurancesF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInsurancesF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'State', '', 'Ê÷⁄Ì ', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'Select Min(ReciptState),max(ReciptState) from Recipts ');
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
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TInsurancesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    qryInsurances.DisableControls;
    qryInsurancesItems.DisableControls;
    InitReportFile(ppReport1, 'Insurances' + IntToStr(FormType), True)
  finally
    qryRecipts.EnableControls;
    qryInsurances.EnableControls;
    qryInsurancesItems.EnableControls;
  end;
end;

procedure TInsurancesF.UpdateFilter;
begin
  With qryInsurances do
  begin
    Active := false;
  end;
  with qryRecipts Do
  begin
    Active := false;
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
    Parameters.ParamByName('ReciptType').Value := FormType;
    Active := True;
  end; // with

end;

procedure TInsurancesF.actRemoveExecute(Sender: TObject);
var
  CurPath: String;
begin
  inherited;
  if ListView1.Items.Count > 0 then
  begin
    if get_response('¬Ì« «“Õ–› „ÿ„∆‰ Â” Ìœø˛') <> mrYes then
      Exit;
    CurPath := IncludeTrailingBackslash
      (FArchive + qryInsurancesInsurancesID.AsString);
    DeleteFile(CurPath + ListView1.Selected.Caption);
    RefreshFiles;
  end;
end;

procedure TInsurancesF.qryInsurancesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryInsurancesItems.State in dseditModes then
    qryInsurancesItems.Post;
  try
    qryInsurancesItems.UpdateBatch;
    BigMessage('À»  ‘œ.', 1);
  except
    on E: Exception do
    begin
      Warn(E.Message);
      DataToExcel(qryInsurancesItems);
    end;
  end; // try
end;

procedure TInsurancesF.qryInsurancesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshFiles;
  With qryInsurancesItems do
  begin
    Active := false;
    Parameters.ParamByName('InsurancesID').Value :=
      qryInsurancesInsurancesID.AsInteger;
    Active := True;
  end;
end;

procedure TInsurancesF.srcInsurancesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := (Sender as TDataSource).DataSet.State in dseditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DataSetDelete1.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TInsurancesF.qryInsurancesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('»Ì„Â ‰«„Â Õ–› ‘œ.', 1);
end;

procedure TInsurancesF.qryInsurancesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptID').AsInteger := qryReciptsReciptID.AsInteger;
  DataSet.FieldByName('YearId').AsInteger := qryReciptsYearID.AsInteger;
  DataSet.FieldByName('ServerId').AsInteger := qryReciptsServerID.AsInteger;
  DataSet.FieldByName('InsurancesDate').AsString := var_glb_CurrentDate;

  DataSet.FieldByName('InsurancesID').AsInteger :=
    GetANewCode(Self.Name, 'Insurances', 'InsurancesID', DMf.adcBSell);
  DataSet.FieldByName('InsurancesNo').AsInteger :=
    GetANewCode(Self.Name, 'Insurances', 'InsurancesNo', DMf.adcBSell);

  edtInsurancesNo.SetFocus;

end;

procedure TInsurancesF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, Self, 0);
end;

procedure TInsurancesF.actShowFileExecute(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := IncludeTrailingBackslash(FArchive + qryInsurancesInsurancesID.AsString);
  S := S + ListView1.Selected.Caption;
  RunDoc(S);
end;

procedure TInsurancesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInsurancesItems);
end;

procedure TInsurancesF.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton2.Click;
end;

procedure TInsurancesF.DBGrid1EditButtonClick(Sender: TObject);
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
  if not(aDataSet.State in dseditModes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText := 'SELECT SellsCode, SellsName FROM SellsInfo ' +
          'WHERE (SellsType = 72)';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '⁄‰«ÊÌ‰ ', sqlText,
          ['ﬂœ', '⁄‰Ê«‰'], Results, [100, 100], alLeft) then
        begin
          aDataSet.FieldByName('InsurancesCode').AsString := Results[0];
        end; // if
      end;

  end; // case
end;

procedure TInsurancesF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TInsurancesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TInsurancesF.gridkeyenter(Sender: TObject; var Key: Char);
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
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditModes then
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
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TInsurancesF.qryInsurancesBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryInsurancesItems.Active then
  BEGIN
    if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mrYes then
      Abort;
    qryInsurancesItems.Cancel;
    qryInsurancesItems.Requery();
  END;
end;

procedure TInsurancesF.qryInsurancesBeforeDelete(DataSet: TDataSet);
var
  S: String;
begin
  inherited;
  if get_response
    ('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  »« ›«Ì· Â«Ì ÅÌÊ”  —œÌ› Ã«—Ì „ÿ„∆‰ Â” Ìœø') <> mrYes
  then
    Abort;
  S := FArchive + qryInsurancesInsurancesID.AsString;
  DelDir(S);
end;

procedure TInsurancesF.qryInsurancesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryInsurancesItems.State in dseditModes then
    qryInsurancesItems.Post;
end;

procedure TInsurancesF.qryInsurancesCurrenciesIDChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
    SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
    SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
    Parameters.ParamByName('ID').Value := Sender.AsInteger;
    Parameters.ParamByName('Date').Value := qryReciptsReciptDate.AsString;
    Active := True;
    qryInsurances.FieldByName('ExchangeRates').AsCurrency :=
      Fields[0].AsCurrency;
    Active := false;
  end;

end;

procedure TInsurancesF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TInsurancesF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TInsurancesF.qryInsurancesItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('⁄‰Ê«‰ Õ–› ‘œ.', 1)
end;

procedure TInsurancesF.qryInsurancesItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if (not CheckRequiredFields(qryInsurances)) then
  begin
    DataSet.Cancel;
    Exit;
  end;
  if not(qryInsurances.State in dseditModes) then
    qryInsurances.Edit;
  DataSet.FieldByName('InsurancesID').AsInteger :=
    qryInsurances.FieldByName('InsurancesID').Value;
end;

procedure TInsurancesF.qryInsurancesItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ⁄‰Ê«‰ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TInsurancesF.qryInsurancesItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryInsurances.State in dseditModes) then
    Abort;
end;

procedure TInsurancesF.qryInsurancesItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryInsurances.State in dseditModes) then
    Abort
end;

procedure TInsurancesF.qryInsurancesItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('InsurancesID').AsInteger :=
    qryInsurances.FieldByName('InsurancesID').Value;
  if DataSet.FieldByName('_InsurancesCode').IsNull then
  begin
    DataSet.Cancel;
    okPanel.SetFocus;
    Abort
  end;
end;

procedure TInsurancesF.qryInsurancesItemsCurrencyAmountChange(Sender: TField);
begin
  inherited;
  qryInsurancesItems.FieldByName('RialEquivalent').AsCurrency :=
    RoundTo(qryInsurances.FieldByName('ExchangeRates').AsFloat *
    qryInsurancesItems.FieldByName('CurrencyAmount').AsFloat, 0);

end;

procedure TInsurancesF.qryInsurancesItemsPremiumRatesChange(Sender: TField);
begin
  inherited;
  // qryInsurancesItems.FieldByName('CurrencyAmount').AsCurrency:=
  // RoundTo( (qryRecipts.FieldByName('ArzAmount').AsFloat*
  // qryInsurancesItems.FieldByName('PremiumRates').AsFloat)/100 ,0);
end;

procedure TInsurancesF.qryInsurancesItemsRialEquivalentChange(Sender: TField);
begin
  inherited;
  qryInsurancesItems.FieldByName('VAT').AsCurrency :=
    RoundTo((qryInsurancesItems.FieldByName('RialEquivalent').AsFloat * 3)
    / 100, 0);

end;

procedure TInsurancesF.actScanExecute(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMf.adcBSell, 'Insurances', 'InsurancesID', 2, false,
    '', True);
end;

procedure TInsurancesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInsurancesItems);
end;

procedure TInsurancesF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TInsurancesF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TInsurancesF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TInsurancesF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
