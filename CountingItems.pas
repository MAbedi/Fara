// mahmood
unit CountingItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, DB, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe,
  DM, Menus, ComCtrls, ppParameter, ExtDlgs, sndkey32,
  FormFunctions, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSearchItem = class
    fieldName: String;
    caption: String;
  end; // tSearchItem

  TCountingItemsF = class(Ttemplate2MDIF)
    qryCountingItems: TADOQuery;
    srcCountingItems: TDataSource;
    Panel1: TPanel;
    Panel5: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    qryCounting: TADOQuery;
    qryStuff_Unit_TecInf: TADOQuery;
    srcCounting: TDataSource;
    qryStores: TADOQuery;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    actSendExel: TAction;
    actSort: TAction;
    actPrint: TAction;
    DataSetPost2: TDataSetPost;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    Label8: TLabel;
    LblReciptDate: TLabel;
    DBEdit3: TDBEdit;
    btnCountNumber: TBitBtn;
    DBEditDate: TDBEdit;
    qryCountingCountID: TIntegerField;
    qryCountingCountNumber: TIntegerField;
    qryCountingCountDate: TStringField;
    qryCountingNote: TStringField;
    qryCountingAttachFileName: TStringField;
    qryCountingFormSignature: TStringField;
    qryCountingState: TWordField;
    qryCountingItemsID: TIntegerField;
    qryCountingItemsCountID: TIntegerField;
    qryCountingItemsSheetID: TIntegerField;
    qryCountingItemsStoreID: TSmallintField;
    qryCountingItemsStuffSize: TStringField;
    qryCountingItemsStuffDiameter: TFloatField;
    qryCountingItemsStuffAlloy: TStringField;
    qryCountingItemsControlCode: TLargeintField;
    qryCountingItemsCount1Entity: TFloatField;
    qryCountingItemsCount2Entity: TFloatField;
    qryCountingItemsCount3Entity: TFloatField;
    qryCountingItemsCount1Weight: TFloatField;
    qryCountingItemsCount2Weight: TFloatField;
    qryCountingItemsCount3Weight: TFloatField;
    qryCountingItemsReciptID: TIntegerField;
    qryCountingItems_StuffName: TStringField;
    qryCountingItems_UnitName: TStringField;
    qryCountingItemsStuffGrade: TWordField;
    Panel7: TPanel;
    actInsert: TAction;
    actNull: TAction;
    EditPanel: TPanel;
    pnlStuffCode: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    SBtnStuffCode: TSpeedButton;
    EdtStuffCode: TDBEdit;
    Pnl_GradeToAlloy: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit4: TDBEdit;
    PnlEntityWeightPrice: TPanel;
    LblEntity: TLabel;
    LblWeight: TLabel;
    Label13: TLabel;
    EdtEntity: TDBEdit;
    EdtWeight: TDBEdit;
    edtControlCode: TDBEdit;
    Panel6: TPanel;
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    newPanel2: TPanel;
    Panel8: TPanel;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    Panel9: TPanel;
    BitBtn9: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    edtSheetID: TDBEdit;
    Label2: TLabel;
    actEdit: TAction;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    StatusBar1: TStatusBar;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    actPrintVijeh: TAction;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
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
    ppSysPageNumber: TppSystemVariable;
    qryCountingItems_SellPrice1: TCurrencyField;
    Edt_SellPrice1: TDBEdit;
    Lbl_SellPrice1: TLabel;
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    actGetEntity: TAction;
    N2: TMenuItem;
    LblStore: TLabel;
    qryCountingItemsPakhsh: TStringField;
    qryCountingItemsc_StuffName: TStringField;
    actGetExcel: TAction;
    Excel1: TMenuItem;
    qryCountingItems_StuffTecInfo: TStringField;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    actGetRotatory: TAction;
    N3: TMenuItem;
    qryCountingItems_gateKetab: TStringField;
    qryCountingItems_NoeJeld: TStringField;
    actDelete: TAction;
    N4: TMenuItem;
    qryCountingItemsStuffCode: TLargeintField;
    actReadFile: TAction;
    dlg1: TOpenTextFileDialog;
    mnuReadFile: TMenuItem;
    pb1: TProgressBar;
    grpNotFound: TGroupBox;
    Panel11: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    actState: TAction;
    dbtxtState: TDBText;
    mnuState: TMenuItem;
    GroupBox1: TGroupBox;
    cmbQuickSearch: TComboBox;
    qryCountingItemsPadidAvarandeh: TStringField;
    qryCountingItems_Carton: TFloatField;
    qryinit5: TADOQuery;
    qryCountingItems____StuffTecInfo: TStringField;
    mnuReadFile_StuffTecInfo: TMenuItem;
    GroupBox3: TGroupBox;
    cmbBtn: TComboBox;
    actCountingControlCodeF: TAction;
    actCountingControlCodeF1: TMenuItem;
    actPoseInsert: TAction;
    BitBtn13: TBitBtn;
    Panel12: TPanel;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    medtControlCode: TMaskEdit;
    qryCountingItemssd1: TStringField;
    pnlSd1: TPanel;
    lblSD1: TLabel;
    medtsd1: TMaskEdit;
    qry4Bcakup: TADOQuery;
    qryCountingCountingCalckind: TWordField;
    actGetEntityOnCountDate: TAction;
    N5: TMenuItem;
    qryCountingItemsReciptItemID: TIntegerField;
    qryCountingItemsServerID: TIntegerField;
    qryCountingItemsYearID: TIntegerField;
    actSumDistinct: TAction;
    Excel2: TMenuItem;
    N6: TMenuItem;
    qryCountingItemsc_StuffTecInfo: TStringField;
    PopupMenu1: TPopupMenu;
    AllClick1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    GroupBox4: TGroupBox;
    cmbGridEnter: TComboBox;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure qryCountingItemsAfterInsert(DataSet: TDataSet);
    procedure SBtnStuffCodeClick(Sender: TObject);
    procedure EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure qryCountingItemsBeforeDelete(DataSet: TDataSet);
    procedure qryCountingItemsAfterDelete(DataSet: TDataSet);
    procedure srcCountingItemsStateChange(Sender: TObject);
    procedure qryCountingItemsAfterPost(DataSet: TDataSet);
    procedure actInsertExecute(Sender: TObject);
    procedure actNullExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure qryCountingItemsAfterOpen(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysPageNumberGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryCountingItemsBeforePost(DataSet: TDataSet);
    procedure qryCountingAfterScroll(DataSet: TDataSet);
    procedure actGetEntityExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure EdtStuffCodeKeyPress(Sender: TObject; var Key: Char);
    procedure qryCountingItemsBeforeEdit(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actGetRotatoryExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actReadFileExecute(Sender: TObject);
    procedure actStateExecute(Sender: TObject);
    procedure qryCountingStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cmbQuickSearchChange(Sender: TObject);
    procedure NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
    procedure qryCountingItems____StuffTecInfoChange(Sender: TField);
    procedure mnuReadFileClick(Sender: TObject);
    procedure mnuReadFile_StuffTecInfoClick(Sender: TObject);
    procedure actCountingControlCodeFExecute(Sender: TObject);
    procedure actPoseInsertExecute(Sender: TObject);
    procedure medtControlCodeChange(Sender: TObject);
    procedure medtsd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medtsd1Exit(Sender: TObject);
    procedure EdtEntityExit(Sender: TObject);
    procedure qryCountingItemsAfterEdit(DataSet: TDataSet);
    procedure actGetEntityOnCountDateExecute(Sender: TObject);
    procedure actSumDistinctExecute(Sender: TObject);
    procedure AllClick1Click(Sender: TObject);
  private
    sitem: TSearchItem;
    myStore: TStore;
    formType: Byte;
    CountFieldName: String;
    CommunicableStores, LocateCode_StuffTecInfo: Boolean;
    popStuffTecInfo: TPopupMenu;
    procedure initPanels;
    procedure initForm;
    procedure InsertEntity1(Rotatory: Boolean; CountDate: string);
    procedure InsertEntity2(Rotatory: Boolean; CountDate: string);
    procedure GetEntity(Rotatory: Boolean; CountDate: string);
    function GetCode(str: string): string;
    function GetCount(str: string): string;
    function GetStuffCodeFromStuffTecInfo(StuffTecInfo: String): Largeint;
    function GetSelectedIndex: Integer;
    procedure Addcmb(DisplayLabel, fieldName: string);
    procedure sd1Locate;
    procedure BarCodeLocate;
    procedure gridkeyenter(Sender: TObject; var Key: Char);

  public
    // procedure FlipChildren(AllLevels: Boolean); override;
    { Public declarations }
  end;

var
  CountingItemsF: TCountingItemsF;

implementation

uses searchCode_ADO, GlobalPro, mmessage, SelectStore, Math,
  sort2, search2, DBGrid2Print, StrUtils, GetExcel, CountingControlCode,
  ReciptsFunctions;

{$R *.dfm}

procedure TCountingItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryCountingItems);
  formType := var_glb_gParam;
  cmbBtn.ItemIndex := formType;
  CommunicableStores := DMF.ReadBankConfig('CommunicableStores', '1') = '1';

  SelectStoreF.GetStore(myStore, 'انبار', '', MyEntityDisplayType);
  with qryStores do
  begin
    Active := False;
    Parameters.ParamByName('StoreID').Value := myStore.code;
    Active := True;
  end; // with
  Entity_Weight(DBGrid1);
  initForm;
  LblStore.caption := myStore.name;

  With qryCounting do
  begin
    Parameters.ParamByName('CountDateFrom').Value := APPBank.StartYear;
    Parameters.ParamByName('CountDateTo').Value := APPBank.endYear;
    AfterScroll := nil;
    Active := True;
    if RecordCount = 0 then
      Warn('مقاطع انبار گرداني تعريف نشده', mtInformation);
  end;

  with qryCountingItems do
  begin
    Active := False;
    SQL.Text := 'SELECT *';

    if opt.StuffCodingKind in [1, 2] then
    begin
      SQL.Add(', (SELECT LookUps.Name');
      SQL.Add('FROM LookUps RIGHT OUTER JOIN');
      SQL.Add('StuffCoding ON LookUps.Code = StuffCoding.st13');
      SQL.Add('WHERE (LookUps.Kind = 313) AND (StuffCoding.c_StuffCode = CountingItems.StuffCode)) AS Pakhsh');

      SQL.Add(', (SELECT LookUps.Name');
      SQL.Add('FROM LookUps RIGHT OUTER JOIN');
      SQL.Add('StuffCoding ON LookUps.Code = StuffCoding.st2');
      SQL.Add('WHERE (LookUps.Kind = 302) AND (StuffCoding.c_StuffCode = CountingItems.StuffCode)) AS PadidAvarandeh');

    end
    else
    begin
      qryCountingItems.FieldByName('_gateKetab').Free;
      qryCountingItems.FieldByName('_NoeJeld').Free;
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, '_gateKetab')].Free;
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, '_NoeJeld')].Free;
      SQL.Add(', CAST('''' AS VARCHAR(50)) AS Pakhsh ');
      SQL.Add(', CAST('''' AS VARCHAR(50)) AS PadidAvarandeh ');
      // SQL.Add(', CAST('''' AS VARCHAR(150)) AS c_StuffName ');
    end;

    SQL.Add(', (SELECT StuffCoding.c_StuffName');
    SQL.Add('FROM StuffCoding');
    SQL.Add('WHERE StuffCoding.c_StuffCode = CountingItems.StuffCode) AS c_StuffName');

    SQL.Add(', (SELECT StuffCoding.c_StuffTecInfo');
    SQL.Add('FROM StuffCoding');
    SQL.Add('WHERE StuffCoding.c_StuffCode = CountingItems.StuffCode) AS c_StuffTecInfo');

    SQL.Add(', '''' AS ____StuffTecInfo');

    SQL.Add(', (SELECT sd1 FROM StuffCoding WHERE (StuffCoding.c_StuffCode = CountingItems.StuffCode)) AS sd1');

    SQL.Add('FROM CountingItems');
    SQL.Add('WHERE (StoreID = :StoreID) and ( CountID =:CountID)');

    Parameters.ParamByName('StoreID').Value := myStore.code;

    if (formType = 3) and (qryCountingCountingCalckind.AsInteger <> 2) then
      SQL.Add(' AND (CountingItems.Count1Entity <> isnull(CountingItems.Count2Entity,0))  ')
  end; // with
  qryCounting.AfterScroll := qryCountingAfterScroll;
  qryCountingAfterScroll(qryCounting);

  initPanels;
  Lbl_SellPrice1.Visible := opt.ActiveSellPrice2;
  Edt_SellPrice1.Visible := opt.ActiveSellPrice2;
  qryinit5.Open;
end;

procedure TCountingItemsF.initForm;
var
  b: Boolean;
  i, k: Integer;
begin
  actGetEntity.Visible := formType = 1;
  actGetExcel.Visible := formType = 1;
  actGetRotatory.Visible := formType = 1;

  setColumns2(DBGrid1, opt.StuffCodingKind >= 1, '_gateKetab');
  setColumns2(DBGrid1, opt.StuffCodingKind >= 1, '_NoeJeld');
  setColumns2(DBGrid1, opt.StuffCodingKind >= 1, 'PadidAvarandeh');
  setColumns2(DBGrid1, opt.StuffCodingKind >= 1, '_Carton');
  mnuReadFile_StuffTecInfo.Visible := formType > 1;
  LocateCode_StuffTecInfo := False;

  // actReadFile.Enabled:=formType<>1;

  case formType of
    1:
      begin
        caption := caption + 'شمارش اول _انبار  ' + qryStores.FieldByName
          ('c_StoreName').AsString;
        setColumns2(DBGrid1, False, '_SellPrice1');
        if opt.EntityDisplay then
          setColumns2(DBGrid1, False, 'Count1Entity');
        if opt.WeightDisplay then
          setColumns2(DBGrid1, False, 'Count1Weight');
        CountFieldName := 'Count1';

      end; // 1
    2:
      begin
        caption := caption + 'شمارش دوم _انبار  ' + qryStores.FieldByName
          ('c_StoreName').AsString;
        DataSetInsert2.Visible := False;
        Panel9.Visible := False;
        BitBtn10.Action := actNull;
        setColumns2(DBGrid1, False, '_SellPrice1');
        if opt.EntityDisplay then
          setColumns2(DBGrid1, False, 'Count1Entity');
        if opt.WeightDisplay then
          setColumns2(DBGrid1, False, 'Count1Weight');
        CountFieldName := 'Count2';
        EdtStuffCode.ReadOnly := True;
      end; // 2
    3:
      begin
        caption := caption + 'شمارش سوم _انبار  ' + qryStores.FieldByName
          ('c_StoreName').AsString;
        DataSetInsert2.Visible := False;
        Panel9.Visible := False;
        BitBtn10.Action := actNull;
        setColumns2(DBGrid1, False, '_SellPrice1');
        if opt.EntityDisplay then
          setColumns2(DBGrid1, False, 'Count1Entity');
        if opt.WeightDisplay then
          setColumns2(DBGrid1, False, 'Count1Weight');
        CountFieldName := 'Count3';
        EdtStuffCode.ReadOnly := True;
      end; // 3
    20:
      begin
        caption := caption + 'شمارش دوم خاص _انبار  ' + qryStores.FieldByName
          ('c_StoreName').AsString;
        // DataSetInsert2.Visible:=False;
        // Panel9.Visible:=False;
        BitBtn10.Action := actNull;
        setColumns2(DBGrid1, True, '_SellPrice1');
        if opt.EntityDisplay then
          setColumns2(DBGrid1, True, 'Count1Entity');
        if opt.WeightDisplay then
          setColumns2(DBGrid1, True, 'Count1Weight');
        CountFieldName := 'Count2';
        setColumns2(DBGrid1, True, 'Pakhsh');
        qryCountingItems.FieldByName('Pakhsh').Tag := 3;
        edtSheetID.TabStop := False;
        edtControlCode.TabStop := False;
        // srcCountingItems.AutoEdit:=False;
        qryCountingItems.FieldByName('Count1Entity').Tag := 3;
        EdtStuffCode.ReadOnly := True;
        // qryCountingItems.FieldByName('StuffCode').ReadOnly:=True;

      end; // 2
  end; // case
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Count2Entity')].fieldName :=
    CountFieldName + 'Entity';
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Count2Weight')].fieldName :=
    CountFieldName + 'Weight';
  EdtEntity.DataField := CountFieldName + 'Entity';
  EdtWeight.DataField := CountFieldName + 'Weight';
  qryCountingItems.FieldByName(CountFieldName + 'Entity').Tag := 3;
  qryCountingItems.FieldByName(CountFieldName + 'Weight').Tag := 3;

  cmbQuickSearch.Clear;
  Addcmb('ندارد', 'StuffCode');
  Addcmb('كد كالا', 'StuffCode');
  Addcmb('شماره برگه', 'SheetID');
  Addcmb('راهنما', 'ControlCode');
  Addcmb(opt.ExtraCoding.Captions[1], 'sd1');

  Addcmb('بارکد-کدکالا', 'StuffCode');
  Addcmb('بارکد-فرم تایپ 5', 'StuffCode');
  Addcmb('بارکد2-کدکالا', 'StuffCode');

  lblSD1.caption := opt.ExtraCoding.Captions[1];
  qryCountingItemssd1.DisplayLabel := opt.ExtraCoding.Captions[1];

  b := opt.ExtraCoding.Captions[1] <> '';
  if b then
  begin
    i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
    for k := 1 to 9 do
      if opt.ExtraCoding.Captions[k] <> '' then
        with TStringField.Create(qryCountingItems) do
        begin
          fieldName := '_SD' + IntToStr(k);
          FieldKind := fkLookup;
          KeyFields := 'StuffCode';
          LookupDataSet := qryStuff_Unit_TecInf;
          LookUpKeyFields := 'c_StuffCode';
          LookupResultField := 'sd' + IntToStr(k);
          DataSet := qryCountingItems;
          Name := 'qryCountingItems' + fieldName;
          DisplayLabel := opt.ExtraCoding.Captions[k];
          Size := 64;
          ReadOnly := True;
          qryCountingItems.FieldDefs.Add(Name, ftString, 64, True);

          LookupCache := True;

          With DBGrid1.Columns.Add do
          begin
            fieldName := '_SD' + IntToStr(k);
            Index := i + k;
            Width := 64;
          end;
        end;

  end;
  cmbQuickSearch.ItemIndex := 0;

  // lblCaption.Caption:=Caption;
end;

procedure TCountingItemsF.Addcmb(DisplayLabel, fieldName: string);
begin
  sitem := TSearchItem.Create;
  sitem.caption := DisplayLabel;
  sitem.fieldName := fieldName;
  cmbQuickSearch.Items.AddObject(sitem.caption, sitem);
end;

procedure TCountingItemsF.AllClick1Click(Sender: TObject);
begin
  inherited;
  try
    qryCounting.DisableControls;
    qryCountingItems.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
  finally
    qryCounting.EnableControls;
    qryCountingItems.EnableControls;
  end; // try

end;

procedure TCountingItemsF.initPanels;
begin
  Pnl_GradeToAlloy.Visible := opt.AidInfoAvailable;
  /// /////////////////////////////////////////////////////////////////////////////
  EdtEntity.Visible := opt.EntityDisplay;
  LblEntity.Visible := opt.EntityDisplay;
  EdtWeight.Visible := opt.WeightDisplay;
  LblWeight.Visible := opt.WeightDisplay;
end;

procedure TCountingItemsF.qryCountingItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.name, 'CountingItems', 'ID');
  DataSet.FieldByName('StoreID').AsInteger := myStore.code;
  DataSet.FieldByName('CountID').AsInteger := qryCounting.FieldByName('CountID')
    .AsInteger;

  DataSet.FieldByName('ControlCode').AsLargeInt :=
    StrToInt64(Trim(medtControlCode.Text));

  if EditPanel.Visible then
  begin
    if pnlSd1.Visible then
      medtsd1.SetFocus
    else
      EdtStuffCode.SetFocus
  end;

end;

procedure TCountingItemsF.SBtnStuffCodeClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 13] of String;
  i: Byte;
  Fields_SD_1_9: String;
  colTopics_1_3: array [0 .. 13] of String;
  colWidths_1_3: array [0 .. 13] of Smallint;
begin
  inherited;
  colTopics_1_3[0] := 'کد';
  colTopics_1_3[1] := 'نام كالا';
  colTopics_1_3[2] := 'مشخصات فني';
  colTopics_1_3[3] := 'بهاي فروش 1';
  colWidths_1_3[0] := 50;
  colWidths_1_3[1] := 100;
  colWidths_1_3[2] := 100;
  colWidths_1_3[3] := 100;
  if not opt.ActiveSellPrice2 then
  begin
    colTopics_1_3[3] := '';
    colWidths_1_3[3] := 0;
  end;
  for i := 1 to 9 do
  begin
    colTopics_1_3[i + 3] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths_1_3[i + 3] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(i);
    end;
  end;
  b := False;

  Txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1 '
    + Fields_SD_1_9 + ' FROM StuffCoding ' + IfThen(CommunicableStores,
    ' INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode=StoreStuffs.c_StuffCode '
    + ' WHERE (StoreStuffs.n_StoreID=' + IntToStr(myStore.code) + ' ) ', '');

  // if formType = 3 then
  if cmbBtn.ItemIndex = 3 then

    Txt := 'SELECT     CountingItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 '
      + Fields_SD_1_9 +
      'FROM         CountingItems INNER JOIN StuffCoding ON CountingItems.StuffCode = StuffCoding.c_StuffCode '
      + 'WHERE     (CountingItems.Count1Entity <> CountingItems.Count2Entity) AND (CountingItems.StoreID = '
      + IntToStr(myStore.code) + ' ) ';

  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', Txt,
    colTopics_1_3, Results, colWidths_1_3, alLeft);
  if b then
  begin
    // if formType = 1 then
    if cmbBtn.ItemIndex = 1 then
      if not(qryCountingItems.State in dsEditModes) then
      begin
        qryCountingItems.edit;
        qryCountingItems['StuffCode'] := Results[0];
      end // if
      else
        qryCountingItems['StuffCode'] := Results[0]
    else
    begin
      qryCountingItems.Locate('StuffCode', Results[0], []);
      if EditPanel.Visible then
        EdtEntity.SetFocus;
      /// Panel10.SetFocus;//
    end;
  end; // if
end;

procedure TCountingItemsF.EdtEntityExit(Sender: TObject);
begin
  inherited;
  if (formType in [1, 2, 3, 20]) then
  begin
    if qryCountingItems.State in dsEditModes then
      qryCountingItems.Post;
    if pnlSd1.Visible then
      medtsd1.SetFocus
    else
      EdtStuffCode.SetFocus;
  end;
end;

procedure TCountingItemsF.EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnStuffCode.Click;
end;

procedure TCountingItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  sitem.Free;
  cmbQuickSearch.Free;
  qryCountingItems.Free;
end;

procedure TCountingItemsF.qryCountingItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCountingItemsF.qryCountingItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TCountingItemsF.qryCountingItemsAfterEdit(DataSet: TDataSet);
var
  ControlCode: LargeInt;
begin
  inherited;
  ControlCode := StrToInt64(Trim(medtControlCode.Text));
  if (formType in [2, 3, 20]) then
    if pnlSd1.Visible then
      DataSet.FieldByName('ControlCode').AsLargeInt := ControlCode;

  if (formType in [1]) then
    if (pnlSd1.Visible) and (ControlCode <> 0) then
      DataSet.FieldByName('ControlCode').AsLargeInt := ControlCode;

end;

procedure TCountingItemsF.srcCountingItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryCountingItems.State in dsEditModes;
  if formType = 20 then
    EdtStuffCode.ReadOnly := not(qryCountingItems.State in [dsinsert]);
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := not newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.name);
end;

procedure TCountingItemsF.qryCountingItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if cmbGridEnter.ItemIndex <> 2 then
  begin
    if formType = 1 then
      if not(cmbQuickSearch.ItemIndex in [5, 6]) then
        BigMessage('ثبت شد.', 1);

    if pnlSd1.Visible then
      medtsd1.SetFocus
    else
    begin
      if (formType <> 1) and EditPanel.Visible then
        EdtStuffCode.SetFocus;
    end;
  end;

end;

procedure TCountingItemsF.actInsertExecute(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT CountID,CountNumber,CountDate,Note FROM Counting ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' اطلاعات  ', Txt,
    ['', 'شماره', 'تاريخ', 'توضیحات'], Results, [0, 40, 50, 250], alLeft);
  if b then
    qryCounting.Locate('CountID', Results[0], []);
end;

procedure TCountingItemsF.actSumDistinctExecute(Sender: TObject);
type
  TDateRec = record
    StuffCode: Largeint;
    ReciptItemID: Integer;
    YearID: Integer;
    ServerID: Integer;
    EdtIOEntity: Real;
    EdtIOWeight: Real;
  end;
var
  aRec: TDateRec;
begin
  inherited;
  if get_response('آیا برای حذف و جمع کالاهای تکراری بر روی هم مطمئن هستید؟',
    clGreen) <> mrYes then
    exit;

  try
    With qryCountingItems do
    begin
      qryCountingItems.AfterPost := nil;
      qryCountingItems.AfterDelete := nil;
      qryCountingItems.BeforeDelete := nil;
      DisableControls;
      First;
      if cmbQuickSearch.ItemIndex = 6 then
        Sort := qryinit5.FieldByName('SyntheticCodeField')
          .AsString.Replace(';', ',')
      else
        Sort := 'StuffCode';

      aRec.StuffCode := FieldByName('StuffCode').AsLargeInt;
      aRec.ReciptItemID := FieldByName('ReciptItemID').AsInteger;
      aRec.YearID := FieldByName('YearID').AsInteger;
      aRec.ServerID := FieldByName('ServerID').AsInteger;
      aRec.EdtIOEntity := FieldByName('Count1Entity').AsFloat;
      aRec.EdtIOWeight := FieldByName('Count1Weight').AsFloat;
      Next;
      while not Eof do
      begin
        if (FieldByName('StuffCode').AsLargeInt = aRec.StuffCode) and
          (FieldByName('ReciptItemID').AsLargeInt = aRec.ReciptItemID) and
          (FieldByName('YearID').AsLargeInt = aRec.YearID) and
          (FieldByName('ServerID').AsLargeInt = aRec.ServerID) then
        begin
          edit;
          aRec.EdtIOEntity := FieldByName('Count1Entity').AsFloat +
            aRec.EdtIOEntity;
          FieldByName('Count1Entity').AsFloat := aRec.EdtIOEntity;

          aRec.EdtIOWeight := FieldByName('Count1Weight').AsFloat +
            aRec.EdtIOWeight;
          FieldByName('Count1Weight').AsFloat := aRec.EdtIOWeight;
          Post;
          Prior;
          Delete;
          Next;
        end
        else
        begin
          aRec.StuffCode := FieldByName('StuffCode').AsLargeInt;
          aRec.ReciptItemID := FieldByName('ReciptItemID').AsInteger;
          aRec.YearID := FieldByName('YearID').AsInteger;
          aRec.ServerID := FieldByName('ServerID').AsInteger;

          aRec.EdtIOEntity := FieldByName('Count1Entity').AsFloat;
          aRec.EdtIOWeight := FieldByName('Count1Weight').AsFloat;
          Next;
        end;

      end;
    end;
  finally
    qryCountingItems.BeforeDelete := qryCountingItemsBeforeDelete;
    qryCountingItems.AfterDelete := qryCountingItemsAfterDelete;
    qryCountingItems.AfterPost := qryCountingItemsAfterPost;
    qryCountingItems.EnableControls;
    BigMessage('انجام شد', 0);
  end;

end;

procedure TCountingItemsF.actNullExecute(Sender: TObject);
begin
  inherited;
  if not(qryCountingItems.State in dsEditModes) then
    qryCountingItems.edit;
  qryCountingItems.FieldByName(CountFieldName + 'Entity').Value := Null;
  qryCountingItems.FieldByName(CountFieldName + 'Weight').Value := Null;
end;

procedure TCountingItemsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCountingItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCountingItems);
end;

procedure TCountingItemsF.actStateExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا از قطعي كردن فرم جاري مطمئن هستيد.') = mrYes then
    With qryCounting do
    begin
      edit;
      qryCountingState.AsInteger := 1;
      Post;
    end;

end;

procedure TCountingItemsF.actEditExecute(Sender: TObject);
begin
  inherited;
  if qryCountingState.AsInteger > 0 then
  begin
    Warn('اطلاعات قطعي شده و قابل ويرايش نيست');
    Abort;
  end
  else
  begin
    EditPanel.Visible := True;
    newPanel.Visible := False;
    okPanel.Visible := True;
  end;
end;

procedure TCountingItemsF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  if (qryCountingItems.State in dsEditModes) then
    qryCountingItems.Post;
  EditPanel.Visible := False;
  newPanel.Visible := True;
  okPanel.Visible := False;
end;

procedure TCountingItemsF.qryCountingItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := ' مقدار:‏' +
      CurrToStr(CalcSumFileds(qryCountingItems, CountFieldName + 'Entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := ' وزن:‏' +
      CurrToStr(CalcSumFileds(qryCountingItems, CountFieldName + 'Weight'));
  StatusBar1.Panels[3].Text := ' تعداد:‏' +
    CurrToStr(qryCountingItems.RecordCount);

end;

procedure TCountingItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCountingItems);
end;

procedure TCountingItemsF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, formType);
end;

function TCountingItemsF.GetStuffCodeFromStuffTecInfo(StuffTecInfo: String)
  : Largeint;
var
  mnu: TMenuItem;
  findFiled: string;
begin
  if StuffTecInfo <> EmptyStr then
    findFiled := 'c_StuffTecInfo';
  // if (qryinit.FieldByName('BarCodeKind').AsInteger in [5]) then
  // findFiled := 'VendorBarcode';
  With TADOQuery.Create(DMF) do
  begin
    Connection := DMF.adcBSell;
    SQL.Text := 'SELECT c_StuffCode, ';
    SQL.Add('dbo.GetStuffName(c_StuffCode) + STR(c_StuffCode) + ''  '' + ');
    SQL.Add('dbo.GetLookUpsName(c_StuffCode, 313) + STR(SellPrice1) AS StuffName');
    SQL.Add('FROM StuffCoding WHERE  ' + findFiled + '=''' +
      StuffTecInfo + '''');
    SQL.Add(' AND  ' + findFiled + '<>''0''');
    Active := True;
    Result := FieldByName('c_StuffCode').AsLargeInt;

    // if RecordCount > 1 then
    // begin
    // popStuffTecInfo := TPopupMenu.Create(nil);
    // while not Eof do
    // begin
    // mnu := TMenuItem.Create(popStuffTecInfo);
    // mnu.OnClick := NAllGetStuffCodeFromStuffTecInfo;
    // mnu.Hint := FieldByName('c_StuffCode').AsString;
    // mnu.Caption := FieldByName('StuffName').AsString;
    // popStuffTecInfo.Items.Add(mnu);
    // Next;
    // end;
    // popStuffTecInfo.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
    // end
    // else
    // qryCountingItemsStuffCode.AsLargeInt := FieldByName('c_StuffCode')
    // .AsLargeInt;
    Free;
  end;

end;

procedure TCountingItemsF.actReadFileExecute(Sender: TObject);
var
  ts: TStrings;
  i: Integer;
  keyValue: Largeint;
begin
  inherited;
  ts := TStringList.Create;
  if dlg1.Execute then
    With qryCountingItems do
      try
        AfterPost := nil;
        DisableControls;
        Memo1.Clear;
        ts.LoadFromFile(dlg1.FileName);
        pb1.Max := ts.Count;
        pb1.Min := 0;
        pb1.Position := 0;
        pb1.Step := 1;
        for i := 0 to ts.Count - 1 do
        begin
          case formType of
            1:
              begin
                Insert;
                qryCountingItemsStuffCode.AsString := GetCode(ts[i]);
                qryCountingItems.FieldByName(EdtEntity.DataField).AsString :=
                  GetCount(ts[i]);
                Post;
              end;
          else
            begin
              if LocateCode_StuffTecInfo then
                keyValue := GetStuffCodeFromStuffTecInfo(GetCode(ts[i]))
              else
                keyValue := StrToInt64(GetCode(ts[i]));

              if Locate('StuffCode', keyValue, []) then
              begin
                edit;
                qryCountingItems.FieldByName(EdtEntity.DataField).AsInteger :=
                  qryCountingItems.FieldByName(EdtEntity.DataField).AsInteger +
                  StrToInt(GetCount(ts[i]));
                Post;
              end
              else
                Memo1.Lines.Add(GetCode(ts[i]));
            end;
          end;
          pb1.StepIt;
          Application.ProcessMessages;
        end;
      finally
        ts.Free;
        grpNotFound.Visible := Memo1.Lines.Count > 0;
        AfterPost := qryCountingItemsAfterPost;
        EnableControls;
      end;
end;

procedure TCountingItemsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TCountingItemsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := caption;
end;

procedure TCountingItemsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TCountingItemsF.ppSysPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TCountingItemsF.actPoseInsertExecute(Sender: TObject);
begin
  inherited;
  qryCountingItems.Post;
  qryCountingItems.Insert;
end;

procedure TCountingItemsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TCountingItemsF.qryCountingItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryCountingItems.FieldByName('StuffCode').AsLargeInt = 0 then
  begin
    qryCountingItems.Cancel;
    Abort;
  end;

  // if not(qryCounting.state in dsEditModes)then    qryCounting.edit;
  if (cmbQuickSearch.ItemIndex in [5, 6]) then
    exit;

  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(*) as StuffCodeCount FROM CountingItems WHERE(CountID=' +
      qryCountingItems.FieldByName('CountID').AsString + ')AND(StoreID=' +
      qryCountingItems.FieldByName('StoreID').AsString + ')AND (ID <> ' +
      qryCountingItems.FieldByName('ID').AsString + ')';
    SQL.Add('AND (StuffCode = ' + qryCountingItems.FieldByName('StuffCode')
      .AsString + ')');
    if opt.AidInfoAvailable then
    begin
      SQL.Add('AND (ControlCode = ' + qryCountingItems.FieldByName
        ('ControlCode').AsString + ')');
      SQL.Add('AND (StuffSize = ''' + qryCountingItems.FieldByName('StuffSize')
        .AsString + ''')');
      SQL.Add('AND (StuffDiameter = ' + qryCountingItems.FieldByName
        ('StuffDiameter').AsString + ')');
      SQL.Add('AND (StuffAlloy = ''' + qryCountingItems.FieldByName
        ('StuffAlloy').AsString + ''')');
      SQL.Add('AND (StuffGrade = ' + qryCountingItems.FieldByName('StuffGrade')
        .AsString + ')');
      SQL.Add('AND (Count1Entity = ' + qryCountingItems.FieldByName
        ('Count1Entity').AsString + ')');
    end;
    Active := True;
    if (FieldByName('StuffCodeCount').AsInteger <> 0) then
    begin
      Warn('كد كالاي وارد شده تكراري مي‌باشد.');
      if EditPanel.Visible then
        EdtStuffCode.SetFocus;
      Abort;
    end; // if
    Active := False;
  end; // with
end;

procedure TCountingItemsF.qryCountingItems____StuffTecInfoChange
  (Sender: TField);
begin
  inherited;
  GetStuffCodeFromStuffTecInfo(Sender.AsString);
end;

procedure TCountingItemsF.qryCountingStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetManifestoStatussState(Sender.AsInteger)
end;

procedure TCountingItemsF.qryCountingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCountingItems do
  begin
    Active := False;
    Parameters.ParamByName('CountID').Value := myStore.code;
    qryCounting.FieldByName('CountID').AsInteger;
    Active := True;
  end; // with
end;

procedure TCountingItemsF.InsertEntity1(Rotatory: Boolean; CountDate: string);
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  try
    With qry do
    begin
      Connection := DMF.adcBSell;
      Active := False;
      SQL.Text := 'SELECT StoreID, StuffCode, ';
      SQL.Add('ROUND(SUM(InputEntity - OutputEntity), 3) AS Entity,');
      SQL.Add('ROUND(SUM(InputWeight - OutputWeight), 3) AS Weight');
      SQL.Add('FROM ReciptItems_Stock');
      SQL.Add(Format('WHERE (StoreID =  %d ) AND (ReciptState < 3) ',
        [myStore.code]));
      SQL.Add(Format('and (YearID =  %d )', [APPBank.Year]));
      SQL.Add(Format('and (ReciptDate <=  %s )', [QuotedStr(CountDate)]));
      SQL.Add('GROUP BY StoreID, StuffCode');
      if not Rotatory then
      begin
        SQL.Add('HAVING (SUM(InputEntity - OutputEntity) >= 0.0001) OR');
        SQL.Add('(SUM(InputEntity - OutputEntity) <= - 0.0001) OR');
        SQL.Add('(SUM(InputWeight - OutputWeight) >= 0.0001) OR');
        SQL.Add('(SUM(InputWeight - OutputWeight) <= - 0.0001)');
      end;
      SQL.Add('ORDER BY StoreID, StuffCode');
      Active := True;
      BigMessageProgBar('در حال انتقال موجودي  ...‏', RecordCount);
      if not(qryCounting.State in dsEditModes) then
        qryCounting.edit;
      while not Eof do
      begin
        qryCountingItems.Insert;
        qryCountingItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryCountingItems.FieldByName('Count1Entity').AsFloat :=
          FieldByName('Entity').AsFloat;
        qryCountingItems.FieldByName('Count1Weight').AsFloat :=
          FieldByName('Weight').AsFloat;
        qryCountingItems.Post;
        GoProgressBar(IntToStr(RecNo) + #254 + ' از ' + #254 +
          IntToStr(RecordCount) + #254);
        Next;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TCountingItemsF.InsertEntity2(Rotatory: Boolean; CountDate: string);
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  try
    With qry do
    begin
      Connection := DMF.adcBSell;
      Active := False;
      SQL.Text :=
        'SELECT ReciptItems.StuffCode, ReciptItems.ControlCode, ReciptItems.StuffSize, ReciptItems.StuffDiameter,';
      SQL.Add('ReciptItems.StuffAlloy,');
      SQL.Add('ROUND(ReciptItems.InputEntity - ReciptItems.OutputEntity + ISNULL(RecallSpecial.Entity, 0), 3) AS Entity,');
      SQL.Add('ROUND(ReciptItems.InputWeight - ReciptItems.OutputWeight + ISNULL(RecallSpecial.Weight, 0), 3) AS Weight,');
      SQL.Add('ReciptItems.StuffGrade');
      SQL.Add('FROM RecallSpecial RIGHT OUTER JOIN');
      SQL.Add('ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ON RecallSpecial.preReciptItemID =');
      SQL.Add('ReciptItems.ReciptItemID');
      SQL.Add('where (recipttypes.effecttype in( 2,6))');
      SQL.Add(Format('and (Recipts.ReciptDate <=  %s )',
        [QuotedStr(CountDate)]));
      SQL.Add('and (recipts.storeid=' + IntToStr(myStore.code) + ')');
      if not Rotatory then
      begin
        SQL.Add('and(((reciptitems.inputentity - reciptitems.outputentity + isnull(recallspecial.entity, 0)) >= 0.0001 )or');
        SQL.Add('((reciptitems.inputentity - reciptitems.outputentity + isnull(recallspecial.entity, 0)) <= - 0.0001) or');
        SQL.Add('((reciptitems.inputweight - reciptitems.outputweight + isnull(recallspecial.weight, 0)) >= 0.0001) or');
        SQL.Add('((reciptitems.inputweight - reciptitems.outputweight + isnull(recallspecial.weight, 0)) <= - 0.0001))');
      end;
      SQL.Add('and (recipts.reciptstate < 3)');
      SQL.Add(Format('and (Recipts.YearID =  %d )', [APPBank.Year]));
      SQL.Add('ORDER BY ReciptItems.StuffCode, ReciptItems.StuffDiameter, ReciptItems.StuffSize');
      // 4stock
      Active := True;
      BigMessageProgBar('در حال انتقال موجودي  ...‏', RecordCount);
      if not(qryCounting.State in dsEditModes) then
        qryCounting.edit;
      while not Eof do
      begin
        qryCountingItems.Insert;
        qryCountingItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryCountingItems.FieldByName('Count1Entity').AsFloat :=
          FieldByName('Entity').AsFloat;
        qryCountingItems.FieldByName('Count1Weight').AsFloat :=
          FieldByName('Weight').AsFloat;
        qryCountingItems.FieldByName('ControlCode').Value :=
          FieldByName('ControlCode').Value;
        qryCountingItems.FieldByName('StuffSize').Value :=
          FieldByName('StuffSize').Value;
        qryCountingItems.FieldByName('StuffDiameter').Value :=
          FieldByName('StuffDiameter').Value;
        qryCountingItems.FieldByName('StuffAlloy').Value :=
          FieldByName('StuffAlloy').Value;
        qryCountingItems.FieldByName('StuffGrade').Value :=
          FieldByName('StuffGrade').Value;
        qryCountingItems.Post;
        GoProgressBar(IntToStr(RecNo) + #254 + ' از ' + #254 +
          IntToStr(RecordCount) + #254);
        Next;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TCountingItemsF.medtControlCodeChange(Sender: TObject);
begin
  inherited;
  pnlSd1.Visible := Trim(medtControlCode.Text) > '0';

  pnlStuffCode.TabStop := not pnlSd1.Visible;
  EdtStuffCode.TabStop := pnlStuffCode.TabStop;
  edtSheetID.TabStop := pnlStuffCode.TabStop;
  edtControlCode.TabStop := pnlStuffCode.TabStop;

end;

procedure TCountingItemsF.medtsd1Exit(Sender: TObject);
var
  sd1: string;
begin
  inherited;
  if medtsd1.Text = EmptyStr then
    exit;
  if (formType = 1) then
    if cmbQuickSearch.ItemIndex in [5, 6] then
    begin
      BarCodeLocate;
      exit;
    end;

  if (formType = 1) and (cmbBtn.ItemIndex <> 2) then
    sd1Locate
  else
  begin
    sd1 := Trim(medtsd1.Text);
    if (sd1 <> EmptyStr) then
      if qryCountingItems.Locate('sd1', sd1, []) then
        EdtEntity.SetFocus;
  end;

end;

procedure TCountingItemsF.medtsd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if cmbQuickSearch.ItemIndex in [5, 6] then
  // if (Key = VK_RETURN) then
  // BarCodeLocate
end;

procedure TCountingItemsF.BarCodeLocate;
begin
  with qryCountingItems do
  begin
    Insert;
    if cmbQuickSearch.ItemIndex = 6 then
      GetStuffCodeFromsynthetic(Trim(medtsd1.Text), qryinit5, qryCountingItems,
        SyntheticCode)
    else
      qryCountingItemsStuffCode.AsString := Trim(medtsd1.Text);
    medtsd1.Text := EmptyStr;
    if EntityIsItemNote(qryCountingItems, 'ReciptItemID') then
    begin
      FieldByName('Count1Entity').AsInteger := 1;
      FieldByName('Count1Weight').AsFloat :=
        1 / qryCountingItems_Carton.AsFloat;
    end
    else
    begin
      FieldByName('Count1Entity').AsFloat :=
        1 * qryCountingItems_Carton.AsFloat;
      FieldByName('Count1Weight').AsInteger := 1;
    end;

  end;
end;

procedure TCountingItemsF.sd1Locate;
var
  sd1: string;
begin
  sd1 := Trim(medtsd1.Text);
  if (sd1 <> EmptyStr) then
    if qryStuff_Unit_TecInf.Locate('sd1', sd1, []) then
      qryCountingItemsStuffCode.AsLargeInt := qryStuff_Unit_TecInf.FieldByName
        ('c_StuffCode').AsLargeInt;

end;

procedure TCountingItemsF.mnuReadFileClick(Sender: TObject);
begin
  inherited;
  LocateCode_StuffTecInfo := False;
  actReadFile.Execute
end;

procedure TCountingItemsF.actGetEntityExecute(Sender: TObject);
begin
  inherited;
  GetEntity(False, '9999/99/99')
end;

procedure TCountingItemsF.actGetEntityOnCountDateExecute(Sender: TObject);
begin
  inherited;
  GetEntity(False, qryCountingCountDate.AsString)
end;

procedure TCountingItemsF.GetEntity(Rotatory: Boolean; CountDate: string);
var
  qry: TADOQuery;
begin
  if get_response('آيا براي انتقال كالا ' + myStore.name +
    ' در شمارش اول مطمئن هستيد براي اين كار كليه شمارش‏هاي موجود در اين فرم  حذف مي‏شوند.‏')
    <> mrYes then
    exit;

  if qryCountingItems.RecordCount > 0 then
    if get_response
      ('در صورت تاييد كليه شمارش‏هاي موجود در اين فرم  حذف مي‏شوند.‏' + #13#10 +
      'آيا مطمئن هستيد') <> mrYes then
      exit;
  qry := TADOQuery.Create(Self);
  With qry do
    try
      qryCountingItems.AfterPost := nil;
      qryCountingItems.DisableControls;
      Connection := DMF.adcBSell;
      Active := False;
      SQL.Text := 'DELETE FROM CountingItems WHERE(CountID=' +
        qryCounting.FieldByName('CountID').AsString + ') AND (StoreID = ' +
        IntToStr(myStore.code) + ')';
      BigMessage(IntToStr(ExecSQL) + ' كالا‌ حذف شد.', 2);
      if opt.AidInfoAvailable then
        InsertEntity2(Rotatory, CountDate)
      else
        InsertEntity1(Rotatory, CountDate);
    finally
      qry.Free;
      qryCountingItems.EnableControls;
      qryCountingItems.AfterPost := qryCountingItemsAfterPost;
      CloseMessage;
    end;
  qryCountingItems.Requery();
end;

procedure TCountingItemsF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TCountingItemsF.cmbQuickSearchChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if cmbGridEnter.ItemIndex = 2 then
  begin
    for i := 0 to DBGrid1.Columns.Count - 1 do
      if pos('count', LowerCase(DBGrid1.Columns[i].fieldName)) <> 0 then
        DBGrid1.Columns[i].ReadOnly := False
      else
        DBGrid1.Columns[i].ReadOnly := True;
  end
  else
  begin

    if cmbQuickSearch.ItemIndex > 0 then
      for i := 0 to DBGrid1.Columns.Count - 1 do
        if pos(LowerCase(DBGrid1.Columns[i].fieldName), 'count') <> 0 then
          DBGrid1.Columns[i].ReadOnly := True;

    if cmbQuickSearch.ItemIndex in [5, 6] then
      medtControlCode.Text := '1'
    else
      medtControlCode.Text := '0';

  end;
end;

function TCountingItemsF.GetCode(str: string): string;
begin
  Result := Trim(MidStr(str, 0, pos(',', str) - 1));
  if Trim(Result) = EmptyStr then
    Result := str;
end;

function TCountingItemsF.GetCount(str: string): string;
begin
  Result := Trim(MidStr(str, pos(',', str) + 1, 20));
  if pos(',', str) = 0 then
    Result := '1';
end;

procedure TCountingItemsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := GetSelectedIndex
end;

function TCountingItemsF.GetSelectedIndex: Integer;

begin
  Result := ColumnIndexByFieldName(DBGrid1, CountFieldName + 'Entity'); // 11;
  if cmbGridEnter.ItemIndex = 1 then
  begin
    if DBGrid1.Columns[DBGrid1.SelectedIndex].fieldName = 'SheetID' then
      Result := ColumnIndexByFieldName(DBGrid1, CountFieldName + 'Entity');
    // 11;
    if DBGrid1.Columns[DBGrid1.SelectedIndex].fieldName = CountFieldName + 'Entity'
    then
      Result := ColumnIndexByFieldName(DBGrid1, 'ControlCode'); // 13;

    if DBGrid1.Columns[DBGrid1.SelectedIndex].fieldName = 'ControlCode' then
    begin
      Result := ColumnIndexByFieldName(DBGrid1, 'SheetID'); // 5;
      qryCountingItems.Next;
    end;

  end;
  if cmbGridEnter.ItemIndex = 2 then
  begin

    if DBGrid1.Columns[DBGrid1.SelectedIndex].fieldName = CountFieldName + 'Entity'
    then
      Result := ColumnIndexByFieldName(DBGrid1, CountFieldName + 'Weight');

    if DBGrid1.Columns[DBGrid1.SelectedIndex].fieldName = CountFieldName + 'Weight'
    then
    begin
      Result := ColumnIndexByFieldName(DBGrid1, CountFieldName + 'Entity');
      qryCountingItems.Next;
    end;

  end;

end;

procedure TCountingItemsF.gridkeyenter(Sender: TObject; var Key: Char);

var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  i: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;

        Key := #0;
        nextIndex := curIndex + 1;

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
        if not ShiftDown then
        begin
          Key := #0;
          SendKeys('000', False);
        end;
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if ((DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis) and
        ((not DBGrid1.Columns[curIndex].ReadOnly))) then

    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      // DBGrid1EditButtonClick(Sender);
    end; // if
  else
  end; // case

  // if LowerCase(DBGrid1.Columns[curIndex].FieldName) = 'DeficitValueCo4' then
  // begin
  // qryItemsDeficitValueCo4.OnChange := nil;
  // qryItems.Edit;
  // qryItemsDeficitValueCo4.AsInteger := 0;
  // qryItemsDeficitValueCo4.OnChange := qryItemsDeficitValueCo4Change;
  // end;

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
          sendkey(vk_down, [], False);
          DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1,
            CountFieldName + 'Entity')
        end;
      // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      begin
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
      end;
    end;
  // case

end;

procedure TCountingItemsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  CurField: string;
begin
  inherited;
  if cmbGridEnter.ItemIndex = 2 then
  begin
    gridkeyenter(Sender, Key);
    exit
  end;

  case cmbQuickSearch.ItemIndex of
    0:
      begin
        if cmbGridEnter.ItemIndex = 0 then
        begin
          case Key of
            #13:
              begin
                qryCountingItems.Next;
                DBGrid1.SelectedIndex := GetSelectedIndex
              end;
          end;

        end
        else
          DBGrid1.SelectedIndex := GetSelectedIndex;
      end;
    5, 6:
      begin

      end

  else
    begin
      sitem := TSearchItem(cmbQuickSearch.Items.Objects
        [cmbQuickSearch.ItemIndex]);
      QuickSearch(Key, qryCountingItems.FieldByName(sitem.fieldName));
      DBGrid1.SelectedIndex := GetSelectedIndex
    end;
  end;

end;

procedure TCountingItemsF.EdtStuffCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (formType in [2, 3, 20]) then
  begin
    sitem := TSearchItem(cmbQuickSearch.Items.Objects
      [cmbQuickSearch.ItemIndex]);
    if QuickSearch(Key, qryCountingItems.FieldByName(sitem.fieldName)) then
    begin
      DBGrid1.SelectedIndex := GetSelectedIndex;
      if cmbQuickSearch.ItemIndex <> 7 then
        EdtEntity.SetFocus;
    end;
  end;
end;

procedure TCountingItemsF.qryCountingItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryCountingState.AsInteger > 0 then
  begin
    Warn('اطلاعات قطعي شده و قابل ويرايش نيست');
    Abort;
  end
  else if not(qryCounting.State in dsEditModes) then
    qryCounting.edit;
end;

procedure TCountingItemsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryCountingItems.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryCountingItems);
  finally
    qryCountingItems.AfterPost := qryCountingItemsAfterPost;
  end;
end;

procedure TCountingItemsF.actGetRotatoryExecute(Sender: TObject);
begin
  inherited;
  GetEntity(True, '9999/99/99');
end;

procedure TCountingItemsF.actCountingControlCodeFExecute(Sender: TObject);
begin
  inherited;
  CountingControlCodeF.show(myStore.code, qryCountingCountID.AsInteger,
    qryCountingItemsControlCode.AsLargeInt);
end;

procedure TCountingItemsF.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف كليه شمارش‏هاي موجود در اين فرم مطمئن هستيد.‏')
    <> mrYes then
    exit;

  With TADOQuery.Create(Self) do
    try
      Connection := DMF.adcBSell;
      SQL.Text := 'DELETE FROM CountingItems WHERE(CountID=' +
        qryCounting.FieldByName('CountID').AsString + ') AND (StoreID = ' +
        IntToStr(myStore.code) + ')';
      BigMessage(IntToStr(ExecSQL) + ' كالا‌ حذف شد.', 2);
    finally
      Free;
    end;
  qryCountingItems.Requery();
end;

procedure TCountingItemsF.mnuReadFile_StuffTecInfoClick(Sender: TObject);
begin
  inherited;
  LocateCode_StuffTecInfo := True;
  actReadFile.Execute
end;

procedure TCountingItemsF.NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
begin
  inherited;
  qryCountingItemsStuffCode.AsString := (Sender as TMenuItem).Hint;
  popStuffTecInfo.Free
end;

end.
