// mahmood
unit CountingDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, DB, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe,
  DM, Menus, ComCtrls, ppParameter, ExtDlgs, SumDBGrid, sndkey32,
  FormFunctions, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSearchItem = class
    fieldName: String;
    caption: String;
  end; // tSearchItem

  TCountingDetailsF = class(Ttemplate2MDIF)
    qryCountingDetails: TADOQuery;
    srcCountingDetails: TDataSource;
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
    Panel7: TPanel;
    actInsert: TAction;
    actNull: TAction;
    EditPanel: TPanel;
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
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    actGetEntity: TAction;
    N2: TMenuItem;
    LblStore: TLabel;
    actGetExcel: TAction;
    Excel1: TMenuItem;
    actGetRotatory: TAction;
    N3: TMenuItem;
    actDelete: TAction;
    N4: TMenuItem;
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
    qryinit5: TADOQuery;
    mnuReadFile_StuffTecInfo: TMenuItem;
    GroupBox3: TGroupBox;
    cmbBtn: TComboBox;
    actCountingControlCodeF: TAction;
    actCountingControlCodeF1: TMenuItem;
    actPoseInsert: TAction;
    Panel12: TPanel;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    medtControlCode: TMaskEdit;
    qry4Bcakup: TADOQuery;
    qryCountingCountingCalckind: TWordField;
    actGetEntityOnCountDate: TAction;
    N5: TMenuItem;
    actSumDistinct: TAction;
    Excel2: TMenuItem;
    N6: TMenuItem;
    PopupMenu1: TPopupMenu;
    AllClick1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    qryCountingDetailsDetailsID: TAutoIncField;
    qryCountingDetailsCountID: TIntegerField;
    qryCountingDetailsDetailCaption: TStringField;
    DBGrid1: TCedarDbgrid;
    qryCountingDetailsc_StuffName: TStringField;
    qryCountingDetailsStoreID: TSmallintField;
    qryCountingDetailsStuffCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure qryCountingDetailsAfterInsert(DataSet: TDataSet);
    procedure SBtnStuffCodeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryCountingDetailsBeforeDelete(DataSet: TDataSet);
    procedure qryCountingDetailsAfterDelete(DataSet: TDataSet);
    procedure srcCountingDetailsStateChange(Sender: TObject);
    procedure qryCountingDetailsAfterPost(DataSet: TDataSet);
    procedure actInsertExecute(Sender: TObject);
    procedure actNullExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysPageNumberGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryCountingDetailsBeforePost(DataSet: TDataSet);
    procedure qryCountingAfterScroll(DataSet: TDataSet);
    procedure actGetEntityExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure qryCountingDetailsBeforeEdit(DataSet: TDataSet);
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
    procedure qryCountingDetails____StuffTecInfoChange(Sender: TField);
    procedure mnuReadFileClick(Sender: TObject);
    procedure mnuReadFile_StuffTecInfoClick(Sender: TObject);
    procedure actPoseInsertExecute(Sender: TObject);
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
    procedure Addcmb(DisplayLabel, fieldName: string);
    procedure gridkeyenter(Sender: TObject; var Key: Char);

  public
    // procedure FlipChildren(AllLevels: Boolean); override;
    { Public declarations }
  end;

var
  CountingDetailsF: TCountingDetailsF;

implementation

uses searchCode_ADO, GlobalPro, mmessage, SelectStore, Math,
  sort2, search2, DBGrid2Print, StrUtils, GetExcel, CountingControlCode,
  ReciptsFunctions;

{$R *.dfm}

procedure TCountingDetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryCountingDetails);
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

  with qryCountingDetails do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add(',(SELECT TOP (1) c.c_StuffName');
    SQL.Add('FROM ReciptItemsDetails AS d INNER JOIN');
    SQL.Add('ReciptItems AS Ri ON d.ReciptItemID = Ri.ReciptItemID AND d.ReciptID = Ri.ReciptID AND d.ServerID =');
    SQL.Add('Ri.ServerID AND d.YearID = Ri.YearID INNER JOIN');
    SQL.Add('StuffCoding AS c ON Ri.StuffCode = c.c_StuffCode');
    SQL.Add('WHERE (d.DetailCaption = CountingDetails.DetailCaption )');
    SQL.Add('ORDER BY d.DetailsID DESC) AS c_StuffName ');
    SQL.Add(',(SELECT TOP (1) Ri.StuffCode FROM ReciptItemsDetails AS d INNER JOIN');
    SQL.Add('ReciptItems AS Ri ON d.ReciptItemID = Ri.ReciptItemID AND d.ReciptID = Ri.ReciptID AND d.ServerID =');
    SQL.Add('Ri.ServerID AND d.YearID = Ri.YearID INNER JOIN');
    SQL.Add('StuffCoding AS c ON Ri.StuffCode = c.c_StuffCode');
    SQL.Add('WHERE (d.DetailCaption = CountingDetails.DetailCaption )');
    SQL.Add('ORDER BY d.DetailsID ) AS StuffCode');

    SQL.Add('FROM CountingDetails');
    SQL.Add('WHERE (StoreID = :StoreID) and ( CountID =:CountID)');

    Parameters.ParamByName('StoreID').Value := myStore.code;

  end; // with
  qryCounting.AfterScroll := qryCountingAfterScroll;
  qryCountingAfterScroll(qryCounting);

  initPanels;
  qryinit5.Open;
end;

procedure TCountingDetailsF.initForm;
var
  b: Boolean;
  i, k: Integer;
begin
  actGetEntity.Visible := formType = 1;
  actGetExcel.Visible := formType = 1;
  actGetRotatory.Visible := formType = 1;

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
        // EdtStuffCode.ReadOnly := True;
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
        // EdtStuffCode.ReadOnly := True;
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
        qryCountingDetails.FieldByName('Pakhsh').Tag := 3;
        // srcCountingDetails.AutoEdit:=False;
        qryCountingDetails.FieldByName('Count1Entity').Tag := 3;
        // qryCountingDetails.FieldByName('StuffCode').ReadOnly:=True;

      end; // 2
  end; // case

  cmbQuickSearch.Clear;
  Addcmb('ندارد', 'StuffCode');
  Addcmb('كد كالا', 'StuffCode');
  Addcmb('شماره برگه', 'SheetID');
  Addcmb('راهنما', 'ControlCode');
  Addcmb(opt.ExtraCoding.Captions[1], 'sd1');

  Addcmb('بارکد-کدکالا', 'StuffCode');
  Addcmb('بارکد-فرم تایپ 5', 'StuffCode');
  Addcmb('بارکد2-کدکالا', 'StuffCode');

  b := opt.ExtraCoding.Captions[1] <> '';
  if b then
  begin
    i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
    for k := 1 to 9 do
      if opt.ExtraCoding.Captions[k] <> '' then
        with TStringField.Create(qryCountingDetails) do
        begin
          fieldName := '_SD' + IntToStr(k);
          FieldKind := fkLookup;
          KeyFields := 'StuffCode';
          LookupDataSet := qryStuff_Unit_TecInf;
          LookUpKeyFields := 'c_StuffCode';
          LookupResultField := 'sd' + IntToStr(k);
          DataSet := qryCountingDetails;
          Name := 'qryCountingDetails' + fieldName;
          DisplayLabel := opt.ExtraCoding.Captions[k];
          Size := 64;
          ReadOnly := True;
          qryCountingDetails.FieldDefs.Add(Name, ftString, 64, True);

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

procedure TCountingDetailsF.Addcmb(DisplayLabel, fieldName: string);
begin
  sitem := TSearchItem.Create;
  sitem.caption := DisplayLabel;
  sitem.fieldName := fieldName;
  cmbQuickSearch.Items.AddObject(sitem.caption, sitem);
end;

procedure TCountingDetailsF.AllClick1Click(Sender: TObject);
begin
  inherited;
  try
    qryCounting.DisableControls;
    qryCountingDetails.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
  finally
    qryCounting.EnableControls;
    qryCountingDetails.EnableControls;
  end; // try

end;

procedure TCountingDetailsF.initPanels;
begin
end;

procedure TCountingDetailsF.qryCountingDetailsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StoreID').AsInteger := myStore.code;
  DataSet.FieldByName('CountID').AsInteger := qryCounting.FieldByName('CountID')
    .AsInteger;
end;

procedure TCountingDetailsF.SBtnStuffCodeClick(Sender: TObject);
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

    Txt := 'SELECT     CountingDetails.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 '
      + Fields_SD_1_9 +
      'FROM         CountingDetails INNER JOIN StuffCoding ON CountingDetails.StuffCode = StuffCoding.c_StuffCode '
      + 'WHERE     (CountingDetails.Count1Entity <> CountingDetails.Count2Entity) AND (CountingDetails.StoreID = '
      + IntToStr(myStore.code) + ' ) ';

  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', Txt,
    colTopics_1_3, Results, colWidths_1_3, alLeft);
  if b then
  begin
    // if formType = 1 then
    if cmbBtn.ItemIndex = 1 then
      if not(qryCountingDetails.State in dsEditModes) then
      begin
        qryCountingDetails.edit;
        qryCountingDetails['StuffCode'] := Results[0];
      end // if
      else
        qryCountingDetails['StuffCode'] := Results[0]
    else
    begin
      qryCountingDetails.Locate('StuffCode', Results[0], []);
      /// Panel10.SetFocus;//
    end;
  end; // if
end;

procedure TCountingDetailsF.FormDestroy(Sender: TObject);
begin
  inherited;

  sitem.Free;
  cmbQuickSearch.Free;
  qryCountingDetails.Free;
end;

procedure TCountingDetailsF.qryCountingDetailsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCountingDetailsF.qryCountingDetailsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TCountingDetailsF.srcCountingDetailsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryCountingDetails.State in dsEditModes;

  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := not newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.name);
end;

procedure TCountingDetailsF.qryCountingDetailsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if formType = 1 then
    if not(cmbQuickSearch.ItemIndex in [5, 6]) then
      BigMessage('ثبت شد.', 1);
end;

procedure TCountingDetailsF.actInsertExecute(Sender: TObject);
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

procedure TCountingDetailsF.actSumDistinctExecute(Sender: TObject);
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
    With qryCountingDetails do
    begin
      qryCountingDetails.AfterPost := nil;
      qryCountingDetails.AfterDelete := nil;
      qryCountingDetails.BeforeDelete := nil;
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
    qryCountingDetails.BeforeDelete := qryCountingDetailsBeforeDelete;
    qryCountingDetails.AfterDelete := qryCountingDetailsAfterDelete;
    qryCountingDetails.AfterPost := qryCountingDetailsAfterPost;
    qryCountingDetails.EnableControls;
    BigMessage('انجام شد', 0);
  end;

end;

procedure TCountingDetailsF.actNullExecute(Sender: TObject);
begin
  inherited;
  if not(qryCountingDetails.State in dsEditModes) then
    qryCountingDetails.edit;
  qryCountingDetails.FieldByName(CountFieldName + 'Entity').Value := Null;
  qryCountingDetails.FieldByName(CountFieldName + 'Weight').Value := Null;
end;

procedure TCountingDetailsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCountingDetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCountingDetails);
end;

procedure TCountingDetailsF.actStateExecute(Sender: TObject);
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

procedure TCountingDetailsF.actEditExecute(Sender: TObject);
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

procedure TCountingDetailsF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  if (qryCountingDetails.State in dsEditModes) then
    qryCountingDetails.Post;
  EditPanel.Visible := False;
  newPanel.Visible := True;
  okPanel.Visible := False;
end;

procedure TCountingDetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCountingDetails);
end;

procedure TCountingDetailsF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, formType);
end;

function TCountingDetailsF.GetStuffCodeFromStuffTecInfo(StuffTecInfo: String)
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
    // qryCountingDetailsStuffCode.AsLargeInt := FieldByName('c_StuffCode')
    // .AsLargeInt;
    Free;
  end;

end;

procedure TCountingDetailsF.actReadFileExecute(Sender: TObject);
var
  ts: TStrings;
  i: Integer;
  keyValue: Largeint;
begin
  inherited;
  ts := TStringList.Create;
  if dlg1.Execute then
    With qryCountingDetails do
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
        AfterPost := qryCountingDetailsAfterPost;
        EnableControls;
      end;
end;

procedure TCountingDetailsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TCountingDetailsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := caption;
end;

procedure TCountingDetailsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TCountingDetailsF.ppSysPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TCountingDetailsF.actPoseInsertExecute(Sender: TObject);
begin
  inherited;
  qryCountingDetails.Post;
  qryCountingDetails.Insert;
end;

procedure TCountingDetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TCountingDetailsF.qryCountingDetailsBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if qryCountingDetailsDetailCaption.AsString.Length <> opt.DetailCodelength
  then
  begin
    Warn('طول کد صحیح نمی باشد');
    Beep;
    Beep;
    qryCountingDetailsDetailCaption.AsString := EmptyStr;
    Abort;
  end;

end;

procedure TCountingDetailsF.qryCountingDetails____StuffTecInfoChange
  (Sender: TField);
begin
  inherited;
  GetStuffCodeFromStuffTecInfo(Sender.AsString);
end;

procedure TCountingDetailsF.qryCountingStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetManifestoStatussState(Sender.AsInteger)
end;

procedure TCountingDetailsF.qryCountingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCountingDetails do
  begin
    Active := False;
    Parameters.ParamByName('CountID').Value := myStore.code;
    qryCounting.FieldByName('CountID').AsInteger;
    Active := True;
  end; // with
end;

procedure TCountingDetailsF.InsertEntity1(Rotatory: Boolean; CountDate: string);
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
        qryCountingDetails.Insert;
        qryCountingDetails.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryCountingDetails.FieldByName('Count1Entity').AsFloat :=
          FieldByName('Entity').AsFloat;
        qryCountingDetails.FieldByName('Count1Weight').AsFloat :=
          FieldByName('Weight').AsFloat;
        qryCountingDetails.Post;
        GoProgressBar(IntToStr(RecNo) + #254 + ' از ' + #254 +
          IntToStr(RecordCount) + #254);
        Next;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TCountingDetailsF.InsertEntity2(Rotatory: Boolean; CountDate: string);
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
        qryCountingDetails.Insert;
        qryCountingDetails.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryCountingDetails.FieldByName('Count1Entity').AsFloat :=
          FieldByName('Entity').AsFloat;
        qryCountingDetails.FieldByName('Count1Weight').AsFloat :=
          FieldByName('Weight').AsFloat;
        qryCountingDetails.FieldByName('ControlCode').Value :=
          FieldByName('ControlCode').Value;
        qryCountingDetails.FieldByName('StuffSize').Value :=
          FieldByName('StuffSize').Value;
        qryCountingDetails.FieldByName('StuffDiameter').Value :=
          FieldByName('StuffDiameter').Value;
        qryCountingDetails.FieldByName('StuffAlloy').Value :=
          FieldByName('StuffAlloy').Value;
        qryCountingDetails.FieldByName('StuffGrade').Value :=
          FieldByName('StuffGrade').Value;
        qryCountingDetails.Post;
        GoProgressBar(IntToStr(RecNo) + #254 + ' از ' + #254 +
          IntToStr(RecordCount) + #254);
        Next;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TCountingDetailsF.mnuReadFileClick(Sender: TObject);
begin
  inherited;
  LocateCode_StuffTecInfo := False;
  actReadFile.Execute
end;

procedure TCountingDetailsF.actGetEntityExecute(Sender: TObject);
begin
  inherited;
  GetEntity(False, '9999/99/99')
end;

procedure TCountingDetailsF.actGetEntityOnCountDateExecute(Sender: TObject);
begin
  inherited;
  GetEntity(False, qryCountingCountDate.AsString)
end;

procedure TCountingDetailsF.GetEntity(Rotatory: Boolean; CountDate: string);
var
  qry: TADOQuery;
begin
  if get_response('آيا براي انتقال كالا ' + myStore.name +
    ' در شمارش اول مطمئن هستيد براي اين كار كليه شمارش‏هاي موجود در اين فرم  حذف مي‏شوند.‏')
    <> mrYes then
    exit;

  if qryCountingDetails.RecordCount > 0 then
    if get_response
      ('در صورت تاييد كليه شمارش‏هاي موجود در اين فرم  حذف مي‏شوند.‏' + #13#10 +
      'آيا مطمئن هستيد') <> mrYes then
      exit;
  qry := TADOQuery.Create(Self);
  With qry do
    try
      qryCountingDetails.AfterPost := nil;
      qryCountingDetails.DisableControls;
      Connection := DMF.adcBSell;
      Active := False;
      SQL.Text := 'DELETE FROM CountingDetails WHERE(CountID=' +
        qryCounting.FieldByName('CountID').AsString + ') AND (StoreID = ' +
        IntToStr(myStore.code) + ')';
      BigMessage(IntToStr(ExecSQL) + ' كالا‌ حذف شد.', 2);
      if opt.AidInfoAvailable then
        InsertEntity2(Rotatory, CountDate)
      else
        InsertEntity1(Rotatory, CountDate);
    finally
      qry.Free;
      qryCountingDetails.EnableControls;
      qryCountingDetails.AfterPost := qryCountingDetailsAfterPost;
      CloseMessage;
    end;
  qryCountingDetails.Requery();
end;

procedure TCountingDetailsF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TCountingDetailsF.cmbQuickSearchChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if cmbQuickSearch.ItemIndex > 0 then
    for i := 0 to DBGrid1.Columns.Count - 1 do
      if pos(LowerCase(DBGrid1.Columns[i].fieldName), 'count') <> 0 then
        DBGrid1.Columns[i].ReadOnly := True;

  if cmbQuickSearch.ItemIndex in [5, 6] then
    medtControlCode.Text := '1'
  else
    medtControlCode.Text := '0'

end;

function TCountingDetailsF.GetCode(str: string): string;
begin
  Result := Trim(MidStr(str, 0, pos(',', str) - 1));
  if Trim(Result) = EmptyStr then
    Result := str;
end;

function TCountingDetailsF.GetCount(str: string): string;
begin
  Result := Trim(MidStr(str, pos(',', str) + 1, 20));
  if pos(',', str) = 0 then
    Result := '1';
end;

procedure TCountingDetailsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0
end;

procedure TCountingDetailsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCountingDetailsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        if DBGrid1.Columns.Count - 1 = nextIndex then
          nextIndex := -1
        else
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
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: if (Sender as TCedarDbgrid).Columns[nextIndex].ButtonStyle = cbsEllipsis
      then
    begin
      Key := #0;
      // DBGrid1EditButtonClick(DBGrid1);
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
          // sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
          aDataSet.Append;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TCountingDetailsF.qryCountingDetailsBeforeEdit(DataSet: TDataSet);
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

procedure TCountingDetailsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryCountingDetails.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryCountingDetails);
  finally
    qryCountingDetails.AfterPost := qryCountingDetailsAfterPost;
  end;
end;

procedure TCountingDetailsF.actGetRotatoryExecute(Sender: TObject);
begin
  inherited;
  GetEntity(True, '9999/99/99');
end;

procedure TCountingDetailsF.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف كليه شمارش‏هاي موجود در اين فرم مطمئن هستيد.‏')
    <> mrYes then
    exit;

  With TADOQuery.Create(Self) do
    try
      Connection := DMF.adcBSell;
      SQL.Text := 'DELETE FROM CountingDetails WHERE(CountID=' +
        qryCounting.FieldByName('CountID').AsString + ') AND (StoreID = ' +
        IntToStr(myStore.code) + ')';
      BigMessage(IntToStr(ExecSQL) + ' كالا‌ حذف شد.', 2);
    finally
      Free;
    end;
  qryCountingDetails.Requery();
end;

procedure TCountingDetailsF.mnuReadFile_StuffTecInfoClick(Sender: TObject);
begin
  inherited;
  LocateCode_StuffTecInfo := True;
  actReadFile.Execute
end;

procedure TCountingDetailsF.NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
begin
  inherited;

  popStuffTecInfo.Free
end;

end.
