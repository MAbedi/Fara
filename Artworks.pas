{ -----------------------------------------------------------------------------
  Unit Name: ArtWorks
  Author:    S_H_E_I_K_H
  Purpose:
  History:   94/12/19
  ----------------------------------------------------------------------------- }
unit Artworks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, Grids, Vcl.DBGrids, zAPIBalloon, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, Menus, ppBarCod, DBClient, Provider, ExtDlgs,
  jpeg, ZipForge, ppParameter, ieview, imageenview, imageenio, StrUtils,
  ppDesignLayer, System.ImageList, System.Actions, hyiedefs, hyieutils,
  iexBitmaps, iesettings, iexLayers, iexRulers, iexToolbars,
  iexUserInteractions, imageenproc;

type
  TArtworksF = class(Ttemplate2MDIF)
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
    srcStuffcoding: TDataSource;
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
    qryStuffcodingc_StuffName: TStringField;
    qryStuffcodingBudgetID: TIntegerField;
    qryStuffcodingStandardRate: TBCDField;
    qryStuffcodingSellPrice1: TBCDField;
    qryStuffcodingSellPrice2: TBCDField;
    qryStuffcodingSellPrice3: TBCDField;
    qryStuffcodingSellPrice4: TBCDField;
    qryStuffcodingCarton: TFloatField;
    PopList4Print: TPopupMenu;
    HintName1: TMenuItem;
    ArtworksF1: TMenuItem;
    ArtworksF2: TMenuItem;
    ArtworksF3: TMenuItem;
    qryStuffcodingacc_CTopicCode2: TStringField;
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
    ArtworksFBarCode: TMenuItem;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppColumnFooterBand1: TppColumnFooterBand;
    qryStuffcodingControl_orderPoint_Entity: TWordField;
    qryStuffcodingStanCode: TStringField;
    qryStuffcodingOwnerShipKind: TWordField;
    qryStuffcodingCommission: TFloatField;
    qryStuffcodingStuffpurePercent: TFloatField;
    qryStuffcodingStuffpublicPercent: TFloatField;
    cmbGroups: TComboBox;
    Label10: TLabel;
    chkAllGroup: TCheckBox;
    qryStores: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    cliStores: TClientDataSet;
    cliStoresn_StoreID: TSmallintField;
    cliStoresc_StoreName: TStringField;
    cliStores_Checked: TBooleanField;
    srcStores: TDataSource;
    qryStuffcodingst1: TIntegerField;
    qryStuffcodingst2: TIntegerField;
    qryStuffcodingst3: TIntegerField;
    qryStuffcodingst4: TIntegerField;
    qryStuffcodingst5: TIntegerField;
    qryStuffcodingst6: TIntegerField;
    qryStuffcodingst7: TIntegerField;
    qryStuffcodingst8: TIntegerField;
    qryStuffcodingst9: TIntegerField;
    qryStuffcodingst10: TIntegerField;
    qryStuffcodingst11: TIntegerField;
    qryStuffcodingst12: TIntegerField;
    qryStuffcodingst13: TIntegerField;
    qryStuffcodingst14: TIntegerField;
    qryStuffcodingst15: TIntegerField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    qryStoreStuffs: TADOQuery;
    qryStoreStuffsn_StoreID: TSmallintField;
    BitBtn10: TBitBtn;
    actCopy: TAction;
    PopOther: TPopupMenu;
    N3: TMenuItem;
    actCopy1: TMenuItem;
    qryStuffcodingc_StuffTecInfo: TStringField;
    actScan: TAction;
    Panel1: TPanel;
    qryStuffcodingChangeState: TIntegerField;
    qryStuffCodingAid: TADOQuery;
    qryStuffCodingAidLookupID: TIntegerField;
    qryStuffCodingAidLookUpDesc: TIntegerField;
    srcStuffCodingAid: TDataSource;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    actAttach: TAction;
    qryLookUp: TADOQuery;
    qryStuffCodingAid_LooKupName: TStringField;
    qryLookUpAll: TADOQuery;
    qryStuffCodingAid_LookupDescName: TStringField;
    actDelimg: TAction;
    N4: TMenuItem;
    qryAllStuff: TADOQuery;
    srcAllStuff: TDataSource;
    qryStuffcoding_OperatorName: TStringField;
    qryStuffcodingc_StuffCode: TLargeintField;
    qryStoreStuffsc_StuffCode: TLargeintField;
    qryStuffCodingAidc_StuffCode: TLargeintField;
    actSearch_StuffCodingAid: TAction;
    mnuSearch_StuffCodingAid: TMenuItem;
    qryStuffcodingn_orderPoint: TFloatField;
    qryStuffcodingacc_CTopicCode3: TStringField;
    qryStuffcodingVatExempt: TWordField;
    qryStuffcodingGroupID: TIntegerField;
    ImageEnIO1: TImageEnIO;
    qryStuffcodingAcc_InComeTopicCode: TLargeintField;
    qryStuffcodingAcc_BidTopicCode: TLargeintField;
    qryStuffcodingAcc_CommissionTopicCode: TLargeintField;
    Panel7: TPanel;
    imgbook: TImageEnView;
    pnlStuffInfo: TPanel;
    DBText16: TDBText;
    DBEdit21: TDBEdit;
    btnacc_DetaiCode: TSpeedButton;
    Txt5: TDBText;
    edtst5: TDBEdit;
    Lbl5: TLabel;
    Btnst5: TSpeedButton;
    Txt4: TDBText;
    edtst4: TDBEdit;
    Lbl4: TLabel;
    Btnst3: TSpeedButton;
    Txt3: TDBText;
    Lbl3: TLabel;
    edtst3: TDBEdit;
    Btnst2: TSpeedButton;
    edtst2: TDBEdit;
    Lbl2: TLabel;
    Txt2: TDBText;
    Btnst1: TSpeedButton;
    Label25: TLabel;
    Label74: TLabel;
    cmbState: TDBComboBox;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    edtSellPrice1: TDBEdit;
    Label4: TLabel;
    edtsd7: TDBEdit;
    Lblsd1: TLabel;
    Edtsd1: TDBEdit;
    Label15: TLabel;
    DBEdit70: TDBEdit;
    Label14: TLabel;
    DBEdit60: TDBEdit;
    Panel9: TPanel;
    btnAttach: TSpeedButton;
    btnDelimg: TSpeedButton;
    btnScan: TSpeedButton;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    dbmmoStuffNote: TDBMemo;
    btnAdd: TBitBtn;
    Panel6: TPanel;
    pnlBtnDetail: TPanel;
    pnlOkDetail: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    pnlNewDetail: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    DBGrid2: TDBGrid;
    PnlCommunicableStores: TPanel;
    DBGrid1: TDBGrid;
    BitBtn11: TBitBtn;
    txt6: TDBText;
    Lbl6: TLabel;
    Btnst6: TSpeedButton;
    edtst2222: TDBEdit;
    GroupBox2: TGroupBox;
    dbmmosd2: TDBMemo;
    edtc_StuffTecInfo: TDBEdit;
    Label1: TLabel;
    ppImage1: TppImage;
    Image2: TImage;
    Image3: TImage;
    srcLastBuy: TDataSource;
    qryLastBuy: TADOQuery;
    plnLastBuy: TppDBPipeline;
    plnLastBuyppField1: TppField;
    procedure FormCreate(Sender: TObject);
    procedure qryStuffcodingAfterInsert(DataSet: TDataSet);
    procedure cmbGroupsChange(Sender: TObject);
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
    procedure cmbGroupsEnter(Sender: TObject);
    procedure qryStuffcodingBeforePost(DataSet: TDataSet);
    procedure qryStuffcodingAfterEdit(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ArtworksF1Click(Sender: TObject);
    procedure qryStuffcodingAfterScroll(DataSet: TDataSet);
    procedure Btnst1Click(Sender: TObject);
    procedure edtst2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnacc_DetaiCodeClick(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn10Click(Sender: TObject);
    procedure ALLLblDblClick(Sender: TObject);
    procedure qryStuffcodingc_StuffCodeChange(Sender: TField);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure actCopyExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure actScanExecute(Sender: TObject);
    procedure srcStuffCodingAidStateChange(Sender: TObject);
    procedure actAttachExecute(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryStuffCodingAidAfterInsert(DataSet: TDataSet);
    procedure qryStuffCodingAidBeforeDelete(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure actDelimgExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure qryStuffCodingAidAfterPost(DataSet: TDataSet);
    procedure qryAllStuffAfterScroll(DataSet: TDataSet);
    procedure actSearch_StuffCodingAidExecute(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure qryAllStuffAfterOpen(DataSet: TDataSet);
    procedure qryStuffcodingBeforeDelete(DataSet: TDataSet);
    procedure qryStuffcodingAfterDelete(DataSet: TDataSet);
    procedure ImageEnIO1FinishWork(Sender: TObject);
    procedure ppImage1Print(Sender: TObject);
  private
    groupID: Integer;
    c_StuffCode: string;
    function CheckTick: Boolean;
    procedure ToggleStore;
    procedure ReadSelect;
    procedure SaveSelect;
    procedure DefaultSelect;
    procedure SucImg;
    procedure ResizeJPG(InFile, OutFile: string; awidth, aHeight: Integer);
    procedure SaveItems;
    procedure c_StuffTecInfoUnic;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArtworksF: TArtworksF;

const
  _Width = 315;
  _Height = 322;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO,
  Special_Search, FormFunctions, FaraConsts, SelectedScaner;

{$R *.dfm}

procedure TArtworksF.ResizeJPG(InFile, OutFile: string;
  awidth, aHeight: Integer);
var
  oJPG: TJPEGImage;
  oBmp: TBitmap;
begin
  try
    oJPG := TJPEGImage.Create;
    oJPG.LoadFromFile(InFile);
  except
    MessageBox(0, PChar('Cannot open ' + ExtractFileName(InFile) + '!'),
      'Error', MB_OK + MB_ICONERROR);
    Exit;
  end;
  // oBmp := TBitmap.Create;
  // oBmp.Width := awidth;
  // oBmp.Height := aHeight;
  // oBmp.Canvas.StretchDraw(Rect(0, 0, oBmp.Width - 1, oBmp.Height - 1), oJPG);
  // oJPG.Assign(oBmp);
  // oJPG.Compress;
  // oBmp.SaveToFile(OutFile);
  oJPG.SaveToFile(OutFile);
  oJPG.Free;
  // oBmp.Free;

end;

procedure TArtworksF.FormCreate(Sender: TObject);
var
  i: Byte;
  DbTxt: TDBText;
  lbl: TLabel;
  qry: TADOQuery;
  S_Q_L: string;
begin
  inherited;
  SysUtils.ForceDirectories(opt._ArchivePath);
  PnlCommunicableStores.Visible := DMF.ReadBankConfig('CommunicableStores',
    '1') = '1';
  for i := 2 to 6 do
  begin
    With qry do
    begin
      qry := TADOQuery.Create(ArtworksF);
      Name := 'qrylookupst' + IntToStr(i);
      Connection := DMF.adcBSell;
      if i in [2, 6] then
        SQL.Text := 'SELECT Code, Name FROM LookUps WHERE Kind = ' +
          IntToStr(GetCode(i)) + ' order by Name'
      else
        SQL.Text := 'SELECT Code, Name FROM LookUps WHERE Kind = ' +
          '(SELECT LookupID FROM Lookups WHERE Code = ' + IntToStr(GetCode(i)) +
          ' AND Kind = 0)   ' + ' order by Name';
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
      qryStuffcoding.FieldDefs.Add(Name, ftString, 150, True);
      DbTxt := TDBText(Self.FindComponent('Txt' + IntToStr(i)));
      DbTxt.DataField := FieldName;
    end;
    with TDBLookupComboBox.Create(Panel1) do
    begin
      DataSource := srcStuffcoding;
      DataField := '_st' + IntToStr(i);
      Name := 'LookCmb' + IntToStr(i);
      Parent := pnlStuffInfo;
      Left := DbTxt.Left;
      Top := DbTxt.Top;
      Width := DbTxt.Width;
      Anchors := DbTxt.Anchors;
      TabOrder := cmbState.TabOrder + i;
      lbl := TLabel(Self.FindComponent('lbl' + IntToStr(i)));
      lbl.Left := DbTxt.Left + DbTxt.Width - lbl.Width;
      DropDownRows := 14;
      lbl.OnDblClick := ALLLblDblClick;
      lbl.Hint := '«÷«›Â ﬂ—œ‰ ⁄‰Ê«‰(DoubelClick)';
      lbl.ShowHint := True;
      // OnKeyDown:=ALLCmbKeyDown;
      Hint := 'lbl' + IntToStr(i);
    end;
  end; // for

  S_Q_L := 'SELECT GroupID ,GroupName+SPACE((SELECT MAX(LEN(GroupName))+10 FROM dbo.StuffGroups)-LEN(GroupName)) + ''«“ ﬂœ'' + cast(StartCode as nvarchar(30))'
    + '+ ''  « ﬂœ '' + cast(FinishCode as nvarchar(30)) AS  GroupName ' +
    '  FROM StuffGroups ';

  S_Q_L := S_Q_L + ifthen(opt.StuffCodingKind = 2,
    ' WHERE (StuffCodingKind = 2)', '') + ' ORDER BY GroupID';

  InitCombos(cmbGroups, S_Q_L);

  qryStuffcoding.FieldByName('c_StuffName').ReadOnly :=
    opt.EditStuffNameLevelID;
  SetLookUpCash(qryStuffcoding);
  qryUnits.Active := True;
  cliStores.Active := True;

end;

procedure TArtworksF.qryStuffcodingAfterInsert(DataSet: TDataSet);
var
  aRange: String;
  rFrom, rTo: Integer;
begin
  inherited;
  if (chkAllGroup.Checked) or (cmbGroups.ItemIndex = -1) then
  begin
    chkAllGroup.Checked := False;
    zbal.Title := '«Œÿ«—';
    zbal.Prompt.Text := '·ÿ›« ﬁ»· «“  ⁄—Ì› ﬂ«·« ÃœÌœ ê—ÊÂ ¬‰—« „‘Œ’ ﬂ‰Ìœ.';
    zbal.Show(cmbGroups);
    Abort;
  end; // if
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2';
    SQL.Add(',acc_CTopicCode3 from StuffGroups where GroupID=' +
      IntToStr(groupID));
    Active := True;
    rFrom := Fields[0].AsInteger;
    rTo := Fields[1].AsInteger;
    TADOQuery(DataSet).FieldByName('acc_CTopicCode').AsInteger :=
      Fields[2].AsInteger;
    TADOQuery(DataSet).FieldByName('acc_CTopicCode2').AsInteger :=
      Fields[3].AsInteger;
    TADOQuery(DataSet).FieldByName('acc_CTopicCode3').AsInteger :=
      Fields[4].AsInteger;
    aRange := format('%d and %d', [rFrom, rTo]);
    Active := False;
    if aRange = ' and ' then
      aRange := '0 and 999999999';
  end; // with
  // DataSet.FieldByName('acc_CTopicCode2').AsInteger:=0;
  DataSet.FieldByName('acc_DetaiCode').AsInteger := 0;
  DataSet.FieldByName('n_UnitCode').AsInteger := 1;
  DataSet.FieldByName('BudgetID').AsInteger := 0;
  DataSet.FieldByName('GroupID').AsInteger := groupID;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  if opt.RecoverPittedCode in [0] then
  begin
    qryStuffcodingc_StuffCode.AsLargeInt :=
      GetANewCode(Self.Name,
      'Select max(c_StuffCode) from Stuffcoding where c_StuffCode between ' +
      aRange + 'and GroupID = ' + IntToStr(groupID), 'c_StuffCode');
  end
  else
    qryStuffcodingc_StuffCode.AsLargeInt := New_RecoverPittedCode(groupID,
      'StuffCode', Self.Name);

  if not((qryStuffcodingc_StuffCode.AsLargeInt >= rFrom) and
    (qryStuffcodingc_StuffCode.AsLargeInt <= rTo)) then
    qryStuffcodingc_StuffCode.AsLargeInt := rFrom;
  DataSet.FieldByName('Carton').Value := 1;
end;

procedure TArtworksF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    groupID := 0
  else
    groupID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  with qryAllStuff do
  begin
    Close;
    Parameters.ParamByName('Groupid').Value := groupID;
    Open;
  end; // with

end;

procedure TArtworksF.srcStuffcodingStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffcoding.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  pnlBtnDetail.Visible := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'stuffcoding', 'c_stuffcode', Self.Name);
end;

procedure TArtworksF.qryStuffcodingAfterPost(DataSet: TDataSet);
var
  StuffCode: Largeint;
begin
  inherited;
  SaveSelect;
  // SaveItems;
  StuffCode := qryStuffcodingc_StuffCode.AsInteger;
  qryAllStuff.Requery();
  if not qryAllStuff.Locate('c_StuffCode', StuffCode, []) then
    qryAllStuff.Last;
  BigMessage('À»  ‘œ.', 1);
  // opt.isUpdateStuffCoding:=True;
end;

procedure TArtworksF.chkAllGroupClick(Sender: TObject);
begin
  inherited;
  if chkAllGroup.Checked then
  begin
    cmbGroups.Enabled := False;
    with qryAllStuff do
    begin
      Active := False;
      Parameters.ParamByName('allgroup').Value := 2147483647;
      Active := True;
    end; // with
  end
  else
  begin
    cmbGroups.Enabled := True;
    with qryAllStuff do
    begin
      Active := False;
      Parameters.ParamByName('allgroup').Value := 0;
      Active := True;
    end; // with
  end; // else
end;

procedure TArtworksF.actSendToExcedlExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryStuffcoding);
end;

procedure TArtworksF.ppImage1Print(Sender: TObject);
begin
  inherited;
  (Sender As TppImage).Picture.Bitmap := imgbook.Bitmap;
end;

procedure TArtworksF.ppLabel12GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TArtworksF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TArtworksF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TArtworksF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffcoding.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryStuffcoding.EnableControls;
  end;
end;

procedure TArtworksF.actSortExecute(Sender: TObject);
begin
  inherited;
  if (chkAllGroup.Checked) or (cmbGroups.ItemIndex = -1) then
  begin
    chkAllGroup.Checked := False;
    zbal.Title := '«Œÿ«—';
    zbal.Prompt.Text := '·ÿ›« ﬁ»· «“ »Â  — Ì» ﬂ—œ‰ ﬂ«·«  ê—ÊÂ ¬‰—« „‘Œ’ ﬂ‰Ìœ.';
    zbal.Show(cmbGroups);
    Exit;
  end; // if
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TArtworksF.N1Click(Sender: TObject);
begin
  inherited;
  qryStuffcoding.Sort := 'Groupid';
end;

procedure TArtworksF.N2Click(Sender: TObject);
begin
  inherited;
  qryStuffcoding.Sort := 'c_StuffName';
end;

procedure TArtworksF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  if cmbGroups.Items.Count > 1 then
  begin
    cmbGroups.DroppedDown := True;
  end;
end;

procedure TArtworksF.qryStuffcodingBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  c_StuffCode := qryStuffcoding.FieldByName('c_StuffCode').AsString;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ«·« „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TArtworksF.qryStuffcodingBeforePost(DataSet: TDataSet);
var
  canpost: Boolean;
begin
  inherited;
  if (qryStuffcoding.State = dsInsert) then
    SaveConfig(APPID, 'ArtWorksF_StuffCode',
      qryStuffcoding.FieldByName('c_StuffCode').AsString);

  if not CheckRequiredFields(qryStuffcoding) then
    Abort;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT GroupID  FROM StuffGroups';
    SQL.Add('WHERE (' + qryStuffcoding.FieldByName('c_StuffCode').AsString);
    SQL.Add('BETWEEN StartCode AND FinishCode) AND (GroupID =' +
      IntToStr(groupID) + ')');
    Active := True;
    canpost := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if canpost then
  begin
    Warn('ﬂœ Ê«—œ ‘œÂ Œ«—Ã «“ „ÕœÊœÂ  ⁄—Ì› ‘œÂ „Ì»«‘œ.˛');
    Abort;
  end; // if

  if not CheckTick then
  begin
    Warn('Õœ«ﬁ· Ìﬂ «‰»«— »«Ìœ «‰ Œ«» ‘Êœ.˛');
    Abort;
  end; // if
  // If DataSet.FieldByName('Carton').AsInteger<=0 then
  // DataSet.FieldByName('Carton').Value:=1;

  c_StuffTecInfoUnic;
end;

procedure TArtworksF.c_StuffTecInfoUnic;
begin
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(c_StuffTecInfo) ';
    SQL.Add('FROM StuffCoding');
    SQL.Add('Where (c_StuffCode <>' + qryStuffcoding.FieldByName('c_StuffCode')
      .AsString + ')');
    SQL.Add('AND c_StuffTecInfo=''' + qryStuffcoding.FieldByName
      ('c_StuffTecInfo').AsString + '''');
    Active := True;
    if Fields[0].AsInteger > 0 then
    begin
      Warn('ﬂœ «À— ' + Fields[0].AsString + '  ò—«—Ì «” ', mtInformation);
    end;
    Active := False;
  end;
end;

procedure TArtworksF.qryStuffcodingAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
  DeleteFile(opt._ArchivePath + c_StuffCode + '.jpg');
  qryAllStuff.Prior;
  c_StuffCode := qryAllStuff.FieldByName('c_StuffCode').AsString;
  qryAllStuff.Requery;
  if not qryAllStuff.Locate('c_StuffCode', c_StuffCode, []) then
    qryAllStuff.Last
end;

procedure TArtworksF.qryStuffcodingAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryStuffcoding.FieldByName('ChangeState').AsInteger := 1;
  if (cmbGroups.ItemIndex = -1) then // or (chkAllGroup.Checked)
  begin
    chkAllGroup.Checked := False;
    zbal.Title := '«Œÿ«—';
    zbal.Prompt.Text := '·ÿ›« ﬁ»· «“ ÊÌ—«Ì‘ ﬂ«·« ê—ÊÂ ¬‰—« „‘Œ’ ﬂ‰Ìœ.';
    zbal.Show(cmbGroups);
    Abort;
  end; // if

end;

procedure TArtworksF.actSearch_Execute(Sender: TObject);
var
  Results: array [0 .. 13] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMF.adcBSell, ' ﬂ«·«Â«  ',
    ' SELECT  GroupID,c_StuffCode, c_StuffName,  PadidAvarndeh, gerdavarndeh, nevisandeh, '
    + ' moalef, motarjem, PakhshCompany, gateketab, noejeldName , chapDate , SellPrice1 ,nasher '
    + ' FROM Aid_StuffCoding ' + 'WHERE     (GroupID = ' + IntToStr(groupID) +
    ')', ['', 'ﬂœ ﬂ «»', '⁄‰Ê«‰ ﬂ «»', 'ÅœÌœ¬Ê—‰œÂ', 'ê—œ¬Ê—‰œÂ', '‰ÊÌ”‰œÂ',
    '„Ê·›', '„ —Ã„', '‘—ﬂ  ÅŒ‘', 'ﬁÿ⁄ ﬂ «»', '‰Ê⁄ Ã·œ', '”«· ç«Å', '»Â«Ì ›—Ê‘',
    '‰«‘—'], Results, [0, 50, 100, 100, 70, 50, 50, 70, 70, 50, 50, 50, 50, 80],
    alLeft) then
  begin
    cmbGroups.ItemIndex := cmbGroups.Items.IndexOfObject
      (TObject(StrToInt(Results[0])));
    cmbGroupsChange(cmbGroups);
    qryAllStuff.Locate('c_StuffCode', Results[1], []);
  end;
  // colTopics0:='òœ';     colTopics1:='‰«„ ﬂ«·«';
  // colTopics2:='„‘Œ’«  ›‰Ì';
  // colWidths0:=50;colWidths1:=100;colWidths2:=100;
  // for i:=1 to 9 do begin
  // colTopicsi+2:=opt.ExtraCoding.Captions[i];
  // if opt.ExtraCoding.Captions[i]<>'' then begin
  // colWidthsi+2:=100;
  // Fields_SD_1_9:=Fields_SD_1_9+',sd'+IntToStr(i);
  // end;
  // end;
  /// /  s:=False;
  // if (chkAllGroup.Checked) or (cmbGroups.ItemIndex=-1) then
  // txt:='select c_StuffCode, c_StuffName ,c_StuffTecInfo '+Fields_SD_1_9+' FROM Stuffcoding  '
  // else
  // txt:='select c_StuffCode, c_StuffName ,c_StuffTecInfo '+Fields_SD_1_9+' FROM Stuffcoding where(GroupID=' +
  // IntToStr(groupID)+ ')';
  // b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,' ﬂ«·«Â«  ',  txt,
  // colTopics,Results,colWidths,alLeft);
  //
  // if b then   qryStuffcoding.Locate('c_StuffCode',Results[0],[]);
end;

procedure TArtworksF.actSearch_StuffCodingAidExecute(Sender: TObject);
var
  Results: array [0 .. 6] of String;
begin
  inherited;
  if special_SearchF.SearchCode(DMF.adcBSell, ' ﬂ«·«Â«  ',
    'SELECT StuffCoding.GroupID, StuffCodingAid.c_StuffCode, StuffCoding.c_StuffName, StuffCodingAid.LookupID,'
    + ' LookUps_1.Name AS LookupName, StuffCodingAid.LookUpDesc, LookUps.Name '
    + 'FROM StuffCodingAid INNER JOIN ' +
    'LookUps ON StuffCodingAid.LookUpDesc = LookUps.LookUpID INNER JOIN ' +
    'LookUps AS LookUps_1 ON StuffCodingAid.LookupID = LookUps_1.LookUpID INNER JOIN '
    + 'StuffCoding ON StuffCodingAid.c_StuffCode = StuffCoding.c_StuffCode ' +
    'WHERE (StuffCodingAid.LookUpDesc <> 0) ', ['', 'ﬂœ ﬂ «»', '⁄‰Ê«‰ ﬂ «»',
    'ﬂœ ‰Ê⁄', '‰Ê⁄', 'ﬂœ «ÿ·«⁄« ', '«ÿ·«⁄« '], Results,
    [0, 128, 152, 65, 80, 50, 80], alLeft, 3) then
  begin
    cmbGroups.ItemIndex := cmbGroups.Items.IndexOfObject
      (TObject(StrToInt(Results[0])));
    cmbGroupsChange(cmbGroups);
    qryAllStuff.Locate('c_StuffCode', Results[1], []);
  end;
end;

procedure TArtworksF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    Exit;
  ToggleStore;
  DataSetEdit1.Execute;
end;

procedure TArtworksF.ArtworksF1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Name);
end;

procedure TArtworksF.qryStuffcodingAfterScroll(DataSet: TDataSet);
var
  flName: String;
begin
  inherited;
  With qryStoreStuffs do
  begin
    Active := False;
    Parameters.ParamByName('c_StuffCode').Value :=
      qryStuffcoding.FieldByName('c_StuffCode').AsString;

    Active := True;
  end;
  with qryStuffCodingAid do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value := TADOQuery(DataSet)
      .FieldByName('c_StuffCode').AsLargeInt;
    Open;

  end;
  with qryLastBuy do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value := TADOQuery(DataSet)
      .FieldByName('c_StuffCode').AsLargeInt;
    Open;

  end;
  flName := opt._ArchivePath + '\' + qryStuffcoding.FieldByName('c_StuffCode')
    .AsString + '.jpg';
  if FileExists(flName) then
  begin
    imgbook.IO.LoadFromFileJpeg(flName);
  end
  else
    imgbook.Clear;

  cliStores.Active := False;
  cliStores.Active := True;
  ReadSelect;
end;

function TArtworksF.CheckTick: Boolean;
begin
  Result := True;
  If not PnlCommunicableStores.Visible then
    Exit;
  Result := False;
  with cliStores do
  begin
    DisableControls;
    First;
    try
      while not eof do
      begin
        Result := cliStores_Checked.AsBoolean;
        if Result then
          Break;
        Next;
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TArtworksF.ToggleStore;
begin
  with cliStores do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TArtworksF.ReadSelect;
begin
  with qryStoreStuffs do
  begin
    try
      DisableControls;
      First;
      while not eof do
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
        Next;
      end; // while
    finally
      cliStores.First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TArtworksF.SaveSelect;
begin
  with qryStoreStuffs do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        delete;
      end; // while
      cliStores.DisableControls;
      cliStores.First;
      while not cliStores.eof do
      begin
        if cliStores_Checked.AsBoolean then
        begin
          Insert;
          FieldByName('c_StuffCode').AsString :=
            qryStuffcoding.FieldByName('c_StuffCode').AsString;
          FieldByName('n_StoreID').AsInteger :=
            cliStores.FieldByName('n_StoreID').AsInteger;
          Post;
        end; // if
        cliStores.Next;
      end; // while
    finally
      // UpdateBatch;
      EnableControls;
      cliStores.First;
      cliStores.EnableControls;
    end; // try
  end; // with

end;

procedure TArtworksF.Btnst1Click(Sender: TObject);
// var
// Results: array [0 .. 1] of String;
// Txt: String;
// b: Boolean;
// T_a_g: Byte;
// Display_Label: String;
begin
  inherited;
  // T_a_g := (Sender as TSpeedButton).Tag;
  // Display_Label := qryStuffcoding.FieldByName('st' + IntToStr(T_a_g))
  // .DisplayLabel;
  // Txt := 'SELECT Code, Name FROM LookUps WHERE Kind = ' + IntToStr(T_a_g + 300);
  // b := searchCode_ADOF.SearchCode2(DMF.adcBSell, Display_Label + 'Â«', Txt,
  // ['ﬂœ', '‰«„ ' + Display_Label], Results, [50, 100], alLeft);
  // if b then
  // begin
  // qryStuffcoding.FieldByName('st' + IntToStr(T_a_g)).AsString := Results[0];
  // end; // if
end;

procedure TArtworksF.edtst2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click
end;

procedure TArtworksF.btnacc_DetaiCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryStuffcoding, 'acc_DetaiCode', '', False)
end;

procedure TArtworksF.btnAddClick(Sender: TObject);
begin
  inherited;
  SaveItems;
end;

procedure TArtworksF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TArtworksF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TArtworksF.FormShow(Sender: TObject);
begin
  inherited;
  if cmbGroups.Items.Count = 1 then
  begin
    Self.ActiveControl := nil;
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end;
end;

procedure TArtworksF.ImageEnIO1FinishWork(Sender: TObject);
begin
  inherited;
  SucImg();
end;

procedure TArtworksF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliStores_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TArtworksF.BitBtn10Click(Sender: TObject);
var
  Results: array [0 .. 30] of String;
begin
  inherited;
  if special_SearchF.SearchCode(DMF.adcBSell, ' ﬂ«·«Â«  ',
    ' SELECT  GroupID,c_StuffCode, c_StuffName,SellPrice1,PakhshCompany,gateketab,noejeldName,chapDate,c_StuffTecInfo, '
    + ' nevisandeh, moalef, motarjem,StanCode, StuffNote,chapNo, tasvirgar,MozoName, '
    + ' Virastar, MoshahaName,  Virayesh,jeldNo, PageNo,nasher,PadidAvarndeh, gerdavarndeh,sd7  '
    + ' FROM Aid_StuffCoding   ', ['', 'ﬂœ ﬂ «»', '⁄‰Ê«‰ ﬂ «»', '»Â«Ì ›—Ê‘',
    '‘—ﬂ  ÅŒ‘', 'ﬁÿ⁄ ﬂ «»', '‰Ê⁄ Ã·œ', '”«· ç«Å', '‘«»ﬂ', '‰ÊÌ”‰œÂ', '„Ê·›',
    '„ —Ã„', 'ﬂœ Œ«’', ' Ê÷ÌÕ«  ÷—Ê—Ì', '‰Ê»  ç«Å', ' ’ÊÌ—ê—', '„Ê÷Ê⁄',
    'ÊÌ—«” «—', '„’ÕÕ', 'ÊÌ—«Ì‘', ' ⁄œ«œ Ã·œ', ' ⁄œ«œ ’›Õ« ', '‰«‘—',
    'ÅœÌœ¬Ê—‰œÂ', 'ê—œ¬Ê—‰œÂ', '«»⁄«œ'], Results, [0, 56, 128, 52, 65, 66, 50,
    30, 76, 50, 50, 50, 34, 61, 33, 42, 50, 45, 38, 24, 37, 41, 50, 50, 50, 50],
    alLeft, 3) then
  begin
    cmbGroups.ItemIndex := cmbGroups.Items.IndexOfObject
      (TObject(StrToInt(Results[0])));
    cmbGroupsChange(cmbGroups);
    qryAllStuff.Locate('c_StuffCode', Results[1], []);
  end;
end;

procedure TArtworksF.ALLLblDblClick(Sender: TObject);
var
  InfoName: String;
  Kind, i: Integer;
begin
  inherited;
  InfoName := (Sender as TLabel).Name;
  InfoName := StringReplace(InfoName, 'Lbl', '', [rfReplaceAll]);
  Kind := StrToInt(InfoName);
  Kind := GetCode(Kind);
  InfoName := get_box('«÷«›Â ﬂ—œ‰ ' + (Sender as TLabel).Caption, '', '');
  if trim(InfoName) = '' then
    Exit;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM LookUps ' + 'WHERE (Name = ''' + InfoName
      + ''') AND (Kind = ' + IntToStr((Kind)) + ') ';
    Active := True;
    if (Fields[0].AsInteger > 0) then
    begin
      Active := False;
      Warn('⁄‰Ê«‰  ﬂ—«—Ì «” .!˛');
      Exit;
    end;
    SQL.Text := 'DECLARE @_LookUpID int ' + 'DECLARE @_Code int ' +
      'set @_LookUpID=(SELECT MAX(LookUpID)FROM LookUps)+1 ' +
      'set @_Code=(SELECT IsNull(MAX(Code),0)FROM LookUps WHERE(Kind = ' +
      IntToStr((Kind)) + '))+1 ' +
      'INSERT INTO LookUps (LookUpID, Kind, Code, Name) ' +
      'VALUES     (@_LookUpID, ' + IntToStr(Kind) + ',@_Code , ''' +
      InfoName + ''')';
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ «÷«›Â ‘œ.˛', 1);
    Active := False;
  end; // with

  for i := 0 to ComponentCount - 1 do
    if Components[i] is TADOQuery then
      if Pos('qrylookupst', Components[i].Name) <> 0 then
        TADOQuery(Components[i]).Requery;
  // TDBLookupComboBox(Self.FindComponent('LookCmb'+IntToStr(Kind-300))).Text:=InfoName;
end;

procedure TArtworksF.qryStuffcodingc_StuffCodeChange(Sender: TField);
begin
  inherited;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Stuffcoding WHERE (c_StuffCode = ' +
      Sender.AsString + ')';
    Active := True;
    if (Fields[0].AsInteger > 0) then
    begin
      Active := False;
      Warn('ﬂœ ﬂ«·«  ﬂ—«—Ì «” .!˛', mtInformation);
      Exit;
    end;
  end;
end;

procedure TArtworksF.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(qryStuffcoding.State in dsEditModes) then
    QuickSearch(Key, qryAllStuff.FieldByName('c_StuffCode'))
end;

procedure TArtworksF.actCopyExecute(Sender: TObject);
var
  Old_StuffCode, c_StuffCode: Largeint;
begin
  inherited;
  BigMessageProgBar('ﬂÅÌ ﬂ«·«Ì ÃœÌœ ...', 0);
  Old_StuffCode := qryStuffcodingc_StuffCode.AsLargeInt;
  c_StuffCode := New_RecoverPittedCode(groupID, 'StuffCode', Self.Name);
  // inc(c_StuffCode);
  With DMF.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'INSERT INTO Stuffcoding';
    SQL.Add('(c_StuffCode, GroupID, c_StuffName, c_StuffTecInfo, n_UnitCode,  c_KeepPlace, BuyPrice, BudgetID,');
    SQL.Add('StandardRate, SellPrice2, SellPrice3, SellPrice4, acc_DetaiCode, acc_CTopicCode, ModifyDate, OperatorID, State, s_s, Carton,');
    SQL.Add('OptimumPoint, acc_CTopicCode2, UnitPriceUseKind, StuffNote, sd1, sd4, sd5, sd6, sd7, sd8, sd9, Control_orderPoint_Entity, StanCode,');
    SQL.Add('OwnerShipKind, Acc_InComeTopicCode, Acc_BidTopicCode, Acc_CommissionTopicCode, Commission, StuffpurePercent, StuffpublicPercent, st1, st2,');
    SQL.Add('st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15 ,ChangeState )');
    SQL.Add('SELECT ' + IntToStr(c_StuffCode) +
      ', GroupID, c_StuffName+''*'', c_StuffTecInfo, n_UnitCode, c_KeepPlace, BuyPrice, BudgetID,');
    SQL.Add('StandardRate, SellPrice2, SellPrice3, SellPrice4, acc_DetaiCode, acc_CTopicCode, ModifyDate, '
      + IntToStr(User.id) + ', State, s_s, Carton,');
    SQL.Add('OptimumPoint, acc_CTopicCode2, UnitPriceUseKind, StuffNote, sd1,sd4, sd5, sd6, sd7, sd8, sd9, Control_orderPoint_Entity, StanCode,');
    SQL.Add('OwnerShipKind, Acc_InComeTopicCode, Acc_BidTopicCode, Acc_CommissionTopicCode, Commission, StuffpurePercent, StuffpublicPercent, st1, st2,');
    SQL.Add('st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15,0');
    SQL.Add('FROM Stuffcoding');
    SQL.Add('WHERE (c_StuffCode = ' + IntToStr(Old_StuffCode) + ')');
    ExecSQL;
    Close;
    SQL.Text := 'INSERT INTO StuffCodingAid';
    SQL.Add('(c_StuffCode, LookupID, LookUpDesc)');
    SQL.Add('SELECT ' + IntToStr(c_StuffCode) + ', LookupID, LookUpDesc');
    SQL.Add('FROM StuffCodingAid AS StuffCodingAid_1');
    SQL.Add('WHERE (c_StuffCode =  ' + IntToStr(Old_StuffCode) + ')');
    ExecSQL

  end;
  if FileExists(opt._ArchivePath + IntToStr(Old_StuffCode) + '.jpg') then
    CopyFile(PChar(opt._ArchivePath + IntToStr(Old_StuffCode) + '.jpg'),
      PChar(opt._ArchivePath + IntToStr(c_StuffCode) + '.jpg'), False);
  qryStuffcoding.Edit;
  qryStuffcoding.FieldByName('ChangeState').AsInteger := 2;
  qryStuffcoding.Post;
  qryAllStuff.Requery;
  if not qryAllStuff.Locate('c_StuffCode', c_StuffCode, []) then
    qryAllStuff.Last;
  SaveConfig(APPID, 'ArtWorksF_StuffCode',
    qryStuffcoding.FieldByName('c_StuffCode').AsString);

  BigMessage('«‰Ã«„ ‘œ', 1);
end;

procedure TArtworksF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TArtworksF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  DefaultSelect;
end;

procedure TArtworksF.DefaultSelect;
begin
  with cliStores do
    try
      DisableControls;
      First;
      while not eof do
      begin
        Edit;
        FieldByName('_Checked').AsBoolean := True;
        Post;
        Next;
      end; // while
    finally
      EnableControls;
    end; // try

end;

procedure TArtworksF.SucImg;
Var
  jpg: TJPEGImage;
  fname: String;
  bmp: TBitmap;
begin
  inherited;
  fname := opt._ArchivePath + qryStuffcoding.FieldByName('c_StuffCode')
    .AsString + '.jpg';

  begin
    jpg := TJPEGImage.Create;
    try
      jpg.Assign(imgbook.Bitmap);
      bmp := TBitmap.Create;
      try
        bmp.Width := _Width;
        bmp.Height := _Height;
        bmp.Canvas.StretchDraw(Rect(0, 0, _Width, _Height), jpg);
        // Self.Canvas.Draw(_Width,_Height, bmp);
        jpg.Assign(bmp);
        jpg.SaveToFile(fname);
      finally
        bmp.Free;
      end;
    finally
      jpg.Free;
    end;
  end;
  imgbook.IO.LoadFromFileJpeg(fname);
end;

procedure TArtworksF.actScanExecute(Sender: TObject);
var
  n: Integer;
begin
  inherited;
  ImageEnIO1.TwainParams.AutoScan := True;
  imgbook.IO.TwainParams.UseMemoryHandle := False;

  imgbook.IO.TwainParams.BufferedTransfer := False;
  imgbook.IO.TwainParams.FileTransfer := True;

  // ImageEnMIO1.TwainParams.BufferedTransfer := True;
  imgbook.Clear;
  ImageEnIO1.TwainParams.SelectedSource := SelectedScanerF.ShowForms
    (ImageEnIO1);
  ImageEnIO1.Acquire()
end;

procedure TArtworksF.srcStuffCodingAidStateChange(Sender: TObject);
begin
  inherited;
  pnlOkDetail.Visible := qryStuffCodingAid.State in dsEditModes;
  pnlNewDetail.Visible := not pnlOkDetail.Visible;
  BtnReject.Cancel := pnlNewDetail.Visible;
end;

procedure TArtworksF.actAttachExecute(Sender: TObject);
var
  S: String;

begin
  inherited;
  with TOpenPictureDialog.Create(Self) do
    try
      Filter := 'JPEG Image File (*.jpg)|*.jpg';
      Execute;
      S := opt._ArchivePath + qryStuffcoding.FieldByName('c_StuffCode')
        .AsString + '.jpg';
      if FileExists(filename) then
      begin
        ResizeJPG(filename, S, _Width, _Height);

        imgbook.IO.LoadFromFile(S);
      end;
    finally
      Free;
    end;
end;

procedure TArtworksF.DBGrid2EditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  if qryStuffCodingAid.FieldByName('LookupID').AsInteger = 0 then
  begin
    Warn('‰Ê⁄ «ÿ·«⁄«  —« „‘Œ’ ﬂ‰Ìœ');
    FlashAControl(DBLookupComboBox1);
    Exit;
  end;
  If DBGrid2.SelectedIndex = 1 then
  begin
    Txt := format('SELECT LookUpID, Name FROM  LookUps WHERE (KIND = %D)',
      [qryStuffCodingAid.FieldByName('LookupID').AsInteger]);
    if searchCode_ADOF.SearchCode2(DMF.adcBSell, '«ÿ·«⁄« ', Txt,
      ['ﬂœ', '⁄‰Ê«‰'], Results, [50, 100], alLeft) then
    begin
      if not(qryStuffCodingAid.State in dsEditModes) then
        qryStuffCodingAid.Edit;
      qryStuffCodingAid.FieldByName('LookUpDesc').AsString := Results[0];
      qryStuffCodingAid.Post;
    end;

  End;
end;

procedure TArtworksF.qryStuffCodingAidAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryStuffCodingAid.FieldByName('c_StuffCode').AsString :=
    qryStuffcoding.FieldByName('c_StuffCode').AsString;
end;

procedure TArtworksF.qryStuffCodingAidBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TArtworksF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    DBGrid2EditButtonClick(Sender);
end;

procedure TArtworksF.actDelimgExecute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø') = mrYes then
  begin
    DeleteFile(opt._ArchivePath + qryStuffcoding.FieldByName('c_StuffCode')
      .AsString + '.jpg');
    imgbook.Clear;
  end;
end;

procedure TArtworksF.N4Click(Sender: TObject);
var
  dlgSave: TSaveDialog;
  archiver: TZipForge;
begin
  inherited;
  archiver := TZipForge.Create(Self);
  dlgSave := TSaveDialog.Create(Self);
  dlgSave.Filter := 'ZipName|.Zip';
  try
    if dlgSave.Execute then
      with archiver do
        try
          BigMessage('œ— Õ«·  ÂÌÂ ›«Ì· Zip', 0);
          filename := dlgSave.filename + '.zip';
          OpenArchive(fmCreate);
          Options.StorePath := spNoPath;
          AddFiles(opt._ArchivePath + '*.*');
          CloseArchive();
        except
          on E: Exception do
          begin
            Writeln('Exception: ', E.Message);
            Readln;
          end;
        end;
  finally
    CloseMessage;
    dlgSave.Free;
    archiver.Free;
  end;

end;

procedure TArtworksF.qryStuffCodingAidAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryStuffcoding.Edit;
  qryStuffcoding.Post;
end;

procedure TArtworksF.qryAllStuffAfterOpen(DataSet: TDataSet);
var
  c_StuffCode: Largeint;
begin
  inherited;
  c_StuffCode := StrToInt64(ReadConfig(APPID, 'ArtWorksF_StuffCode', '0'));
  if c_StuffCode <> 0 then
  begin
    if not qryAllStuff.Locate('c_StuffCode', c_StuffCode, []) then
      qryAllStuff.Last
  end
  else
    qryAllStuff.Last

end;

procedure TArtworksF.qryAllStuffAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryStuffcoding do
  begin
    Close;
    Parameters.ParamByName('Stuff').Value := TADOQuery(DataSet)
      .FieldByName('c_StuffCode').AsLargeInt;
    Open;
  end;
end;

procedure TArtworksF.SaveItems;
var
  i, ST: Integer;
  LookUpID: Integer;
  StuffID: Largeint;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := DMF.adcBSell;
      for i := 301 to 310 do
      begin
        ST := qryStuffcoding.FieldByName('st' + IntToStr(i - 300)).AsInteger;
        StuffID := qryStuffcodingc_StuffCode.AsLargeInt;
        if ST <> 0 then
        begin
          Close;
          SQL.Text :=
            format('SELECT LookUpID FROM LookUps WHERE (Code = %d) AND (Kind = %d)',
            [ST, i]);
          Open;
          LookUpID := Fields[0].AsInteger;
          Close;
          SQL.Text := 'if (SELECT COUNT(*) FROM StuffCodingAid' +
            ' WHERE (c_StuffCode = ' + IntToStr(StuffID) + ') AND (LookupID = '
            + IntToStr(i) + ') AND (LookUpDesc = ' + IntToStr(LookUpID) +
            '))= 0' + ' INSERT INTO StuffCodingAid (c_StuffCode, LookupID, LookUpDesc)'
            + ' SELECT ' + IntToStr(StuffID) + ',' + IntToStr(i) + ',' +
            IntToStr(LookUpID);
          ExecSQL();
        end;
      end;
    finally
      Free;
      qryStuffCodingAid.Requery();
    end;
end;

end.
