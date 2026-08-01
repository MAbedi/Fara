// Mostafa 84/02/25
unit StuffCoding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, zAPIBalloon, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, Menus, ppBarCod, Math, StrUtils, ppParameter,
  ppTypes, ppDesignLayer, System.ImageList, System.Actions, jpeg,
  FarsiReportBuilde, Vcl.ExtDlgs, pngimage, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  // TRGBArray = ARRAY [0 .. 32767] OF TRGBTriple;
  // pRGBArray = ^TRGBArray;

  TStuffCodingF = class(Ttemplate2MDIF)
    qryStuffcoding: TADOQuery;
    qryStuffcodingn_minOrder: TFloatField;
    qryStuffcodingn_maxOrder: TFloatField;
    qryStuffcodingc_KeepPlace: TStringField;
    qryStuffcodingBuyPrice: TBCDField;
    qryStuffcodingacc_DetaiCode: TStringField;
    qryStuffcodingacc_CTopicCode: TStringField;
    qryStuffcodingModifyDate: TDateTimeField;
    qryStuffcodingOperatorID: TSmallintField;
    qryStuffcodingState: TWordField;
    qryStuffcodings_s: TWordField;
    srcStuffcoding: TDataSource;
    Panel1: TPanel;
    qryStores: TADOQuery;
    qryStoresn_StoreID: TSmallintField;
    qryStoresc_StoreName: TStringField;
    srcStores: TDataSource;
    qryStuffcoding_CTopicName: TStringField;
    qryStuffcoding_DetailName: TStringField;
    zbal: TzAPIBalloon;
    qryStuffcodingn_UnitCode: TWordField;
    qryUnits: TADOQuery;
    qryStuffcoding_UntilName: TStringField;
    actSendToExcedl: TAction;
    BitBtn1: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    BitBtn6: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel5: TPanel;
    Label11: TLabel;
    BitBtn7: TBitBtn;
    qryStuffcodingBudgetID: TIntegerField;
    qryStuffcodingStandardRate: TBCDField;
    qryStuffcodingSellPrice1: TBCDField;
    qryStuffcodingSellPrice2: TBCDField;
    qryStuffcodingSellPrice3: TBCDField;
    qryStuffcodingSellPrice4: TBCDField;
    qryStuffcoding_BudgetIName: TStringField;
    qryStuffcodingCarton: TFloatField;
    PopList4Print: TPopupMenu;
    HintName1: TMenuItem;
    rptStuffCodingF1: TMenuItem;
    rptStuffCodingF2: TMenuItem;
    rptStuffCodingF3: TMenuItem;
    qryStuffcodingacc_CTopicCode3: TStringField;
    qryStuffcoding_CTopicName3: TStringField;
    qryStuffcodingOptimumPoint: TFloatField;
    qryStuffcodingUnitPriceUseKind: TWordField;
    qryStuffcodingsd1: TStringField;
    qryStuffcodingsd2: TStringField;
    qryStuffcodingsd3: TStringField;
    qryStuffcodingsd4: TStringField;
    qryStuffcodingsd5: TStringField;
    qryStuffcodingsd6: TStringField;
    qryStuffcodingsd7: TStringField;
    qryStuffcodingsd8: TStringField;
    qryStuffcodingsd9: TStringField;
    qryStuffcodingStuffNote: TStringField;
    StuffCodingBarCode: TMenuItem;
    qryStuffcodingControl_orderPoint_Entity: TWordField;
    qryStuffcodingStanCode: TStringField;
    qryStuffcodingOwnerShipKind: TWordField;
    qryStuffcodingCommission: TFloatField;
    qryStuffcoding_IncomeTopicCode: TStringField;
    qryStuffcoding_BidTopicCode: TStringField;
    qryStuffcoding_CommissionTopicCode: TStringField;
    qryStuffcodingStuffpurePercent: TFloatField;
    qryStuffcodingStuffpublicPercent: TFloatField;
    popMnuGroups: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    BitBtn8: TBitBtn;
    N4: TMenuItem;
    N5: TMenuItem;
    StuffCodingExtraCoding: TMenuItem;
    qryStuffcodingStuffExpireDate: TStringField;
    actChangeStuffCode: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    qryStuffcodingSellPrice_S: TBCDField;
    actGetExcel: TAction;
    qryStuffcodingc_StuffName: TWideStringField;
    qryStuffcodingCabinet: TWideStringField;
    qryStuffcodingTierced: TWideStringField;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    plblGropReng: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    qryStuffcodingc_StuffCode: TLargeintField;
    qryStuffcodingTariffsID: TStringField;
    mnuAllRecords: TMenuItem;
    qryStuffcodingVatExempt: TWordField;
    actMakeRecal: TAction;
    actGetRecal: TAction;
    btnOtherMenu: TBitBtn;
    pm1: TPopupMenu;
    mnuMakeRecal: TMenuItem;
    mnuGetRecal: TMenuItem;
    mnuN8: TMenuItem;
    actMakeManifesto: TAction;
    actGetManifesto: TAction;
    mnuMakeManifesto: TMenuItem;
    mnuGetManifesto: TMenuItem;
    mnuN11: TMenuItem;
    actGetRecal2: TAction;
    mnuGetRecal2: TMenuItem;
    qryStuffcodingChangeState: TWordField;
    actMakeDeficitsCorrelation: TAction;
    actGetDeficitsCorrelation: TAction;
    mnuMakeDeficitsCorrelation: TMenuItem;
    mnuGetDeficitsCorrelation: TMenuItem;
    mnuN9: TMenuItem;
    qryStuffcodingVendorBarcode: TWideStringField;
    actSearchTree: TAction;
    qryStuffcodingGroupID: TIntegerField;
    qryStuffcodingn_orderPoint: TFloatField;
    SpeedButton2: TSpeedButton;
    qryStuffcodingc_StuffTecInfo: TStringField;
    qryStuffcodingacc_CTopicCode2: TStringField;
    qryStuffcoding_CTopicName2: TStringField;
    N8: TMenuItem;
    actGroupToStore: TAction;
    N9: TMenuItem;
    Panel6: TPanel;
    Label10: TLabel;
    btnSelect: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    qryStuffcodingAcc_InComeTopicCode: TLargeintField;
    qryStuffcodingAcc_BidTopicCode: TLargeintField;
    qryStuffcodingAcc_CommissionTopicCode: TLargeintField;
    actStuffCodingItemsF: TAction;
    N10: TMenuItem;
    popsearch: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    btn1: TSpeedButton;
    popSumRecord: TPopupMenu;
    mnuSelectedRow: TMenuItem;
    mnuSumCurrentRecord: TMenuItem;
    pnlNew: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    BitBtn3: TBitBtn;
    actViewFileF: TAction;
    N13: TMenuItem;
    N14: TMenuItem;
    qryLookups: TADOQuery;
    pnlStuffGroups: TPanel;
    qryGroups: TADOQuery;
    qryGroupsGroupID: TIntegerField;
    qryGroupsGroupName: TStringField;
    qryGroupsStartCode: TLargeintField;
    qryGroupsFinishCode: TLargeintField;
    qryGroupscntGroupID: TIntegerField;
    srcStuffGroups: TDataSource;
    qryStuffCodingImage: TADOQuery;
    pnlimgStuff: TPanel;
    imgStuff: TImage;
    qryStuffCodingImageID: TLargeintField;
    qryStuffCodingImageStuffCode: TLargeintField;
    qryStuffCodingImageImageType: TIntegerField;
    qryStuffCodingImageStuffImage: TBlobField;
    srcStuffCodingImage: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    qryStuffcodingUnitCode2: TWordField;
    qryStuffcoding_UntilName2: TStringField;
    chkAllGroup: TCheckBox;
    qryStuffcodingStuffVolume: TFloatField;
    qryStuffcodingStuffWeight: TFloatField;
    N3: TMenuItem;
    Panel7: TPanel;
    btnSaveToFile: TSpeedButton;
    DBNavigator2: TDBNavigator;
    qryGroupsVatExemptOn: TWordField;
    actShowRead: TAction;
    N15: TMenuItem;
    qryStuffcodingDayOfStorage: TIntegerField;
    grdStuffGroups: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    qryStuffcodingSellPrice5: TBCDField;
    qryStuffcodingSellPrice6: TBCDField;
    qryStuffcodingSellPrice7: TBCDField;
    qryStuffcodingBlockOutput: TWordField;
    qryStuffcodingc_StuffName_L2: TWideStringField;
    actStuffCodingLinked: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    qryStuffcodingDefaultValue: TFloatField;
    actChangerF: TAction;
    N18: TMenuItem;
    N19: TMenuItem;
    qryStuffcodingStuffCode: TStringField;
    qryUnit2Stuffs: TADOQuery;
    qryUnit2StuffsStuffCode: TLargeintField;
    qryUnit2StuffsUnitCode: TWordField;
    qryUnit2Stuffs_UntilName: TStringField;
    qryUnit2StuffsUnitCo: TFMTBCDField;
    grdUnit2Stuffs: TCedarDbgrid;
    srcUnit2Stuffs: TDataSource;
    qryStuffcodingCountUnit: TIntegerField;
    actFacilities: TAction;
    actStock: TAction;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryStuffcodingNationalStuffCode: TStringField;
    qryStuffcodingSD1Weight: TBCDField;
    SpeedButton5: TBitBtn;
    SpeedButton4: TBitBtn;
    RadioGroup1: TRadioGroup;
    qryStuffcodingVatExemptCo: TFloatField;
    N20: TMenuItem;
    N21: TMenuItem;
    BitBtn9: TBitBtn;
    qryStuffcodingMaterialUsageCo: TFMTBCDField;
    qryStuffcodingGroupName: TStringField;
    actCardex: TAction;
    BitBtn10: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure qryStuffcodingAfterInsert(DataSet: TDataSet);
    procedure srcStuffcodingStateChange(Sender: TObject);
    procedure qryStuffcodingAfterPost(DataSet: TDataSet);
    procedure chkAllGroupClick(Sender: TObject);
    procedure actSendToExcedlExecute(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryStuffcodingBeforePost(DataSet: TDataSet);
    procedure qryStuffcodingAfterCancel(DataSet: TDataSet);
    procedure qryStuffcodingBeforeDelete(DataSet: TDataSet);
    procedure qryStuffcodingAfterEdit(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rptStuffCodingF1Click(Sender: TObject);
    procedure qryStuffcodingUnitPriceUseKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryStuffcodingUnitPriceUseKindSetText(Sender: TField;
      const Text: String);
    procedure qryStuffcodingOwnerShipKindChange(Sender: TField);
    procedure qryStuffcodingAfterScroll(DataSet: TDataSet);
    procedure qryStuffcodingAfterDelete(DataSet: TDataSet);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure popMnuGroupsPopup(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure actChangeStuffCodeExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure plblGropRengGetText(Sender: TObject; var Text: String);
    procedure mnuAllRecordsClick(Sender: TObject);
    procedure actMakeRecalExecute(Sender: TObject);
    procedure actGetRecalExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure actMakeManifestoExecute(Sender: TObject);
    procedure actGetManifestoExecute(Sender: TObject);
    procedure actGetRecal2Execute(Sender: TObject);
    procedure actMakeDeficitsCorrelationExecute(Sender: TObject);
    procedure actGetDeficitsCorrelationExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure actGroupToStoreExecute(Sender: TObject);
    procedure actStuffCodingItemsFExecute(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure mnuSelectedRowClick(Sender: TObject);
    procedure actViewFileFExecute(Sender: TObject);
    procedure qryStuffcodingst1Change(Sender: TField);
    procedure qryStuffcodingc_StuffNameChange(Sender: TField);
    procedure qryGroupsAfterScroll(DataSet: TDataSet);
    procedure imgStuffClick(Sender: TObject);
    procedure qryStuffCodingImageAfterScroll(DataSet: TDataSet);
    procedure qryStuffCodingImageAfterInsert(DataSet: TDataSet);
    procedure srcStuffCodingImageStateChange(Sender: TObject);
    procedure qryStuffCodingImageAfterDelete(DataSet: TDataSet);
    procedure qryStuffCodingImageBeforeDelete(DataSet: TDataSet);
    procedure btnSaveToFileClick(Sender: TObject);
    procedure actShowReadExecute(Sender: TObject);
    procedure actStuffCodingLinkedExecute(Sender: TObject);
    procedure actChangerFExecute(Sender: TObject);
    procedure qryUnit2StuffsAfterInsert(DataSet: TDataSet);
    procedure qryUnit2StuffsBeforeEdit(DataSet: TDataSet);
    procedure qryStuffcodingBeforeScroll(DataSet: TDataSet);
    procedure actFacilitiesExecute(Sender: TObject);
    procedure actStockExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actCardexExecute(Sender: TObject);
  private
    _st1: string;
    Get_Excel: Boolean;
    mySelected, GroupsSQL, GroupsSQLSearch, StSQL: String;
    function UnicFieldName2(fldIDValue: Largeint; fldValidValue: String;
      tblName, fldIDName, fldValidName: String): Boolean;
    procedure UpDateList(kind: Byte);
    procedure GetRecal(kind: Boolean);
    procedure initJPEGImage;
    procedure AddAllClick;
    // function GetOrgGroupsName: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffCodingF: TStuffCodingF;
  MyStuffCode: Largeint;

const
  AZCOD = 'از كد';

implementation

uses DM, StuffCoding_EditNew, GlobalPro, mmessage, searchCode_ADO,
  Special_Search, DBGrid2Print, FormFunctions, GetExcel, ChooseItem,
  searchCode_TreeViewB, FaraConsts, selected, StuffCodingItems, search2,
  StuffGroups_searchCode, mdiMain, SelectedJunctionTable, Changer,
  ViewFileOnServer, StuffCodingFacilities, StuffCodingStock, RptCardex;

{$R *.dfm}

procedure TStuffCodingF.FormCreate(Sender: TObject);

var
  i: Byte;
  qry: TADOQuery;
  ix: Integer;
begin
  inherited;
  CreateTRIGGER4LinkServer('StuffCoding');
  btnSaveToFile.Visible := User.PowerUser;
  Get_Excel := False;
  SetLookUpCash(qryStuffcoding);
  GroupsSQL :=
    'SELECT StuffGroups.GroupID ,ltrim(str(StuffGroups.GroupID))+'' - ''+ ' +
    ' StuffGroups.GroupName+SPACE((SELECT MAX(LEN(GroupName))+10 ' +
    ' FROM dbo.StuffGroups)-LEN(GroupName)) + ''' + AZCOD + ''' + ' +
    ' cast(StartCode as nvarchar(30))' +
    '+ '' تا كد '' + cast(FinishCode as nvarchar(30))  AS  GroupName ' +
    ' FROM StuffGroups  inner join (SELECT  GroupType,  MAX(LevelID) AS LevelID FROM StuffGroups '
    + ' where  (GroupType IN(' + GetStuffGroupsNames(nil, False) +
    ')) GROUP BY GroupType ) accesslevel on ' +
    ' accesslevel.GroupType = StuffGroups.GroupType and accesslevel.LevelID=StuffGroups.LevelID ';

  GroupsSQL := GroupsSQL + ifthen(opt.StuffCodingKind = 2,
    ' WHERE (StuffCodingKind = 0)', '');

  GroupsSQLSearch := GroupsSQL;
  GroupsSQL := GroupsSQL + ' ORDER BY StuffGroups.GroupID';

  // GrpIDInCmb := InitCombos(nil, GroupsSQL);

  for i := 1 to opt.stCount do
  begin
    with TIntegerField.Create(qryStuffcoding) do
    begin
      FieldName := 'st' + IntToStr(i);
      Tag := 3;
      FieldKind := fkData;
      DataSet := qryStuffcoding;
      Name := 'qryStuffcoding' + FieldName;
      qryStuffcoding.FieldDefs.Add(Name, ftInteger, 0, False);
      if i = 1 then
        OnChange := qryStuffcodingst1Change;
    end;

    With qry do
    begin
      qry := TADOQuery.Create(StuffCodingF);
      Name := 'qrylookupst' + IntToStr(i);
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT Code, Name FROM LookUps WHERE Kind = ' +
        IntToStr(i + 300);
      SQL.Add('order by Name');
      LockType := ltReadOnly;
      Active := True;
    end;
    with TStringField.Create(qryStuffcoding) do
    begin
      FieldName := '_st' + IntToStr(i);
      FieldKind := fkLookup;
      DataSet := qryStuffcoding;
      Name := 'qryStuffcoding' + FieldName;
      KeyFields := 'st' + IntToStr(i);
      LookUpDataset := qry;
      LookUpKeyFields := 'Code';
      LookUpResultField := 'Name';
      DisplayLabel := GetStName(i);

      // LookupCache := False;

      Size := 150;
      qryStuffcoding.FieldDefs.Add(Name, ftString, 150, True);
      ix := DBGrid1.Columns.Count;
      if i <> 1 then
        With DBGrid1.Columns.Add do
        begin
          FieldName := '_st' + IntToStr(i);
          Index := ix;
        end;
    end;

    if i = 1 then
    begin
      StSQL := StSQL + Format(',dbo.GetLookUpsStName(St%d ,%d ) AS StName%d',
        [i, i + 300, i]);
      with TStringField.Create(qryStuffcoding) do
      begin
        FieldName := 'StName' + IntToStr(i);
        DataSet := qryStuffcoding;
        Name := 'qryStuffcoding' + FieldName;
        DisplayLabel := GetStName(i);
        Size := 150;
        Tag := 3;
        qryStuffcoding.FieldDefs.Add(Name, ftString, 150, True);
        ix := DBGrid1.Columns.Count;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'StName' + IntToStr(i);
          Index := ix;
        end;
      end;

    end;

  end; // for
  SetExtraCoding(qryStuffcoding, DBGrid1);
  qryUnits.Active := True;
  qryLookups.Active := True;
  qryStuffcoding.FieldByName('c_StuffName').ReadOnly :=
    opt.EditStuffNameLevelID;
  setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');

  // qryStuffcoding.Active:=True;

  if mdiMainF.MainFrame.GetActiveIndex = 8 then
  begin
    SpeedButton2.Visible := False;
    actGroupToStore.Visible := False;
    SpeedButton3.Visible := False;
    SpeedButton1.Visible := False;
    btnSelect.Visible := False;
    btnOtherMenu.Visible := False;
    pnlNew.Visible := False;
    actChangeStuffCode.Visible := False;
    actGetExcel.Visible := False;
  end;

  with qryGroups do
  begin
    Active := False;
    Active := True;
  end;

  mnuAllRecords.Checked :=
    StrToBool(ReadConfig(APPID, 'StuffCodingFmnuAllRecords',
    mnuAllRecords.Checked.ToString));

end;

procedure TStuffCodingF.qryStuffcodingAfterInsert(DataSet: TDataSet);

var
  aRange: String;
  rFrom, rTo: String;

begin
  inherited;
  if (chkAllGroup.Checked) then
  begin
    chkAllGroup.Checked := False;
    zbal.Title := 'اخطار';
    zbal.Prompt.Text := 'لطفاً قبل از تعريف كالا جديد گروه آنرا مشخص كنيد.';
    zbal.Show(grdStuffGroups);
    Abort;
  end; // if
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('Acc_CommissionTopicCode').AsInteger := 0;
  DataSet.FieldByName('Acc_BidTopicCode').AsInteger := 0;
  DataSet.FieldByName('Acc_InComeTopicCode').AsInteger := 0;
  if opt.RecoverPittedCode in [0] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2,acc_CTopicCode3 from StuffGroups where GroupID='
        + IntToStr(qryGroupsGroupID.AsInteger);
      Active := True;
      rFrom := Fields[0].AsString;
      rTo := Fields[1].AsString;
      DataSet.FieldByName('acc_CTopicCode').AsInteger := Fields[2].AsInteger;
      DataSet.FieldByName('acc_CTopicCode2').AsInteger := Fields[3].AsInteger;
      DataSet.FieldByName('acc_CTopicCode3').AsInteger := Fields[4].AsInteger;
      aRange := Format('%s and %s', [rFrom, rTo]);
      Active := False;
      if aRange = ' and ' then
        aRange := '0 and 9223372036854775807';

      qryStuffcodingc_StuffCode.AsLargeInt :=
        GetANewCode(self.Name,
        'Select max(c_StuffCode) from Stuffcoding where c_StuffCode between ' +
        aRange + 'and GroupID=' + IntToStr(qryGroupsGroupID.AsInteger),
        'c_StuffCode');
      if not((qryStuffcodingc_StuffCode.AsLargeInt >= rFrom.ToInt64) and
        (qryStuffcodingc_StuffCode.AsLargeInt <= rTo.ToInt64)) then
      begin
        Warn2('عدد ' + qryStuffcodingc_StuffCode.AsString +
          'خارج از محدوده  این گروه است  و قابل تخصیص نیست');
        qryStuffcodingc_StuffCode.AsString := rFrom;
      end;
    end // with
  else
    qryStuffcodingc_StuffCode.AsLargeInt :=
      New_RecoverPittedCode(qryGroupsGroupID.AsInteger, 'StuffCode', self.Name);
  DataSet.FieldByName('acc_DetaiCode').AsInteger := 0;
  DataSet.FieldByName('n_UnitCode').AsInteger := 1;
  DataSet.FieldByName('BudgetID').AsInteger := 0;
  DataSet.FieldByName('Carton').Value := 1;
  DataSet.FieldByName('GroupID').AsInteger := qryGroupsGroupID.AsInteger;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  DataSet.FieldByName('VatExempt').AsInteger :=qryGroupsVatExemptOn.AsInteger;




  if opt.ConcatField4StuffNameKind = 2 then
    DataSet.FieldByName('c_StuffName').AsString := qryGroupsGroupName.AsString;

  if Not Get_Excel then
    StuffCoding_EditNewF.enter(False);

end;

procedure TStuffCodingF.UpDateList;
begin
  with qryStuffcoding do
  begin
    Active := False;
    SQL.Text := 'SELECT *,ltrim(c_StuffCode) AS StuffCode ' + StSQL;
    SQL.Add(',(SELECT Count(*) FROM Unit2Stuffs WHERE(StuffCode = c_StuffCode )) As CountUnit');
    SQL.Add(',(SELECT GroupName FROM StuffGroups WHERE(GroupID = Stuffcoding.GroupID )) As GroupName');
    SQL.Add('FROM Stuffcoding');
  end;

  case kind of
    1:
      begin
        with qryStuffcoding do
        begin
          SQL.Add('WHERE ( CAST(GroupID AS int) = :Groupid)');
          Parameters.ParamByName('Groupid').Value := qryGroupsGroupID.AsInteger;
        end; // with
      end;
    2:
      begin
        if chkAllGroup.Checked then
        begin
          grdStuffGroups.Enabled := False;
          with qryStuffcoding do
          begin
            // SQL.Add('WHERE (GroupID in(' + GrpIDInCmb + '))');
            SQL.Add('WHERE (0=0)');
          end; // with
        end
        else
        begin
          grdStuffGroups.Enabled := True;
          with qryStuffcoding do
          begin
            SQL.Add('WHERE ( CAST(GroupID AS int) = :Groupid)');
            Parameters.ParamByName('Groupid').Value :=
              qryGroupsGroupID.AsInteger;
          end; // with
        end; // else
      end;
    3:
      begin
        if Length(mySelected) > 1 then
          with qryStuffcoding do
          begin
            SQL.Add('WHERE (GroupID in(' + mySelected + '))');
          end; // with
      end;
  end;
  with qryStuffcoding do
  begin
    SQL.Add('and (c_StuffCode <> 0)');
    SQL.Add('Order by Groupid');
    Active := True;
  end;
//  setColumns(DBGrid1,'GroupName',chkAllGroup.Checked);

end;

procedure TStuffCodingF.srcStuffCodingImageStateChange(Sender: TObject);
begin
  inherited;
  initJPEGImage
end;

procedure TStuffCodingF.srcStuffcodingStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
end;

procedure TStuffCodingF.qryStuffcodingAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Not Get_Excel then
  begin
    qryUnit2Stuffs.UpdateBatch();
    StuffCoding_EditNewF.SaveSelect;

    // qryStores.Requery;
    BigMessage('ثبت شد.', 1);
    StuffCoding_EditNewF.Close;
  end;

    // opt.isUpdateStuffCoding := True;
end;

procedure TStuffCodingF.chkAllGroupClick(Sender: TObject);
begin
  inherited;
  pnlStuffGroups.Visible := not chkAllGroup.Checked;
  UpDateList(2);
end;

procedure TStuffCodingF.actSendToExcedlExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffCodingF.actShowReadExecute(Sender: TObject);

begin
  inherited;
  StuffCoding_EditNewF.enter(True);
end;

procedure TStuffCodingF.ppLabel12GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffCodingF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffCodingF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffCodingF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingF.actSortExecute(Sender: TObject);
begin
  inherited;
  if (chkAllGroup.Checked) then
  begin
    chkAllGroup.Checked := False;
    zbal.Title := 'اخطار';
    zbal.Prompt.Text := 'لطفاً قبل از به ترتيب كردن كالا  گروه آنرا مشخص كنيد.';
    zbal.Show(grdStuffGroups);
    exit;
  end; // if
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingF.actStockExecute(Sender: TObject);
begin
  inherited;
  StuffCodingStockF.enter(qryStuffcodingc_StuffCode.AsLargeInt)
end;

procedure TStuffCodingF.actStuffCodingItemsFExecute(Sender: TObject);
begin
  inherited;
  StuffCodingItemsF.enter(qryStuffcoding)
end;

procedure TStuffCodingF.N12Click(Sender: TObject);
begin
  inherited;
  search2f.ShowSearch(qryStuffcoding);
end;

procedure TStuffCodingF.N1Click(Sender: TObject);
begin
  inherited;
  if qryStuffcoding.Sort = 'c_StuffCode' then
  begin
    qryStuffcoding.Sort := 'c_StuffCode DESC ';
  end
  else
  begin
    qryStuffcoding.Sort := 'c_StuffCode';
  end;
end;

procedure TStuffCodingF.N2Click(Sender: TObject);
begin
  inherited;
  if qryStuffcoding.Sort = 'c_StuffName' then
  begin
    qryStuffcoding.Sort := 'c_StuffName DESC ';
  end
  else
  begin
    qryStuffcoding.Sort := 'c_StuffName';
  end;
end;

procedure TStuffCodingF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, 'StuffCodingFmnuAllRecords',
    mnuAllRecords.Checked.ToString);

end;

// function TStuffCodingF.GetOrgGroupsName: string;
// begin
// Result := qryGroupsGroupName.AsString;
// Result := StringReplace(Result, Trim(IntToStr(qryGroupsGroupID.AsInteger)) + ' - ', '',
// [rfReplaceAll]);
// Result := Trim(leftStr(Result, Pos(AZCOD, Result) - 1));
// end;

procedure TStuffCodingF.qryStuffcodingBeforePost(DataSet: TDataSet);
var
  canpost: Boolean;
  i: Integer;
  s, GroupsName: string;
begin
  inherited;
  TrimStringFields(DataSet);
  With tsConcatField4StuffName do
  begin
    if Count > 1 then
    begin
      GroupsName := qryGroupsGroupName.AsString;
      s := GroupsName;

      for i := 1 to Count - 1 do
      begin
        if (DataSet.FindField(Trim(tsConcatField4StuffName[i])) <> nil) and
          (DataSet.FindField(Trim(tsConcatField4StuffName[i])).AsString <>
          EmptyStr) then
          s := s + ifthen(s = GroupsName, ' ', tsConcatField4StuffName[0]) +
            DataSet.FieldByName(Trim(tsConcatField4StuffName[i]))
            .AsString + #254;
      end;
      qryStuffcodingc_StuffName.AsString := s;
    end;
  end;

  if not UnicFieldName2(qryStuffcodingc_StuffCode.AsLargeInt,
    DataSet.FieldByName('c_StuffName').AsString, 'Stuffcoding ', 'c_StuffCode',
    'c_StuffName') then
    Abort;
  if not CheckRequiredFields(qryStuffcoding) then
    Abort;
  MyStuffCode := qryStuffcodingc_StuffCode.AsLargeInt;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT GroupID  FROM StuffGroups';
    SQL.Add('WHERE (' + qryStuffcoding.FieldByName('c_StuffCode').AsString);
    SQL.Add('BETWEEN StartCode AND FinishCode) AND (GroupID =' +
      qryStuffcoding.FieldByName('GroupID').AsString + ')');
    Active := True;
    canpost := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if canpost then
  begin
    Warn('كد وارد شده خارج از محدوده تعريف شده ميباشد.‏');
    Abort;
  end; // if
  if Not Get_Excel then
    if (not StuffCoding_EditNewF.CheckTick) then
    begin
      Warn('حداقل يك انبار بايد انتخاب شود.‏');
      Abort;
    end; // if
  DataSet.FieldByName('SellPrice1').AsFloat :=
    roundto(DataSet.FieldByName('SellPrice1').AsFloat, -2);
  DataSet.FieldByName('SellPrice2').AsFloat :=
    roundto(DataSet.FieldByName('SellPrice2').AsFloat, -2);
  DataSet.FieldByName('SellPrice3').AsFloat :=
    roundto(DataSet.FieldByName('SellPrice3').AsFloat, -2);
  DataSet.FieldByName('SellPrice4').AsFloat :=
    roundto(DataSet.FieldByName('SellPrice4').AsFloat, -2);
  DataSet.FieldByName('StandardRate').AsFloat :=
    roundto(DataSet.FieldByName('StandardRate').AsFloat, -2);
  DataSet.FieldByName('BuyPrice').AsFloat :=
    roundto(DataSet.FieldByName('BuyPrice').AsFloat, -2);
  if qryStuffcodingTariffsID.AsString = EmptyStr then
    qryStuffcodingTariffsID.AsVariant := Null;

  // If DataSet.FieldByName('Carton').AsInteger<=0 then
  // DataSet.FieldByName('Carton').Value:=1;
end;

procedure TStuffCodingF.qryStuffcodingBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  With qryUnit2Stuffs do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value := 0;
    Active := True;
  end;

end;

procedure TStuffCodingF.qryStuffcodingc_StuffNameChange(Sender: TField);
begin
  inherited;
  if opt.ConcatField4StuffNameKind = 2 then
  begin
    _st1 := qryStuffcoding.FieldByName('_st1').AsString;
  end;
end;

function TStuffCodingF.UnicFieldName2(fldIDValue: Largeint;
  fldValidValue: String; tblName, fldIDName, fldValidName: String): Boolean;

var
  i: Byte;
  b: Boolean;
  StuffTecInfo: string;
begin
  Result := True;
  if opt.UnicStuffCodingKind = 0 then
    exit;
  Result := False;
  StuffTecInfo := Trim(qryStuffcoding.FieldByName('c_StuffTecInfo').AsString);
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) ';
    SQL.Add('FROM  ' + tblName + ' GROUP BY ' + fldValidName + ', ' +
      fldIDName);

    if (opt.UnicStuffCodingKind in [2, 3]) and (StuffTecInfo <> EmptyStr) then
      SQL.Add(', c_StuffTecInfo');

    if opt.UnicStuffCodingKind = 3 then
      for i := 1 to opt.stCount do
        SQL.Add(', st' + IntToStr(i));

    for i := 1 to 9 do
    begin
      b := opt.ExtraCoding.Captions[i] <> '';
      if b then
        SQL.Add(', sd' + IntToStr(i));
    end;
    SQL.Add('HAVING (' + fldValidName + ' = N''' + fldValidValue + ''') ');
    SQL.Add('AND (' + fldIDName + ' <> ' + IntToStr(fldIDValue) + ')');

    if (opt.UnicStuffCodingKind in [2, 3]) and (StuffTecInfo <> EmptyStr) then
      SQL.Add('AND (c_StuffTecInfo = N''' + StuffTecInfo + ''')');

    if opt.UnicStuffCodingKind = 3 then
      for i := 1 to opt.stCount do
        SQL.Add('AND (st' + IntToStr(i) + ' = ' +
          IntToStr(qryStuffcoding.FieldByName('st' + IntToStr(i))
          .AsInteger) + ')');

    for i := 1 to 9 do
    begin
      b := opt.ExtraCoding.Captions[i] <> '';
      if b then
        SQL.Add('AND (ISNULL(sd' + IntToStr(i) + ',N'''') = ''' +
          Trim(qryStuffcoding.FieldByName('sd' + IntToStr(i)).AsString)
          + ''')');
    end;
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('نام و مشخصات وارد شده تكراري مي‌باشد.');
      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure TStuffCodingF.AddAllClick;
var
  NewItem: TMenuItem;
  qry: TADOQuery;
begin
  if Mnu_AllClick.Count <= 1 then
  begin
    qry := TADOQuery.Create(self);
    With qry do
    begin
      Clone(qryGroups, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        NewItem := TMenuItem.Create(self);
        NewItem.Caption := FieldByName('GroupName').AsString;
        NewItem.Tag := FieldByName('GroupID').AsInteger;
        NewItem.OnClick := Mnu_AllClickClick;
        if FieldByName('GroupID').AsInteger = qryGroupsGroupID.AsInteger then
          NewItem.Checked := True;
        Mnu_AllClick.Add(NewItem);
        Next;
      end;
      Free;
    end;

  end;
  Mnu_AllClick.Click;
end;

procedure TStuffCodingF.qryGroupsAfterScroll(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  UpDateList(1);
  for i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked := qryGroupsGroupID.AsInteger = Mnu_AllClick.
      Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
end;

procedure TStuffCodingF.qryStuffcodingAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if Not Get_Excel then
    StuffCoding_EditNewF.Close;
end;

procedure TStuffCodingF.qryStuffcodingBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TStuffCodingF.qryStuffcodingAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Not Get_Excel then
    StuffCoding_EditNewF.enter(False);
end;

procedure TStuffCodingF.actSearch_Execute(Sender: TObject);

var
  Txt, Fields_SD_1_9, Fld_St, Fld_St_JOIN: String;
  b: Boolean;
  i, k: SmallInt;
  Results: array [0 .. 29] of String;
  colTopics: array [0 .. 29] of String;
  colWidths: array [0 .. 29] of SmallInt;
begin
  inherited;
  colTopics[0] := 'کد';
  colTopics[1] := 'نام كالا';
  colTopics[2] := 'مشخصات فني';
  colTopics[3] := 'بهاي فروش 1';
  colTopics[4] := 'واحد';
  colTopics[5] := 'Stuff Name';
  colWidths[0] := 50;
  colWidths[1] := 100;
  colWidths[2] := 80;;
  colWidths[3] := 50;
  colWidths[4] := 50;
  colWidths[5] := 60;
  k := 5;
  for i := 1 to 9 do
  begin
    colTopics[i + 5] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      k := i + 5;
      colWidths[k] := 50;
      Fields_SD_1_9 := Fields_SD_1_9 + ',sd' + IntToStr(i);
    end;
  end;
  // s:=False;
  for i := 1 to opt.stCount do
  begin
    colTopics[k + i] := GetStName(i);
    colWidths[k + i] := 50;
    Fld_St := Fld_St + ',LookUps_st' + IntToStr(i) + '.Name AS Name_st' +
      IntToStr(i);
    Fld_St_JOIN := Fld_St_JOIN + 'LEFT OUTER JOIN LookUps AS LookUps_st' +
      IntToStr(i) + ' ON StuffCoding.st' + IntToStr(i) + ' = LookUps_st' +
      IntToStr(i) + '.Code AND LookUps_st' + IntToStr(i) + '.Kind = ' +
      IntToStr(300 + i);
  end;

  if (chkAllGroup.Checked) then
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo,SellPrice1,Units.UnitName,c_StuffName_L2 '
      + Fields_SD_1_9 + Fld_St +
      ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode '
      + Fld_St_JOIN
  else
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo,SellPrice1,Units.UnitName,c_StuffName_L2 '
      + Fields_SD_1_9 + Fld_St +
      ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode '
      + Fld_St_JOIN + ' where(GroupID=' +
      IntToStr(qryGroupsGroupID.AsInteger) + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', Txt, colTopics,
    Results, colWidths, alLeft);

  if b then
    qryStuffcoding.Locate('c_StuffCode', Results[0], []);
end;

procedure TStuffCodingF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  popsearch.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingF.BitBtn8Click(Sender: TObject);

var
  Txt, Fields_SD_1_9, Fld_St, Fld_St_JOIN: String;
  b: Boolean;
  i, k: Byte;
  Results: array [0 .. 27] of String;
  colTopics: array [0 .. 27] of String;
  colWidths: array [0 .. 27] of SmallInt;
begin
  inherited;
  colTopics[0] := 'کد';
  colTopics[1] := 'نام كالا';
  colTopics[2] := 'مشخصات فني';
  colTopics[3] := 'Stuff Name';
  colWidths[0] := 50;
  colWidths[1] := 100;
  colWidths[2] := 100;
  colWidths[3] := 100;
  k := 3;
  for i := 1 to 9 do
  begin
    colTopics[i + 3] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      k := i + 3;
      colWidths[i + 3] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',sd' + IntToStr(i);
    end;
  end;
  // s:=False;
  for i := 1 to opt.stCount do
  begin
    colTopics[k + i] := GetStName(i);
    colWidths[k + i] := 50;
    Fld_St := Fld_St + ',LookUps_st' + IntToStr(i) + '.Name AS Name_st' +
      IntToStr(i);
    Fld_St_JOIN := Fld_St_JOIN + 'LEFT OUTER JOIN LookUps AS LookUps_st' +
      IntToStr(i) + ' ON StuffCoding.st' + IntToStr(i) + ' = LookUps_st' +
      IntToStr(i) + '.Code AND LookUps_st' + IntToStr(i) + '.Kind = ' +
      IntToStr(300 + i);
  end;

  if (chkAllGroup.Checked) then
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo,c_StuffName_L2 ' + Fields_SD_1_9 +
      Fld_St + ' FROM Stuffcoding  ' + Fld_St_JOIN
  else
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo,c_StuffName_L2 ' + Fields_SD_1_9 +
      Fld_St + ' FROM Stuffcoding ' + Fld_St_JOIN + ' where(GroupID=' +
      IntToStr(qryGroupsGroupID.AsInteger) + ')';
  b := special_SearchF.SearchCode(DMf.adcBSell, ' كالاها  ', Txt, colTopics,
    Results, colWidths, alLeft, 3);

  if b then
    qryStuffcoding.Locate('c_StuffCode', Results[0], []);
end;

procedure TStuffCodingF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TStuffCodingF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuffcoding.FieldByName('c_StuffCode'));
end;

procedure TStuffCodingF.rptStuffCodingF1Click(Sender: TObject);
begin
  inherited;
  try
    qryGroups.DisableControls;
    qryStuffcoding.DisableControls;
    qryUnit2Stuffs.DisableControls;
    qryStuffCodingImage.DisableControls;
    qryStores.DisableControls;
    if mnuAllRecords.Checked then
    begin
      ppDBPipeline1.RangeBegin := rbFirstRecord;
      ppDBPipeline1.RangeEnd := reLastRecord;
    end
    else
    begin
      ppDBPipeline1.RangeBegin := rbCurrentRecord;
      ppDBPipeline1.RangeEnd := reCurrentRecord;
    end;
    SeletedPrint(ppDBPipeline1, DBGrid1);
    InitReportFile(ppReport1, (Sender as TMenuItem).Name, True);
  finally
    qryStuffcoding.EnableControls;
    qryGroups.EnableControls;
    qryUnit2Stuffs.EnableControls;
    qryStuffCodingImage.EnableControls;
    qryStores.EnableControls;
  end;

end;

procedure TStuffCodingF.qryStuffcodingUnitPriceUseKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case StuffCodingF.qryStuffcoding.FieldByName('UnitPriceUseKind').AsInteger of
    0:
      Text := 'تنظيمات سيستم في1';
    1:
      Text := 'ثــــابـــــت  واحــــد 1';
    2:
      Text := 'ثــــابـــــت  واحــــد 2';
    3:
      Text := 'تنظيمات سيستم في2';
    4:
      Text := 'كــديــنــگ كــالا - في';
    5:
      Text := 'درصدي از قرارداد';
    6:
      Text := 'كل مبلغ قرارداد';

  end; // case
end;

procedure TStuffCodingF.qryStuffcodingUnitPriceUseKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Not Get_Excel then
    StuffCodingF.qryStuffcoding.FieldByName('UnitPriceUseKind').AsInteger :=
      StuffCoding_EditNewF.CmbUnitPriceUseKind.ItemIndex;
end;

procedure TStuffCodingF.qryUnit2StuffsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryUnit2StuffsStuffCode.AsLargeInt := StuffCodingF.qryStuffcodingc_StuffCode.
    AsLargeInt;

end;

procedure TStuffCodingF.qryUnit2StuffsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryStuffcoding.State in dsEditModes) then
    qryStuffcoding.Edit       ;

end;

procedure TStuffCodingF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  Get_Excel := RadioGroup1.ItemIndex = 1;
  case RadioGroup1.ItemIndex of
    0:
      begin
        DBGrid1.Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines,
          dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit,
          dgMultiSelect];
        DBGrid1.OnKeyPress := DBGrid1KeyPress;
        DBGrid1.ReadOnly := True;
      end
  else
    begin
      DBGrid1.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
        dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];

      DBGrid1.OnKeyPress := nil;
      DBGrid1.ReadOnly := False;
    end;
  end;

end;

procedure TStuffCodingF.qryStuffcodingOwnerShipKindChange(Sender: TField);
begin
  inherited;
  if Not Get_Excel then
    StuffCoding_EditNewF.grpCommission.Visible :=
      qryStuffcoding.FieldByName('OwnerShipKind').AsInteger = 1;
end;

procedure TStuffCodingF.qryStuffcodingst1Change(Sender: TField);
var
  s: string;
begin
  inherited;
  if opt.ConcatField4StuffNameKind = 2 then
  begin
    s := qryStuffcoding.FieldByName('c_StuffName').AsString;
    s := s.Replace(_st1, '', [rfReplaceAll]).Replace('  ', ' ', [rfReplaceAll]);
    s.Trim;
    s := s.Replace(qryGroupsGroupName.AsString, qryGroupsGroupName.AsString +
      ' ' + qryStuffcoding.FieldByName('_st1').AsString, [rfReplaceAll]);
    qryStuffcoding.FieldByName('c_StuffName').AsString := s + ' ';

    if StuffCoding_EditNewF <> nil then
    begin
      StuffCoding_EditNewF.edtc_StuffName.SetFocus;
      StuffCoding_EditNewF.edtc_StuffName.SelStart :=
        Length(qryStuffcoding.FieldByName('c_StuffName').AsString);
    end;

  end;
end;

procedure TStuffCodingF.qryStuffcodingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  imgStuff.Picture := nil;

  // if (DBGrid1.SearchPanel.SearchingText = '') then
  begin
    With qryStores do
    begin
      Active := False;
      Parameters.ParamByName('c_StuffCode').Value :=
        qryStuffcodingc_StuffCode.AsLargeInt;
      Active := True;
    end;
    With qryStuffCodingImage do
    begin
      Active := False;
      Parameters.ParamByName('StuffCode').Value :=
        qryStuffcodingc_StuffCode.AsLargeInt;
      Active := True;
    end;
    With qryUnit2Stuffs do
    begin
      Active := False;
      Parameters.ParamByName('StuffCode').Value :=
        qryStuffcodingc_StuffCode.AsLargeInt;
      Active := True;
    end;

  end;
end;

procedure TStuffCodingF.qryStuffcodingAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TStuffCodingF.Mnu_AllClickClick(Sender: TObject);

var
  rid: Integer;
begin
  inherited;
  if get_response('آيا براي " تغيير گروه " اين كالا مطمئن هستيد؟') <> mrYes then
    exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Stuffcoding SET GroupID=' +
      IntToStr((Sender as TMenuItem).Tag) + ' WHERE c_StuffCode=' +
      qryStuffcoding.FieldByName('c_StuffCode').AsString;
    try
      ExecSQL;
      BigMessage(' تغيير گروه انجام شد.', 2);
      Active := False;
    except
      Warn('اشكال در تغيير گروه');
    end; // try
  end; // with
  qryStuffcoding.Next;
  rid := qryStuffcodingc_StuffCode.AsLargeInt;
  qryStuffcoding.Requery();
  qryStuffcoding.Locate('c_StuffCode', rid, []);
end;

procedure TStuffCodingF.popMnuGroupsPopup(Sender: TObject);
begin
  inherited;
  AddAllClick;
  Mnu_AllClick.Caption := 'تغيير گروه كالاي <> ' + qryStuffcoding.FieldByName
    ('c_StuffName').AsString
end;

procedure TStuffCodingF.N4Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffCodingF.mnuAllRecordsClick(Sender: TObject);
begin
  inherited;
  mnuAllRecords.Checked := not mnuAllRecords.Checked
end;

procedure TStuffCodingF.mnuSelectedRowClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TStuffCodingF.actChangeStuffCodeExecute(Sender: TObject);

var
  c_StuffCode: Largeint;
begin
  inherited;
  if get_response('آيا براي تغيير كد كالا مطمئن هستيد؟') <> mrYes then
    Abort;
  c_StuffCode := GetANewCode(self.Name,
    'Select max(c_StuffCode) from Stuffcoding  where  GroupID =' +
    qryGroupsGroupID.AsString, 'c_StuffCode');
  c_StuffCode := StrToInt64(Trim(get_box('تغيير كد كالا',
    'لطفاً كد جديد را وارد كنيد:', IntToStr(c_StuffCode))));
  if get_response('آيا براي تغيير كد كالا از ' + qryStuffcoding.FieldByName
    ('c_StuffCode').AsString + ' به ' + IntToStr(c_StuffCode) + ' مطمئن هستيد؟')
    <> mrYes then
    Abort;
  With TADOStoredProc.Create(nil) do
    try
      Active := False;
      ProcedureName := 'ChangeStuffCode';
      Connection := DMf.adcBSell;
      Parameters.AddParameter;
      Parameters.Refresh;
      Parameters.ParamByName('@StuffCodeOld').Value :=
        qryStuffcodingc_StuffCode.AsLargeInt;
      Parameters.ParamByName('@StuffCodeNew').Value := c_StuffCode;
      ExecProc;
    finally
      Free;
      FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
      qryStuffcoding.Requery();
      qryStuffcoding.Locate('c_StuffCode', c_StuffCode, []);
    end;
end;

procedure TStuffCodingF.actFacilitiesExecute(Sender: TObject);
begin
  inherited;
  StuffCodingFacilitiesF.enter(qryStuffcodingc_StuffCode.AsLargeInt)
end;

procedure TStuffCodingF.actMakeDeficitsCorrelationExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('Deficits', DMf.adcBSell, '');
  MakeTableToZip('DeficitsCorrelation', DMf.adcBSell, '')
end;

procedure TStuffCodingF.actGetDeficitsCorrelationExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  qry := TADOQuery.Create(nil);
  With qry do
    try
      Connection := DMf.adcBSell;

      SQL.Text := 'SELECT * FROM Deficits';
      Active := True;
      LoadTableFromZip(qry, 'Deficits', 'DeficitID', 'DeficitID', False,
        'آيا براي فراخواني كسورات/اضافات تعريف شده مطمئن هستيد؟');

      SQL.Text := 'DELETE FROM DeficitsCorrelation';
      ExecSQL;
      SQL.Text := 'SELECT * FROM DeficitsCorrelation';
      Active := True;
      LoadTableFromZip(qry, 'DeficitsCorrelation', 'DeficitID', 'CodeFrom',
        False, '');

    finally
      Free;
    end;

end;

procedure TStuffCodingF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    Get_Excel := True;
    GetExcelF.ShowImPortExcel(qryStuffcoding);
  finally
    Get_Excel := False;
  end;
end;

procedure TStuffCodingF.actMakeManifestoExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('Manifesto', DMf.adcBSell, '');
  MakeTableToZip('ManifestoItems', DMf.adcBSell, '')
end;

procedure TStuffCodingF.actGetManifestoExecute(Sender: TObject);

var
  qry: TADOQuery;
begin
  inherited;
  qry := TADOQuery.Create(nil);
  With qry do
    try
      Connection := DMf.adcBSell;

      SQL.Text := 'SELECT * FROM Manifesto';
      Active := True;
      LoadTableFromZip(qry, 'Manifesto', 'ManifestoID', 'ManifestoID', True,
        'آيا براي فراخواني اعلاميه قيمت كالاها مطمئن هستيد؟');

      SQL.Text := 'SELECT * FROM ManifestoItems';
      Active := True;
      LoadTableFromZip(qry, 'ManifestoItems', 'ManifestoID', 'StuffCode',
        True, '');

    finally
      Free;
    end;

end;

procedure TStuffCodingF.actMakeRecalExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('Stuffcoding', DMf.adcBSell, 'WHERE (c_StuffCode <> 0)');
  MakeTableToZip('StoreStuffs', DMf.adcBSell, 'WHERE (c_StuffCode <> 0)')
end;

procedure TStuffCodingF.actGetRecal2Execute(Sender: TObject);
begin
  inherited;
  GetRecal(False)
end;

procedure TStuffCodingF.actGetRecalExecute(Sender: TObject);
begin
  inherited;
  GetRecal(True)
end;

procedure TStuffCodingF.actGroupToStoreExecute(Sender: TObject);

var
  s, StoreIDs: string;

begin
  inherited;
  s := 'انبارها براي ارتباط با گروه جاري انتخاب شوند' + #13#10 +
    'در صورت عدم انتخاب انبار كليه ارتباط هاي انبار با كالاي اين گروه(كالاهاي فاقد گردش) حذف مي شود';
  Warn(s, mtInformation);
  StoreIDs := selectedF.ShowSelect(DMf.adcBSell, s,
    'SELECT n_StoreID, c_StoreName FROM Stores ', ['كد', 'انبار'], alLeft,
    [100, 400], StoreIDs, 'n_StoreID');

  if (StoreIDs = EmptyStr) and
    (get_response('هيچ انباري انتخاب نشده آيا مايل به حذف ارتباط كليه' +
    ' كالاهاي (فاقد گردش) گروه جاري با انبار ها هستيد؟') = mrYes) then
    StoreIDs := '0';

  if (StoreIDs = EmptyStr) then
    exit;

  With DMf.qryTmpTmp do
    try
      CommandTimeout := 0;
      Active := False;

      SQL.Text := 'DELETE FROM StoreStuffs';
      // SQL.Add('FROM StoreStuffs INNER JOIN');
      // SQL.Add('StuffCoding ON StoreStuffs.c_StuffCode = StuffCoding.c_StuffCode INNER JOIN');
      // SQL.Add('ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode LEFT OUTER JOIN');
      // SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
      // SQL.Add('ReciptItems.YearID = Recipts.YearID AND');
      // SQL.Add('StoreStuffs.n_StoreID = Recipts.StoreID');
      // SQL.Add('WHERE (StuffCoding.GroupID = %d ) AND (Recipts.StoreID IS NULL)');
      SQL.Add('FROM StoreStuffs INNER JOIN');
      SQL.Add('StuffCoding ON StoreStuffs.c_StuffCode = StuffCoding.c_StuffCode');
      SQL.Add('WHERE (StuffCoding.GroupID = %d )');
      SQL.Add('AND (StoreStuffs.c_StuffCode NOT IN (');
      SQL.Add('SELECT DISTINCT ReciptItems.StuffCode');
      SQL.Add('FROM Recipts RIGHT OUTER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID ');
      SQL.Add('AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
      SQL.Add('WHERE (Recipts.StoreID = StoreStuffs.n_StoreID )');
      SQL.Add('))');
      SQL.Text := Format(SQL.Text, [qryGroupsGroupID.AsInteger]);
      ExecSQL;

      SQL.Text := EmptyStr;
      SQL.Add('');
      SQL.Add('INSERT INTO StoreStuffs');
      SQL.Add('(c_StuffCode, n_StoreID)');
      SQL.Add('SELECT DISTINCT StuffCoding.c_StuffCode, Stores.n_StoreID');
      SQL.Add('FROM StuffCoding CROSS JOIN');
      SQL.Add('Stores ');
      SQL.Add('WHERE (StuffCoding.GroupID = %d )');
      SQL.Add('AND (Stores.n_StoreID IN (%s))');

      SQL.Add('AND (StuffCoding.c_StuffCode NOT  IN (SELECT DISTINCT c_StuffCode');
      SQL.Add('FROM StoreStuffs');
      SQL.Add('WHERE (n_StoreID = Stores.n_StoreID)))');

      SQL.Text := Format(SQL.Text, [qryGroupsGroupID.AsInteger, StoreIDs]);
      ExecSQL;

    finally
      CommandTimeout := 30;
      qryStuffcoding.Requery();
    end;
end;

procedure TStuffCodingF.actCardexExecute(Sender: TObject);
begin
  inherited;
    RptCardexF.Enter(qryStoresn_StoreID.AsInteger,
      qryStuffcodingc_StuffCode.AsLargeInt, 1)
end;

procedure TStuffCodingF.actChangerFExecute(Sender: TObject);
begin
  inherited;
  try
    // qryStuffcoding.DisableControls;
    qryStuffcoding.AfterScroll := nil;
    qryStuffcoding.BeforePost := nil;
    Get_Excel := True;
    ChangerF.ShowChanger(qryStuffcoding);
  finally
    Get_Excel := False;
    qryStuffcoding.AfterScroll := qryStuffcodingAfterScroll;
    qryStuffcoding.BeforePost := qryStuffcodingBeforePost;
    // qryStuffcoding.EnableControls;
  end;
end;

procedure TStuffCodingF.actStuffCodingLinkedExecute(Sender: TObject);
var
  cSQL: string;
begin
  inherited;
  cSQL := 'SELECT c_StuffCode AS StuffCode, c_StuffName FROM StuffCoding ' +
    ' WHERE (c_StuffCode <> 0) ORDER BY c_StuffCode ';
  SelectedJunctionTableF.ShowSelect(theMainConnection, 'کالا', cSQL,
    ['کد', 'عنوان'], alLeft, [50, 400], 'c_StuffName', 'StuffCodingLinked',
    qryStuffcodingc_StuffCode);
end;

procedure TStuffCodingF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.enter(qryStuffcoding.FieldByName('c_StuffCode').AsString,
    'StuffcodingFiles', True);
end;

procedure TStuffCodingF.GetRecal(kind: Boolean);

var
  qryStoreStuffs: TADOQuery;
begin
  qryStoreStuffs := TADOQuery.Create(nil);
  try
    qryStoreStuffs.Connection := DMf.adcBSell;
    qryStoreStuffs.SQL.Text := 'SELECT c_StuffCode, n_StoreID';
    qryStoreStuffs.SQL.Add('FROM StoreStuffs');
    qryStoreStuffs.Active := True;
    chkAllGroup.Checked := True;
    Get_Excel := True;
    qryStuffcoding.AfterPost := nil;
    qryStuffcoding.AfterInsert := nil;
    LoadTableFromZip(qryStuffcoding, 'Stuffcoding', 'c_StuffCode',
      'c_StuffCode', kind, 'آيا براي فراخواني كالاها مطمئن هستيد؟');
    LoadTableFromZip(qryStoreStuffs, 'StoreStuffs', 'c_StuffCode', 'n_StoreID',
      True, EmptyStr);
  finally
    qryStuffcoding.AfterPost := qryStuffcodingAfterPost;
    qryStuffcoding.AfterInsert := qryStuffcodingAfterInsert;
    Get_Excel := False;
    qryStoreStuffs.Free;
  end;
end;

procedure TStuffCodingF.SpeedButton1Click(Sender: TObject);

var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_TreeViewbF.SearchTree(DMf.adcBSell, 'گروه', Results,
    alLeft, False);
  if b then
  begin
    qryGroups.Locate('GroupID', Results[0], []);
    zbal.Title := AnsiString(Results[0]);
    zbal.Prompt.Text := Results[1];
    zbal.Show(grdStuffGroups);
  end;
end;

procedure TStuffCodingF.SpeedButton2Click(Sender: TObject);

var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_TreeViewbF.SearchTree(DMf.adcBSell, 'كالاها', Results,
    alLeft, True);
  if b then
  begin
    chkAllGroup.Checked := True;
    qryStuffcoding.Locate('c_StuffCode', Results[0], []);
    zbal.Title := AnsiString(Results[0]);
    zbal.Prompt.Text := Results[1];
    zbal.Show(grdStuffGroups);
  end; // if
end;

procedure TStuffCodingF.SpeedButton3Click(Sender: TObject);

var
  s, c: string;
begin
  inherited;
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'گروههاي كالا  ',
    qryGroups.SQL.Text, ['کد', 'نام گروه', 'ازکد', 'تاکد',
    'تعدادکالا'], alLeft);
  if s <> '' then
  begin
    qryGroups.Locate('GroupID', c, []);
    zbal.Title := AnsiString(c);
    zbal.Prompt.Text := c;
    zbal.Show(grdStuffGroups);
  end; // if
end;

procedure TStuffCodingF.btnSaveToFileClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := __TheTempDIR;

  case qryStuffCodingImageImageType.AsInteger of
    0:
      s := s + qryStuffCodingImageID.AsString + '.jpg';

    1:
      s := s + qryStuffCodingImageID.AsString + '.png';

    2:
      s := s + qryStuffCodingImageID.AsString + '.bmp';

  end;

  imgStuff.Picture.SaveToFile(s);
  RunDoc(s);
end;

procedure TStuffCodingF.btn1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := StuffGroups_searchCodeF.SearchShow(DMf.adcBSell, 'گروه',
    Results, alLeft);
  if b then
  begin
    qryGroups.Locate('GroupID', Results[0], []);
    zbal.Title := AnsiString(Results[0]);
    zbal.Prompt.Text := Results[1];
    zbal.Show(grdStuffGroups);
  end;
end;

procedure TStuffCodingF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingF.btnSelectClick(Sender: TObject);
begin
  inherited;
  if ChooseItemF.SelectChecks(mySelected, 'GroupID', 'GroupName',
    ' StuffGroups', ' Where (GroupType IN(' + GetStuffGroupsNames(nil, False) +
    '))') then
    mySelected := leftStr(mySelected, Length(mySelected) - 1);
  if Length(mySelected) > 1 then
    UpDateList(3)
end;

procedure TStuffCodingF.plblGropRengGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if chkAllGroup.Checked then
    Text := 'گروه : همه گروهها  '
  else
    Text := 'گروه : ' + qryGroupsGroupName.AsString;
end;

procedure TStuffCodingF.qryStuffCodingImageAfterDelete(DataSet: TDataSet);
begin
  inherited;
  imgStuff.Picture := nil
end;

procedure TStuffCodingF.qryStuffCodingImageAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryStuffCodingImageStuffCode.AsLargeInt :=
    qryStuffcodingc_StuffCode.AsLargeInt;
  qryStuffCodingImageImageType.AsInteger := 0;
  imgStuffClick(imgStuff);
end;

procedure TStuffCodingF.qryStuffCodingImageAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initJPEGImage
end;

procedure TStuffCodingF.qryStuffCodingImageBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين عکس مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TStuffCodingF.imgStuffClick(Sender: TObject);
const
  HSize = 220;
  WSize = 220;
var
  Jpg: TJpegImage;
  Btm: TBitmap;
  Png: Tpngimage;
  m: TMemoryStream;
  bytes: TBytes;
  // HMaxSize: Real;
  // WMaxSize: Real;
  // MaxSize: Real;
  NewHSize: Integer;
  NewWSize: Integer;
  ImageType: Integer;
  FileExt: string;
  SizeChange: Boolean;
begin
  inherited;
  // TitTYPES = (itJPG=0, itPNG=1, itBMP=2)
  try

    if OpenPictureDialog1.Execute then
      try
        Jpg := TJpegImage.Create;
        Png := Tpngimage.Create;
        Btm := TBitmap.Create;
        m := TMemoryStream.Create;

        imgStuff.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        Btm.Height := imgStuff.Picture.Height;
        Btm.Width := imgStuff.Picture.Width;
        SizeChange := (Btm.Height > HSize) or (Btm.Width > WSize);
        if SizeChange then
        begin
          // HMaxSize := Btm.Height / HSize;
          // WMaxSize := Btm.Width / WSize;
          //
          // MaxSize := HMaxSize;
          // if WMaxSize > HMaxSize then
          // MaxSize := WMaxSize;
          // NewHSize := Round(Btm.Height / MaxSize);
          // NewWSize := Round(Btm.Width / MaxSize);

{$REGION 'مهدویی'}
          if Btm.Height > Btm.Width then
          begin
            NewWSize := Round(HSize * Btm.Width / Btm.Height);
            NewHSize := HSize;
          end
          else if Btm.Height < Btm.Width then
          begin
            NewHSize := Round(WSize * Btm.Height / Btm.Width);
            NewWSize := WSize;
          end
          else
          begin
            NewHSize := HSize;
            NewWSize := WSize;
          end;
{$ENDREGION}
          Btm.Height := NewHSize;
          Btm.Width := NewWSize;
          Btm.Canvas.StretchDraw(Rect(0, 0, NewWSize, NewHSize),
            imgStuff.Picture.Graphic);
          Btm.SetSize(NewWSize, NewHSize);

        end
        else
          Btm.Canvas.Draw(0, 0, imgStuff.Picture.Graphic);

        FileExt := LowerCase(ExtractFileExt(OpenPictureDialog1.FileName));
        if FileExt = '.jpg' then
          ImageType := 0
        else if FileExt = '.png' then
          ImageType := 1
        else if FileExt = '.bmp' then
          ImageType := 2
        else
          ImageType := 0;

        case ImageType of
          0:
            begin
              if SizeChange then
                Jpg.Assign(Btm)
              else
                Jpg.LoadFromFile(OpenPictureDialog1.FileName);
              Jpg.SaveToStream(m);
            end;
          1:
            begin
              if SizeChange then
                Png.Assign(Btm)
              else
                Png.LoadFromFile(OpenPictureDialog1.FileName);
              Png.SaveToStream(m);
            end;
          2:
            begin
              Btm.SaveToStream(m);
            end;
        end;

        m.Position := 0;
        SetLength(bytes, m.Size);
        m.Read(bytes, m.Size);
        if not(qryStuffCodingImage.State in dsEditModes) then
          qryStuffCodingImage.Edit;
        qryStuffCodingImageStuffImage.AsBytes := bytes;
        qryStuffCodingImageImageType.AsInteger := ImageType;
        qryStuffCodingImage.Post;
        // imgStuff.Picture.Assign(Jpg);

      finally

      end;
  finally
    Jpg.Free;
    Png.Free;
    Btm.Free;
    m.Free;
  end;

  // const
  // HSize = 225;
  // WSize = 225;
  // var
  // jpg: TJpegImage;
  // btm: TBitmap;
  // m: TMemoryStream;
  // bytes: TBytes;
  // HMaxSize: Real;
  // WMaxSize: Real;
  // MaxSize: Real;
  // NewHSize: Integer;
  // NewWSize: Integer;
  // begin
  // inherited;
  // jpg := TJpegImage.Create;
  // btm := TBitmap.Create;
  // m := TMemoryStream.Create;
  // if OpenPictureDialog1.Execute then
  // try
  //
  // imgStuff.Picture.Loadfromfile(OpenPictureDialog1.filename);
  // btm.Height := imgStuff.Height;
  // btm.Width := imgStuff.Width;
  //
  // if (btm.Height > HSize) or (btm.Width > WSize) then
  // begin
  // HMaxSize := btm.Height / HSize;
  // WMaxSize := btm.Width / WSize;
  //
  // MaxSize := HMaxSize;
  // if WMaxSize > HMaxSize then
  // MaxSize := WMaxSize;
  // NewHSize := Round(btm.Height / MaxSize);
  // NewWSize := Round(btm.Width / MaxSize);
  //
  // btm.Height := NewHSize;
  // btm.Width := NewWSize;
  //
  // btm.Canvas.StretchDraw(Rect(0, 0, NewWSize, NewHSize), imgStuff.Picture.Graphic);
  // // btm.Canvas.StretchDraw(btm.Canvas.Cliprect, imgStuff.Picture.Graphic);
  //
  // btm.SetSize(NewWSize, NewHSize);
  //
  // end
  // else
  // btm.Canvas.Draw(0, 0, imgStuff.Picture.Graphic);
  //
  // jpg.Assign(btm);
  //
  // jpg.SaveToStream(m);
  // m.Position := 0;
  // SetLength(bytes, m.Size);
  // m.Read(bytes, m.Size);
  // if not(qryStuffCodingImage.State in dsEditModes) then
  // qryStuffCodingImage.Edit;
  // qryStuffCodingImageStuffImage.AsBytes := bytes;
  // qryStuffCodingImage.Post;
  // imgStuff.Picture.Assign(jpg);
  // finally
  // jpg.Free;
  // btm.Free;
  // // btm2.Free;
  // m.Free;
  // end;
end;

procedure TStuffCodingF.initJPEGImage;
var
  m: TMemoryStream;
  JPEGImage: TJpegImage;
  pngimage: Tpngimage;
  BitmapImage: TBitmap;
begin
  m := TMemoryStream.Create;

  case qryStuffCodingImageImageType.AsInteger of
    0:
      begin
        JPEGImage := TJpegImage.Create;
        try
          qryStuffCodingImageStuffImage.SaveToStream(m);
          pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            JPEGImage.LoadFromStream(m);
            imgStuff.Picture.Assign(JPEGImage);
          end;
        finally
          m.Free;
          JPEGImage.Free;
        end;
      end;
    1:
      begin
        pngimage := Tpngimage.Create;
        try
          qryStuffCodingImageStuffImage.SaveToStream(m);
          pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            pngimage.LoadFromStream(m);
            imgStuff.Picture.Assign(pngimage);
          end;
        finally
          m.Free;
          pngimage.Free;
        end;
      end;
    2:
      begin
        BitmapImage := TBitmap.Create;
        try
          qryStuffCodingImageStuffImage.SaveToStream(m);
          pnlimgStuff.Visible := (m.Size <> 0);
          if (m.Size <> 0) then
          begin
            m.Position := 0;
            BitmapImage.LoadFromStream(m);
            imgStuff.Picture.Assign(BitmapImage);
          end;
        finally
          m.Free;
          BitmapImage.Free;
        end;
      end;
  end;
end;

end.
