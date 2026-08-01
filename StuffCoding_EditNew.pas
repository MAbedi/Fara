// mostafa 84/02/25
unit StuffCoding_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  Provider, DBClient, ADODB, DBCtrls, Mask, ComCtrls,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type

  TStuffCoding_EditNewF = class(TTemplate4F)
    pnlTop: TPanel;
    qryStores: TADOQuery;
    qryStoresn_StoreID: TSmallintField;
    qryStoresc_StoreName: TStringField;
    srcStores: TDataSource;
    cliStores: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    cliStoresn_StoreID: TSmallintField;
    cliStoresc_StoreName: TStringField;
    cliStores_Checked: TBooleanField;
    edtc_StuffName: TDBEdit;
    edtc_StuffCode: TDBEdit;
    lblc_StuffTecInfo: TLabel;
    edtc_StuffTecInfo: TDBEdit;
    lbl_UntilName: TLabel;
    qryStoreStuffs: TADOQuery;
    qryStoreStuffsn_StoreID: TSmallintField;
    srcStuffcoding: TDataSource;
    dblkcbb_UntilName: TDBLookupComboBox;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryStuffGroups: TADOQuery;
    qryStuffGroupsacc_CTopicCode: TStringField;
    qryStuffGroupsacc_DetailCode: TStringField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    Label16: TLabel;
    SpeedButton3: TSpeedButton;
    DBText3: TDBText;
    DBText4: TDBText;
    Label19: TLabel;
    SpeedButton4: TSpeedButton;
    EdtAllKeyDown: TDBEdit;
    DBEdit5: TDBEdit;
    edtBudgetID: TDBEdit;
    DBEdit18: TDBEdit;
    TabSheet3: TTabSheet;
    Label49: TLabel;
    CmbUnitPriceUseKind: TDBComboBox;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Lblsd2: TLabel;
    Lblsd3: TLabel;
    Lblsd1: TLabel;
    Edtsd2: TDBEdit;
    Edtsd3: TDBEdit;
    Edtsd1: TDBEdit;
    Lblsd5: TLabel;
    Lblsd6: TLabel;
    Lblsd4: TLabel;
    Edtsd5: TDBEdit;
    Edtsd6: TDBEdit;
    Edtsd4: TDBEdit;
    Lblsd8: TLabel;
    Lblsd9: TLabel;
    Lblsd7: TLabel;
    Edtsd8: TDBEdit;
    Edtsd9: TDBEdit;
    Edtsd7: TDBEdit;
    dbmmoStuffNote: TDBMemo;
    edtStanCode: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBText5: TDBText;
    DBText6: TDBText;
    edtacc_IncomeTopicCode: TDBEdit;
    edtacc_BidTopicCode: TDBEdit;
    Label24: TLabel;
    edtAcc_CommissionTopicCode: TDBEdit;
    SpeedButton7: TSpeedButton;
    DBText7: TDBText;
    RdGOwnerShipKind: TDBRadioGroup;
    grpCommission: TGroupBox;
    edtCommission: TDBEdit;
    chkHasRecall: TDBCheckBox;
    TabSheet6: TTabSheet;
    LblStuffExpireDate: TLabel;
    EdtStuffExpireDate: TDBEdit;
    Label27: TLabel;
    edtSellPrice_S: TDBEdit;
    qryStoreStuffsc_StuffCode: TLargeintField;
    dbchkVatExempt: TDBCheckBox;
    srcStoreStuffs: TDataSource;
    qryStuffGroupsGroupID: TIntegerField;
    lblVendorBarcode: TLabel;
    edtVendorBarcode: TDBEdit;
    DBText8: TDBText;
    SpeedButton8: TSpeedButton;
    DBEdit27: TDBEdit;
    Label32: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qryStuffGroupsacc_IncomeTopicCode: TLargeintField;
    Label7: TLabel;
    edtDayOfStorage: TDBEdit;
    DBGrid2: TCedarDbgrid;
    dbchkBlockOutput: TDBCheckBox;
    edtc_StuffName_L2: TDBEdit;
    Label31: TLabel;
    TabSheet8: TTabSheet;
    srcUnit2Stuffs: TDataSource;
    DBGrid1: TCedarDbgrid;
    edtNationalStuffCode: TDBEdit;
    Label34: TLabel;
    edtSD1Weight: TDBEdit;
    lblSD1Weight: TLabel;
    Panel2: TPanel;
    edtCarton: TDBEdit;
    Label18: TLabel;
    dblkcbb_UntilName2: TDBLookupComboBox;
    lbl_UntilName2: TLabel;
    DBCheckBox17: TDBCheckBox;
    edtTariffsID: TDBEdit;
    Label30: TLabel;
    edtStuffVolume: TDBEdit;
    Label3: TLabel;
    edtStuffWeight: TDBEdit;
    Label1: TLabel;
    edtDefaultValue: TDBEdit;
    Label33: TLabel;
    edtStuffpurePercent: TDBEdit;
    Label25: TLabel;
    edtStuffpublicPercent: TDBEdit;
    Label26: TLabel;
    edtVatExemptCo: TDBEdit;
    Label2: TLabel;
    edtMaterialUsageCo: TDBEdit;
    Label4: TLabel;
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdtAllKeyDownKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton8Click(Sender: TObject);
    procedure RdGOwnerShipKindClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
  private
    procedure ReadSelect;
    procedure ToggleStore;
    procedure DefaultSelect(checkAll: Boolean);
    { Private declarations }
  public
    function CheckTick: Boolean;
    procedure enter(IsReadOnly: Boolean);
    procedure SaveSelect;
    { Public declarations }
  end;

var
  StuffCoding_EditNewF: TStuffCoding_EditNewF;

implementation

uses StuffCoding, GlobalPro, DM, FormFunctions, FrDBLookupComboBox,FaraConsts;

{$R *.dfm}

procedure TStuffCoding_EditNewF.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // (Sender as TDBGrid).Refresh
end;

procedure TStuffCoding_EditNewF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if not(StuffCodingF.qryStuffcoding.State in dsEditModes) then
    StuffCodingF.qryStuffcoding.Edit

end;

procedure TStuffCoding_EditNewF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleStore;
end;

procedure TStuffCoding_EditNewF.enter(IsReadOnly: Boolean);
var
  i: Integer;
begin
  StuffCoding_EditNewF := TStuffCoding_EditNewF.Create(Application);
  with StuffCoding_EditNewF do
  begin
    try
      ReadSelect;
      pnlTop.Enabled := not IsReadOnly;
      for i := 0 to PageControl1.PageCount - 1 do
        PageControl1.Pages[i].Enabled := not IsReadOnly;
      ShowModal;
    finally
      Free;
    end; // try
  end; // with

end;

procedure TStuffCoding_EditNewF.RdGOwnerShipKindClick(Sender: TObject);
begin
  inherited;
  if StuffCoding_EditNewF.grpCommission <> nil then
    StuffCoding_EditNewF.grpCommission.Visible :=
      RdGOwnerShipKind.ItemIndex = 1;

end;

procedure TStuffCoding_EditNewF.ReadSelect;
begin
  cliStores.Active := False;
  cliStores.Active := True;
  with qryStoreStuffs do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with cliStores do
        begin
          if Locate('n_StoreID', qryStoreStuffs.FieldByName('n_StoreID')
            .AsInteger, []) then
          begin
            Edit;
            FieldByName('_Checked').AsBoolean := True;
            Post;
          end; // if
        end; // with
        next;
      end; // while
    finally
      EnableControls;
    end; // try
  end; // with
end;

procedure TStuffCoding_EditNewF.DefaultSelect(checkAll: Boolean);
begin
  with cliStores do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        if checkAll then
          FieldByName('_Checked').AsBoolean := True
        else
          FieldByName('_Checked').AsBoolean := not FieldByName('_Checked')
            .AsBoolean;
        Post;
        next;
      end; // while
    finally
      EnableControls;
    end; // try
  end; // with
end;

procedure TStuffCoding_EditNewF.FormCreate(Sender: TObject);
var
  i: Integer;
  cmb: TfrmDBLookupComboBox;
begin
  inherited;

  dblkcbb_UntilName2.Visible := opt.CartonInt = 2;
  lbl_UntilName2.Visible := dblkcbb_UntilName2.Visible;
  With qryStoreStuffs do
  begin
    Active := False;
    Parameters.ParamByName('c_StuffCode').Value :=
      StuffCodingF.qryStuffcoding.FieldByName('c_StuffCode').AsVariant;
    Active := True;
  end;
  With qryStuffGroups do
  begin
    Active := False;
    Parameters.ParamByName('GroupID').Value :=
      StuffCodingF.qryStuffcoding.FieldByName('GroupID').AsInteger;
    Active := True;
  end;
  for i := 1 to 9 do
  begin
    TCustomLabel(FindComponent('Lblsd' + IntToStr(i))).Caption :=
      opt.ExtraCoding.Captions[i];
    TDBEdit(FindComponent('Edtsd' + IntToStr(i))).Visible :=
      opt.ExtraCoding.Captions[i] <> '';
  end;

  // if opt.IsIdentityST <> EmptyStr then
  // begin
  // with TDBEdit.Create(Panel2) do
  // begin
  // DataSource := srcStuffcoding;
  // DataField := opt.IsIdentityST;
  // Name := 'Txt' + opt.IsIdentityST;
  // Parent := Panel2;
  // Left := edtc_StuffName.Left;
  // Top := edtc_StuffTecInfo.Top;
  // Width := edtVendorBarcode.Width;
  // ReadOnly := True;
  // end;
  // with TLabel.Create(Panel2) do
  // begin
  // Name := 'lbl' + opt.IsIdentityST;
  // Caption := '‘‰«”Â';
  // Parent := Panel2;
  // Left := lblVendorBarcode.Left;
  // Top := lblc_StuffTecInfo.Top;
  // end;
  // end;

  for i := opt.stCount downto 1 do
  begin
    cmb := TfrmDBLookupComboBox.Create(TabSheet6);
    with cmb do
    begin
      dblkcbbFr1.DataSource := srcStuffcoding;
      dblkcbbFr1.Tag := i + 300;
      dblkcbbFr1.DataField := '_st' + IntToStr(i);
      dblkcbbFr1.DropDownRows := 14;
      Name := 'cmb' + IntToStr(i);
      Parent := TabSheet6;
      Hint := '_st' + IntToStr(i);
      ShowHint := True;
      Width := 210;
      With StuffCodingF.qryLookups do
      begin
        if Locate('Code', dblkcbbFr1.Tag, []) then
          lblFrCaption.Caption := FieldByName('Name').AsString
        else
          lblFrCaption.Caption := '‰Ê⁄' + IntToStr(i);
      end;
    end;
  end; // for

  for i := opt.stCount downto 1 do
  begin
    cmb := TfrmDBLookupComboBox(Self.TabSheet6.FindComponent('cmb' +
      IntToStr(i)));
    cmb.TabOrder := i - 1;
    case i of
      1 .. 3:
        begin
          cmb.Top := 5;
        end;
      4 .. 6:
        begin
          cmb.Top := 30;
        end;
      7 .. 9:
        begin
          cmb.Top := 55;
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
      1, 4, 7, 10, 13:
        begin
          cmb.Left := cmb.Width * 2 + 45 * 2;
        end;
      2, 5, 8, 11, 14:
        begin
          cmb.Left := cmb.Width * 1 + 45 * 1;
        end;
      3, 6, 9, 12, 15:
        begin
          cmb.Left := cmb.Width * 0 + 4 * 1;
        end;
    end;

  end;
  LblStuffExpireDate.Enabled := DMf.ReadBankConfig('ExpireDateKind', '0') = '1';
  EdtStuffExpireDate.Enabled := LblStuffExpireDate.Enabled;

  PageControl1.TabIndex := ReadConfig(APPID, Self.Name +'PageControl1TabIndex', '0').ToInteger;
end;

procedure TStuffCoding_EditNewF.SaveSelect;
var
  qryReciptItems: TADOQuery;
begin
  qryReciptItems := TADOQuery.Create(nil);
  With qryReciptItems do
  begin
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT DISTINCT Recipts.StoreID';
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
    SQL.Add('ReciptItems.YearID = Recipts.YearID');
    SQL.Add('WHERE (ReciptItems.StuffCode = :StuffCode )');
    Parameters.ParamByName('StuffCode').Value := MyStuffCode;
    Active := True;
  end;

  with qryStoreStuffs do
  begin
    try
      Active := False;
      Parameters.ParamByName('c_StuffCode').Value := MyStuffCode;
      Active := True;
      DisableControls;
      First;
      while not Eof do
        Delete;
      cliStores.DisableControls;
      cliStores.First;
      while not cliStores.Eof do
      begin
        if (cliStores_Checked.AsBoolean) or
          (qryReciptItems.Locate('StoreID', cliStores.FieldByName('n_StoreID')
          .AsInteger, [])) then
        begin
          if not cliStores_Checked.AsBoolean then
          begin
            Warn('»Â ⁄·  œ«‘ ‰ ê—œ‘ œ— «‰»«—' + cliStores.FieldByName
              ('n_StoreID').AsString + ' «— »«ÿ ﬁ«»· Õ–› ‰Ì” ', mtInformation);
            ToggleStore;
          end;
          Insert;
          qryStoreStuffsc_StuffCode.AsLargeInt := MyStuffCode;
          FieldByName('n_StoreID').AsInteger :=
            cliStores.FieldByName('n_StoreID').AsInteger;
          Post;
        end; // if
        cliStores.next;
      end; // while
    finally
      // UpdateBatch;
      EnableControls;
      cliStores.EnableControls;
      qryReciptItems.Free;
    end; // try
  end; // with

end;

procedure TStuffCoding_EditNewF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if StuffCodingF.qryStuffcoding.State in dsEditModes then
    if get_response('¬Ì« «ÿ·«⁄«  –ŒÌ—Â ‘Êœ.˛') = mryes then
      DataSetPost1.Execute
    else
      DataSetCancel1.Execute;
  StuffCodingF.qryStuffcoding.Requery();
  StuffCodingF.qryStuffcoding.Locate('c_StuffCode', MyStuffCode, []);

    saveConfig(APPID, Self.Name +'PageControl1TabIndex', PageControl1.TabIndex.ToString);


end;

procedure TStuffCoding_EditNewF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(StuffCodingF.qryStuffcoding, 'acc_DetaiCode',
    '', False)
end;

procedure TStuffCoding_EditNewF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(StuffCodingF.qryStuffcoding, 'acc_CTopicCode',
    'TopicCode', False)
end;

procedure TStuffCoding_EditNewF.EdtAllKeyDownKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('SpeedButton' + IntToStr((Sender as TDBEdit)
      .Tag))).Click;
end;

procedure TStuffCoding_EditNewF.ToggleStore;
begin
  with cliStores do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TStuffCoding_EditNewF.FormShow(Sender: TObject);
begin
  inherited;
  if pnlTop.Enabled then
    edtc_StuffCode.SetFocus;
  StuffCoding_EditNewF.grpCommission.Visible :=
    StuffCodingF.qryStuffcoding.FieldByName('OwnerShipKind').AsInteger = 1;
end;

procedure TStuffCoding_EditNewF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  DefaultSelect(False);
end;

function TStuffCoding_EditNewF.CheckTick: Boolean;
begin
  Result := False;
  with cliStores do
  begin
    DisableControls;
    First;
    try
      while not Eof do
      begin
        Result := cliStores_Checked.AsBoolean;
        if Result then
          Break;
        next;
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TStuffCoding_EditNewF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBudgetCode(StuffCodingF.qryStuffcoding, 'BudgetID')
end;

procedure TStuffCoding_EditNewF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  DefaultSelect(True)
end;

procedure TStuffCoding_EditNewF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(StuffCodingF.qryStuffcoding, 'acc_CTopicCode2',
    'acc_CTopicCode', False)
end;

procedure TStuffCoding_EditNewF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(StuffCodingF.qryStuffcoding, 'acc_IncomeTopicCode')
end;

procedure TStuffCoding_EditNewF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(StuffCodingF.qryStuffcoding, 'acc_BidTopicCode')
end;

procedure TStuffCoding_EditNewF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(StuffCodingF.qryStuffcoding,
    'Acc_CommissionTopicCode')
end;

procedure TStuffCoding_EditNewF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(StuffCodingF.qryStuffcoding, 'acc_CTopicCode2',
    'acc_CTopicCode', False)
end;

end.
