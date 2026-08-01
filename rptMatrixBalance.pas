unit rptMatrixBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppCtrls, ppVar, ppPrnabl, ppClass, ShlObj,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  Menus, ppParameter, Math, ppDesignLayer, System.ImageList,
  System.Actions, System.StrUtils, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.CheckLst, Vcl.ComCtrls, FrTreeChart, jpeg, MySplitter,
  Vcl.WinXCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TrptMatrixBalanceF = class(Ttemplate2MDIF)
    srcMatrix: TDataSource;
    qryMatrix: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    actSOrt: TAction;
    actExcel: TAction;
    actRelation: TAction;
    actGhoose: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLBCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppDocDate: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLine29: TppLine;
    ppLabel13: TppLabel;
    ppLine16: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine5: TppLine;
    ppLine11: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLabel1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel11: TppLabel;
    cmbCircleKind: TComboBox;
    Label2: TLabel;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    special: TAction;
    Button2: TButton;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    actDoMatrix: TAction;
    DBGrid1: TCedarDbgrid;
    BitBtn3: TBitBtn;
    chklstActiveColumns: TCheckListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    chklstShareColumns: TCheckListBox;
    actTelegeramExcel: TAction;
    Excel1: TMenuItem;
    BitBtn4: TBitBtn;
    frmTreeChart1: TfrmTreeChart;
    btnPic: TBitBtn;
    Panel1: TPanel;
    LstRow: TListBox;
    lstSource: TListBox;
    LstCol: TListBox;
    Panel4: TPanel;
    btnRemoveRow: TBitBtn;
    btnAddRow: TBitBtn;
    Panel5: TPanel;
    btnAddCol: TBitBtn;
    btnRemoveCol: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    qryMatrixSave: TADOQuery;
    srcMatrixSave: TDataSource;
    qryMatrixSaveMatrixNo: TIntegerField;
    qryMatrixSaveMatrixName: TStringField;
    qryMatrixSaveCOl_s: TStringField;
    qryMatrixSaveRow_s: TStringField;
    edtMatrixName: TDBEdit;
    Label8: TLabel;
    edtMatrixNo: TDBEdit;
    Label9: TLabel;
    actSave: TAction;
    DBNavigator1: TDBNavigator;
    qryMatrixSaveCircleKind: TIntegerField;
    qryMatrixSaveActiveColumns: TLargeintField;
    qryMatrixSaveShareColumns: TLargeintField;
    btnSearchReciptNumber: TSpeedButton;
    Label1: TLabel;
    edtHashTag: TDBEdit;
    qryMatrixSaveHashTag: TWideStringField;
    BitBtn8: TBitBtn;
    chkAutoFitColWidths: TCheckBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSOrtExecute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure specialExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actDoMatrixExecute(Sender: TObject);
    procedure qryMatrixAfterOpen(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frmTreeChart1Button2Click(Sender: TObject);
    procedure frmTreeChart1btnPrintClick(Sender: TObject);
    procedure frmTreeChart1btnTelegramClick(Sender: TObject);
    procedure chklstActiveColumnsClick(Sender: TObject);
    procedure frmTreeChart1btnShowClick(Sender: TObject);
    procedure actTelegeramExcelExecute(Sender: TObject);
    procedure qryMatrixBeforeClose(DataSet: TDataSet);
    procedure frmTreeChart1btnPicClick(Sender: TObject);
    procedure btnPicClick(Sender: TObject);
    procedure PnlUnderButtonClick(Sender: TObject);
    procedure qryMatrixBeforeOpen(DataSet: TDataSet);
    procedure lstSourceDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnAddRemoveClick(Sender: TObject);
    procedure LstColDblClick(Sender: TObject);
    procedure LstRowDblClick(Sender: TObject);
    procedure qryMatrixSaveAfterScroll(DataSet: TDataSet);
    procedure qryMatrixSaveBeforePost(DataSet: TDataSet);
    procedure qryMatrixSaveAfterInsert(DataSet: TDataSet);
    procedure srcMatrixSaveStateChange(Sender: TObject);
    procedure qryMatrixSaveBeforeDelete(DataSet: TDataSet);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure qryMatrixSaveBeforeScroll(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure chkAutoFitColWidthsClick(Sender: TObject);
  private
    aWhere, FilterCaption: String;
    procedure UpdateList;
    procedure InitCombo;
    function GetItemlst(lst: TListBox): string;
    procedure SaveSettings;
    procedure LoadSettings;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptMatrixBalanceF: TrptMatrixBalanceF;

implementation

uses Dm, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, DBGrid2Print, Resource, Filter_ADO_Const, FormFunctions, FaraConsts,
  Telegram, MMESSAGE, searchCode_ADO;

{$R *.dfm}

procedure TrptMatrixBalanceF.UpdateList;
Var
  ModelFrom, ModelTo: String;
  StuffFrom, StuffTo: String;
  // GroupFrom,GroupTo :String;
  SecondTypeFrom, SecondTypeTo: String;
  SecondTypeItemFrom, SecondTypeItemTo: String;

  UnitFrom, UnitTo: String;
  SellsFrom, SellsTo: String;
  PID1From, PID1To: String;
  PID2From, PID2To: String;
  PID3From, PID3To: String;
  DateFrom, DateTo: String;
  MonthFrom, MonthTo: String;
  DayFrom, DayTo: String;

  YearFrom, YearTo: String;
  storeFrom, storeTo: String;
  numberFrom, numberTo: String;
  ProductFrom, ProductTo: String;
  FormType: String;
begin
  aWhere := emptystr;

  FormType := GetcFrom(myParams.ParamValues['TypeSelect'], ftString);
  if FormType = emptystr then
    FormType := '-10000';

  // bwhere := emptystr;
  ProductFrom := GetcFrom(myParams.ParamValues['Product'], ftInteger);
  ProductTo := GetcTo(myParams.ParamValues['Product'], ftInteger);
  ModelFrom := GetcFrom(myParams.ParamValues['Model'], ftInteger);
  ModelTo := GetcTo(myParams.ParamValues['Model'], ftInteger);
  StuffFrom := GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
  StuffTo := GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
  // GroupFrom     := GetcFrom(myParams.ParamValues['GroupID'],ftInteger);
  // GroupTo       := GetcTo(myParams.ParamValues['GroupID'],ftInteger);

  SecondTypeFrom := GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
  SecondTypeTo := GetcTo(myParams.ParamValues['SecondType'], ftInteger);

  SecondTypeItemFrom := GetcFrom(myParams.ParamValues['SecondTypeItem'],
    ftInteger);
  SecondTypeItemTo := GetcTo(myParams.ParamValues['SecondTypeItem'], ftInteger);

  UnitFrom := GetcFrom(myParams.ParamValues['UseUnitID'], ftInteger);
  UnitTo := GetcTo(myParams.ParamValues['UseUnitID'], ftInteger);
  SellsFrom := GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
  SellsTo := GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
  PID1From := GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
  PID1To := GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
  PID2From := GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
  PID2To := GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
  PID3From := GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
  PID3To := GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
  DateFrom := GetcFrom(myParams.ParamValues['ReciptDate'], ftString);
  DateTo := GetcTo(myParams.ParamValues['ReciptDate'], ftString);

  DayFrom := GetcFrom(myParams.ParamValues['Day'], ftInteger);
  DayTo := GetcTo(myParams.ParamValues['Day'], ftInteger);

  MonthFrom := GetcFrom(myParams.ParamValues['Month'], ftInteger);
  MonthTo := GetcTo(myParams.ParamValues['Month'], ftInteger);

  numberFrom := GetcFrom(myParams.ParamValues['number'], ftInteger);
  numberTo := GetcTo(myParams.ParamValues['number'], ftInteger);
  storeFrom := GetcFrom(myParams.ParamValues['storeId'], ftInteger);
  storeTo := GetcTo(myParams.ParamValues['storeId'], ftInteger);
  YearFrom := GetcFrom(myParams.ParamValues['Year'], ftInteger);
  YearTo := GetcTo(myParams.ParamValues['Year'], ftInteger);
  // States := GetcFrom(myParams.ParamValues['States'], ftString);

  Add2Filter(aWhere, Format('R.ReciptType IN(%s)', [(FormType)]));

  Add2Filter(aWhere, Format('ISNULL(Ri.ProductModel , 0) Between %S And %S',
    [ModelFrom, ModelTo]));
  Add2Filter(aWhere, Format('ISNULL(Ri.StuffCode, 0) Between %S And %S',
    [StuffFrom, StuffTo]));
  Add2Filter(aWhere, Format('ISNULL(Ri.ProductCode, 0) Between %S And %S',
    [ProductFrom, ProductTo]));

  Add2Filter(aWhere, Format('ISNULL(Ri.UseUnitID, 0) Between %S And %S',
    [UnitFrom, UnitTo]));
  // Add2Filter(awhere,Format('StuffCoding.GroupID Between %S And %S',[GroupFrom,GroupTo]));
  // Add2Filter(aWhere, Format('ISNULL(L1.Code, 0) Between %S And %S',
  // [TypeFrom, TypeTo]));

  Add2Filter(aWhere, Format('ISNULL(R.PersonID1, 0) Between %S And %S',
    [PID1From, PID1To]));
  Add2Filter(aWhere, Format('ISNULL(R.PersonID2, 0) Between %S And %S',
    [PID2From, PID2To]));
  Add2Filter(aWhere, Format('ISNULL(R.PersonID3, 0)  Between %S And %S',
    [PID3From, PID3To]));

  Add2Filter(aWhere, Format('R.ReciptDate Between %S And %S',
    [QuotedStr(DateFrom), QuotedStr(DateTo)]));

  Add2Filter(aWhere,
    Format('(CAST(SUBSTRING(R.ReciptDate, 6, 2) AS int) Between %S And %S )',
    [(MonthFrom), (MonthTo)]));

  Add2Filter(aWhere,
    Format('(CAST(RIGHT(R.ReciptDate,2) AS int) Between %S And %S )',
    [(DayFrom), (DayTo)]));

  Add2Filter(aWhere, Format('R.ReciptNumber Between %S And %S',
    [numberFrom, numberTo]));
  Add2Filter(aWhere, Format('R.StoreID Between %S And %S',
    [storeFrom, storeTo]));

  Add2Filter(aWhere, Format('R.YearID Between %S And %S', [YearFrom, YearTo]));

  Add2Filter(aWhere,
    Format('(LookUps_I.Code BETWEEN %S AND %S OR Ri.SecondTypeItem  IS NULL  )',
    [SecondTypeItemFrom, SecondTypeItemTo]));

  Add2Filter(aWhere,
    Format('(LookUps_M.Code BETWEEN %S AND %S OR R.SecondType  IS NULL  )',
    [SecondTypeFrom, SecondTypeTo]));

  // if States = emptystr then
  // States := '0,1,2,3,4,5';
  Add2Filter(aWhere, 'R.ReciptState < 3 ');

  actDoMatrix.Execute;
end;

procedure TrptMatrixBalanceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterProduct);

      AddItem(dmf.adcBSell, 'Model', dmf.qryRTProcedureCaption.AsString,
        'کد' + dmf.qryRTProcedureCaption.AsString, ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT LookUpID, Name FROM LookUps ', 'select 0,2147483647');

      AddItemFilter(GetFilter, TFilterStuffCode);

      AddItemFilter(GetFilter, TFilterSecondTypeItem);

      AddItem(dmf.adcBSell, 'SecondType', dmf.qryRTLookUpName.AsString,
        'كد' + dmf.qryRTLookUpName.AsString, ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT LookUps.Code, LookUps.Name FROM Recipts INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        'select 0,2147483647');

      AddItem(dmf.adcBSell, 'UseUnitID', dmf.qryRTUseUnitCaseCaption.AsString,
        'كد' + dmf.qryRTUseUnitCaseCaption.AsString, ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT  UseUnitID, UseUnitName FROM UseUnits ',
        'select 0,2147483647');

      AddItemFilter(GetFilter, TFilterSellsEmporium);
      // AddItemFilter(GetFilter, TFilterStates);

      AddItemFilter(GetFilter, TFilterMonthFromTo);
      AddItemFilter(GetFilter, TFilterDay);

      AddItem(dmf.adcBSell, 'PersonID3', dmf.qryRTPerson3Caption.AsString,
        'كد' + dmf.qryRTPerson3Caption.AsString, ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select 0,2147483647');
      AddItem(dmf.adcBSell, 'PersonID2', dmf.qryRTPerson2Caption.AsString,
        'كد' + dmf.qryRTPerson2Caption.AsString, ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select 0,2147483647');
      AddItem(dmf.adcBSell, 'PersonID1', dmf.qryRTPerson1Caption.AsString,
        'كد' + dmf.qryRTPerson1Caption.AsString, ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select 0,2147483647');
      AddItem(dmf.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''0000/00/00'',''9999/99/99''');
      AddItem(dmf.adcBSell, 'number', 'شماره', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'select 0,2147483647');
      AddItem(dmf.adcBSell, 'storeId', 'انبار', 'كدانبار', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);

      AddItem(dmf.adcBSell, 'Year', 'محدود سال مالي', 'سال مالي', ftInteger,
        dvDefaults, '0', inttostr(APPBank.Year), ciSimple, '', '');

      AddItemFilter(GetFilter, TFilterTypeSelect);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        FilterCaption := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptMatrixBalanceF.actTelegeramExcelExecute(Sender: TObject);
var
  T: TTelegram;
  xls_FileName, TelegramChatID: string;
begin
  inherited;
  xls_FileName := DBGrid1.ExportTo(eExcel);
  TelegramChatID := ReadConfig(APPID, 'LsatTelegramChatID', '84956004');
  TelegramChatID := get_box('تلگرام', 'Telegram ChatID را وارد كنيد.',
    TelegramChatID);
  if TelegramChatID <> emptystr then
  begin
    SaveConfig(APPID, 'LsatTelegramChatID', TelegramChatID);
    T := TTelegram.Create;
    try
      try
        T.Token := TelgeramUserBot;
        begin
          T.SendDocument(TelegramChatID, '#' + qryMatrixSaveHashTag.AsString +
            #13#10 + Caption, xls_FileName);
        end;
      except
      end;
    finally
      T.Free;
    end;
  end;

end;

procedure TrptMatrixBalanceF.FormShow(Sender: TObject);
var
  MatrixNo: Integer;
  MatrixSaveMatrixNo: string;
begin
  inherited;
  myParams.Clear;
  qryMatrixSave.AfterScroll := nil;
  qryMatrixSave.Open;
  MatrixSaveMatrixNo := ReadConfig(APPID, 'MatrixSaveMatrixNo', '1');
  MatrixNo := StrToInt(MatrixSaveMatrixNo);
  qryMatrixSave.AfterScroll := qryMatrixSaveAfterScroll;
  if not qryMatrixSave.Locate('MatrixNo', MatrixNo, []) then
    InitCombo;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptMatrixBalanceF.frmTreeChart1btnPicClick(Sender: TObject);
begin
  inherited;
  frmTreeChart1.btnPicClick(Sender);

end;

procedure TrptMatrixBalanceF.frmTreeChart1btnPrintClick(Sender: TObject);
begin
  inherited;
  frmTreeChart1.btnPrintClick(Sender);
end;

procedure TrptMatrixBalanceF.frmTreeChart1btnShowClick(Sender: TObject);
begin
  inherited;
  frmTreeChart1.btnShowClick(Sender);
end;

procedure TrptMatrixBalanceF.frmTreeChart1btnTelegramClick(Sender: TObject);
begin
  inherited;
  frmTreeChart1.btnTelegramClick(Sender);
end;

procedure TrptMatrixBalanceF.frmTreeChart1Button2Click(Sender: TObject);
begin
  inherited;
  frmTreeChart1.Button2Click(Sender);
end;

procedure TrptMatrixBalanceF.InitCombo;
var
  s, COl_s, Row_s, ifound: string;
  i: Integer;
begin

  initCheckList2(chklstActiveColumns, qryMatrixSaveActiveColumns.AsLargeInt, 1);
  initCheckList2(chklstShareColumns, qryMatrixSaveShareColumns.AsLargeInt, 1);
  cmbCircleKind.ItemIndex := qryMatrixSaveCircleKind.AsInteger;

  lstSource.Items.Clear;
  LstRow.Items.Clear;
  LstCol.Items.Clear;

  COl_s := ',' + qryMatrixSaveCOl_s.AsString.Trim + ',';
  Row_s := ',' + qryMatrixSaveRow_s.AsString.Trim + ',';
  with dmf.qryTmpTmp do
  begin
    close;
    SQL.Text := 'SELECT ID,CaptionName FROM util.Analyze';
    SQL.Add('WHERE TableKind = 24 Order by ID');
    Open;
    while not eof do
    begin
      s := Fields[1].AsString.Trim;
      if s <> emptystr then
      begin
        i := Fields[0].AsInteger;

        ifound := ',' + i.ToString.Trim + ',';
        if Pos(ifound, COl_s) > 0 then
          LstCol.Items.AddObject(s, TObject(i))
        else if Pos(ifound, Row_s) > 0 then
          LstRow.Items.AddObject(s, TObject(i))
        else
          lstSource.Items.AddObject(s, TObject(i));

      end;
      next;
    end;
  end;

  // cmbCol1.ItemIndex := ReadConfig(APPID, 'cmbCol1', '2').ToInt64;
  // cmbCol2.ItemIndex := ReadConfig(APPID, 'cmbCol2', '2').ToInt64;
  // cmbRow1.ItemIndex := ReadConfig(APPID, 'cmbRow1', '0').ToInt64;
  // cmbRow2.ItemIndex := ReadConfig(APPID, 'cmbRow2', '0').ToInt64;

end;

procedure TrptMatrixBalanceF.LstColDblClick(Sender: TObject);
begin
  inherited;
  btnAddRemoveClick(btnRemoveCol);
end;

procedure TrptMatrixBalanceF.LstRowDblClick(Sender: TObject);
begin
  inherited;
  btnAddRemoveClick(btnRemoveRow);
end;

procedure TrptMatrixBalanceF.lstSourceDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  txt: string;
  ListBox: TListBox;
  Canvas: TCanvas;
begin
  inherited;
  txt := lstSource.Items[Index];
  ListBox := Control as TListBox;
  Canvas := ListBox.Canvas;

  Canvas.FillRect(Rect);

  // f lstSource.Count = 0 then
  // exit;

  if (LstRow.Items.IndexOfObject(lstSource.Items.Objects[Index]) = -1) or
    (LstCol.Items.IndexOfObject(lstSource.Items.Objects[Index]) = -1) then
  begin
    // Canvas.Font.Style := [fsUnderline];
    Canvas.Font.Color := clDkGray;
  end;

  Canvas.TextOut((Rect.Right - Canvas.TextWidth(txt)), Rect.Top,
    ListBox.Items[Index]);

  if odFocused in State then
    Canvas.DrawFocusRect(Rect);
end;

procedure TrptMatrixBalanceF.actSOrtExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMatrix);
end;

procedure TrptMatrixBalanceF.actprintExecute(Sender: TObject);
begin
  inherited;
  try
    qryMatrix.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := true;
    ppReport1.Print;
  finally
    qryMatrix.EnableControls;
  end;
end;

procedure TrptMatrixBalanceF.qryMatrixAfterOpen(DataSet: TDataSet);
var
  curField: TField;
  i, ConstField: Integer;
  sLimit1, sLimit2: string;
begin
  inherited;
  // CloseMessage;
  ConstField := 0; // IfThen(cmbRow2.ItemIndex = 0, 2, 4);
  with qryMatrix do
  begin
    for i := ConstField to FieldCount - 1 do
    begin
      curField := Fields[i];
      curField.Tag := 3;

      // if curField is TBCDField then
      // begin
      // (curField as TBCDField).currency := true;
      // (curField as TBCDField).DisplayFormat := '#,##0;(#,##0)';
      // end;

      if (curField is TBCDField) or (curField is TCurrencyField) or
        (curField is TFMTBCDField) then
      begin
        if (curField is TFMTBCDField) then
        begin
          TFMTBCDField(curField).currency := true;
          (curField as TFMTBCDField).DisplayFormat := '#,##0;(#,##0)';
        end

        else
        begin
          TBCDField(curField).currency := true;
          (curField as TBCDField).DisplayFormat := '#,##0;(#,##0)';
        end;
      end;

    end;
  end;

  DBGrid1.ColorDBGrid;

  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[i].Title.TitleButton := true;
    if Pos('درصد', DBGrid1.Columns[i].Title.Caption) > 0 then
      DBGrid1.Columns[i].Color := $00BBD1FF;

  end;

  /// / DBGrid1.SetFooter4Sum([]);
  // setSizeColDBGrid(DBGrid1);

  if qryMatrixSaveMatrixName.AsString <> emptystr then
  begin
    sLimit1 := qryMatrixSaveMatrixName.AsString;
    sLimit2 := '#' + qryMatrixSaveHashTag.AsString;
  end
  else
  begin

    sLimit1 := #13#10 + ' _ ' + LstRow.Items.Text + ' _ ' + LstCol.Items.Text +
      ' _ ' + cmbCircleKind.Text;

    sLimit2 := ' از تاريخ ' + GetcFrom(myParams.ParamValues['ReciptDate'],
      ftString) + ' تا تاريخ ' + GetcTo(myParams.ParamValues['ReciptDate'],
      ftString);

    sLimit2 := sLimit2 + 'از ماه ' + GetcFrom(myParams.ParamValues['Month'],
      ftString) + ' تا ماه ' + GetcTo(myParams.ParamValues['Month'], ftString);

    sLimit2 := sLimit2 + 'از سال ' + GetcFrom(myParams.ParamValues['Year'],
      ftString) + ' تا سال ' + GetcTo(myParams.ParamValues['Year'], ftString);

    sLimit2 := sLimit2 + 'از ' + dmf.qryRTLookUpNameItem.AsString +
      GetcFrom(myParams.ParamValues['SecondTypeItem'], ftString) + ' تا ' +
      dmf.qryRTLookUpNameItem.AsString +
      GetcTo(myParams.ParamValues['SecondTypeItem'], ftString);
  end;

  if CheckBox1.Checked then
  begin

    frmTreeChart1.showChart(qryMatrix, Self, sLimit1, sLimit2);

    frmTreeChart1.CmbShow1.ItemIndex := 1;
    frmTreeChart1.cmbValue1.ItemIndex := 2;
    frmTreeChart1.btnSetAllField.Click;
  end;

  DBGrid1.setSizeColDBGrid;

end;

procedure TrptMatrixBalanceF.qryMatrixBeforeClose(DataSet: TDataSet);
begin
  inherited;
  frmTreeChart1.btnClearSeries.Click
end;

procedure TrptMatrixBalanceF.qryMatrixBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  try
    dmf.ExecuteQry('DROP TABLE ##tblTemp2')
  except
  end;
  // BigMessage('درحال دریافت اطلاعات....', 0);
end;

procedure TrptMatrixBalanceF.qryMatrixSaveAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryMatrixSaveMatrixNo.AsLargeInt := GetANewCode(Self.Name,
    'FaraSystems.dbo.MatrixSave', 'MatrixNo', theMainConnection);

end;

procedure TrptMatrixBalanceF.qryMatrixSaveAfterScroll(DataSet: TDataSet);
begin
  inherited;
  InitCombo;
  if myParams.FindParam('ReciptDate') <> nil then
    UpdateList;
  LoadSettings
end;

procedure TrptMatrixBalanceF.SaveSettings;
begin
  frmTreeChart1.DBAdvGDIPChartView1.SaveToFile(__AppData + Self.Name +
    qryMatrixSaveMatrixNo.AsString);
end;

procedure TrptMatrixBalanceF.LoadSettings;
begin
  frmTreeChart1.DBAdvGDIPChartView1.LoadFromFile(__AppData + Self.Name +
    qryMatrixSaveMatrixNo.AsString);
end;

procedure TrptMatrixBalanceF.qryMatrixSaveBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (get_response('آیا برای حذف گزارش مطمئن هستید') <> mrYes) then
    Abort;
end;

procedure TrptMatrixBalanceF.qryMatrixSaveBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if (get_response('آیا برای ذخیره گزارش مطمئن هستید') <> mrYes) then
  // Abort;
  DataSet.FieldByName('COl_s').AsString := GetItemlst(LstCol);
  DataSet.FieldByName('Row_s').AsString := GetItemlst(LstRow);

  DataSet.FieldByName('CircleKind').AsInteger := cmbCircleKind.ItemIndex;
  DataSet.FieldByName('ActiveColumns').AsLargeInt :=
    GetCheckList2(chklstActiveColumns, 1);
  DataSet.FieldByName('ShareColumns').AsLargeInt :=
    GetCheckList2(chklstShareColumns, 1);

  SaveConfig(APPID, 'chklstActiveColumns', GetCheckList2(chklstActiveColumns, 1)
    .ToString);

  SaveConfig(APPID, 'cmbCircleKind', cmbCircleKind.ItemIndex.ToString);

end;

procedure TrptMatrixBalanceF.qryMatrixSaveBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  SaveSettings
end;

procedure TrptMatrixBalanceF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  chkAutoFitColWidths.Checked := False;
  if qryMatrixSave.State in dsEditModes then
    qryMatrixSave.Post;
  actDoMatrix.Execute
end;

procedure TrptMatrixBalanceF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TrptMatrixBalanceF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  DBGrid1.setSizeColDBGrid
end;

procedure TrptMatrixBalanceF.btnAddRemoveClick(Sender: TObject);
var
  i: Shortint;
  aSource, aTarget: TListBox;
  s: String;
begin
  inherited;
  if Sender = btnAddCol then
  begin
    aSource := lstSource;
    aTarget := LstCol;
  end
  else if Sender = btnAddRow then
  begin
    aSource := lstSource;
    aTarget := LstRow;
  end
  else if Sender = btnRemoveCol then
  begin
    aSource := LstCol;
    aTarget := lstSource;
  end
  else
  begin
    aSource := LstRow;
    aTarget := lstSource;
  end;
  if aSource.Count = 0 then
    exit;
  i := aSource.ItemIndex;
  if i = -1 then
    i := aSource.Count - 1;
  if aTarget.Items.IndexOfObject(aSource.Items.Objects[i]) = -1 then
  begin
    s := aSource.Items[i].Trim;
    if s <> emptystr then
    begin
      aTarget.AddItem(s, aSource.Items.Objects[i]);
      aSource.Items.Delete(i);
    end;
  end;
end;

procedure TrptMatrixBalanceF.btnPicClick(Sender: TObject);
var
  FilePath: array [0 .. MAX_PATH] of char;
  Bitmap_FileName, Path: string;
  c: TCanvas;
  r, T: TRect;
  h: THandle;
  Bild: TBitmap;
  jpg: TJPEGImage;

begin
  inherited;
  SHGetFolderPath(0, 0, 0, 0, FilePath);
  Path := FilePath;
  Bitmap_FileName := Path + '\' + MakeUniqDBBackupName(APPBank.Name,
    var_glb_CurrentDate) + 'Form.jpg';

  c := TCanvas.Create;
  Bild := TBitmap.Create;
  jpg := TJPEGImage.Create;

  try
    c.Handle := GetWindowDC(GetDesktopWindow);
    h := GetForeGroundWindow;
    if h <> 0 then
      GetWindowRect(h, T);

    r := Rect(0, 0, T.Right - T.Left, T.Bottom + T.Top);
    Bild.Width := T.Right - T.Left;
    Bild.Height := T.Bottom + T.Top;

    Bild.Canvas.CopyRect(r, c, T);
    jpg.Assign(Bild);
    jpg.SaveToFile(Bitmap_FileName);
    RunDoc(Path);
    RunDoc(Bitmap_FileName);
  finally
    ReleaseDC(0, c.Handle);
    c.Free;
    Bild.Free;
    jpg.Free;
  end;
end;

procedure TrptMatrixBalanceF.btnSearchReciptNumberClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT MatrixNo, MatrixName FROM FaraSystems.dbo.MatrixSave';
  b := searchCode_ADOF.SearchCode2(dmf.adcBSell, Caption, txt,
    ['شماره', 'نام '], Results, [80, 200], alLeft);
  if b then
  begin
    if not qryMatrixSave.Locate('MatrixNo', Results[0], []) then
      Warn('یافت نشد');
  end;

end;

procedure TrptMatrixBalanceF.chkAutoFitColWidthsClick(Sender: TObject);
begin
  inherited;
  DBGrid1.AutoFitColWidths := chkAutoFitColWidths.Checked
end;

procedure TrptMatrixBalanceF.specialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptMatrixBalanceF.srcMatrixSaveStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(theMainConnection, 'FaraSystems.dbo.MatrixSave', 'MatrixNo',
    Self.Name);
end;

procedure TrptMatrixBalanceF.chklstActiveColumnsClick(Sender: TObject);
begin
  inherited;
  qryMatrixSave.Edit;
  frmTreeChart1.UnSetChart;
  // frmTreeChart1.InitCombo
end;

procedure TrptMatrixBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
end;

procedure TrptMatrixBalanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  CloseMessage;
  SaveConfig(APPID, 'MatrixSaveMatrixNo',
    qryMatrixSaveMatrixNo.AsInteger.ToString);
  SaveSettings;
end;

procedure TrptMatrixBalanceF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMatrix);
end;

procedure TrptMatrixBalanceF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptMatrixBalanceF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryMatrix.Requery;
end;

procedure TrptMatrixBalanceF.PnlUnderButtonClick(Sender: TObject);
var
  Handles: HWND;
  fBitmap: TBitmap; // captured bitmap
  ScreenDc: hDC;
  Rect: TRect;
  lpPal: PLogPalette;

  // fObjectRLeft: Integer; // x pos of active object (during desktop capture)
  // fObjectRTop: Integer; // y pos of active object (during desktop capture)
  // fObjectRWidth: Integer;
  // width pos of active object (during desktop capture)
  // fObjectRHeight: Integer;
  // height pos of active object (during desktop capture)
  FilePath: array [0 .. MAX_PATH] of char;
  Bitmap_FileName, Path: string;
  jpg: TJPEGImage;

begin
  inherited;
  SHGetFolderPath(0, 0, 0, 0, FilePath);
  Path := FilePath;
  Bitmap_FileName := Path + '\' + MakeUniqDBBackupName(APPBank.Name,
    var_glb_CurrentDate) + 'Form.jpg';

  fBitmap := TBitmap.Create;
  jpg := TJPEGImage.Create;
  fBitmap.PixelFormat := pf24bit;
  Handles := DBGrid1.Handle;
  GetWindowRect(Handles, Rect);
  with fBitmap, Rect do
  begin
    Width := (Right - Left);
    Height := (Bottom - Top);
    ScreenDc := GetDC(0);
    try
      // Do we have a palette device? - Thanks to Joe C. Hecht
      if (GetDeviceCaps(ScreenDc, RASTERCAPS) and RC_PALETTE = RC_PALETTE) then
      begin
        // Allocate memory for a logical palette
        GetMem(lpPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
        // Zero it out to be neat
        FillChar(lpPal^, SizeOf(TLOGPALETTE) +
          (255 * SizeOf(TPALETTEENTRY)), #0);
        // Fill in the palette version
        lpPal^.palVersion := $300;
        // Grab the system palette entries
        lpPal^.palNumEntries := GetSystemPaletteEntries(ScreenDc, 0, 256,
          lpPal^.palPalEntry);
        if (lpPal^.palNumEntries <> 0) then
          // Create the palette
          fBitmap.Palette := CreatePalette(lpPal^);
        FreeMem(lpPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
      end;
    finally;
      ReleaseDC(0, ScreenDc);
    end;
  end;
  // Need to take multiple monitors into consideration here too
  BitBlt(fBitmap.Canvas.Handle, 0, 0, fBitmap.Width, fBitmap.Height,
    DBGrid1.Canvas.Handle, Rect.Left - Screen.ActiveForm.Left,
    Rect.Top - Screen.ActiveForm.Top, SRCCOPY);

  // save rectangle for a repeat capture?
  // fObjectRLeft := Rect.Left;
  // fObjectRTop := Rect.Top;
  // fObjectRWidth := Rect.Right - Rect.Left;
  // fObjectRHeight := Rect.Bottom - Rect.Top;
  // Copy bitmap to function result
  // fBitmap.SaveToFile(Bitmap_FileName);

  jpg.Assign(fBitmap);
  jpg.SaveToFile(Bitmap_FileName);

  RunDoc(Path);
  RunDoc(Bitmap_FileName);
  fBitmap.Free;
  jpg.Free;

end;

procedure TrptMatrixBalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptMatrixBalanceF.actDoMatrixExecute(Sender: TObject);
begin
  inherited;
  with qryMatrix do
    try
      DBGrid1.StartLoadingStatus;
      Active := False;
      // if LstCol.Count + LstRow.Count > 0 then
      // begin
      SQL.Text := 'SP_MatrixUnlimit :COls , :Rows , :CircleKind';
      SQL.Add(' , :Where , :ActiveColumns, :ShareColumns , :MatrixNo ');

      Parameters.ParamByName('MatrixNo').Value :=
        qryMatrixSaveMatrixNo.AsInteger;

      if LstCol.Count > -1 then
        Parameters.ParamByName('COls').Value := GetItemlst(LstCol)
      else
        Parameters.ParamByName('COls').Value := 0;

      if LstRow.Count > -1 then
        Parameters.ParamByName('Rows').Value := GetItemlst(LstRow)
      else
        Parameters.ParamByName('Rows').Value := 0;

      // end ;
      // else
      // begin
      // SQL.Text := 'SP_Matrix :COl1 ,:COl2 , :Row1 , :Row2 , :CircleKind';
      // SQL.Add(' , :Where , :ActiveColumns, :ShareColumns');
      //
      // if cmbCol1.ItemIndex > -1 then
      // Parameters.ParamByName('Col1').Value :=
      // inttostr(Integer(cmbCol1.Items.Objects[cmbCol1.ItemIndex]))
      // else
      // Parameters.ParamByName('Col1').Value := 0;
      //
      // if cmbCol2.ItemIndex > -1 then
      // Parameters.ParamByName('Col2').Value :=
      // inttostr(Integer(cmbCol2.Items.Objects[cmbCol2.ItemIndex]))
      // else
      // Parameters.ParamByName('Col2').Value := 0;
      //
      // if cmbRow1.ItemIndex > -1 then
      // Parameters.ParamByName('Row1').Value :=
      // inttostr(Integer(cmbRow1.Items.Objects[cmbRow1.ItemIndex]))
      // else
      // Parameters.ParamByName('Row1').Value := 0;
      //
      // if cmbRow2.ItemIndex > -1 then
      // Parameters.ParamByName('Row2').Value :=
      // inttostr(Integer(cmbRow2.Items.Objects[cmbRow2.ItemIndex]))
      // else
      // Parameters.ParamByName('Row2').Value := 0;
      // end;

      if cmbCircleKind.ItemIndex > -1 then
        Parameters.ParamByName('CircleKind').Value := cmbCircleKind.ItemIndex
      else
        Parameters.ParamByName('CircleKind').Value := 0;

      Parameters.ParamByName('Where').Value := aWhere;

      Parameters.ParamByName('ActiveColumns').Value :=
        GetCheckList2(chklstActiveColumns, 1);

      Parameters.ParamByName('ShareColumns').Value :=
        GetCheckList2(chklstShareColumns, 1);

      if LstCol.Count + LstRow.Count > 0 then
        Active := true;
      DBGrid1.FinishLoadingStatus;

    except
      on E: Exception do
      begin
        DBGrid1.FinishLoadingStatus;
        add2log(E.Message);
        Warn2(E.Message);
      end;
    end;
end;

function TrptMatrixBalanceF.GetItemlst(lst: TListBox): string;
var
  i: Integer;
begin
  for i := 0 to lst.Count - 1 do
    Result := Result + inttostr(Integer(lst.Items.Objects[i])) + ',';
  Result := LeftStr(Result, (Length(Result) - 1))
end;

procedure TrptMatrixBalanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

end.
