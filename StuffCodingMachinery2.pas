// Abedi 90/08/04
unit StuffCodingMachinery2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Grids, Vcl.DBGrids, zAPIBalloon, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, Menus, ppBarCod, Math, StrUtils, ppParameter,
  ppTypes, ComCtrls, Mask, sndkey32, frPelak, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TStuffCodingMachinery2F = class(Ttemplate2MDIF)
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
    qryStuffcodingacc_CTopicCode2: TStringField;
    qryStuffcoding_CTopicName2: TStringField;
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
    N3: TMenuItem;
    BitBtn8: TBitBtn;
    qryStuffcodingc_StuffTecInfo: TStringField;
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
    actMakeManifesto: TAction;
    actGetManifesto: TAction;
    actGetRecal2: TAction;
    qryStuffcodingChangeState: TWordField;
    actMakeDeficitsCorrelation: TAction;
    actGetDeficitsCorrelation: TAction;
    qryStuffcodingVendorBarcode: TWideStringField;
    actSearchTree: TAction;
    qryStuffcodingGroupID: TIntegerField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl2: TPanel;
    pnlST0: TPanel;
    pnl1: TPanel;
    lbl1: TLabel;
    btn1: TSpeedButton;
    btnSelect: TSpeedButton;
    cmbGroups: TComboBox;
    chkAllGroup: TCheckBox;
    okPanel: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    newPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    pnlSD: TPanel;
    lblLblsd6: TLabel;
    edtsd6: TDBEdit;
    lblSt5: TLabel;
    lblSt4: TLabel;
    DBGrid1: TDBGrid;
    qryMachinery1: TADOQuery;
    qryMachinery1MachinType: TWordField;
    qryMachinery1MachineId: TLargeintField;
    qryMachinery1StuffId: TLargeintField;
    qryMachinery1ControlType: TWordField;
    qryMachinery1Amount: TFloatField;
    qryMachinery1Total: TFloatField;
    srcMachinery1: TDataSource;
    qryStuff_Unit_TecInf: TADOQuery;
    qryMachinery1_StuffName: TStringField;
    qryMachinery1_UnitName: TStringField;
    DataSetInsertMachinery1: TDataSetInsert;
    DataSetEditMachinery1: TDataSetEdit;
    DataSetPostMachinery1: TDataSetPost;
    DataSetCancelMachinery1: TDataSetCancel;
    DataSetDeleteMachinery1: TDataSetDelete;
    Panel6: TPanel;
    lbl2: TLabel;
    lbl9: TLabel;
    edtc_StuffName: TDBEdit;
    edtc_StuffTecInfo: TDBEdit;
    qryMachinery1states: TWordField;
    qryStuffcodingn_orderPoint: TFloatField;
    qryStuffcodingacc_CTopicCode3: TStringField;
    qryStuffcodingAcc_InComeTopicCode: TLargeintField;
    qryStuffcodingAcc_BidTopicCode: TLargeintField;
    qryStuffcodingAcc_CommissionTopicCode: TLargeintField;
    qryMachinery1LookUpID1: TIntegerField;
    qryMachinery1LookUpID2: TIntegerField;
    qryMachinery1LookUpID3: TIntegerField;
    qryMachinery1Amount2: TFMTBCDField;
    edtsd7: TDBEdit;
    lbl3: TLabel;
    edtsd1: TDBEdit;
    lblLblsd1: TLabel;
    lblLblsd3: TLabel;
    edtsd3: TDBEdit;
    lblSt1: TLabel;
    lbl4: TLabel;
    edtsd8: TDBEdit;
    edtsd9: TDBEdit;
    lbl5: TLabel;
    lblLblsd4: TLabel;
    qryMachinery2: TADOQuery;
    srcMachinery2: TDataSource;
    qryMachinery2MachinType: TWordField;
    qryMachinery2MachineId: TLargeintField;
    qryMachinery2StuffId: TLargeintField;
    qryMachinery2_StuffName: TStringField;
    qryMachinery2_UnitName: TStringField;
    qryMachinery2ControlType: TWordField;
    qryMachinery2Amount: TFloatField;
    qryMachinery2Total: TFloatField;
    qryMachinery2states: TWordField;
    qryMachinery2LookUpID1: TIntegerField;
    qryMachinery2LookUpID2: TIntegerField;
    qryMachinery2LookUpID3: TIntegerField;
    qryMachinery2Amount2: TFMTBCDField;
    pnl6: TPanel;
    pnl8: TPanel;
    qryMachinery3: TADOQuery;
    srcMachinery3: TDataSource;
    DataSetInsertMachinery2: TDataSetInsert;
    DataSetEditMachinery2: TDataSetEdit;
    DataSetPostMachinery2: TDataSetPost;
    DataSetCancelMachinery2: TDataSetCancel;
    DataSetDeleteMachinery2: TDataSetDelete;
    DataSetInsertMachinery3: TDataSetInsert;
    DataSetEditMachinery3: TDataSetEdit;
    DataSetPostMachinery3: TDataSetPost;
    DataSetCancelMachinery3: TDataSetCancel;
    DataSetDeleteMachinery3: TDataSetDelete;
    qryMachinery3MachinType: TWordField;
    qryMachinery3MachineId: TLargeintField;
    qryMachinery3StuffId: TLargeintField;
    qryMachinery3_StuffName: TStringField;
    qryMachinery3_UnitName: TStringField;
    qryMachinery3ControlType: TWordField;
    qryMachinery3Amount: TFloatField;
    qryMachinery3Total: TFloatField;
    qryMachinery3states: TWordField;
    qryMachinery3LookUpID1: TIntegerField;
    qryMachinery3LookUpID2: TIntegerField;
    qryMachinery3LookUpID3: TIntegerField;
    qryMachinery3Amount2: TFMTBCDField;
    cmbState: TDBComboBox;
    grpMachinery1: TGroupBox;
    grdMachinery1: TDBGrid;
    grpMachinery2: TGroupBox;
    pnlItem1: TPanel;
    pnlNew1: TPanel;
    btn7: TBitBtn;
    btn9: TBitBtn;
    pnlOk1: TPanel;
    btn10: TBitBtn;
    btn11: TBitBtn;
    grdMachinery2: TDBGrid;
    pnlItem2: TPanel;
    pnlNew2: TPanel;
    btn12: TBitBtn;
    btn14: TBitBtn;
    pnlOk2: TPanel;
    btn15: TBitBtn;
    btn16: TBitBtn;
    qryMachinery3Model: TStringField;
    qryMachinery3Specifications: TStringField;
    pnl3: TPanel;
    pnl5: TPanel;
    lblLblsd55: TLabel;
    lblLblsd5: TLabel;
    edtsd5: TDBEdit;
    edtsd4: TDBEdit;
    grp2: TGroupBox;
    pnl9: TPanel;
    dbmmoCabinet: TDBMemo;
    dbmmoTierced: TDBMemo;
    grp1: TGroupBox;
    dbmmoStuffNote: TDBMemo;
    actViewFileF: TAction;
    btnPrint: TBitBtn;
    actStuffCodingMachinery2ItemF: TAction;
    edtc_StuffCode: TDBEdit;
    lbl6: TLabel;
    qryMachinery1_Row: TIntegerField;
    qryMachinery2_Row: TIntegerField;
    qryMachinery3_Row: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    pnlNew4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    pnlOk4: TPanel;
    BitBtn5: TBitBtn;
    BitBtn9: TBitBtn;
    qryMachinery4: TADOQuery;
    qryMachinery4MachinType: TWordField;
    qryMachinery4MachineId: TLargeintField;
    qryMachinery4StuffId: TLargeintField;
    qryMachinery4ControlType: TWordField;
    qryMachinery4Amount: TFloatField;
    qryMachinery4Total: TFloatField;
    qryMachinery4states: TWordField;
    qryMachinery4LookUpID1: TIntegerField;
    qryMachinery4LookUpID2: TIntegerField;
    qryMachinery4LookUpID3: TIntegerField;
    qryMachinery4Amount2: TFMTBCDField;
    strngfld_DeficitsModel: TStringField;
    strngfld_DeficitsSpecifications: TStringField;
    atncfld_DeficitsId: TAutoIncField;
    qryMachinery4ParentId: TIntegerField;
    strngfldMachinery4_Stuffname: TStringField;
    strngfldMachinery4_Stuffunit: TStringField;
    srcMachinery4: TDataSource;
    grdMachinery4: TDBGrid;
    DataSetInsertMachinery4: TDataSetInsert;
    DataSetEditMachinery4: TDataSetEdit;
    DataSetPostMachinery4: TDataSetPost;
    DataSetCancelMachinery4: TDataSetCancel;
    DataSetDeleteMachinery4: TDataSetDelete;
    qryMachinery3_5: TADOQuery;
    srcMachinery3_5: TDataSource;
    qryMachinery3_5_Row: TIntegerField;
    qryMachinery3_5MachinType: TWordField;
    qryMachinery3_5MachineId: TLargeintField;
    qryMachinery3_5StuffId: TLargeintField;
    qryMachinery3_5_StuffName: TStringField;
    qryMachinery3_5_UnitName: TStringField;
    qryMachinery3_5ControlType: TWordField;
    qryMachinery3_5Amount: TFloatField;
    qryMachinery3_5Total: TFloatField;
    qryMachinery3_5states: TWordField;
    qryMachinery3_5LookUpID1: TIntegerField;
    qryMachinery3_5LookUpID2: TIntegerField;
    qryMachinery3_5LookUpID3: TIntegerField;
    qryMachinery3_5Amount2: TFMTBCDField;
    qryMachinery3_5Model: TStringField;
    qryMachinery3_5Specifications: TStringField;
    qryMachinery3Id: TAutoIncField;
    DataSetInsertMachinery5: TDataSetInsert;
    DataSetEditMachinery5: TDataSetEdit;
    DataSetPostMachinery5: TDataSetPost;
    DataSetCancelMachinery5: TDataSetCancel;
    DataSetDeleteMachinery5: TDataSetDelete;
    TabSheet4: TTabSheet;
    pnlItem3: TPanel;
    pnlNew3: TPanel;
    btn17: TBitBtn;
    btn19: TBitBtn;
    pnlOk3: TPanel;
    btn20: TBitBtn;
    btn21: TBitBtn;
    grdMachinery3: TDBGrid;
    Panel4: TPanel;
    pnlNew5: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    pnlOk5: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    grdMachinery5: TDBGrid;
    qryMachinery3_5Id: TAutoIncField;
    pnlPerson4: TPanel;
    btnPersonID4: TSpeedButton;
    txt_CustIdOrganic: TDBText;
    LblPerson4: TLabel;
    edtCustIdOrganic: TDBEdit;
    qryStuffcodingCustIdOrganic: TIntegerField;
    qryStuffcoding_CustIdOrganic: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryStuffcodingAfterInsert(DataSet: TDataSet);
    procedure cmbGroupsChange(Sender: TObject);
    procedure srcStuffcodingStateChange(Sender: TObject);
    procedure chkAllGroupClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSendToExcedlExecute(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure qryStuffcodingBeforePost(DataSet: TDataSet);
    procedure qryStuffcodingBeforeDelete(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rptStuffCodingF1Click(Sender: TObject);
    procedure qryStuffcodingAfterDelete(DataSet: TDataSet);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure popMnuGroupsPopup(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure actChangeStuffCodeExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure plblGropRengGetText(Sender: TObject; var Text: String);
    procedure mnuAllRecordsClick(Sender: TObject);
    procedure qryStuffcodingAfterPost(DataSet: TDataSet);
    procedure qryStuffcodingAfterScroll(DataSet: TDataSet);
    procedure qryMachinery1AfterInsert(DataSet: TDataSet);
    procedure grdMachinery2EditButtonClick(Sender: TObject);
    procedure grdMachinery2KeyPress(Sender: TObject; var Key: Char);
    procedure pgc1Change(Sender: TObject);
    procedure srcMachinery1StateChange(Sender: TObject);
    procedure qryMachinery1ControlTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryMachinery1ControlTypeSetText(Sender: TField;
      const Text: string);
    procedure qryMachinery1BeforeDelete(DataSet: TDataSet);
    procedure qryStuffcodingBeforeInsert(DataSet: TDataSet);
    procedure srcMachinery2StateChange(Sender: TObject);
    procedure srcMachinery3StateChange(Sender: TObject);
    procedure grdMachinery1Enter(Sender: TObject);
    procedure grdMachinery2Enter(Sender: TObject);
    procedure grdMachinery3Enter(Sender: TObject);
    procedure qryMachinery2AfterInsert(DataSet: TDataSet);
    procedure qryMachinery3AfterInsert(DataSet: TDataSet);
    procedure AllGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure actViewFileFExecute(Sender: TObject);
    procedure qryMachinery1CalcFields(DataSet: TDataSet);
    procedure qryMachinery1BeforePost(DataSet: TDataSet);
    procedure qryMachinery1AfterOpen(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure grdMachinery4Enter(Sender: TObject);
    procedure srcMachinery4StateChange(Sender: TObject);
    procedure qryMachinery4AfterInsert(DataSet: TDataSet);
    procedure qryMachinery3_5AfterInsert(DataSet: TDataSet);
    procedure grdMachinery5Enter(Sender: TObject);
    procedure qryStuffcodingBeforeScroll(DataSet: TDataSet);
    procedure srcMachinery3_5StateChange(Sender: TObject);
    procedure qryMachinery3_5AfterScroll(DataSet: TDataSet);
    procedure qryMachinery3AfterPost(DataSet: TDataSet);
    procedure btnPersonID4Click(Sender: TObject);
  private
    groupID: Integer;
    mySelected, OrginalSQL: String;
    qryMachinery: TADOQuery;
    function UnicFieldName2(fldIDValue: Integer; fldValidValue: String;
      tblName, fldIDName, fldValidName: String): Boolean;
    procedure UpDateList(kind: Byte);
    // procedure GetRecal(kind: Boolean);
    procedure AddSt;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure initAddField;
    procedure Set_Focus(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffCodingMachinery2F: TStuffCodingMachinery2F;

const
  stCount = 5;

implementation

uses DM, GlobalPro, mmessage,
  searchCode_ADO, Special_Search, DBGrid2Print, FormFunctions, GetExcel,
  ChooseItem, searchCode_TreeViewB, FaraConsts,
  StuffCodingMachinery2Item, ViewFileOnServer;

{$R *.dfm}

procedure TStuffCodingMachinery2F.FormCreate(Sender: TObject);
var
  i: SmallInt;
  NewItem: TMenuItem;
begin
  inherited;
  OrginalSQL := qryStuffcoding.SQL.Text;
  SetLookUpCash(qryStuffcoding);
  InitCombos(cmbGroups,
    'SELECT StuffGroups.GroupID ,ltrim(str(StuffGroups.GroupID))+'' - ''+ ' +
    ' StuffGroups.GroupName+SPACE((SELECT MAX(LEN(GroupName))+10 ' +
    ' FROM dbo.StuffGroups)-LEN(GroupName)) + ''از كد'' + ' +
    ' cast(StartCode as nvarchar(30))' +
    '+ '' تا كد '' + cast(FinishCode as nvarchar(30))  AS  GroupName ' +
    ' FROM StuffGroups  inner join (   SELECT  GroupType,  MAX(LevelID) AS LevelID     FROM   StuffGroups '
    + ' where  (GroupType IN(9)) GROUP BY GroupType ) accesslevel on ' +
    ' accesslevel.GroupType = StuffGroups.GroupType and accesslevel.LevelID=StuffGroups.LevelID '
    + ' ORDER BY StuffGroups.GroupID ');

  // ' FROM StuffGroups INNER JOIN Config ON '+
  // ' StuffGroups.LevelID = Config.LevelIdStuffGroup ORDER BY StuffGroups.GroupID');
  For i := 0 to cmbGroups.Items.Count - 1 do
  begin
    NewItem := TMenuItem.Create(self);
    NewItem.Caption := cmbGroups.Items.Strings[i];
    if cmbGroups.Items.Count > 0 then
      NewItem.Tag := Integer(cmbGroups.Items.Objects[i]);
    NewItem.OnClick := Mnu_AllClickClick;
    Mnu_AllClick.Add(NewItem);
  end;
  qryUnits.Active := True;
  qryStuffcoding.FieldByName('c_StuffName').ReadOnly :=
    opt.EditStuffNameLevelID;
  // qryStuffcoding.Active:=True;
  AddSt;
  initAddField;
end;

procedure TStuffCodingMachinery2F.AddSt;
var
  i: SmallInt;
  qry: TADOQuery;
  cmb: TDBLookupComboBox;
  lblSt: TLabel;
const
  kind = 400;
begin
  for i := 1 to stCount do
  begin
    with TIntegerField.Create(qryStuffcoding) do
    begin
      FieldName := 'st' + IntToStr(i);
      FieldKind := fkData;
      DataSet := qryStuffcoding;
      Name := 'qryStuffcoding' + FieldName;
      qryStuffcoding.FieldDefs.Add(Name, ftInteger, 0, False);
    end;

    With qry do
    begin
      qry := TADOQuery.Create(StuffCodingMachinery2F);
      Name := 'qrylookupst' + IntToStr(i);
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT Code, Name FROM LookUps WHERE Kind = ' +
        IntToStr(i + kind);
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
      Size := 150;
      qryStuffcoding.FieldDefs.Add(Name, ftString, 150, True);
    end;
  end; // for

  for i := stCount downto 1 do
  begin
    lblSt := TLabel(self.FindComponent('lblSt' + IntToStr(i)));
    if lblSt <> nil then
      with TDBLookupComboBox.Create(lblSt.Parent) do
      begin
        DataSource := srcStuffcoding;
        DataField := '_st' + IntToStr(i);
        Name := 'cmb' + IntToStr(i);
        Parent := lblSt.Parent;
        DropDownRows := 14;
        Hint := '_st' + IntToStr(i) + 'kind_' + IntToStr(i + kind);
        ShowHint := True;
        Width := 200;
        Anchors := [akTop, akRight];
      end;
  end; // for
  for i := stCount downto 1 do
  begin
    lblSt := TLabel(self.FindComponent('lblSt' + IntToStr(i)));
    if lblSt <> nil then
    begin
      cmb := TDBLookupComboBox(lblSt.Parent.FindComponent('cmb' + IntToStr(i)));
      cmb.TabOrder := 2;
      cmb.Top := lblSt.Top;
      cmb.Left := lblSt.Left - cmb.Width - 6;
      cmb.Anchors := lblSt.Anchors;
    end;
  end;

end;

procedure TStuffCodingMachinery2F.initAddField;
var
  i_Index: Integer;
  procedure AddField(LookID, Look: String; kind: Integer; qryMachin: TADOQuery;
    grdMachin: TDBGrid);
  var
    qry: TADOQuery;
  begin
    With qry do
    begin
      qry := TADOQuery.Create(StuffCodingMachinery2F);
      Name := 'qryLookUpID' + Look;
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT LookUpID, Name FROM LookUps ';
      SQL.Add('WHERE(Kind=:Kind) and (LookUpID>0)');
      Parameters.ParamByName('Kind').Value := kind;
      LockType := ltReadOnly;
      Active := True;
    end;
    with TStringField.Create(qryMachin) do
    begin
      FieldName := '_LookUpID' + LookID;
      FieldKind := fkLookup;
      DataSet := qryMachin;
      Name := qryMachin.Name + FieldName;
      qryMachin.FieldDefs.Add(Name, ftString, 50, True);
      Size := 50;
      KeyFields := 'LookUpID' + LookID;
      LookUpDataset := qry;
      LookUpKeyFields := 'LookUpID';
      LookUpResultField := 'Name';
      DisplayLabel := VarToStr(DMf.qryMasterLookUps.Lookup('LookUpID',
        kind, 'Name'))
    end;
    With grdMachin.Columns.Add do
    begin
      FieldName := '_LookUpID' + LookID;
      Index := i_Index + 1;
    end;
  end;

begin
  DMf.qryMasterLookUps.Open;
  i_Index := ColumnIndexByFieldName(grdMachinery1, 'Amount');
  if opt.MachineryLookUpKind1 > 0 then
    AddField('1', '1', opt.MachineryLookUpKind1, qryMachinery1, grdMachinery1);
  if opt.MachineryLookUpKind2 > 0 then
    AddField('2', '2', opt.MachineryLookUpKind2, qryMachinery1, grdMachinery1);
  if opt.MachineryLookUpKind3 > 0 then
    AddField('3', '3', opt.MachineryLookUpKind3, qryMachinery1, grdMachinery1);

  i_Index := ColumnIndexByFieldName(grdMachinery2, 'Amount');
  if opt.MachineryLookUpKind4 > 0 then
    AddField('1', '4', opt.MachineryLookUpKind4, qryMachinery2, grdMachinery2);
  if opt.MachineryLookUpKind5 > 0 then
    AddField('2', '5', opt.MachineryLookUpKind5, qryMachinery2, grdMachinery2);
  if opt.MachineryLookUpKind6 > 0 then
    AddField('3', '6', opt.MachineryLookUpKind6, qryMachinery2, grdMachinery2);

end;

procedure TStuffCodingMachinery2F.qryStuffcodingAfterInsert(DataSet: TDataSet);
var
  aRange: String;
  rFrom, rTo: Largeint;
begin
  inherited;
  // frplkfsd1.Pelak := '00-ق-000-00';
  if (chkAllGroup.Checked) or (cmbGroups.ItemIndex = -1) then
  begin
    chkAllGroup.Checked := False;
    zbal.Title := 'اخطار';
    zbal.Prompt.Text := 'لطفاً قبل از تعريف كالا جديد گروه آنرا مشخص كنيد.';
    zbal.Show(cmbGroups);
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
      SQL.Text := 'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2';
      SQL.Add(',acc_CTopicCode3 from StuffGroups');
      SQL.Add(' where GroupID=' + IntToStr(groupID));
      Active := True;
      rFrom := Fields[0].AsLargeInt;
      rTo := Fields[1].AsLargeInt;
      DataSet.FieldByName('acc_CTopicCode').AsInteger := Fields[2].AsInteger;
      DataSet.FieldByName('acc_CTopicCode2').AsInteger := Fields[3].AsInteger;
      DataSet.FieldByName('acc_CTopicCode3').AsInteger := Fields[4].AsInteger;
      aRange := format('%d and %d', [rFrom, rTo]);
      Active := False;
      if aRange = ' and ' then
        aRange := '0 and 999999999';
      qryStuffcodingc_StuffCode.AsLargeInt :=
        GetANewCode(self.Name,
        'Select max(c_StuffCode) from Stuffcoding where c_StuffCode between ' +
        aRange + 'and GroupID=' + IntToStr(groupID), 'CustID');
      if not((qryStuffcodingc_StuffCode.AsLargeInt >= rFrom) and
        (qryStuffcodingc_StuffCode.AsLargeInt <= rTo)) then
        qryStuffcodingc_StuffCode.AsLargeInt := rFrom;
    end // with
  else
    qryStuffcodingc_StuffCode.AsLargeInt := New_RecoverPittedCode(groupID,
      'StuffCode', self.Name);
  DataSet.FieldByName('acc_DetaiCode').AsInteger := 0;
  DataSet.FieldByName('n_UnitCode').AsInteger := 1;
  DataSet.FieldByName('BudgetID').AsInteger := 0;
  DataSet.FieldByName('Carton').Value := 1;
  DataSet.FieldByName('GroupID').AsInteger := groupID;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  edtc_StuffName.SetFocus;

end;

procedure TStuffCodingMachinery2F.qryStuffcodingAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد', 1);
end;

procedure TStuffCodingMachinery2F.qryStuffcodingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryMachinery1 do
  begin
    Active := False;
    Parameters.ParamByName('StuffId').Value :=
      qryStuffcodingc_StuffCode.AsLargeInt;
    Active := True;
  end;
  with qryMachinery2 do
  begin
    Active := False;
    Parameters.ParamByName('StuffId').Value :=
      qryStuffcodingc_StuffCode.AsLargeInt;
    Active := True;
  end;
  with qryMachinery3 do
  begin
    Active := False;
    Parameters.ParamByName('StuffId').Value :=
      qryStuffcodingc_StuffCode.AsLargeInt;
    Active := True;
  end;
  with qryMachinery4 do
  begin
    Active := False;
    Parameters.ParamByName('StuffId').Value :=
      qryStuffcodingc_StuffCode.AsLargeInt;
  end;
  with qryMachinery3_5 do
  begin
    Active := False;
    Parameters.ParamByName('StuffId').Value :=
      qryStuffcodingc_StuffCode.AsLargeInt;
    Active := True;
  end;

end;

procedure TStuffCodingMachinery2F.cmbGroupsChange(Sender: TObject);
var
  i: Byte;
begin
  inherited;
  UpDateList(1);
  for i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked := groupID = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
end;

procedure TStuffCodingMachinery2F.UpDateList;
begin
  qryMachinery1.Close;
  qryStuffcoding.SQL.Text := OrginalSQL;
  case kind of
    1:
      begin
        if cmbGroups.ItemIndex = -1 then
          groupID := 0
        else
          groupID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
        with qryStuffcoding do
        begin
          Active := False;
          Parameters.ParamByName('Groupid').Value := groupID;
          Parameters.ParamByName('allgroup').Value := 0;
          Active := True;
        end; // with
      end;
    2:
      begin
        if chkAllGroup.Checked then
        begin
          cmbGroups.Enabled := False;
          with qryStuffcoding do
          begin
            Active := False;
            Parameters.ParamByName('allgroup').Value := 2147483647;
            Active := True;
          end; // with
        end
        else
        begin
          cmbGroups.Enabled := True;
          with qryStuffcoding do
          begin
            Active := False;
            Parameters.ParamByName('allgroup').Value := 0;
            Active := True;
          end; // with
        end; // else
      end;
    3:
      begin
        if Length(mySelected) > 1 then
          with qryStuffcoding do
          begin
            cmbGroups.ItemIndex := -1;
            Active := False;
            SQL.Text := StringReplace(OrginalSQL,
              '= :Groupid) OR (CAST(GroupID AS int) < :AllGroup',
              'in(' + mySelected + ')', [rfReplaceAll]);
            Active := True;
          end; // with
      end;
  end;
end;

procedure TStuffCodingMachinery2F.srcMachinery1StateChange(Sender: TObject);
begin
  inherited;
  pnlOk1.Visible := qryMachinery1.State in dsEditModes;
  pnlNew1.Visible := not pnlOk1.Visible;
end;

procedure TStuffCodingMachinery2F.srcMachinery2StateChange(Sender: TObject);
begin
  inherited;
  pnlOk2.Visible := qryMachinery2.State in dsEditModes;
  pnlNew2.Visible := not pnlOk2.Visible;
end;

procedure TStuffCodingMachinery2F.srcMachinery3StateChange(Sender: TObject);
begin
  inherited;
  pnlOk3.Visible := qryMachinery3.State in dsEditModes;
  pnlNew3.Visible := not pnlOk3.Visible;
end;

procedure TStuffCodingMachinery2F.srcMachinery4StateChange(Sender: TObject);
begin
  inherited;
  pnlOk4.Visible := qryMachinery4.State in dsEditModes;
  pnlNew4.Visible := not pnlOk4.Visible;
end;

procedure TStuffCodingMachinery2F.srcMachinery3_5StateChange(Sender: TObject);
begin
  inherited;
  pnlOk5.Visible := qryMachinery3_5.State in dsEditModes;
  pnlNew5.Visible := not pnlOk5.Visible;
end;

procedure TStuffCodingMachinery2F.srcStuffcodingStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffcoding.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
  // pnlItem1.Visible := okPanel.Visible or (qryMachinery1.State in dsEditModes);
  // pnlItem2.Visible := okPanel.Visible or (qryMachinery2.State in dsEditModes);
  // pnlItem3.Visible := okPanel.Visible or (qryMachinery3.State in dsEditModes);
end;

procedure TStuffCodingMachinery2F.chkAllGroupClick(Sender: TObject);
begin
  inherited;
  UpDateList(2);
end;

procedure TStuffCodingMachinery2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, False);
  SetColSize(grdMachinery1, 1, False);
  SetColSize(grdMachinery2, 1, False);
  SetColSize(grdMachinery3, 1, False);
  SetColSize(grdMachinery4, 1, False);
  SetColSize(grdMachinery5, 1, False);
end;

procedure TStuffCodingMachinery2F.actSendToExcedlExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffCodingMachinery2F.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffCodingMachinery2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffCodingMachinery2F.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffCodingMachinery2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffcoding.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryStuffcoding.EnableControls;
  end;
end;

procedure TStuffCodingMachinery2F.actSortExecute(Sender: TObject);
begin
  inherited;
  if (chkAllGroup.Checked) or (cmbGroups.ItemIndex = -1) then
  begin
    chkAllGroup.Checked := False;
    zbal.Title := 'اخطار';
    zbal.Prompt.Text := 'لطفاً قبل از به ترتيب كردن كالا  گروه آنرا مشخص كنيد.';
    zbal.Show(cmbGroups);
    exit;
  end; // if
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingMachinery2F.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryStuffcoding.FieldByName('c_StuffCode').AsString,
    'StuffcodingFiles', False);
end;

procedure TStuffCodingMachinery2F.N1Click(Sender: TObject);
begin
  inherited;
  qryStuffcoding.Sort := 'Groupid';
end;

procedure TStuffCodingMachinery2F.N2Click(Sender: TObject);
begin
  inherited;
  qryStuffcoding.Sort := 'c_StuffName';
end;

procedure TStuffCodingMachinery2F.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TStuffCodingMachinery2F.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TStuffCodingMachinery2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(grdMachinery1);
  SaveColWidth(grdMachinery2);
  SaveColWidth(grdMachinery3);
  SaveColWidth(grdMachinery4);
  SaveColWidth(grdMachinery5);
end;

procedure TStuffCodingMachinery2F.qryStuffcodingBeforePost(DataSet: TDataSet);
var
  canpost: Boolean;
begin
  inherited;
  // qryStuffcodingsd1.AsString := frplkfsd1.Pelak;

  if not UnicFieldName2(qryStuffcodingc_StuffCode.AsLargeInt,
    DataSet.FieldByName('c_StuffName').AsString, 'Stuffcoding ', 'c_StuffCode',
    'c_StuffName') then
    Abort;
  if not CheckRequiredFields(qryStuffcoding) then
    Abort;
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

procedure TStuffCodingMachinery2F.qryStuffcodingBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  with qryMachinery1 do
  begin
    Active := False;
  end;
  with qryMachinery2 do
  begin
    Active := False;
  end;
  with qryMachinery3 do
  begin
    Active := False;
  end;
  with qryMachinery4 do
  begin
    Active := False;
  end;
  with qryMachinery3_5 do
  begin
    Active := False;
  end;
end;

function TStuffCodingMachinery2F.UnicFieldName2;
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
      for i := 1 to stCount do
        SQL.Add(', st' + IntToStr(i));

    for i := 1 to 9 do
    begin
      b := opt.ExtraCoding.Captions[i] <> '';
      if b then
        SQL.Add(', sd' + IntToStr(i));
    end;
    SQL.Add('HAVING (' + fldValidName + ' = ''' + fldValidValue + ''') ');
    SQL.Add('AND (' + fldIDName + ' <> ' + IntToStr(fldIDValue) + ')');

    if (opt.UnicStuffCodingKind in [2, 3]) and (StuffTecInfo <> EmptyStr) then
      SQL.Add('AND (c_StuffTecInfo = ''' + StuffTecInfo + ''')');

    if opt.UnicStuffCodingKind = 3 then
      for i := 1 to stCount do
        SQL.Add('AND (st' + IntToStr(i) + ' = ' +
          IntToStr(qryStuffcoding.FieldByName('st' + IntToStr(i))
          .AsInteger) + ')');

    for i := 1 to 9 do
    begin
      b := opt.ExtraCoding.Captions[i] <> '';
      if b then
        SQL.Add('AND (sd' + IntToStr(i) + ' = ''' + qryStuffcoding.FieldByName
          ('sd' + IntToStr(i)).AsString + ''')');
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

procedure TStuffCodingMachinery2F.qryStuffcodingBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TStuffCodingMachinery2F.qryStuffcodingBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  pgc1.TabIndex := 0
end;

procedure TStuffCodingMachinery2F.actSearch_Execute(Sender: TObject);
var
  Txt, Fields_SD_1_9: String;
  b: Boolean;
  i: Byte;
  Results: array [0 .. 14] of String;
  colTopics: array [0 .. 14] of String;
  colWidths: array [0 .. 14] of SmallInt;
begin
  inherited;
  colTopics[0] := 'کد';
  colTopics[1] := 'نام كالا';
  colTopics[2] := 'مشخصات فني';
  colTopics[3] := 'بهاي فروش 1';
  colTopics[4] := 'واحد';
  colWidths[0] := 50;
  colWidths[1] := 100;
  colWidths[2] := 80;;
  colWidths[3] := 50;
  colWidths[4] := 50;
  for i := 1 to 9 do
  begin
    colTopics[i + 4] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths[i + 4] := 50;
      Fields_SD_1_9 := Fields_SD_1_9 + ',sd' + IntToStr(i);
    end;
  end;
  // s:=False;
  if (chkAllGroup.Checked) or (cmbGroups.ItemIndex = -1) then
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo,SellPrice1,Units.UnitName '
      + Fields_SD_1_9 +
      ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode'
  else
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo,SellPrice1,Units.UnitName '
      + Fields_SD_1_9 +
      ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode'
      + ' where(GroupID=' + IntToStr(groupID) + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', Txt, colTopics,
    Results, colWidths, alLeft);

  if b then
    qryStuffcoding.Locate('c_StuffCode', Results[0], []);
end;

procedure TStuffCodingMachinery2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TStuffCodingMachinery2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuffcoding.FieldByName('c_StuffCode'));
end;

procedure TStuffCodingMachinery2F.DBGrid2EditButtonClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ',
    qryStuff_Unit_TecInf.SQL.Text, ['كد ', 'عنوان ', 'واحد'], Results,
    [100, 200, 50], alLeft);
  if b then
  begin
    qryMachinery4.FieldByName('MachineId').AsString := Results[0];
  end;
end;

procedure TStuffCodingMachinery2F.grdMachinery4Enter(Sender: TObject);
begin
  inherited;
  qryMachinery := qryMachinery4
end;

procedure TStuffCodingMachinery2F.grdMachinery5Enter(Sender: TObject);
begin
  inherited;
  qryMachinery := qryMachinery3_5

end;

procedure TStuffCodingMachinery2F.grdMachinery1Enter(Sender: TObject);
begin
  inherited;
  qryMachinery := qryMachinery1
end;

procedure TStuffCodingMachinery2F.grdMachinery2EditButtonClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ',
    qryStuff_Unit_TecInf.SQL.Text, ['كد ', 'عنوان ', 'واحد'], Results,
    [100, 200, 50], alLeft);
  if b then
  begin
    qryMachinery.FieldByName('MachineId').AsString := Results[0];
  end;

end;

procedure TStuffCodingMachinery2F.grdMachinery2Enter(Sender: TObject);
begin
  inherited;
  qryMachinery := qryMachinery2
end;

procedure TStuffCodingMachinery2F.grdMachinery2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TStuffCodingMachinery2F.grdMachinery3Enter(Sender: TObject);
begin
  inherited;
  qryMachinery := qryMachinery3
end;

procedure TStuffCodingMachinery2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  grd: TDBGrid;
begin
  grd := (Sender as TDBGrid);
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := grd.DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;

        if (curIndex > 1) and (aDataSet.FieldByName('_StuffName').IsNull) then
        begin
          aDataSet.Cancel;
          Set_Focus(aDataSet);
          exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd.Columns[nextIndex].Visible) OR
          (grd.Columns[nextIndex].ReadOnly)) do
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if grd.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      Key := #0;
      grdMachinery2EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < grd.Columns.Count) and
      (not(grd.Columns[nextIndex].Visible) OR
      (grd.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd.SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TStuffCodingMachinery2F.rptStuffCodingF1Click(Sender: TObject);
begin
  inherited;
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
  InitReportFile(ppReport1, (Sender as TMenuItem).Name, True);
end;

procedure TStuffCodingMachinery2F.qryMachinery1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    qryStuffcoding.Post;
  qryMachinery1StuffId.AsLargeInt := qryStuffcodingc_StuffCode.AsLargeInt;
  qryMachinery1MachinType.AsInteger := Integer(mtGhee1);
  DataSet.FieldByName('ControlType').AsInteger := 0;

end;

procedure TStuffCodingMachinery2F.qryMachinery1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Last;
end;

procedure TStuffCodingMachinery2F.qryMachinery1BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TStuffCodingMachinery2F.qryMachinery1BeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('_StuffName').IsNull) then
  begin
    DataSet.Cancel;
    Abort;

    Set_Focus(DataSet)
  end;

end;

procedure TStuffCodingMachinery2F.Set_Focus(DataSet: TDataSet);
begin
  if DataSet.Name = qryMachinery1.Name then
  begin
    grdMachinery2.SetFocus;
    grdMachinery2.SelectedIndex := 1
  end;
  if DataSet.Name = qryMachinery2.Name then
  begin
    grdMachinery3.SetFocus;
    grdMachinery3.SelectedIndex := 1
  end;
  if DataSet.Name = qryMachinery3.Name then
  begin
    dbmmoStuffNote.SetFocus;
  end;

end;

procedure TStuffCodingMachinery2F.qryMachinery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_Row').AsInteger := Abs(DataSet.RecNo)
end;

procedure TStuffCodingMachinery2F.qryMachinery1ControlTypeGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(grdMachinery1, Sender.FieldName);
  Text := grdMachinery1.Columns[i].PickList.Strings[Sender.AsInteger]
end;

procedure TStuffCodingMachinery2F.qryMachinery1ControlTypeSetText
  (Sender: TField; const Text: string);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(grdMachinery1, Sender.FieldName);
  Sender.AsInteger := grdMachinery1.Columns[i].PickList.IndexOf(Text);

end;

procedure TStuffCodingMachinery2F.qryMachinery2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    qryStuffcoding.Post;
  qryMachinery2StuffId.AsLargeInt := qryStuffcodingc_StuffCode.AsLargeInt;
  qryMachinery2MachinType.AsInteger := Integer(mtGrease2);
  DataSet.FieldByName('ControlType').AsInteger := 0;
end;

procedure TStuffCodingMachinery2F.qryMachinery3AfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    qryStuffcoding.Post;
  qryMachinery3StuffId.AsLargeInt := qryStuffcodingc_StuffCode.AsLargeInt;
  qryMachinery3MachinType.AsInteger := Integer(mtElectric3);
  DataSet.FieldByName('ControlType').AsInteger := 0;
end;

procedure TStuffCodingMachinery2F.qryMachinery3AfterPost(DataSet: TDataSet);
begin
  inherited;
  qryMachinery3_5.Requery();
end;

procedure TStuffCodingMachinery2F.qryMachinery4AfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldValues['StuffId'] := qryMachinery3StuffId.AsInteger;
  DataSet.FieldValues['MachinType'] := Integer(mtAccessories4);
  DataSet.FieldValues['ControlType'] := 0;
  DataSet.FieldValues['ParentId'] := qryMachinery3.FieldByName('Id').AsInteger;
end;

procedure TStuffCodingMachinery2F.qryMachinery3_5AfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    qryStuffcoding.Post;
  qryMachinery3_5StuffId.AsLargeInt := qryStuffcodingc_StuffCode.AsLargeInt;
  qryMachinery3_5MachinType.AsInteger := Integer(mtElectric5);
  DataSet.FieldByName('ControlType').AsInteger := 0;
end;

procedure TStuffCodingMachinery2F.qryMachinery3_5AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryMachinery4 do
    try
      DisableControls;
      Close;
      Parameters.ParamByName('StuffId').Value :=
        qryMachinery3_5StuffId.AsInteger;
      Parameters.ParamByName('Parent').Value :=
        qryMachinery3_5.FieldByName('Id').AsInteger;
      if qryMachinery3_5MachinType.AsInteger = Integer(mtElectric3) then
        Open;
    finally
      EnableControls;
    end;
end;

procedure TStuffCodingMachinery2F.qryStuffcodingAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TStuffCodingMachinery2F.Mnu_AllClickClick(Sender: TObject);
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

procedure TStuffCodingMachinery2F.popMnuGroupsPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := 'تغيير گروه كالاي <> ' + qryStuffcoding.FieldByName
    ('c_StuffName').AsString
end;

procedure TStuffCodingMachinery2F.BitBtn8Click(Sender: TObject);
var
  Txt, Fields_SD_1_9: String;
  b: Boolean;
  i: Byte;
  Results: array [0 .. 12] of String;
  colTopics: array [0 .. 12] of String;
  colWidths: array [0 .. 12] of SmallInt;
begin
  inherited;
  colTopics[0] := 'کد';
  colTopics[1] := 'نام كالا';
  colTopics[2] := 'مشخصات فني';
  colWidths[0] := 50;
  colWidths[1] := 100;
  colWidths[2] := 100;
  for i := 1 to 9 do
  begin
    colTopics[i + 2] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths[i + 2] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',sd' + IntToStr(i);
    end;
  end;
  // s:=False;
  if (chkAllGroup.Checked) or (cmbGroups.ItemIndex = -1) then
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo ' + Fields_SD_1_9 +
      ' FROM Stuffcoding  '
  else
    Txt := 'select c_StuffCode, c_StuffName ,c_StuffTecInfo ' + Fields_SD_1_9 +
      ' FROM Stuffcoding where(GroupID=' + IntToStr(groupID) + ')';
  b := special_SearchF.SearchCode(DMf.adcBSell, ' كالاها  ', Txt, colTopics,
    Results, colWidths, alLeft, 3);

  if b then
    qryStuffcoding.Locate('c_StuffCode', Results[0], []);
end;

procedure TStuffCodingMachinery2F.N4Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffCodingMachinery2F.mnuAllRecordsClick(Sender: TObject);
begin
  inherited;
  mnuAllRecords.Checked := not mnuAllRecords.Checked
end;

procedure TStuffCodingMachinery2F.actChangeStuffCodeExecute(Sender: TObject);
var
  c_StuffCode: Largeint;
begin
  inherited;
  if get_response('آيا براي تغيير كد كالا مطمئن هستيد؟') <> mrYes then
    Abort;
  c_StuffCode := GetANewCode(self.Name,
    'Select max(c_StuffCode) from Stuffcoding  where  GroupID =' +
    IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])),
    'c_StuffCode');
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

procedure TStuffCodingMachinery2F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    GetExcelF.ShowImPortExcel(qryStuffcoding);
  finally
  end;
end;

// procedure TStuffCodingMachinery2F.GetRecal(kind: Boolean);
// var
// qryStoreStuffs: TADOQuery;
// begin
// qryStoreStuffs := TADOQuery.Create(nil);
// try
// qryStoreStuffs.Connection := DMf.adcBSell;
// qryStoreStuffs.SQL.Text := 'SELECT c_StuffCode, n_StoreID';
// qryStoreStuffs.SQL.Add('FROM StoreStuffs');
// qryStoreStuffs.Active := True;
// chkAllGroup.Checked := True;
// qryStuffcoding.AfterPost := nil;
// qryStuffcoding.AfterInsert := nil;
// LoadTableFromZip(qryStuffcoding, 'Stuffcoding', 'c_StuffCode',
// 'c_StuffCode', kind, 'آيا براي فراخواني كالاها مطمئن هستيد؟');
// LoadTableFromZip(qryStoreStuffs, 'StoreStuffs', 'c_StuffCode', 'n_StoreID',
// True, EmptyStr);
// finally
// qryStuffcoding.AfterPost := qryStuffcodingAfterPost;
// qryStuffcoding.AfterInsert := qryStuffcodingAfterInsert;
// qryStoreStuffs.Free;
// end;
// end;

procedure TStuffCodingMachinery2F.btn1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_TreeViewBF.SearchTree(DMf.adcBSell, 'گروه', Results,
    alLeft, False);
  if b then
  begin
    cmbGroups.ItemIndex := cmbGroups.Items.IndexOfObject
      (TObject(StrToInt(Results[0])));
    cmbGroupsChange(cmbGroups);
    cmbGroups.Hint := Results[0];
    zbal.Title := AnsiString(Results[0]);
    zbal.Prompt.Text := Results[1];
    zbal.Show(cmbGroups);
  end; // if
end;

procedure TStuffCodingMachinery2F.btnPersonID4Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(qryStuffcodingCustIdOrganic, '5')
end;

procedure TStuffCodingMachinery2F.btnSelectClick(Sender: TObject);
// var
// txt:  String;
begin
  inherited;
  if ChooseItemF.SelectChecks(mySelected, 'GroupID', 'GroupName',
    ' StuffGroups', ' Where (GroupType IN(' + GetStuffGroupsNames(nil, False) +
    '))') then
    mySelected := LeftStr(mySelected, Length(mySelected) - 1);

  // txt:='SELECT StuffGroups.GroupID ,StuffGroups.GroupName FROM StuffGroups '+
  // 'INNER JOIN Config ON StuffGroups.LevelID = Config.LevelIdStuffGroup '+
  // 'ORDER BY StuffGroups.GroupID';
  // mySelected:=selectedF.ShowSelect(DMF.adcBSell,'انتخاب گروه',txt,'كد','گروه',alLeft,50,400,mySelected);
  UpDateList(3)

end;

procedure TStuffCodingMachinery2F.pgc1Change(Sender: TObject);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    pgc1.TabIndex := 0;
end;

procedure TStuffCodingMachinery2F.plblGropRengGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if chkAllGroup.Checked then
    Text := 'گروه : همه گروهها  '
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TStuffCodingMachinery2F.AllGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TStuffCodingMachinery2F.AllSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

end.
