// Abedi 90/08/04
unit StuffCodingMachinery;

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
  TStuffCodingMachineryF = class(Ttemplate2MDIF)
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
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    pnl2: TPanel;
    pnlST: TPanel;
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
    lblLblsd2: TLabel;
    lblLblsd3: TLabel;
    lblLblsd1: TLabel;
    lblLblsd5: TLabel;
    lblLblsd6: TLabel;
    lblLblsd4: TLabel;
    edtsd2: TDBEdit;
    edtsd3: TDBEdit;
    edtsd5: TDBEdit;
    edtsd6: TDBEdit;
    edtsd4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    DBText2: TDBText;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    DBText4: TDBText;
    Label19: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit5: TDBEdit;
    DBEdit18: TDBEdit;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    dbchkState: TDBCheckBox;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBGrid1: TDBGrid;
    tbcMachinType: TTabControl;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    qryMachinery: TADOQuery;
    qryMachineryMachinType: TWordField;
    qryMachineryMachineId: TLargeintField;
    qryMachineryStuffId: TLargeintField;
    qryMachineryControlType: TWordField;
    qryMachineryAmount: TFloatField;
    qryMachineryTotal: TFloatField;
    srcMachinery: TDataSource;
    DBGrid2: TDBGrid;
    qryStuff_Unit_TecInf: TADOQuery;
    qryMachinery_StuffName: TStringField;
    qryMachinery_UnitName: TStringField;
    pnlItem: TPanel;
    newPanel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel2: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    Panel6: TPanel;
    lbl2: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edtc_StuffName: TDBEdit;
    edtc_StuffCode: TDBEdit;
    edtc_StuffTecInfo: TDBEdit;
    dblkcbb_UntilName: TDBLookupComboBox;
    qryMachinerystates: TWordField;
    qryStuffcodingn_orderPoint: TFloatField;
    DBEdit6: TDBEdit;
    qryStuffcodingacc_CTopicCode3: TStringField;
    qryStuffcodingAcc_InComeTopicCode: TLargeintField;
    qryStuffcodingAcc_BidTopicCode: TLargeintField;
    qryStuffcodingAcc_CommissionTopicCode: TLargeintField;
    qryMachineryLookUpID1: TIntegerField;
    qryMachineryLookUpID2: TIntegerField;
    qryMachineryLookUpID3: TIntegerField;
    qryMachineryAmount2: TFMTBCDField;
    edtsd7: TDBEdit;
    lbl3: TLabel;
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
    procedure actMakeRecalExecute(Sender: TObject);
    procedure actGetRecalExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure actMakeManifestoExecute(Sender: TObject);
    procedure actGetManifestoExecute(Sender: TObject);
    procedure actGetRecal2Execute(Sender: TObject);
    procedure actMakeDeficitsCorrelationExecute(Sender: TObject);
    procedure actGetDeficitsCorrelationExecute(Sender: TObject);
    procedure qryStuffcodingAfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryStuffcodingAfterScroll(DataSet: TDataSet);
    procedure qryMachineryAfterInsert(DataSet: TDataSet);
    procedure tbcMachinTypeChange(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure pgc1Change(Sender: TObject);
    procedure srcMachineryStateChange(Sender: TObject);
    procedure qryMachineryControlTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryMachineryControlTypeSetText(Sender: TField;
      const Text: string);
    procedure qryMachineryBeforeDelete(DataSet: TDataSet);
    procedure qryStuffcodingBeforeInsert(DataSet: TDataSet);
  private
    groupID: Integer;
    mySelected, OrginalSQL: String;
    function UnicFieldName2(fldIDValue: Integer; fldValidValue: String;
      tblName, fldIDName, fldValidName: String): Boolean;
    procedure UpDateList(kind: Byte);
    procedure GetRecal(kind: Boolean);
    procedure AddSt;
    procedure UpdateMachinType;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure initAddField;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffCodingMachineryF: TStuffCodingMachineryF;

const
  stCount = 5;

implementation

uses DM, GlobalPro, mmessage,
  searchCode_ADO, Special_Search, DBGrid2Print, FormFunctions, GetExcel,
  ChooseItem, searchCode_TreeViewB, FaraConsts;

{$R *.dfm}

procedure TStuffCodingMachineryF.FormCreate(Sender: TObject);
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

procedure TStuffCodingMachineryF.AddSt;
var
  i: SmallInt;
  qry: TADOQuery;
  cmb: TDBLookupComboBox;
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
      qry := TADOQuery.Create(StuffCodingMachineryF);
      Name := 'qrylookupst' + IntToStr(i);
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT Code, Name FROM LookUps WHERE Kind = ' +
        IntToStr(i + 400);
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
      // ix := DBGrid1.Columns.Count;
      // With DBGrid1.Columns.Add do
      // begin
      // FieldName := '_st' + IntToStr(i);
      // Index := ix;
      // end;
    end;
  end; // for

  for i := stCount downto 1 do
  begin
    with TDBLookupComboBox.Create(pnlST) do
    begin
      DataSource := srcStuffcoding;
      DataField := '_st' + IntToStr(i);
      Name := 'cmb' + IntToStr(i);
      Parent := pnlST;
      DropDownRows := 14;
      Hint := '_st' + IntToStr(i);
      ShowHint := True;
      Width := 200;
      Anchors := [akTop, akRight];
    end;
  end; // for
  for i := stCount downto 1 do
  begin
    cmb := TDBLookupComboBox(self.pnlST.FindComponent('cmb' + IntToStr(i)));
    cmb.TabOrder := i - 1;
    case i of
      1 .. 2:
        begin
          cmb.Top := Label1.Top - 4;
        end;
      3 .. 4:
        begin
          cmb.Top := Label2.Top - 4;
        end;
      5 .. 9:
        begin
          cmb.Top := Label3.Top - 4;
        end;
      10 .. 12:
        begin
          cmb.Top := 80;
        end;
      13 .. 15:
        begin
          cmb.Top := 105;
        end;
    end;

    case i of
      1, 3, 5, 10, 13:
        begin
          cmb.Left := Label1.Left - cmb.Width;
        end;
      2, 4, 6, 11, 14:
        begin
          cmb.Left := Label4.Left - cmb.Width;
        end;
      9, 12, 15:
        begin
          cmb.Left := cmb.Width * 0 + 4 * 1;
        end;
    end;
    // lbl.Top := cmb.Top + 2;
    // lbl.Left := cmb.Left + cmb.Width;
  end;

end;

procedure TStuffCodingMachineryF.initAddField;
var
  i_Index: Integer;
  procedure AddField(LookID, kind: Integer);
  var
    qry: TADOQuery;
  begin
    With qry do
    begin
      qry := TADOQuery.Create(StuffCodingMachineryF);
      Name := 'qryLookUpID' + IntToStr(LookID);
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT LookUpID, Name FROM LookUps ';
      SQL.Add('WHERE(Kind=:Kind) and (LookUpID>0)');
      Parameters.ParamByName('Kind').Value := kind;
      LockType := ltReadOnly;
      Active := True;
    end;
    with TStringField.Create(qryMachinery) do
    begin
      FieldName := '_LookUpID' + IntToStr(LookID);
      FieldKind := fkLookup;
      DataSet := qryMachinery;
      Name := 'qryMachinery' + FieldName;
      qryMachinery.FieldDefs.Add(Name, ftString, 50, True);
      Size := 50;
      KeyFields := 'LookUpID' + IntToStr(LookID);
      LookUpDataset := qry;
      LookUpKeyFields := 'LookUpID';
      LookUpResultField := 'Name';
      DisplayLabel := VarToStr(DMf.qryMasterLookUps.Lookup('LookUpID',
        kind, 'Name'))
    end;
    With DBGrid2.Columns.Add do
    begin
      FieldName := '_LookUpID' + IntToStr(LookID);
      Index := i_Index + 1;
    end;
  end;

begin
  DMf.qryMasterLookUps.Open;
  i_Index := ColumnIndexByFieldName(DBGrid2, 'Amount2');
  if opt.MachineryLookUpKind1 > 0 then
    AddField(1, opt.MachineryLookUpKind1);
  if opt.MachineryLookUpKind2 > 0 then
    AddField(2, opt.MachineryLookUpKind2);
  if opt.MachineryLookUpKind3 > 0 then
    AddField(3, opt.MachineryLookUpKind3);
end;

procedure TStuffCodingMachineryF.qryStuffcodingAfterInsert(DataSet: TDataSet);
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
      SQL.Text :=
        'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2,acc_CTopicCode3 from StuffGroups where GroupID='
        + IntToStr(groupID);
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
  edtc_StuffCode.SetFocus;

end;

procedure TStuffCodingMachineryF.qryStuffcodingAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد', 1);
end;

procedure TStuffCodingMachineryF.qryStuffcodingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateMachinType;
  // frplkfsd1.Pelak := qryStuffcodingsd1.AsString;
end;

procedure TStuffCodingMachineryF.cmbGroupsChange(Sender: TObject);
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

procedure TStuffCodingMachineryF.UpDateList;
begin
  qryMachinery.Close;
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

procedure TStuffCodingMachineryF.srcMachineryStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryMachinery.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := newPanel2.Visible;

end;

procedure TStuffCodingMachineryF.srcStuffcodingStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffcoding.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  pnlItem.Visible := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
end;

procedure TStuffCodingMachineryF.tbcMachinTypeChange(Sender: TObject);
begin
  inherited;
  UpdateMachinType
end;

procedure TStuffCodingMachineryF.UpdateMachinType;
var
  GroupType: string;
begin
  // case tbcMachinType.TabIndex of
  // 0:
  // GroupType := '6';
  // 1:
  // GroupType := '2';
  // 2:
  // GroupType := '2';
  // 3:
  // GroupType := '9';
  // 4:
  // GroupType := '4,6';
  // end;
  // آقاي مروتي
  GroupType := '2,4,6,7,8,9';

  with qryStuff_Unit_TecInf do
  begin
    SQL.Text :=
      'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName';
    SQL.Add('FROM StuffCoding INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN');
    SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
    SQL.Add('WHERE (StuffGroups.GroupType in (' + GroupType + '))');
  end;

  with qryMachinery do
  begin
    Active := False;
    Parameters.ParamByName('MachinType').Value := tbcMachinType.TabIndex;
    Parameters.ParamByName('StuffId').Value :=
      qryStuffcodingc_StuffCode.AsLargeInt;
    Active := True;
  end;
end;

procedure TStuffCodingMachineryF.chkAllGroupClick(Sender: TObject);
begin
  inherited;
  UpDateList(2);
end;

procedure TStuffCodingMachineryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, False);
  SetColSize(DBGrid2, 1, False);
end;

procedure TStuffCodingMachineryF.actSendToExcedlExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffCodingMachineryF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffCodingMachineryF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffCodingMachineryF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffCodingMachineryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffcoding.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryStuffcoding.EnableControls;
  end;
end;

procedure TStuffCodingMachineryF.actSortExecute(Sender: TObject);
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

procedure TStuffCodingMachineryF.N1Click(Sender: TObject);
begin
  inherited;
  qryStuffcoding.Sort := 'Groupid';
end;

procedure TStuffCodingMachineryF.N2Click(Sender: TObject);
begin
  inherited;
  qryStuffcoding.Sort := 'c_StuffName';
end;

procedure TStuffCodingMachineryF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TStuffCodingMachineryF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TStuffCodingMachineryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TStuffCodingMachineryF.qryStuffcodingBeforePost(DataSet: TDataSet);
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

function TStuffCodingMachineryF.UnicFieldName2;
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

procedure TStuffCodingMachineryF.qryStuffcodingBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TStuffCodingMachineryF.qryStuffcodingBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  pgc1.TabIndex := 0
end;

procedure TStuffCodingMachineryF.actSearch_Execute(Sender: TObject);
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

procedure TStuffCodingMachineryF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TStuffCodingMachineryF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuffcoding.FieldByName('c_StuffCode'));
end;

procedure TStuffCodingMachineryF.DBGrid2EditButtonClick(Sender: TObject);
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

procedure TStuffCodingMachineryF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TStuffCodingMachineryF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName('_StuffName').IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid2.Columns[nextIndex].Visible) OR
          (DBGrid2.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      if LowerCase(DBGrid2.Columns[curIndex].FieldName) <> 'stuffsize' then
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid2.Columns[curIndex].ButtonStyle = cbsEllipsis then

    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      DBGrid2EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid2.Columns.Count) and
      (not(DBGrid2.Columns[nextIndex].Visible) OR
      (DBGrid2.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGrid2.SelectedIndex := 0;
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

procedure TStuffCodingMachineryF.rptStuffCodingF1Click(Sender: TObject);
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

procedure TStuffCodingMachineryF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryStuffcoding, 'acc_CTopicCode', 'TopicCode', False)
end;

procedure TStuffCodingMachineryF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryStuffcoding, 'acc_CTopicCode2',
    'acc_CTopicCode', False)
end;

procedure TStuffCodingMachineryF.qryMachineryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    qryStuffcoding.Post;
  qryMachineryStuffId.AsLargeInt := qryStuffcodingc_StuffCode.AsLargeInt;
  qryMachineryMachinType.AsInteger := tbcMachinType.TabIndex;

end;

procedure TStuffCodingMachineryF.qryMachineryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين ماشين مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TStuffCodingMachineryF.qryMachineryControlTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(DBGrid2, Sender.FieldName);
  Text := DBGrid2.Columns[i].PickList.Strings[Sender.AsInteger]
end;

procedure TStuffCodingMachineryF.qryMachineryControlTypeSetText(Sender: TField;
  const Text: string);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(DBGrid2, Sender.FieldName);
  Sender.AsInteger := DBGrid2.Columns[i].PickList.IndexOf(Text);

end;

procedure TStuffCodingMachineryF.qryStuffcodingAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TStuffCodingMachineryF.Mnu_AllClickClick(Sender: TObject);
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

procedure TStuffCodingMachineryF.popMnuGroupsPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := 'تغيير گروه كالاي <> ' + qryStuffcoding.FieldByName
    ('c_StuffName').AsString
end;

procedure TStuffCodingMachineryF.BitBtn8Click(Sender: TObject);
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

procedure TStuffCodingMachineryF.N4Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffCodingMachineryF.mnuAllRecordsClick(Sender: TObject);
begin
  inherited;
  mnuAllRecords.Checked := not mnuAllRecords.Checked
end;

procedure TStuffCodingMachineryF.actChangeStuffCodeExecute(Sender: TObject);
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
  With TADOStoredProc.Create(StuffCodingMachineryF) do
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

procedure TStuffCodingMachineryF.actMakeDeficitsCorrelationExecute
  (Sender: TObject);
begin
  inherited;
  MakeTableToZip('Deficits', DMf.adcBSell, EmptyStr);
  MakeTableToZip('DeficitsCorrelation', DMf.adcBSell, EmptyStr)
end;

procedure TStuffCodingMachineryF.actGetDeficitsCorrelationExecute
  (Sender: TObject);
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

procedure TStuffCodingMachineryF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    GetExcelF.ShowImPortExcel(qryStuffcoding);
  finally
  end;
end;

procedure TStuffCodingMachineryF.actMakeManifestoExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('Manifesto', DMf.adcBSell, EmptyStr);
  MakeTableToZip('ManifestoItems', DMf.adcBSell, EmptyStr)
end;

procedure TStuffCodingMachineryF.actGetManifestoExecute(Sender: TObject);
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

procedure TStuffCodingMachineryF.actMakeRecalExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('Stuffcoding', DMf.adcBSell, 'WHERE (c_StuffCode <> 0)');
  MakeTableToZip('StoreStuffs', DMf.adcBSell, 'WHERE (c_StuffCode <> 0)')
end;

procedure TStuffCodingMachineryF.actGetRecal2Execute(Sender: TObject);
begin
  inherited;
  GetRecal(False)
end;

procedure TStuffCodingMachineryF.actGetRecalExecute(Sender: TObject);
begin
  inherited;
  GetRecal(True)
end;

procedure TStuffCodingMachineryF.GetRecal(kind: Boolean);
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
    qryStuffcoding.AfterPost := nil;
    qryStuffcoding.AfterInsert := nil;
    LoadTableFromZip(qryStuffcoding, 'Stuffcoding', 'c_StuffCode',
      'c_StuffCode', kind, 'آيا براي فراخواني كالاها مطمئن هستيد؟');
    LoadTableFromZip(qryStoreStuffs, 'StoreStuffs', 'c_StuffCode', 'n_StoreID',
      True, EmptyStr);
  finally
    qryStuffcoding.AfterPost := qryStuffcodingAfterPost;
    qryStuffcoding.AfterInsert := qryStuffcodingAfterInsert;
    qryStoreStuffs.Free;
  end;
end;

procedure TStuffCodingMachineryF.btn1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_TreeViewbF.SearchTree(DMf.adcBSell, 'گروه', Results,
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

procedure TStuffCodingMachineryF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffCodingMachineryF.btnSelectClick(Sender: TObject);
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

procedure TStuffCodingMachineryF.pgc1Change(Sender: TObject);
begin
  inherited;
  if qryStuffcoding.State in dsEditModes then
    pgc1.TabIndex := 0;
  if pgc1.TabIndex = 2 then
    UpdateMachinType;
end;

procedure TStuffCodingMachineryF.plblGropRengGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if chkAllGroup.Checked then
    Text := 'گروه : همه گروهها  '
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

end.
