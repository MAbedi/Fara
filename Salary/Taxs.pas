unit Taxs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template4, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, DBGridEhGrouping,
  ppTypes,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.DBCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Mask, Vcl.ComCtrls, ppParameter,
  ppDesignLayer, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, Vcl.Menus, Data.DB,
  Data.Win.ADODB;

type
  TTaxsF = class(TTemplate4F)
    qryTaxs: TADOQuery;
    srcTaxsItems: TDataSource;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryTaxsItems: TADOQuery;
    Panel4: TPanel;
    pnlDelete: TPanel;
    SpeedButton16: TSpeedButton;
    Panel5: TPanel;
    popPrint: TPopupMenu;
    TaxsF1: TMenuItem;
    TaxsF2: TMenuItem;
    grpNote: TGroupBox;
    dbmmoDescriptions: TDBMemo;
    Label2: TLabel;
    edtYearRun: TDBEdit;
    Label3: TLabel;
    pnl1: TPanel;
    actStatuss: TAction;
    actGetExcel: TAction;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
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
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    actCalc: TAction;
    DBGrid1: TCedarDbgrid;
    qry4SearchCode: TADOQuery;
    qryTaxsItemsID: TAutoIncField;
    qryTaxsItemsTaxID: TIntegerField;
    qryTaxsItemsRowNo: TIntegerField;
    qryTaxsItemsRevenuePrice: TBCDField;
    qryTaxsItemsFixedPrice: TBCDField;
    qryTaxsItemsCofficient: TFloatField;
    edtTFN_CODE: TDBEdit;
    edtMonthRun: TDBEdit;
    Label4: TLabel;
    SpeedButton5: TSpeedButton;
    edtTaxID: TDBEdit;
    Label1: TLabel;
    ComboFormInfoID: TDBComboBox;
    Label32: TLabel;
    qryTaxsTaxID: TIntegerField;
    qryTaxsFormInfoID: TIntegerField;
    qryTaxsYearRun: TIntegerField;
    qryTaxsMonthRun: TIntegerField;
    qryTaxsDescriptions: TStringField;
    qryTaxsBonusFreeTax: TBCDField;
    qryTaxsTFN_CODE: TIntegerField;
    qryTaxsStatuss: TWordField;
    qryTaxsTaxs_Bonus_TaxID: TIntegerField;
    qryTaxs_Taxs_Bonus_TaxID: TStringField;
    qryTaxsBonus: TADOQuery;
    qry_FormsInfo: TADOQuery;
    qryTaxsList: TADOQuery;
    qryTaxsListTaxID: TIntegerField;
    qryTaxsListFormInfoID: TIntegerField;
    qryTaxsListInfoName_L1: TStringField;
    qryTaxsListYearRun: TIntegerField;
    qryTaxsListMonthRun: TIntegerField;
    qryTaxsListDescriptions: TStringField;
    qryTaxsListBonusFreeTax: TBCDField;
    qryTaxsListTFN_CODE: TIntegerField;
    qryTaxsListStatuss: TWordField;
    qryTaxsListTaxs_Bonus_TaxID: TIntegerField;
    qryTaxsListRowNo: TIntegerField;
    qryTaxsListRevenuePrice: TBCDField;
    qryTaxsListFixedPrice: TBCDField;
    qryTaxsListCofficient: TFloatField;
    qryTaxsListFromYearMonth: TIntegerField;
    qryTaxsListToYearMonth: TIntegerField;
    qryTaxsListfirstamount: TBCDField;
    srcTaxs: TDataSource;
    srcTaxsList: TDataSource;
    ppDBPipeline2ppField1: TppField;
    ppDBPipeline2ppField2: TppField;
    ppDBPipeline2ppField3: TppField;
    ppDBPipeline2ppField4: TppField;
    ppDBPipeline2ppField5: TppField;
    ppDBPipeline2ppField6: TppField;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label7: TLabel;
    dbtxtStatuss: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    grdTaxsList: TCedarDbgrid;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    btnExcel: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1_: TDataSetDelete;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DBNavigator1: TDBNavigator;
    BitBtn10: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn2: TBitBtn;
    actCopyTax: TAction;
    procedure qryTaxsItemsAfterDelete(DataSet: TDataSet);
    procedure qryTaxsItemsAfterInsert(DataSet: TDataSet);
    procedure qryTaxsItemsBeforeDelete(DataSet: TDataSet);
    procedure srcTaxsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryTaxsAfterInsert(DataSet: TDataSet);
    procedure qryTaxsAfterPost(DataSet: TDataSet);
    procedure qryTaxsAfterScroll(DataSet: TDataSet);
    procedure qryTaxsAfterDelete(DataSet: TDataSet);
    procedure qryTaxsBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryTaxsItemsBeforePost(DataSet: TDataSet);
    procedure qryTaxsBeforePost(DataSet: TDataSet);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryTaxsItemsBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure qryTaxsItemsBeforeInsert(DataSet: TDataSet);
    procedure qryTaxsBeforeScroll(DataSet: TDataSet);
    procedure qryTaxsBeforeCancel(DataSet: TDataSet);
    procedure btnExcelClick(Sender: TObject);
    procedure qryTaxsBeforeEdit(DataSet: TDataSet);
    procedure actStatussExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure All1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure All1SetText(Sender: TField; const Text: String);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actCopyTaxExecute(Sender: TObject);
  private
    DbgrdOption: set of TDBGridOption;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    procedure Enter;
    { Public declarations }
  end;

var
  TaxsF: TTaxsF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, FormFunctions, search2,
  sort2, StrUtils, filter_ADO, FilterClass_ADO, GetExcel;

{$R *.dfm}

procedure TTaxsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
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
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      // DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

//  if nextIndex >= 0 then
//    while (nextIndex < DBGrid1.Columns.Count) and
//      (not(DBGrid1.Columns[nextIndex].Visible) OR
//      (DBGrid1.Columns[nextIndex].ReadOnly)) do
//      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TTaxsF.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  qryTaxsList.Close;
  qryTaxsList.Open;
end;

procedure TTaxsF.qryTaxsItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف ردیف جاري مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TTaxsF.Enter;
begin
  TaxsF := TTaxsF.Create(Application);
  with TaxsF do
  begin
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TTaxsF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_FormsInfo.Open;
  initDBComboBoxPay(ComboFormInfoID, 21);
  SetLookUpCash(qryTaxs);
  SetLookUpCash(qryTaxsItems);
  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
  with qryTaxs do
  begin
    Active := True;
    Last;
  end;
end;

procedure TTaxsF.qryTaxsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TTaxsF.qryTaxsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mryes then
    Abort;
end;

procedure TTaxsF.qryTaxsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryTaxsStatuss.AsInteger > 0 then
  begin
    Warn('اطلاعات قطعي شده و قابل ويرايش نيست');
    Abort;
  end;

end;

procedure TTaxsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TTaxsF.actCopyTaxExecute(Sender: TObject);
var
  TaxID, YearRun, MonthRun: Integer;
  qryInsert: TADOQuery;
begin
  inherited;
  if qryTaxs.State in dseditmodes then
    qryTaxs.Post;

  if qryTaxsItems.IsEmpty then
    exit;
  if get_response('آيا براي كپي اين جدول در جدول جديد مطمئن هستيد؟') <> mryes
  then
    exit;

  YearRun := qryTaxsYearRun.AsInteger + 1;
  MonthRun := 1;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'YearRun', ' از سال اجرا', 'سال', ftInteger,
        dvDefaults, inttoStr(YearRun), '', ciSingle, '', '');

      AddItem(DMf.adcSalary, 'MonthRun', ' از ماه اجرا', 'ماه', ftInteger,
        dvDefaults, inttoStr(MonthRun), '', ciSingle, '', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        YearRun := GetcFrom(myParams.ParamValues['YearRun'], ftInteger);
        MonthRun := GetcFrom(myParams.ParamValues['MonthRun'], ftInteger);
      end
      else
      begin
        exit;
      end;
    finally
      Free;
    end; // try
  end; // with

  TaxID := GetANewCode(Self.Name, 'pay.Taxs', 'TaxID', DMf.adcSalary);
  With DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'INSERT INTO Pay.Taxs';
    SQL.Add('(TaxID, FormInfoID, YearRun, MonthRun, Descriptions, BonusFreeTax');
    SQL.Add(', TFN_CODE, Statuss, Taxs_Bonus_TaxID)');
    SQL.Add('SELECT ' + inttoStr(TaxID));
    SQL.Add(', FormInfoID, :YearRun, :MonthRun, Descriptions+'' *'', BonusFreeTax');
    SQL.Add(', TFN_CODE, Statuss, Taxs_Bonus_TaxID');
    SQL.Add('FROM Pay.Taxs');
    SQL.Add('WHERE (TaxID = ' + qryTaxs.FieldByName('TaxID').AsString + ')');
    Parameters.ParamByName('YearRun').Value := YearRun;
    Parameters.ParamByName('MonthRun').Value := MonthRun;
    try
      ExecSQL;
      BigMessage(' در حال ثبت فرم...', 1);
      Active := false;
    except
      on e: Exception do
      begin
        Warn('اشكال در ثبت كردن فرم‌ ' + e.Message);
      end;

    end; // try
  end; // with
  qryInsert := TADOQuery.Create(DMf);
  With qryInsert do
  begin
    Connection := DMf.adcBSell;

    begin
      SQL.Text := 'INSERT INTO pay.TaxsItems';
      SQL.Add(' (TaxID, RowNo, RevenuePrice, FixedPrice, Cofficient)');
      SQL.Add('SELECT ' + inttoStr(TaxID));
      SQL.Add(' TaxID, RowNo, RevenuePrice, FixedPrice, Cofficient');
      qryInsert.SQL.Add('FROM pay.TaxsItems');
      qryInsert.SQL.Add('WHERE (TaxID = ' + qryTaxs.FieldByName('TaxID')
        .AsString + ')');

      try
        ExecSQL;
        BigMessage(' در حال ثبت سطح های فرم...', 0);
        Active := false;
      except
        Warn('اشكال در ثبت سطح های فرم‌');
      end; // try
      // Next;
    end; // while
    EnableControls;
    BigMessage(' ثبت شد.', 0);
    qryTaxs.Requery;
    qryTaxs.Locate('TaxID', TaxID, []);

  end; // with
  FreeReservedCodes(DMf.adcBSell, 'Pay.Taxs');
  qryInsert.Free;
end;

procedure TTaxsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryTaxsItems);
end;

procedure TTaxsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TTaxsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TTaxsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTaxsItems);
end;

procedure TTaxsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTaxsItems);
end;

procedure TTaxsF.actStatussExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا از قطعي كردن جدول جاري مطمئن هستيد.') = mryes then
    With qryTaxs do
    begin
      Edit;
      qryTaxsStatuss.AsInteger := 1;
      Post;
    end;
end;

procedure TTaxsF.SpeedButton5Click(Sender: TObject);
var
  txt: String;
  result: array [0 .. 6] of String;
begin
  inherited;
  txt := 'SELECT Pay.Taxs.TaxID, Pay.FormsInfo.InfoName_L1, Pay.Taxs.YearRun, Pay.Taxs.MonthRun, Pay.Taxs.Descriptions'
    + ' FROM Pay.Taxs INNER JOIN' +
    ' Pay.FormsInfo ON Pay.Taxs.FormInfoID = Pay.FormsInfo.FormInfoID';

  if searchCode_ADOF.SearchCode2(DMf.adcSalary, 'جستجو جدول', txt,
    ['', 'نوع', 'سال', 'ماه', 'توضیحات'], result, [0, 100, 100, 100, 100],
    alLeft) then
    qryTaxs.Locate('TaxID', result[0], []);
end;

procedure TTaxsF.qryTaxsItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TTaxsF.qryTaxsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TaxID').AsInteger := GetANewCode(Self.Name, 'pay.Taxs',
    'TaxID', DMf.adcSalary);
  qryTaxsYearRun.AsInteger := APPBank.Year;
  qryTaxsMonthRun.AsInteger := var_glb_CurrentMonth;
  ComboFormInfoID.SetFocus;
end;

procedure TTaxsF.srcTaxsStateChange(Sender: TObject);
begin
  inherited;
  qryTaxsItems.Filtered := false;
  okPanel.Visible := qryTaxs.State in dseditmodes;
  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption - [dgEditing] + [dgMultiSelect]
    // +[dgRowSelect]
  else
    DBGrid1.Options := DbgrdOption + [dgEditing]; // -[dgRowSelect]
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  pnlDelete.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary, '');
//  actGetExcel.Enabled := newPanel.Visible;
end;

procedure TTaxsF.qryTaxsItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('TaxID').AsInteger := qryTaxs.FieldByName('TaxID')
    .AsInteger;
end;

procedure TTaxsF.qryTaxsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTaxsItems do
  begin
    Active := false;
    Parameters.ParamByName('TaxID').Value := qryTaxs.FieldByName('TaxID')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TTaxsF.qryTaxsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryTaxsItems.FieldByName('ID').AsInteger;
  if qryTaxsItems.State in dseditmodes then
    qryTaxsItems.Post;
  try
    qryTaxsItems.UpdateBatch;
    BigMessage('ثبت شد.', 1);
  except
    on e: Exception do
    begin
      add2log(e.Message);
      Warn('اشكال در ثبت فرم' + e.Message);
    end;
  end; // try
  rid := qryTaxs.FieldByName('TaxID').AsInteger;
  qryTaxs.Requery;
  qryTaxs.Locate('TaxID', rid, []);
  qryTaxsItems.Requery;
  qryTaxsItems.Locate('ID', rid2, [])
end;

procedure TTaxsF.qryTaxsItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not(qryTaxs.State in dseditmodes) then
    qryTaxs.Edit;
  if DataSet.FieldByName('RowNo').IsNull and DataSet.FieldByName('RevenuePrice')
    .IsNull and DataSet.FieldByName('FixedPrice').IsNull then
  begin
    DataSet.Cancel;
    okPanel.SetFocus;
    Abort
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(qryTaxsItems) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
end;

procedure TTaxsF.qryTaxsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryTaxsItems.State in dseditmodes then
    qryTaxsItems.Post;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;

end;

procedure TTaxsF.AllC_L_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryTaxs.DisableControls;
    qryTaxsItems.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryTaxsItems.EnableControls;
    qryTaxs.EnableControls;
  end;

end;

procedure TTaxsF.qryTaxsItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryTaxs.State in dseditmodes) then
    Abort;
end;

procedure TTaxsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TTaxsF.qryTaxsItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryTaxs.State in dseditmodes) then
    Abort;

end;

procedure TTaxsF.qryTaxsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryTaxsItems.Filtered := false
end;

procedure TTaxsF.qryTaxsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryTaxsItems.Active then
  BEGIN
    if get_response('تغييرات لغو شوند؟') <> mryes then
      Abort;
    qryTaxsItems.Cancel;
    qryTaxsItems.Requery();
  END;
end;

procedure TTaxsF.btnExcelClick(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryTaxsItems);
end;

procedure TTaxsF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TTaxsF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TTaxsF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TTaxsF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName
end;

procedure TTaxsF.All1GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger < 0 then
    exit;
  Text := VarToStr(qry_FormsInfo.Lookup('FormInfoID', Sender.AsInteger,
    'InfoName_L1'));
  TDBComboBox(FindComponent('Combo' + Sender.FieldName)).Hint :=
    inttoStr(Sender.AsInteger);
end;

procedure TTaxsF.All1SetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Combo' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Combo' + Sender.FieldName)).ItemIndex]);
end;

end.



