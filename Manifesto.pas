unit Manifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, DB, ADODB, ppBands, Math,
  ppClass, ppDB, ppCtrls, ppReport, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppTypes,
  SumDBGrid, ppParameter, Filter_ADO_Const, FarsiReportBuilde, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.CheckLst;

type
  TManifestoF = class(Ttemplate2MDIF)
    srcManifesto: TDataSource;
    qryManifesto: TADOQuery;
    srcManifestoItems: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryManifestoItems: TADOQuery;
    DBNavigator1: TDBNavigator;
    BitBtn10: TBitBtn;
    pnlDelete: TPanel;
    SpeedButton16: TSpeedButton;
    Panel5: TPanel;
    popPrint: TPopupMenu;
    ManifestoF1: TMenuItem;
    ManifestoF2: TMenuItem;
    grpNote: TGroupBox;
    dbmmoNote: TDBMemo;
    qryManifestoManifestoID: TIntegerField;
    qryManifestoManifestoNo: TIntegerField;
    qryManifestoManifestoDate: TStringField;
    qryManifestoManifestoRunDate: TStringField;
    qryManifestoNote: TWideStringField;
    qryManifestoItemsManifestoItemsID: TAutoIncField;
    qryManifestoItemsManifestoID: TIntegerField;
    qryManifestoItemsConsumerPrice: TBCDField;
    qryManifestoItemsSellPrice1: TBCDField;
    qryManifestoItemsSellPrice2: TBCDField;
    qryManifestoItemsSellPrice3: TBCDField;
    qryManifestoItemsSellPrice4: TBCDField;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edtManifestoNo: TDBEdit;
    dbedtManifestoDate: TDBEdit;
    qryStuff_Unit_TecInf: TADOQuery;
    qryManifestoItems_StuffName: TStringField;
    qryManifestoItems_UnitName: TStringField;
    edtManifestoRunDate: TDBEdit;
    Label3: TLabel;
    BtnRecall: TBitBtn;
    pmRecall: TPopupMenu;
    Label4: TLabel;
    AllClick: TMenuItem;
    N2: TMenuItem;
    btnExcel: TBitBtn;
    N3: TMenuItem;
    qryManifestoSellsMethod: TIntegerField;
    qryManifestoSellsEmporium: TIntegerField;
    qryManifestoCustomerGrpIDFrom: TIntegerField;
    qryManifestoCustomerGrpIDTo: TIntegerField;
    qryManifestoFirstUser: TWideStringField;
    qryManifestoLastUser: TWideStringField;
    qryManifestoCustIDFrom: TIntegerField;
    qryManifestoCustIDTo: TIntegerField;
    qryManifestoActive: TBooleanField;
    pnl1: TPanel;
    qrySellsMethods: TADOQuery;
    qrySellsEmporium: TADOQuery;
    qryManifesto_SellsMethod: TStringField;
    qryManifesto_SellsEmporium: TStringField;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    btnCustIDFrom: TSpeedButton;
    dbtxt_CustomerGrpIDFrom: TDBText;
    qryCustomers: TADOQuery;
    btnCustIDTo: TSpeedButton;
    btnCustomerGrpIDFrom: TSpeedButton;
    qryCustomersGroup: TADOQuery;
    btnCustomerGrpIDTo: TSpeedButton;
    dbtxt_CustomerGrpIDTo: TDBText;
    dbtxt_CustIDFrom: TDBText;
    dbtxt_CustIDTo: TDBText;
    qryManifesto_CustomerGrpIDFrom: TStringField;
    qryManifesto_CustomerGrpIDTo: TStringField;
    qryManifesto_CustIDFrom: TStringField;
    qryManifesto_CustIDTo: TStringField;
    qryManifestoItemsStuffCode: TLargeintField;
    qryManifestoStatuss: TWordField;
    dbtxtStatuss: TDBText;
    actStatuss: TAction;
    qryManifestoItems_StuffTecInfo: TStringField;
    btnOtherMenu: TBitBtn;
    actGetExcel: TAction;
    mnuGetExcel: TMenuItem;
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
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    qryManifestoItemsDiscountAmount: TBCDField;
    qryManifestoItemsDiscountPercent: TBCDField;
    qryManifestoItemsStuffCodingItemID: TIntegerField;
    grpCalc: TGroupBox;
    rdgrpDecAdd: TRadioGroup;
    mskCo: TMaskEdit;
    lblCo: TLabel;
    BitBtn2: TBitBtn;
    actCalc: TAction;
    qryManifestoItemsStuffName: TStringField;
    qryManifestoItemsSellPrice5: TBCDField;
    qryManifestoItemsSellPrice6: TBCDField;
    qryManifestoItemsSellPrice7: TBCDField;
    DBGrid1: TCedarDbgrid;
    qryManifestoItemsReciptItemsID: TLargeintField;
    qry4SearchCode: TADOQuery;
    qryManifestoItems_ReciptItemsID: TIntegerField;
    qryManifestoSellOrBuy: TWordField;
    qryManifestoItemsPersonID1D: TIntegerField;
    qryManifestoItems_PersonID1D: TStringField;
    qryInitForm: TADOQuery;
    qryManifestoItemsMTaxCo: TFloatField;
    qryManifestoItemsLastUser: TWideStringField;
    qryManifestoItemsFirstUser: TWideStringField;
    actReciptState0: TAction;
    actRecal: TAction;
    SpeedButton1: TSpeedButton;
    qryManifestoItems_VendorBarcode: TStringField;
    qryManifestoItemsDiscountPercent2: TBCDField;
    qryManifestoItemsDiscountAmount2: TBCDField;
    medtConstant: TMaskEdit;
    lblConstant: TLabel;
    CheckListBox1: TCheckListBox;
    rdgrpCalcType: TRadioGroup;
    qryManifestoItemsCurrenciesID: TIntegerField;
    qryManifestoItems_CurrenciesID: TStringField;
    qryManifestoItemsActive: TBooleanField;
    dbchkManifestoActive: TDBCheckBox;
    procedure qryManifestoItemsAfterDelete(DataSet: TDataSet);
    procedure qryManifestoItemsAfterInsert(DataSet: TDataSet);
    procedure qryManifestoItemsBeforeDelete(DataSet: TDataSet);
    procedure srcManifestoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryManifestoAfterInsert(DataSet: TDataSet);
    procedure qryManifestoAfterPost(DataSet: TDataSet);
    procedure qryManifestoAfterScroll(DataSet: TDataSet);
    procedure qryManifestoAfterDelete(DataSet: TDataSet);
    procedure qryManifestoBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryManifestoItemsBeforePost(DataSet: TDataSet);
    procedure qryManifestoBeforePost(DataSet: TDataSet);
    procedure qryManifestoItemsAfterPost(DataSet: TDataSet);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryManifestoItemsBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure BtnRecallClick(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryManifestoItemsBeforeInsert(DataSet: TDataSet);
    procedure qryManifestoBeforeScroll(DataSet: TDataSet);
    procedure qryManifestoBeforeCancel(DataSet: TDataSet);
    procedure btnExcelClick(Sender: TObject);
    procedure btnCustIDFromClick(Sender: TObject);
    procedure btnCustomerGrpIDFromClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryManifestoStatussGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryManifestoBeforeEdit(DataSet: TDataSet);
    procedure actStatussExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actCalcExecute(Sender: TObject);
    procedure qryManifestoAfterEdit(DataSet: TDataSet);
    procedure qryManifestoItemsAfterEdit(DataSet: TDataSet);
    procedure actReciptState0Execute(Sender: TObject);
    procedure rdgrpCalcTypeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    SellOrBuy: Integer;
    UnsavedFileName, BeforeEdtCode: String;
    DbgrdOption: set of TDBGridOption;
    procedure SaveArticlesToFile;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InsertStuffCode(Sender: TObject);
    function UnicStuffCode: Boolean;
    procedure InitManifesto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ManifestoF: TManifestoF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, FormFunctions, search2,
  sort2, StrUtils, filter_ADO, FilterClass_ADO, GetExcel, FaraConsts;

{$R *.dfm}

procedure TManifestoF.gridkeyenter(Sender: TObject; var Key: Char);
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
            nextIndex := 3;
          1:
            nextIndex := 3;
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
            nextIndex := 10;
          10:
            nextIndex := 11;
          11:
            nextIndex := 12;
          12:
            nextIndex := 13;
          13:
            nextIndex := 14;
          14:
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
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
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

procedure TManifestoF.qryManifestoItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف كالاي جاري مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TManifestoF.FormCreate(Sender: TObject);
var
  i: Integer;
  aField: TBCDField;
  b: Boolean;
begin
  inherited;
  SellOrBuy := var_glb_gParam;
  qrySellsMethods.Open;
  qrySellsEmporium.Open;
  SetLookUpCash(qryManifesto);
  SetLookUpCash(qryManifestoItems);
  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
  with qryManifesto do
  begin
    Parameters.ParamByName('SellOrBuy').Value := SellOrBuy;
    Active := True;
    Last;
  end; // wih
  UnsavedFileName := 'UnsavedItem_' + Self.Name + '.DAT';

  if SellOrBuy = 1 then
  begin
    Caption := Caption + ' خرید';
    for i := 0 to ComponentCount - 1 do
    begin
      if components[i] is TBCDField then
      begin
        aField := TBCDField(components[i]);
        if Pos('sellprice', LowerCase(aField.Name)) <> 0 then
          aField.DisplayLabel := StringReplace(aField.DisplayLabel, 'فروش',
            'خرید', []);
      end;
    end;
  end;

  with qryInitForm do
  begin
    Open;
    qryManifestoItems.FieldByName('PersonID1D').DisplayLabel :=
      FieldByName('Person2DetailCaption').AsString;
    qryManifestoItems.FieldByName('_PersonID1D').DisplayLabel :=
      'نام ' + FieldByName('Person2DetailCaption').AsString;
  end;

  b := (CurAccess and Integer(akChangeState) <> 0);
  actReciptState0.Visible := b;
  InitManifesto;
  rdgrpCalcType.ItemIndex := 0; // پیش‌فرض ضریب
  rdgrpCalcTypeClick(rdgrpCalcType);
end;

procedure TManifestoF.FormResize(Sender: TObject);
begin
  inherited;
  CheckListBox1.Columns := CheckListBox1.Count
end;

procedure TManifestoF.InitManifesto;
var
  i: Integer;
  fld: TField;
begin
  CheckListBox1.Items.Clear;
  for i := 0 to qryManifestoItems.Fields.Count - 1 do
  begin
    fld := qryManifestoItems.Fields[i];
    if fld is TBCDField then
      // نمایش DisplayLabel ولی نگهداری FieldName در Objects
      CheckListBox1.Items.AddObject(fld.DisplayLabel, TObject(fld));
  end;

end;

procedure TManifestoF.qryManifestoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TManifestoF.qryManifestoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
end;

procedure TManifestoF.qryManifestoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mryes then
    Abort;
end;

procedure TManifestoF.qryManifestoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryManifestoStatuss.AsInteger > 0 then
  begin
    Warn('اطلاعات قطعي شده و قابل ويرايش نيست');
    Abort;
  end;

end;

procedure TManifestoF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TManifestoF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 10] of String;
  b: Boolean;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;

  if DBGrid1.Columns[i].FieldName = 'StuffCodingItemID' then
  begin
    sqlText := 'SELECT StuffCodingItemID, Length_, Width, Thickness,' +
      ' Weight_, Barcode, Description_ FROM StuffCodingItems' +
      Format(' WHERE (StuffCode = %d )',
      [aDataSet.FieldByName('StuffCode').AsLargeInt]);
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'اجزاء كالا', sqlText,
      ['شناسه جزء', 'طول', 'عرض', 'ضخامت', 'وزن', 'باركد', 'توضيحات'], Results,
      [50, 50, 50, 50, 50, 50, 100], alLeft);
    if b then
    begin
      if not(aDataSet.State in dseditmodes) then
        aDataSet.Edit;
      aDataSet.FieldByName('StuffCodingItemID').AsString := Results[0];
      // qryItems.FieldByName('Length_').AsString := Results[1];
      // qryItems.FieldByName('Width').AsString := Results[2];
      // qryItems.FieldByName('stuffdiameter').AsString := Results[3];
    end;
    exit;
  end;

  if DBGrid1.Columns[i].FieldName = 'StuffCode' then
  begin
    sqlText := ' SELECT  c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo  ' +
      ' FROM Aid_StuffCoding   WHERE     (State = 0)';
    if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشخصات كالا', sqlText,
      ['كد كالا', 'عنوان كالا', 'واحد', 'مشخصات فني'], Results,
      [100, 100, 100, 70], alLeft) then
    begin
      aDataSet.FieldByName('StuffCode').AsString := Results[0];
    end;
  end;

  if DBGrid1.Columns[i].FieldName = 'ReciptItemsID' then
  begin
    sqlText :=
      'SELECT Ri.ID, Ri.StuffCode, SC.c_StuffName, Ri.UnitSellPrice, R.ReciptNumber'
      + ' , R.ReciptDate, s.c_StoreName, C2.CustName' +
      ' FROM Recipts AS R INNER JOIN' +
      ' Stores AS s ON R.StoreID = s.n_StoreID INNER JOIN' +
      ' ReciptItems AS Ri ON R.ReciptID = Ri.ReciptID AND R.ServerID = Ri.ServerID AND R.YearID = Ri.YearID'
      + ' INNER JOIN' +
      ' StuffCoding AS SC ON Ri.StuffCode = SC.c_StuffCode LEFT OUTER JOIN' +
      ' Customers AS C2 ON R.PersonID2 = C2.CustID' +
      ' WHERE (R.ReciptType = 20)';

    if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'فرم مرجع', sqlText,
      ['', 'کدکالا', 'کالا', 'فی', 'شماره فرم', 'تاریخ فرم', 'انبار',
      'فروشنده'], Results, [0, 80, 100, 80, 80, 80, 100, 150], alLeft) then
    begin
      aDataSet.FieldByName('ReciptItemsID').AsString := Results[0];
      aDataSet.FieldByName('StuffCode').AsString := Results[1];
      aDataSet.FieldByName('ConsumerPrice').AsString := Results[3];
      aDataSet.FieldByName('SellPrice1').AsString := Results[3];
    end;
  end;
  if DBGrid1.Columns[i].FieldName = 'PersonID1D' then
  begin
    if qryInitForm.FieldByName('Customer2DetailKind').AsString = EmptyStr then
      Warn('مشتري 2 در Detail ارتباط داده نشده');
    sqlText := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
      ' WHERE GroupType IN(' +
      Trim(qryInitForm.FieldByName('Customer2DetailKind').AsString) + ')';

    if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشخصات مشتری', sqlText,
      ['کد', 'نام مشتری'], Results, [50, 150], alLeft) then
    begin
      aDataSet.FieldByName('PersonID1D').AsString := Results[0];
    end; // if
  end;

end;

procedure TManifestoF.actCalcExecute(Sender: TObject);
var
  Co, ConstValue: Double;
  i: Integer;
  fld: TField;
  Sign: Integer;
begin
  inherited;

  if rdgrpDecAdd.ItemIndex = -1 then
  begin
    Warn('افزايش يا كاهش مشخص نشده است');
    Exit;
  end;

  if rdgrpCalcType.ItemIndex = -1 then
  begin
    Warn('نوع محاسبه (ضريب يا مقدار ثابت) مشخص نشده است');
    Exit;
  end;

  // مقدار ثابت
  ConstValue := StrToFloatDef(Trim(medtConstant.Text), 0);

  // ضریب
  if not TryStrToFloat(Trim(mskCo.Text), Co) then
    Co := 0;

  if rdgrpDecAdd.ItemIndex = 0 then
    Sign := 1
  else
    Sign := -1;

  with qryManifestoItems do
  try
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      for i := 0 to CheckListBox1.Items.Count - 1 do
        if CheckListBox1.Checked[i] then
        begin
          fld := TField(CheckListBox1.Items.Objects[i]);
          if Assigned(fld) and (fld is TBCDField) then
          begin
            case rdgrpCalcType.ItemIndex of
              0: // ضریب
                fld.AsCurrency := RoundTo(fld.AsCurrency + Sign * fld.AsCurrency * Co, 0);
              1: // مقدار ثابت
                fld.AsCurrency := RoundTo(fld.AsCurrency + Sign * ConstValue, 0);
            end;
          end;
        end;
      Post;
      Next;
    end;
  finally
    EnableControls;
  end;
end;


// procedure TManifestoF.actCalcExecute(Sender: TObject);
// var
// Co: double;
// begin
// inherited;
// if rdgrpDecAdd.ItemIndex = -1 then
// begin
// Warn('افزايش يا كاهش مشخص نشده است');
// exit;
// end;
// if TryStrToFloat(Trim(mskCo.Text), Co) then
// With qryManifestoItems do
// try
// DisableControls;
// First;
// while not Eof do
// begin
// Edit;
// qryManifestoItemsSellPrice1.AsCurrency :=
// RoundTo(qryManifestoItemsSellPrice1.AsCurrency +
// ifthen(rdgrpDecAdd.ItemIndex = 0, 1, -1) *
// qryManifestoItemsSellPrice1.AsCurrency * Co, 0);
// Post;
// Next;
// end;
//
// finally
// EnableControls;
// end
// else
// Warn('ضريب وارد نشده');
//
// end;

procedure TManifestoF.actGetExcelExecute(Sender: TObject);
var
  q_r_y: TADOQuery;
  i: Integer;
  fN: string;
begin
  inherited;
  q_r_y := TADOQuery.Create(Self);
  try
    q_r_y.Connection := DMf.adcBSell;
    q_r_y.Fields.Clear;
    q_r_y.SQL.Text := 'SELECT * FROM ManifestoItems WHERE ManifestoID = 0 ';
    q_r_y.Active := True;
    for i := 0 to q_r_y.Fields.Count - 1 do
    begin
      fN := q_r_y.Fields[i].FieldName;
      if qryManifestoItems.FindField(fN) <> nil then
      begin
        q_r_y.Fields[i].DisplayLabel := qryManifestoItems.FieldByName(fN)
          .DisplayLabel;
        q_r_y.Fields[i].Tag := qryManifestoItems.FieldByName(fN).Tag;
      end;
    end;

    for i := 0 to qryManifestoItems.Fields.Count - 1 do
    begin
      fN := qryManifestoItems.Fields[i].FieldName;
      if q_r_y.FindField(fN) <> nil then
      begin
        q_r_y.FieldByName(fN).Index := qryManifestoItems.Fields[i].Index;
      end;
    end;
    q_r_y.AfterInsert := qryManifestoItemsAfterInsert;
    GetExcelF.ShowImPortExcel(q_r_y);
  finally
    q_r_y.Free;
    qryManifestoItems.Requery();
    // ManifestoID:=qryManifesto.fieldbyname('ManifestoID').AsInteger;
    // qryManifesto.First;
    // qryManifesto.Locate('ManifestoID', VarArrayOf([ManifestoID]),[]);
  end; // try
end;

procedure TManifestoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TManifestoF.actReciptState0Execute(Sender: TObject);
begin
  inherited;
  if get_response('آيا از تبدیل به موقت كردن فرم جاري مطمئن هستيد.') = mryes
  then
    With qryManifesto do
    begin
      Edit;
      qryManifestoStatuss.AsInteger := 0;
      Post;
    end;
end;

procedure TManifestoF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TManifestoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryManifestoItems);
end;

procedure TManifestoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryManifestoItems);
end;

procedure TManifestoF.actStatussExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا از قطعي كردن فرم جاري مطمئن هستيد.') = mryes then
    With qryManifesto do
    begin
      Edit;
      qryManifestoStatuss.AsInteger := 1;
      Post;
    end;
end;

procedure TManifestoF.SpeedButton5Click(Sender: TObject);
var
  txt: String;
  result: array [0 .. 6] of String;
begin
  inherited;
  txt := 'SELECT Manifesto.ManifestoID, Manifesto.ManifestoNo, Manifesto.ManifestoDate, Manifesto.ManifestoRunDate,'
    + ' Customers_1.CustName AS CustNameFrom,' +
    ' Customers.CustName AS CustNameTo,Manifesto.Note' +
    ' FROM Manifesto LEFT JOIN' +
    ' Customers AS Customers_1 ON Manifesto.CustIDFrom = Customers_1.CustID LEFT JOIN'
    + ' Customers ON Manifesto.CustIDTo = Customers.CustID WHERE SellOrBuy =' +
    SellOrBuy.ToString;

  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو اعلاميه', txt,
    ['', 'شماره', 'تاريخ', 'تاريخ اجرا', 'از مشتري', 'تا مشتري', 'توضيحات'],
    result, [0, 100, 100, 100, 100, 100, 150], alLeft) then
    qryManifesto.locate('ManifestoID', result[0], []);
end;

procedure TManifestoF.qryManifestoItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TManifestoF.qryManifestoItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
end;

procedure TManifestoF.qryManifestoAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  DataSet.FieldByName('SellOrBuy').AsInteger := SellOrBuy;
  DataSet.FieldByName('ManifestoID').AsInteger :=
    GetANewCode(Self.Name, 'Manifesto', 'ManifestoID', DMf.adcBSell);

  // DataSet.FieldByName('ManifestoNo').AsInteger :=
  // GetANewCode(Self.Name, 'Manifesto', 'ManifestoNo', DMf.adcBSell);
  txt := Format('SELECT MAX(ManifestoNo)FROM Manifesto WHERE(SellOrBuy = %d )',
    [SellOrBuy]);
  DataSet.FieldByName('ManifestoNo').AsInteger :=
    GetANewCode(IntToStr(SellOrBuy), txt, 'ManifestoNo');

  DataSet.FieldByName('ManifestoDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('ManifestoRunDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  DataSet.FieldByName('Active').AsBoolean := True;
  edtManifestoNo.SetFocus;
end;

procedure TManifestoF.srcManifestoStateChange(Sender: TObject);
begin
  inherited;
  qryManifestoItems.Filtered := false;
  okPanel.Visible := qryManifesto.State in dseditmodes;
  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption - [dgEditing] + [dgMultiSelect]
    // +[dgRowSelect]
  else
    DBGrid1.Options := DbgrdOption + [dgEditing]; // -[dgRowSelect]
  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  pnlDelete.Visible := okPanel.Visible;
  BtnRecall.Enabled := okPanel.Visible;

  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  FreeReservedCodes(DMf.adcBSell, 'Manifesto', 'ManifestoNo',
    IntToStr(SellOrBuy));

  actGetExcel.Enabled := newPanel.Visible;
  grpCalc.Visible := okPanel.Visible;
  actCalc.Visible := okPanel.Visible;
end;

procedure TManifestoF.qryManifestoItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ManifestoID').AsInteger :=
    qryManifesto.FieldByName('ManifestoID').AsInteger;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  DataSet.FieldByName('Active').AsBoolean := True;
end;

procedure TManifestoF.qryManifestoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryManifestoItems do
  begin
    Active := false;
    Parameters.ParamByName('ManifestoID').Value :=
      qryManifesto.FieldByName('ManifestoID').AsInteger;
    Active := True;
  end; // with
end;

procedure TManifestoF.qryManifestoAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryManifestoItems.FieldByName('ManifestoItemsID').AsInteger;
  if qryManifestoItems.State in dseditmodes then
    qryManifestoItems.Post;
  try
    qryManifestoItems.UpdateBatch;
    DeleteFile(__AppData + UnsavedFileName);
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در ثبت فرم');
    end;
  end; // try
  rid := qryManifesto.FieldByName('ManifestoID').AsInteger;
  qryManifesto.Requery;
  qryManifesto.locate('ManifestoID', rid, []);
  qryManifestoItems.Requery;
  qryManifestoItems.locate('ManifestoItemsID', rid2, [])
end;

procedure TManifestoF.qryManifestoItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if (qryManifestoItemsDiscountAmount.AsFloat > 0) and
  // (qryManifestoItemsDiscountPercent.AsFloat > 0) then
  // begin
  // Warn('درصد تخفيف و مبلغ تخفيف هردو نمي توانند مخالف صفر باشند');
  // Abort;
  // end;

  if not(qryManifesto.State in dseditmodes) then
    qryManifesto.Edit;
  if DataSet.FieldByName('StuffCode').IsNull and
    DataSet.FieldByName('_StuffName').IsNull and
    DataSet.FieldByName('SellPrice1').IsNull then
  begin
    DataSet.Cancel;
    okPanel.SetFocus;
    Abort
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(qryManifestoItems) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not UnicStuffCode then
    Abort;
end;

procedure TManifestoF.qryManifestoStatussGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetManifestoStatussState(Sender.AsInteger)
end;

procedure TManifestoF.rdgrpCalcTypeClick(Sender: TObject);
begin
  if rdgrpCalcType.ItemIndex = 0 then
  begin
    // حالت ضریب
    mskCo.Visible := True;
    lblCo.Visible := True;

    medtConstant.Visible := false;
    lblConstant.Visible := false;

    medtConstant.Text := '0';
  end
  else if rdgrpCalcType.ItemIndex = 1 then
  begin
    // حالت مقدار ثابت
    mskCo.Visible := false;
    lblCo.Visible := false;

    medtConstant.Visible := True;
    lblConstant.Visible := True;

    mskCo.Text := '';
  end;
end;

procedure TManifestoF.qryManifestoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not UnicFieldName(qryManifestoManifestoID, qryManifestoManifestoNo,
    'Manifesto', 0, ' AND SellOrBuy = ' + SellOrBuy.ToString) then
    Abort;

  if qryManifestoItems.State in dseditmodes then
    qryManifestoItems.Post;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;

end;

procedure TManifestoF.SaveArticlesToFile;
begin
  qryManifestoItems.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TManifestoF.qryManifestoItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BeforeEdtCode := EmptyStr;
  if qryManifesto.State = dsInsert then
    SaveArticlesToFile;
end;

procedure TManifestoF.AllC_L_i_c_k_Click(Sender: TObject);
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
    qryManifesto.DisableControls;
    qryManifestoItems.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryManifestoItems.EnableControls;
    qryManifesto.EnableControls;
  end;

end;

procedure TManifestoF.qryManifestoItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  BeforeEdtCode := qryManifestoItems.FieldByName('StuffCode').AsString;
  if not(qryManifesto.State in dseditmodes) then
    Abort;
end;

procedure TManifestoF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TManifestoF.InsertStuffCode;
begin
  myParams.Clear;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'GroupID', ' گروه كالا ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT  GroupID,GroupName FROM  StuffGroups ',
        'SELECT Min(GroupID),Max(GroupID) From StuffGroups');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'SELECT Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      if ShowModal = mrOk then
        GetFilterString;
    finally
      Free;
    end; // try
  end; // with
  if myParams.FindParam('GroupID') = nil then
    exit;
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      Active := false;
      SQL.Text :=
        'SELECT c_StuffCode ,BuyPrice,SellPrice1,SellPrice2,SellPrice3,SellPrice4, SellPrice5, SellPrice6, SellPrice7';
      SQL.Add('FROM StuffCoding WHERE (c_StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
      SQL.Add('AND (GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)');
      SQL.Add('AND (State = 0)');

      if (Sender as TMenuItem).Tag = 1 then
      begin
        if SellOrBuy = 1 then
          SQL.Add('AND (BuyPrice > 0)')
        else
        begin
          SQL.Add('AND ((SellPrice1 > 0)OR(SellPrice2 > 0)OR(SellPrice3 > 0)OR(SellPrice4 > 0)');
          SQL.Add('OR(SellPrice5 > 0)OR(SellPrice6 > 0)OR(SellPrice7 > 0))');
        end;
      end;

      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('GroupIDFrom').Value :=
        GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
      Parameters.ParamByName('GroupIDTo').Value :=
        GetcTo(myParams.ParamValues['GroupID'], ftInteger);
      Active := True;
      BigMessageProgBar('در حال انتقال كالاها  ...‏', RecordCount);
      qryManifestoItems.DisableControls;
      while not Eof do
      begin
        qryManifestoItems.Insert;
        qryManifestoItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('c_StuffCode').AsLargeInt;

        if SellOrBuy = 1 then
          qryManifestoItems.FieldByName('SellPrice1').AsCurrency :=
            FieldByName('BuyPrice').AsCurrency
        else if (Sender as TMenuItem).Tag = 1 then
        begin
          qryManifestoItems.FieldByName('SellPrice1').AsCurrency :=
            FieldByName('SellPrice1').AsCurrency;
          qryManifestoItems.FieldByName('SellPrice2').AsCurrency :=
            FieldByName('SellPrice2').AsCurrency;
          qryManifestoItems.FieldByName('SellPrice3').AsCurrency :=
            FieldByName('SellPrice3').AsCurrency;
          qryManifestoItems.FieldByName('SellPrice4').AsCurrency :=
            FieldByName('SellPrice4').AsCurrency;

          qryManifestoItems.FieldByName('SellPrice5').AsCurrency :=
            FieldByName('SellPrice5').AsCurrency;
          qryManifestoItems.FieldByName('SellPrice6').AsCurrency :=
            FieldByName('SellPrice6').AsCurrency;
          qryManifestoItems.FieldByName('SellPrice7').AsCurrency :=
            FieldByName('SellPrice7').AsCurrency;
        end;
        qryManifestoItems.Post;
        GoProgressBar(IntToStr(RecNo) + ' <> ' + FieldByName('c_StuffCode')
          .AsString + #254 + ' از ' + #254 + IntToStr(RecordCount) + #254);
        Next;
      end;
    finally
      Free;
      qryManifestoItems.EnableControls;
      qryManifesto.Post;
    end;
end;

procedure TManifestoF.BtnRecallClick(Sender: TObject);
begin
  inherited;
  pmRecall.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TManifestoF.AllClickClick(Sender: TObject);
begin
  inherited;
  InsertStuffCode(Sender)
end;

procedure TManifestoF.N2Click(Sender: TObject);
var
  txt, ManifestoID: String;
  result: array [0 .. 4] of String;
  i: Integer;
begin
  inherited;
  txt := 'SELECT ManifestoID, ManifestoNo, ManifestoDate, ManifestoRunDate,Note FROM Manifesto';
  txt := txt + ' where SellOrBuy = ' + SellOrBuy.ToString;
  if not searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو اعلاميه', txt,
    ['', 'شماره', 'تاريخ', 'تاريخ اجرا', 'توضیحات'], result,
    [0, 100, 100, 100, 200], alLeft) then
    exit;
  ManifestoID := result[0];
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      Active := false;
      SQL.Text := 'SELECT * FROM ManifestoItems where ManifestoID=' +
        ManifestoID;
      Active := True;
      BigMessageProgBar('در حال انتقال كالاها  ...‏', RecordCount);
      qryManifestoItems.DisableControls;
      while not Eof do
      begin
        qryManifestoItems.Insert;
        for i := 1 to Fields.Count - 1 do
          qryManifestoItems.FieldByName(Fields[i].FieldName).AsString :=
            FieldByName(Fields[i].FieldName).AsString;
        qryManifestoItems.FieldByName('ManifestoID').AsInteger :=
          qryManifesto.FieldByName('ManifestoID').AsInteger;
        GoProgressBar(IntToStr(RecNo) + ' <> ' + Fields[2].AsString + #254 +
          ' از ' + #254 + IntToStr(RecordCount) + #254);
        Next;
      end;
    finally
      Free;
      qryManifestoItems.EnableControls;
      qryManifesto.Post;
    end;
end;

function TManifestoF.UnicStuffCode;
var
  ReciptItemsID: string;
begin
  With TADOQuery.Create(DMf.adcBSell) do
    try
      result := True;
      Clone(qryManifestoItems, ltBatchOptimistic);
      ReciptItemsID := qryManifestoItemsReciptItemsID.AsLargeInt.ToString;
      Filter := 'StuffCode=' + qryManifestoItemsStuffCode.AsString;
      if ReciptItemsID <> '0' then
        Filter := Filter + ' AND ReciptItemsID = ' + ReciptItemsID;
      if qryManifestoItemsPersonID1D.AsInteger <> 0 then
        Filter := Filter + ' AND PersonID1D = ' +
          qryManifestoItemsPersonID1D.AsInteger.ToString;
      Filtered := True;
      if (qryManifestoItems.State in [dsInsert]) then
        result := RecordCount <= 0;
      if (qryManifestoItems.FieldByName('StuffCode').AsString <> BeforeEdtCode)
        and (BeforeEdtCode <> EmptyStr) then
        result := RecordCount = 0;
      if Not result then
        Warn('كد كالاي تكراري', mtInformation);
    finally
      Free;
    end;

end;

procedure TManifestoF.qryManifestoItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryManifesto.State in dseditmodes) then
    Abort;

end;

procedure TManifestoF.qryManifestoBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryManifestoItems.Filtered := false
end;

procedure TManifestoF.qryManifestoBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryManifestoItems.Active then
  BEGIN
    if get_response('تغييرات لغو شوند؟') <> mryes then
      Abort;
    qryManifestoItems.Cancel;
    qryManifestoItems.Requery();
  END;
end;

procedure TManifestoF.btnExcelClick(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryManifestoItems);
end;

procedure TManifestoF.btnOtherMenuClick(Sender: TObject);
var
  txt: String;
  result: array [0 .. 8] of String;
begin
  inherited;
  txt := 'SELECT ManifestoItems.ManifestoItemsID, ManifestoItems.StuffCode, StuffCoding.c_StuffName, '
    + 'StuffCoding.c_StuffTecInfo, ManifestoItems.ConsumerPrice, ManifestoItems.SellPrice1, '
    + 'ManifestoItems.SellPrice2, ManifestoItems.SellPrice3, ManifestoItems.SellPrice4 '
    + 'FROM ManifestoItems INNER JOIN StuffCoding ON ManifestoItems.StuffCode = StuffCoding.c_StuffCode '
    + 'WHERE ManifestoItems.ManifestoID = ' +
    qryManifestoManifestoID.AsInteger.ToString;

  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو كد', txt,
    ['', 'كد كالا', 'شرح كالا', 'مشخصات فني', 'مبلغ مصرف كننده نهايي',
    'مبلغ فروش1', 'مبلغ فروش2', 'مبلغ فروش3', 'مبلغ فروش4'], result,
    [0, 100, 200, 100, 100, 100, 100, 100, 100], alLeft) then
    qryManifestoItems.locate('ManifestoItemsID', result[0], []);

end;

procedure TManifestoF.btnCustIDFromClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName FROM Customers WHERE CustomerGrpID BETWEEN '
    + IntToStr(qryManifesto.FieldByName('CustomerGrpIDFrom').AsInteger) +
    ' AND ' + IntToStr(qryManifesto.FieldByName('CustomerGrpIDTo').AsInteger);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشتريان', txt,
    ['کد', 'مشتري'], Results, [50, 150], alLeft);
  if b then
    qryManifesto[(Sender as TSpeedButton).Hint] := Results[0];
end;

procedure TManifestoF.btnCustomerGrpIDFromClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID,CustomerGrpName FROM CustomersGroup ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'گروه مشتريان', txt,
    ['کد', 'گروه'], Results, [50, 150], alLeft);
  if b then
    qryManifesto[(Sender as TSpeedButton).Hint] := Results[0];
end;

procedure TManifestoF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click
end;

procedure TManifestoF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TManifestoF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TManifestoF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TManifestoF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName
end;

end.
