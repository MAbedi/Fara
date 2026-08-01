unit Amval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, DBCtrls, ADODB, Grids, Vcl.DBGrids, SumDBGrid, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppBands, ppComm,
  ppRelatv, ppProd, ppReport, Menus, ppParameter, SMSUnit, ComCtrls, Types,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TAmvalF = class(Ttemplate2MDIF)
    qryAmval: TADOQuery;
    qryAmvalSerialNum: TIntegerField;
    qryAmvalFormNum: TIntegerField;
    qryAmvalFormDate: TStringField;
    qryAmvalOwnerType: TIntegerField;
    qryAmvalStuffDesc: TStringField;
    qryAmvalUnitCode: TIntegerField;
    qryAmvalAsstetsGrpCode: TIntegerField;
    qryAmvalAssetsValue: TBCDField;
    qryAmvalEsqValue: TBCDField;
    qryAmvalAmount: TIntegerField;
    qryAmvalTaxGrpCode: TIntegerField;
    qryAmvalTaxID: TIntegerField;
    qryAmvalDepMode: TWordField;
    qryAmvalDepValue: TIntegerField;
    qryAmvalPelakNum: TStringField;
    qryAmvalLastPelakNum: TStringField;
    qryAmvalAccTopicCode: TLargeintField;
    qryAmvalAccDetailCode: TIntegerField;
    qryAmvalAccCTopicCode: TIntegerField;
    qryAmvalAccCTopicCode2: TIntegerField;
    qryAmvalAccCTopicCode3: TIntegerField;
    qryAmvalInvoiceNum: TIntegerField;
    qryAmvalInvoiceDate: TStringField;
    qryAmvalSellerNote: TStringField;
    qryAmvalSellerTopicCode: TLargeintField;
    qryAmvalSellerDetailCode: TIntegerField;
    qryAmvalSellerCTopicCode: TIntegerField;
    qryAmvalStartUsingDate: TStringField;
    qryAmvalDocNum: TIntegerField;
    qryAmvalDocDate: TStringField;
    qryAmvalExpCode: TIntegerField;
    qryAmvalPlaceCode: TIntegerField;
    qryAmvalUserCode: TIntegerField;
    qryAmvalAmvalState: TWordField;
    srcAmval: TDataSource;
    qryCalc: TADOQuery;
    srcCalc: TDataSource;
    actNote: TAction;
    qryUser: TADOQuery;
    qryAmval_UserName: TStringField;
    qryPlace: TADOQuery;
    qryAmval_PlaceName: TStringField;
    qryAccCtopics: TADOQuery;
    qryAmval_ExpName: TStringField;
    BitBtn7: TBitBtn;
    qryAmval_MoeenName: TStringField;
    qryAmval_DetailName: TStringField;
    qryAmval_CtopicName: TStringField;
    qryAssetsGroups: TADOQuery;
    qryAmval_AssetsName: TStringField;
    qryAccTopics: TADOQuery;
    qryAmval_AccCodeName: TStringField;
    qryAmval_DetailName2: TStringField;
    qryTax: TADOQuery;
    qryAmval_CTopic2Name: TStringField;
    qryAmval_Ctopic3Name: TStringField;
    actPostMany: TAction;
    actScan: TAction;
    qryAllAmval: TADOQuery;
    DBNavigator1: TDBNavigator;
    srcAllAmval: TDataSource;
    ppReport1: TppReport;
    ppDBAmval: TppDBPipeline;
    actPrint: TAction;
    BitBtn8: TBitBtn;
    qryAmvalFirstDepValue: TBCDField;
    qryAmvalDepvalueInYear: TBCDField;
    actOtherInfo: TAction;
    BitBtn10: TBitBtn;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actAid: TAction;
    qryAmval_CtopicName2: TStringField;
    dbtxtAmvalState: TDBText;
    N3: TMenuItem;
    qryAmvalWarrantyDate: TStringField;
    qryAmvalMasterSerial: TIntegerField;
    qryTaxTaxGrpCode: TIntegerField;
    qryTaxTaxID: TIntegerField;
    qryTaxTaxTitle: TStringField;
    qryTaxTaxCalculateName: TStringField;
    qryTaxDepValue: TIntegerField;
    qryTaxDepMode: TWordField;
    qryCalcrow: TIntegerField;
    qryCalcName: TStringField;
    qryCalcAssetsValue: TBCDField;
    qryCalcFirstDepValue: TBCDField;
    qryCalcDepvalueInYear: TBCDField;
    qryCalcPurePrice: TBCDField;
    N4: TMenuItem;
    qryAmvalKeeperCode: TIntegerField;
    qryAssetsKeeper: TADOQuery;
    qryAmval_KeeperMobile: TStringField;
    Excel1: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    LblCurrentDate2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    pplblYearId: TppLabel;
    qryAmval_KeeperName: TStringField;
    qryIncSpecial_UsersMobile: TStringField;
    qryAmvalStartWarrantyDate: TStringField;
    strngfldAmvalComments: TStringField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl1: TPanel;
    pnl2: TPanel;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    bvl4: TBevel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lblUnit: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btnTaxGrpCode: TSpeedButton;
    btnTaxID: TSpeedButton;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    btnAccTopicCode: TSpeedButton;
    lblTax: TLabel;
    lbl16: TLabel;
    btnAsstetsGrpCode: TSpeedButton;
    bvl5: TBevel;
    btnKeeperCode: TSpeedButton;
    btnUserCode: TSpeedButton;
    btnPlaceCode: TSpeedButton;
    btnExpCode: TSpeedButton;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl1: TLabel;
    edtAssetsValue: TDBEdit;
    edtEsqValue: TDBEdit;
    edtTaxGrpCode: TDBEdit;
    edtTaxID: TDBEdit;
    edtDepValue: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    edtPelakNum: TDBEdit;
    edtLastPelakNum: TDBEdit;
    grp1: TGroupBox;
    lbl21: TLabel;
    lbl22: TLabel;
    btnSellerTopicCode: TSpeedButton;
    lbl23: TLabel;
    btnSellerDetailCode: TSpeedButton;
    lbl24: TLabel;
    lbl25: TLabel;
    btnSellerCTopicCode: TSpeedButton;
    lbl26: TLabel;
    edtInvoiceNum: TDBEdit;
    edtSellerTopicCode: TDBEdit;
    DBEdit18: TDBEdit;
    edtSellerDetailCode: TDBEdit;
    edtInvoiceDate: TDBEdit;
    DBEdit21: TDBEdit;
    edtSellerCTopicCode: TDBEdit;
    DBEdit23: TDBEdit;
    edtSellerNote: TDBEdit;
    edtStartUsingDate: TDBEdit;
    edtDocNum: TDBEdit;
    edtDocDate: TDBEdit;
    edtAccTopicCode: TDBEdit;
    DBEdit29: TDBEdit;
    lbl27: TLabel;
    btnAccDetailCode: TSpeedButton;
    btn1: TSpeedButton;
    edtAccDetailCode: TDBEdit;
    DBEdit31: TDBEdit;
    pnl3: TPanel;
    scrlbx1: TScrollBox;
    grp2: TGroupBox;
    btnMasterSerial: TSpeedButton;
    DBEdit38: TDBEdit;
    grp3: TGroupBox;
    edtFirstDepValue: TDBEdit;
    grp4: TGroupBox;
    edtWarrantyDate: TDBEdit;
    grp5: TGroupBox;
    edtStartWarrantyDate: TDBEdit;
    pnl4: TPanel;
    DBGrid1: TDBGrid;
    smgrd1: TSumGrid;
    cmbUnitCode: TDBComboBox;
    cmbOwnerType: TDBComboBox;
    cmbDepMode: TDBComboBox;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit39: TDBEdit;
    edtExpCode: TDBEdit;
    edtKeeperCode: TDBEdit;
    edtUserCode: TDBEdit;
    edtPlaceCode: TDBEdit;
    edtAmount: TDBEdit;
    pnl5: TPanel;
    lbl28: TLabel;
    lbl29: TLabel;
    edtFormDate: TDBEdit;
    edtFormNum: TDBEdit;
    pnl6: TPanel;
    newPanel: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    okPanel: TPanel;
    btnDataSetPost1: TBitBtn;
    btn5: TBitBtn;
    btnPostMany: TBitBtn;
    srcCardex: TDataSource;
    DBGrid2: TDBGrid;
    qryCardex: TADOQuery;
    actPrintCardex: TAction;
    actSearch2: TAction;
    actReceiveExcel: TAction;
    actSendToExcel: TAction;
    qryCardexYearid: TIntegerField;
    qryCardexTablename: TStringField;
    qryCardexFirstDepValue: TBCDField;
    qryCardexDepvalueInyear: TBCDField;
    grpAidFeild: TGroupBox;
    lblAidField1: TLabel;
    qryAmvalAidField1: TWideStringField;
    qryAmvalAidField2: TWideStringField;
    edtAidField1: TDBEdit;
    edtAidField2: TDBEdit;
    lblAidField2: TLabel;
    mnudepvalue1: TMenuItem;
    actReciptItems: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    popPrint: TPopupMenu;
    N7: TMenuItem;
    N21: TMenuItem;
    qryAmvalReciptItemsID: TLargeintField;
    plnCalc: TppDBPipeline;
    qryAmvalSellsEmporium: TIntegerField;
    Label1: TLabel;
    cmbSellsEmporium: TDBComboBox;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    qryColors: TADOQuery;
    qryAmvalColorID: TIntegerField;
    qryAmval_ColorID: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    qryAmvalFirstUser: TStringField;
    qryAmvalLastUser: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryAmvalAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbDepModeChange(Sender: TObject);
    procedure qryAmvalDepModeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAmvalDepModeSetText(Sender: TField; const Text: String);
    procedure qryAmvalAmvalStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAmvalAfterInsert(DataSet: TDataSet);
    procedure btnUserCodeClick(Sender: TObject);
    procedure btnPlaceCodeClick(Sender: TObject);
    procedure srcAmvalStateChange(Sender: TObject);
    procedure qryAmvalAfterPost(DataSet: TDataSet);
    procedure qryAmvalBeforeDelete(DataSet: TDataSet);
    procedure qryAmvalBeforePost(DataSet: TDataSet);
    procedure qryAmvalBeforeEdit(DataSet: TDataSet);
    procedure btnExpCodeClick(Sender: TObject);
    procedure btnSellerTopicCodeClick(Sender: TObject);
    procedure btnSellerDetailCodeClick(Sender: TObject);
    procedure btnSellerCTopicCodeClick(Sender: TObject);
    procedure btnAsstetsGrpCodeClick(Sender: TObject);
    procedure btnAccTopicCodeClick(Sender: TObject);
    procedure btnTaxGrpCodeClick(Sender: TObject);
    procedure btnTaxIDClick(Sender: TObject);
    procedure edtTaxGrpCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryAmvalTaxGrpCodeChange(Sender: TField);
    procedure btn1Click(Sender: TObject);
    procedure actPostManyExecute(Sender: TObject);
    procedure actScanExecute(Sender: TObject);
    procedure edtTaxGrpCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure qryAllAmvalAfterScroll(DataSet: TDataSet);
    procedure qryAmvalAfterDelete(DataSet: TDataSet);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actAidExecute(Sender: TObject);
    procedure actOtherInfoExecute(Sender: TObject);
    procedure qryAmvalAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAmvalInvoiceDateChange(Sender: TField);
    procedure N3Click(Sender: TObject);
    procedure btnMasterSerialClick(Sender: TObject);
    procedure ppLabel25GetText(Sender: TObject; var Text: String);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure btnKeeperCodeClick(Sender: TObject);
    // procedure qryAmvalPelakNumGetText(Sender: TField; var Text: String;
    // DisplayText: Boolean);
    procedure btnAccDetailCodeClick(Sender: TObject);
    procedure pplblYearIdGetText(Sender: TObject; var Text: string);
    procedure lblTaxClick(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure mnudepvalueClick(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure actPrintCardexExecute(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actReceiveExcelExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure actReciptItemsExecute(Sender: TObject);
    procedure AllClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure actSearch_2Execute(Sender: TObject);
    procedure qryAmvalAfterEdit(DataSet: TDataSet);
  private
    CheckPelak: Boolean;
    SerialType: Byte;
    SerialPelak: Byte;
    Procedure InitCombo;
    procedure SetReadOnlyEdit;
    function CanChange(Sn: Cardinal): Boolean;
    procedure ChangeAidFieldCaption(AidFieldCaption: string);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  AmvalF: TAmvalF;

implementation

uses Dm, GlobalPro, searchCode_ADO, mmessage, StrUtils, Note,
  Account, ScanImage, AidAssets, GetExcel, FaraConsts, FormFunctions,
  EditFirstDep, GeneralDM, AmvalCal, RecallRecipts2Assets;
{$R *.dfm}

procedure TAmvalF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to opt.RequiredFields.Count - 1 do
  begin
    if qryAmval.FindField(opt.RequiredFields[i]) <> nil then
      qryAmval.FieldByName(opt.RequiredFields[i]).Required := True;

    if qryAmval.FindField('_' + opt.RequiredFields[i]) <> nil then
      qryAmval.FieldByName('_' + opt.RequiredFields[i]).Required := True;
  end;

  InitCombo;
  SetLookUpCash(qryAmval);
  qryAllAmval.Open;
  if var_glb_gParam <> 0 then
  begin
    with qryAmval do
    begin
      Close;
      Parameters.ParamByName('sn').Value := var_glb_gParam;
      Open;
    end; // with
  end
  else
    qryAllAmval.Last;
  with Dmf.qry_TempAss do
  begin
    Active := False;
    SQL.Text :=
      'SELECT SerialNumType,SerialPelak,AidFieldCaption FROM Assets.Config';
    Active := True;
    SerialType := FieldByName('SerialNumType').AsInteger;
    SerialPelak := FieldByName('SerialPelak').AsInteger;
    ChangeAidFieldCaption(Trim(FieldByName('AidFieldCaption').AsString));
    Active := False;
  end;
  edtAmount.Visible := opt.ShowAmount;
  lbl1.Visible := edtAmount.Visible;
  edtFirstDepValue.ReadOnly := opt.LevelAccess >= User.level;
  edtFirstDepValue.TabStop := not edtFirstDepValue.ReadOnly;

end;

procedure TAmvalF.qryAmvalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCalc do
  begin
    Close;
    Parameters.ParamByName('Sn').Value := DataSet.FieldByName('SerialNum')
      .AsInteger;
    Parameters.ParamByName('yearid').Value := APPBank.Year;
    Open;
  end;
  SetReadOnlyEdit;

end;

procedure TAmvalF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TAmvalF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TAmvalF.InitCombo;
begin
  CheckPelak := True;
  cmbUnitCode.Clear;
  cmbOwnerType.Clear;
  cmbSellsEmporium.Clear;
  with TADOQuery.Create(nil) do
    try
      Connection := Dmf.adcBSell;
      SQL.Text := 'SELECT unitCode, unitName FROM Units';
      SQL.Add('ORDER BY unitCode');
      Open;
      while not Eof do
      begin
        cmbUnitCode.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
      Close;
      SQL.Text := 'SELECT OwnerType, TypeName FROM Assets.OwnerType';
      SQL.Add('ORDER BY OwnerType');
      Open;
      while not Eof do
      begin
        cmbOwnerType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
      Close;
      SQL.Text := 'SELECT SellsEmporium, SellsEmporiumName FROM SellsEmporiums';
      Open;
      while not Eof do
      begin
        cmbSellsEmporium.AddItem(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Free;
    end;

end;

procedure TAmvalF.lblTaxClick(Sender: TObject);
begin
  inherited;
  lblTax.Hint := lblTax.Caption
end;

procedure TAmvalF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  Text := cmb.Items[cmb.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TAmvalF.ALLSetText(Sender: TField; const Text: String);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  Sender.AsInteger := Integer(cmb.Items.Objects[cmb.ItemIndex]);
end;

procedure TAmvalF.cmbDepModeChange(Sender: TObject);
begin
  inherited;
  case (Sender as TDBComboBox).ItemIndex of
    0, 7:
      lblUnit.Caption := 'سال';
    1:
      lblUnit.Caption := 'درصد';
  end;
end;

procedure TAmvalF.qryAmvalDepModeGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := cmbDepMode.Items[Sender.AsInteger]
end;

procedure TAmvalF.qryAmvalDepModeSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbDepMode.ItemIndex
end;

procedure TAmvalF.qryAmvalAmvalStateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'موقت';
    1:
      Text := 'قطعي';
    2:
      Text := 'نهايي';
  end; // case
end;

procedure TAmvalF.qryAmvalAfterInsert(DataSet: TDataSet);
var
  i: Byte;
  SerialNum, FormNum: Integer;
begin
  inherited;
  SetReadOnlyEdit;
  for i := 0 to DataSet.FieldCount - 1 do
    if (DataSet.Fields[i] is TNumericField) then
      DataSet.Fields[i].AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := GetUserStamp;
  DataSet.FieldByName('Amount').AsInteger := 1;
  // DataSet.FieldByName('SerialNum').AsInteger :=
  // GetANewCode('Assets.Amval', 'SerialNum');
  SerialNum := GetANewCode(Self.name,
    Format('select max(SerialNum) from Assets.Amval where (SerialNum BETWEEN %d AND %d)',
    [opt.StartLimitIDass, opt.EndLimitIDAss]), 'SerialNum');
  if SerialNum < opt.StartLimitIDass then
    DataSet.FieldByName('SerialNum').AsInteger := opt.StartLimitIDass
  else
    DataSet.FieldByName('SerialNum').AsInteger := SerialNum;

  // DataSet.FieldByName('FormNum').AsInteger := GetANewCode('Assets.Amval',
  // 'FormNum');
  FormNum := GetANewCode(Self.name,
    Format('select max(FormNum) from Assets.Amval where (FormNum BETWEEN %d AND %d)',
    [opt.StartLimitIDass, opt.EndLimitIDAss]), 'FormNum');
  if FormNum < opt.StartLimitIDass then
    DataSet.FieldByName('FormNum').AsInteger := opt.StartLimitIDass
  else
    DataSet.FieldByName('FormNum').AsInteger := FormNum;

  DataSet.FieldByName('EsqValue').AsInteger := 1;
  DataSet.FieldByName('OwnerType').AsInteger := 0;

  DataSet.FieldByName('FormDate').AsString :=
    IfThen(var_glb_CurrentDate < APPBank.endYear, var_glb_CurrentDate,
    APPBank.endYear);
  // DataSet.FieldByName('OwnerType').AsInteger:= 0;
  // DataSet.FieldByName('DepMode').AsInteger  := 0;
  // DataSet.FieldByName('UnitCode').AsInteger := 0;
  lblTax.Caption := EmptyStr;
  edtFormNum.SetFocus;
  actSmsSend.HelpContext := 1;
end;

procedure TAmvalF.btnUserCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'استفاده‌كنندگان كالا',
    'SELECT UserID, UserName FROM Assets.Users ', ['كد ', 'نام'], Result,
    [50, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('UserCode').AsString := Result[0];
  end; // if
end;

procedure TAmvalF.btnPlaceCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي محل استقرار',
    'SELECT  PlaceCode, PlaceName FROM  Assets.Places', ['كد ', 'نام'], Result,
    [50, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('PlaceCode').AsString := Result[0];
  end; // if
end;

procedure TAmvalF.srcAmvalStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(Dmf.adcBSell);
  okPanel.Visible := qryAmval.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;

end;

procedure TAmvalF.qryAmvalAfterPost(DataSet: TDataSet);
var
  Sn: Int64;
  // b: Boolean;
begin
  inherited;
  Sn := DataSet.FieldByName('SerialNum').AsInteger;
  BigMessage('سریال' + Sn.ToString + 'ثبت شد.', 1);
  // b := DataSet.FieldByName('SerialNum').OldValue <>    DataSet.FieldByName('SerialNum').NewValue;
  Dmf.AmvalCal(opt.BaseDate, Sn);
  qryAllAmval.Requery;
  qryAllAmval.Locate('SerialNum', Sn, []);
  if actSmsSend.HelpContext = 1 then
  begin
    actSmsSend.HelpContext := 0;
    actSmsSend.Execute;
  end;
end;

procedure TAmvalF.qryAmvalBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with TADOQuery.Create(Self) do
    try
      Connection := Dmf.adcBSell;
      SQL.Text :=
        Format('SELECT Count(SerialNum) FROM Assets.Amval  WHERE MasterSerial=%d ',
        [DataSet.FieldByName('SerialNum').AsInteger]);
      Open;
      if (Fields[0].AsInteger > 0) then
      begin
        Warn('به اين كارت دارايي اجزاء متصل است.‏' + #13 +
          'مجاز به حذف نمي باشيد.');
        Abort;
      end;
    finally
      Free;
    end;

  if CanChange(qryAmval.FieldByName('SerialNum').AsInteger) then
  begin
    Warn('مجاز به حذف نيستيد');
    Abort;
  end; // if
  if get_response('آيا براي حذف كامل اطلاعات اين دارايي مطمئن هستيد؟') <> mrYes
  then
    Abort;
end;

function TAmvalF.CanChange(Sn: Cardinal): Boolean;
begin
  with Dmf.qry_TempAss do
  begin
    Close;
    SQL.Text := Format('Select * from Assets.amval where SerialNum=%d', [Sn]);
    Open;
    Result := FieldByName('AmvalState').AsInteger > 0;
    Active := False;
  end; // with
end;

procedure TAmvalF.ChangeAidFieldCaption(AidFieldCaption: string);
var
  strArray: TStringDynArray;
begin
  if AidFieldCaption <> EmptyStr then
  begin

    strArray := SplitString(Trim(AidFieldCaption), #13);
    lblAidField1.Caption := Trim(strArray[0]);
    lblAidField2.Caption := Trim(strArray[1]);
    lblAidField2.Visible := Length(strArray) > 1;
    edtAidField2.Visible := lblAidField2.Visible;
    grpAidFeild.Visible := True;
  end;
end;

procedure TAmvalF.qryAmvalBeforePost(DataSet: TDataSet);
var
  qry: TADOQuery;
  Old, new: string;
begin
  inherited;
  if not CheckLimitID(DataSet.FieldByName('SerialNum')) then
    Abort;
  if not CheckLimitID(DataSet.FieldByName('FormNum')) then
    Abort;

  if (DataSet.FieldByName('DepMode').AsInteger in [0, 1]) and
    (qryAmval.FieldByName('DepValue').AsInteger = 0) then
  begin
    Warn('نرخ استهلاك وارد نشده است.‏');
    Abort;
  end;
  if DataSet.FieldByName('StuffDesc').AsString = EmptyStr then
  begin
    Warn('نام كالا وارد نشده است.‏‏‏');
    FlashAControl(DBEdit3);
    Abort;
  end;
  if DataSet.FieldByName('InvoiceDate').AsString = EmptyStr then
  begin
    Warn('تاريخ خريد وارد نشده است.‏‏');
    FlashAControl(edtInvoiceDate);
    Abort;
  end;

  if DataSet.FieldByName('InvoiceDate').AsString > DataSet.FieldByName
    ('StartUsingDate').AsString then
  begin
    Warn('تاريخ  بهره برداري بايد بزرگتر از تاريخ خريد باشد.‏');
    FlashAControl(edtInvoiceDate);
    Abort;
  end;
  if ((DataSet.FieldByName('DocDate').AsString) > '0001/01/01') then
    if (DataSet.FieldByName('InvoiceDate').AsString >
      DataSet.FieldByName('DocDate').AsString) then
    begin
      Warn('تاريخ  سند بايد بزرگتر از تاريخ خريد باشد.‏');
      FlashAControl(edtDocDate);
      Abort;
    end;

  if DataSet.FieldByName('MasterSerial').AsInteger = DataSet.FieldByName
    ('SerialNum').AsInteger then
  begin
    Warn('سريال كارت اصلي نمي تواند با سريال برابر باشد');
    FlashAControl(DBEdit38);
    Abort;
  end;

  if DataSet.FieldByName('FormDate').AsString < DataSet.FieldByName
    ('InvoiceDate').AsString then
  begin
    Warn('تاريخ فرم بايد بزرگتر از تاريخ خريد باشد. ');
    FlashAControl(edtFormDate);
    Abort;
  end;

  if Trim(DataSet.FieldByName('WarrantyDate').AsString) <
    Trim(DataSet.FieldByName('StartWarrantyDate').AsString) then
  begin
    Warn('تاريخ شروع و پايان گارانتي اصلاح شود');
    FlashAControl(edtStartWarrantyDate);
    Abort;
  end;

  if not ValidateDatasetDates(qryAmval) then
    Abort;
  if not CheckRequiredFields(qryAmval) then
    Abort;
  TrimStringFields(qryAmval);
  Dmf.CalculateDepress(DataSet.FieldByName('SerialNum').AsInteger);
  if (SerialType = 1) and (DataSet.FieldByName('PelakNum').AsString = EmptyStr)
  then
  begin
    With Dmf.qry_TempAss do
      try
        Active := False;
        SQL.Text := '';
        SQL.Add('DECLARE @i int');

        SQL.Add('SELECT @i=( ISNULL( MAX(LEN(Assets.Amval.PelakNum)),0)-ISNULL(MAX(LEN(Assets.AssetsGroups.PrefixPelak)),0) )');
        SQL.Add('FROM Assets.Amval INNER JOIN Assets.AssetsGroups ON Assets.Amval.AsstetsGrpCode = Assets.AssetsGroups.AsstetsGrpCode');
        SQL.Add(Format('WHERE (Assets.Amval.AsstetsGrpCode = %d )',
          [DataSet.FieldByName('AsstetsGrpCode').AsInteger]));

        SQL.Add('SELECT MAX(Assets.AssetsGroups.PrefixPelak) +');
        SQL.Add('RIGHT( ''00000000000'' + LTRIM( STR( MAX( REPLACE (Assets.Amval.PelakNum,Assets.AssetsGroups.PrefixPelak,''''))+1)) ,');
        SQL.Add('case when len(ltrim(max(replace(Assets.Amval.PelakNum,Assets.AssetsGroups.PrefixPelak,''''))+1))>@i then len(ltrim(max(replace(Assets.Amval.PelakNum,Assets.AssetsGroups.PrefixPelak,''''))+1)) else @i end ) As PelakNum');

        SQL.Add('From Assets.Amval INNER JOIN Assets.AssetsGroups ON Assets.Amval.AsstetsGrpCode = Assets.AssetsGroups.AsstetsGrpCode');
        SQL.Add(Format('WHERE (Assets.Amval.AsstetsGrpCode = %d )',
          [DataSet.FieldByName('AsstetsGrpCode').AsInteger]));

        Active := True;

        qryAmval.FieldByName('PelakNum').AsString :=
          Dmf.qry_TempAss.FieldByName('PelakNum').AsString;
        Active := False;
      except
        on E: Exception do
        begin
          add2log(E.Message);
          Warn('اشكال در ثبت شماره پلاك به علت پيشوند اشتباه يا عدم ثبت اولين پلاك گروه جاري انتخاب شده');
        end;

      end;
  end;

  if CheckPelak then
  begin
    qry := TADOQuery.Create(Self);
    with qry do
      try
        Connection := Dmf.adcBSell;
        Old := VarToStr(DataSet.FieldByName('SerialNum').OldValue);
        Old := IfThen(Old = EmptyStr, '0', Old);
        new := VarToStr(DataSet.FieldByName('SerialNum').NewValue);
        new := IfThen(new = EmptyStr, '0', new);
        SQL.Text :=
          Format('SELECT Count(*) As Conte FROM Assets.Amval  WHERE PelakNum=%s and SerialNum not in (%s,%s)',
          [QuotedStr(DataSet.FieldByName('PelakNum').AsString), Old, new]);
        Open;
        if (FieldByName('Conte').AsInteger > 0) and
          (DataSet.FieldByName('PelakNum').AsString <> EmptyStr) then
        begin
          Warn('شماره پلاك تكراري است.‏');
          edtPelakNum.SetFocus;
          Abort;
        end;
      finally
        Free;
      end;
  end;
end;

procedure TAmvalF.qryAmvalBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  case DataSet.FieldByName('AmvalState').AsInteger of
    1:
      SetReadOnlyEdit;
    2:
      begin
        // if CanChange(qryAmval.fieldbyname('SerialNum').AsInteger) then
        // begin
        Warn('مجاز به ويرايش نيستيد');
        Abort;
        // end;//if
      end;
  end;

end;

procedure TAmvalF.btnExpCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي مراكز هزينه',
    'SELECT ExpCode, ExpDesc FROM  Assets.AccCtopics ', ['كد ', 'نام'], Result,
    [50, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('ExpCode').AsString := Result[0];
  end; // if
end;

procedure TAmvalF.actSearch2Execute(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    ' SELECT DISTINCT DepTable.Serial,Amval.StuffDesc' +
    ' from Assets.DepTable as DepTable inner join ' +
    ' Assets.Amval as Amval On DepTable.Serial = Amval.SerialNum',
    ['شماره سريال ', 'نام اموال'], Result, [60, 150], alLeft) then
  begin
    // qryCardex.Locate('Serial', Result[0], []);
    qryAllAmval.Locate('SerialNum', Result[0], []);
    qryCardex.Close;
    qryCardex.Parameters.ParamByName('Serial').Value := Result[0];
    qryCardex.Open;

  end;
end;

procedure TAmvalF.actSearch_2Execute(Sender: TObject);
var
  Result: array [0 .. 10] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    'SELECT Amval.SerialNum, Amval.PelakNum, Amval.StuffDesc,  ' +
    ' AssetsGroups.AsstetsGrpCode, AssetsGroups.GrpName,' +
    ' Amval.AssetsValue, Amval.DocNum,Amval.DocDate ,Amval.InvoiceNum ,Amval.LastPelakNum '
    + ' FROM Assets.Amval as  Amval LEFT OUTER JOIN' +
    ' Assets.AssetsGroups as AssetsGroups ON Amval.AsstetsGrpCode =  ' +
    ' AssetsGroups.AsstetsGrpCode', ['شماره سريال ', 'شماره پلاك', 'نام كالا',
    'كد گروه', 'عنوان گروه', 'ارزش دارايي', 'شماره سند', 'تاريخ سند',
    'شماره فاكتور', 'پلاك قبلي'], Result, [60, 60, 150, 60, 100, 60, 50, 60, 60,
    60], alLeft) then
    qryAllAmval.Locate('SerialNum', Result[0], []);

end;

procedure TAmvalF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryAmval);
end;

procedure TAmvalF.btnSellerTopicCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;

begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'جستجوي',
    'SELECT TopicCode, MoeenName_L1  FROM  acc.Categories WHERE (LevelID = 3)',
    ['كد', 'شرح حساب'], Result, [60, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('SellerTopicCode').AsString := Result[0]
  end;

end;

procedure TAmvalF.btnSellerDetailCodeClick(Sender: TObject);
const
  SqlTxt = 'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1' +
    ' FROM acc.DetailRange INNER JOIN' +
    ' acc.Details ON acc.DetailRange.DetailCode = acc.Details.DetailCode' +
    ' WHERE TopicCode = %d ' +
    ' GROUP BY acc.Details.DetailCode, acc.Details.DetailName_L1';
var
  Result: array [0 .. 1] of String;
  fldName: String;

begin
  inherited;

  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryAmval.FieldByName('SellerTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    fldName := (Sender as TSpeedButton).name;
    fldName := RightStr(fldName, Length(fldName) - 3);
    qryAmval.FieldByName(fldName).AsString := Result[0]
  end;
end;

procedure TAmvalF.btnSellerCTopicCodeClick(Sender: TObject);
const
  SqlTxt = 'SELECT acc.CenterTopics.CTopicCode, acc.CenterTopics.CTopicName_L1'
    + ' FROM acc.CenterTopics INNER JOIN' +
    ' acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode'
    + ' WHERE (acc.CenterTopicRange.TopicCode = %d)';
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryAmval.FieldByName('SellerTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('SellerCTopicCode').AsString := Result[0]
  end;
end;

procedure TAmvalF.btnAsstetsGrpCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    'SELECT AsstetsGrpCode,GrpName FROM assets.AssetsGroups'
    // +    ' Where (LevelID = ' + inttostr(opt.LevelGroup - 1) + ')'
    , ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('AsstetsGrpCode').AsString := Result[0];

  end;
end;

procedure TAmvalF.btnAccDetailCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
  fldName: String;

begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'جستجوي',
    'SELECT Acc.Details.DetailCode, Acc.Details.DetailName_L1 FROM Acc.Details',
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    fldName := (Sender as TSpeedButton).name;
    fldName := RightStr(fldName, Length(fldName) - 3);
    qryAmval.FieldByName(fldName).AsString := Result[0]
  end;
end;

procedure TAmvalF.btnAccTopicCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    'SELECT AccTopicCode, AccDesc FROM assets.AccTopics', ['كد', 'شرح حساب'],
    Result, [60, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('AccTopicCode').AsString := Result[0]
  end;
end;

procedure TAmvalF.btnTaxGrpCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    'SELECT TaxGrpCode, TaxTitle FROM  assets.TaxGroup', ['كد', 'شرح'], Result,
    [60, 180], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('TaxGrpCode').AsString := Result[0]
  end;
end;

procedure TAmvalF.btnTaxIDClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    'SELECT TaxID, TaxCalculateName FROM assets.TaxItems WHERE(TaxGrpCode = ' +
    qryAmval.FieldByName('TaxGrpCode').AsString + ')', ['كد', 'شرح'], Result,
    [60, 450], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('TaxID').AsString := Result[0]
  end;
end;

procedure TAmvalF.edtTaxGrpCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Result: array [0 .. 3] of String;
begin
  inherited;
  if ShiftDown and (Key = 32) then
  begin
    if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
      'SELECT TaxGroup.TaxGrpCode, TaxGroup.TaxTitle, TaxItems.TaxID, TaxItems.TaxCalculateName'
      + ' FROM assets.TaxGroup as TaxGroup  INNER JOIN' +
      ' assets.TaxItems as  TaxItems ON TaxGroup.TaxGrpCode = TaxItems.TaxGrpCode',
      ['كد گروه', 'شرح گروه', 'كد', 'شرح'], Result, [60, 100, 60, 100], alLeft)
    then
    begin
      if not(qryAmval.State in dseditmodes) then
        qryAmval.Edit;
      qryAmval.FieldByName('TaxGrpCode').AsString := Result[0];
      qryAmval.FieldByName('TaxID').AsString := Result[2];
    end;
  end
  else
end;

procedure TAmvalF.qryAmvalTaxGrpCodeChange(Sender: TField);
begin
  inherited;
  With qryTax do
  begin
    Close;
    Parameters.ParamByName('TaxGrp').Value := qryAmval.FieldByName('TaxGrpCode')
      .AsInteger;
    Parameters.ParamByName('TaxID').Value := qryAmval.FieldByName('TaxID')
      .AsInteger;
    Open;
    lblTax.Caption := FieldByName('TaxTitle').AsString + ' -- ' +
      FieldByName('TaxCalculateName').AsString;
  end;
  qryAmval.FieldByName('DepMode').AsString :=
    qryTax.FieldByName('DepMode').AsString;
  qryAmval.FieldByName('DepValue').AsString :=
    qryTax.FieldByName('DepValue').AsString;
end;

procedure TAmvalF.btn1Click(Sender: TObject);
begin
  inherited;
  CreateChildForm(TAccountF, AccountF, Self, 0, alNone)
end;

procedure TAmvalF.actPostManyExecute(Sender: TObject);
var
  N, PelakNum: Int64;
  i, J, c: Integer;
  Value: Currency;
  // NullPelak, b: Boolean;
  CopyAmval: array of String;
begin
  inherited;
  with qryAmval do
    try
      PelakNum := 0;
      c := 0;
      CheckPelak := False;
      // NullPelak := False;
      if (SerialPelak = 1) and (SerialType = 0) then
        PelakNum := FieldByName('PelakNum').AsLargeInt
      else if (SerialPelak = 1) and (SerialType = 1) then
        FieldByName('PelakNum').AsString := EmptyStr;
      AfterPost := nil;
      N := StrToIntDef(Trim(get_box('ثبت مسلسل كالا',
        'لطفاً تعداد كالا را وارد كنيد:', '1')), 0);
      if N = 0 then
        Exit;
      Value := FieldByName('AssetsValue').AsCurrency;
      BigMessage('در حال ثبت...', 0);
      SetLength(CopyAmval, FieldCount);
      FieldByName('AssetsValue').AsCurrency := Round(Value / N);
      Post;

      // b := FieldByName('SerialNum').OldValue <>        FieldByName('SerialNum').NewValue;
      Dmf.AmvalCal(opt.BaseDate, FieldByName('SerialNum').AsInteger);
      for i := 0 to FieldCount - 1 do
        CopyAmval[i] := Fields[i].AsString;

      for i := 1 to N - 1 do
      begin
        Append;
        for J := 0 to FieldCount - 1 do
          if (Fields[J].FieldKind = fkData) and (not Fields[J].ReadOnly) and
            (not(pfinkey in Fields[J].ProviderFlags)) then
            Fields[J].AsString := CopyAmval[J];
        FieldByName('AssetsValue').AsCurrency := Round(Value / N);
        // FieldByName('SerialNum').AsInteger := Serial;
        if (SerialPelak = 1) and (SerialType = 0) then
        begin
          FieldByName('PelakNum').AsLargeInt := PelakNum + 1;
          PelakNum := FieldByName('PelakNum').AsLargeInt;
        end
        else if (SerialPelak = 1) and (SerialType = 1) then
          FieldByName('PelakNum').AsString := EmptyStr
        else
          FieldByName('PelakNum').AsLargeInt := 0;
        Post;

        // b := FieldByName('SerialNum').OldValue <>          FieldByName('SerialNum').NewValue;
        Dmf.AmvalCal(opt.BaseDate, FieldByName('SerialNum').AsInteger);
        Inc(c);
        // GoProgressBar(inttostr(i));
      end; // for
      BigMessage(' ' + inttostr(c) + ' مورد ثبت شد', 1);
    except
      on E: Exception do
      begin
        CloseMessage;
        add2log(E.Message);
        Warn('اشكال در ثبت' + #13#10 + E.Message, mtError);
      end;

    end; // try
  CheckPelak := True;
  qryAmval.AfterPost := qryAmvalAfterPost;
  qryAllAmval.Requery;
  qryAllAmval.Last;
end;

procedure TAmvalF.actScanExecute(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(Dmf.adcBSell, 'Amval', qryAmval.FieldByName('SerialNum')
    .AsString, 1)
end;

procedure TAmvalF.edtTaxGrpCodeKeyPress(Sender: TObject; var Key: Char);
var
  aControl: TComponent;
begin
  inherited;
  if Key = #32 then
  begin
    aControl := FindComponent('btn' + (Sender as TDBEdit).DataField);
    If Assigned(aControl) then
      TSpeedButton(aControl).Click
    else
      Warn('پيدا نشد');
  end;
end;

procedure TAmvalF.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if qryAmval.FieldByName('StuffDesc').AsString = EmptyStr then
    qryAmval.FieldByName('StuffDesc').AsString :=
      qryAmval.FieldByName('_AssetsGrpName').AsString
end;

procedure TAmvalF.qryAllAmvalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAmval do
    try
      DisableControls;
      Close;
      Parameters.ParamByName('sn').Value := DataSet.FieldByName('SerialNum')
        .AsInteger;
      Open;
    finally
      EnableControls;
    end;
end;

procedure TAmvalF.qryAmvalAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qryAllAmval.Requery;
  qryAllAmval.Last;
end;

procedure TAmvalF.qryAmvalAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := GetUserStamp;
end;

procedure TAmvalF.ppLabel20GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := cmbOwnerType.Text;
end;

procedure TAmvalF.ppVariable1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAmvalF.actPrintCardexExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'AmvalCardex.rtm');
end;

procedure TAmvalF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Amval.rtm');

end;

procedure TAmvalF.actReceiveExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryAmval);
end;

procedure TAmvalF.actReciptItemsExecute(Sender: TObject);
begin
  inherited;
  try
    qryAmval.DisableControls;
    qryAmval.AfterPost := nil;
    RecallRecipts2AssetsF.SelectRecall(qryAmval);
  finally
    qryAmval.EnableControls;
    qryAmval.AfterPost := qryAmvalAfterPost;
    qryAllAmval.Requery;
    qryAllAmval.Last;

  end;

end;

procedure TAmvalF.actAidExecute(Sender: TObject);
begin
  inherited;
  AidAssetsF.enter(qryAmval.FieldByName('SerialNum').AsInteger);
end;

procedure TAmvalF.actOtherInfoExecute(Sender: TObject);
begin
  inherited;
  mnudepvalue1.Visible := ((User.admin) or User.PowerUser) and
    (not(qryAmval.State = dsInsert));
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAmvalF.qryAmvalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  With qryTax do
  begin
    Close;
    Parameters.ParamByName('TaxGrp').Value := DataSet.FieldByName('TaxGrpCode')
      .AsInteger;
    Parameters.ParamByName('TaxID').Value := DataSet.FieldByName('TaxID')
      .AsInteger;
    Open;
    lblTax.Caption := FieldByName('TaxTitle').AsString + ' -- ' +
      FieldByName('TaxCalculateName').AsString;
  end;
  cmbDepModeChange(cmbDepMode);
end;

procedure TAmvalF.FormClose(Sender: TObject; var Action: TCloseAction);
var
  N: Integer;
begin
  inherited;
  if qryAmval.State in dseditmodes then
  begin
    N := get_response
      ('تغييرات ذخيره نشده‌اند، آيا مي‌خواهيد تغييرات ذخيره شوند؟');
    case N of
      mrYes:
        qryAmval.Post;
      mrNo:
        qryAmval.Cancel;
      mrCancel:
        Action := caNone;
    end; // case
  end; // if

end;

procedure TAmvalF.qryAmvalInvoiceDateChange(Sender: TField);
var
  m, Y, d: Integer;
  S: String;
begin
  inherited;
  S := Sender.AsString;
  m := StrToIntDef(MidStr(S, 6, 2), 0) + 1;
  Y := StrToIntDef(LeftStr(S, 4), 0);
  d := StrToIntDef(RightStr(S, 2), 0);
  if m > 12 then
  begin
    m := m - 12;
    Y := Y + 1;
  end;
  if qryAmval.FieldByName('StartUsingDate').IsNull then
    if d = 1 then
      qryAmval['StartUsingDate'] := S
    else
      qryAmval['StartUsingDate'] := Format('%.2d/%.2d/01', [Y, m]);
end;

procedure TAmvalF.AllClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TAmvalF.N3Click(Sender: TObject);
begin
  inherited;
  if not(qryAmval.State in dseditmodes) then
    qryAmval.Edit;
  qryAmval.FieldByName('Comments').AsString :=
    NoteF.CallNote(qryAmval.FieldByName('Comments').AsString);
end;

procedure TAmvalF.N5Click(Sender: TObject);
var
  DoWhile: Boolean;
  Sn: Int64;
begin
  inherited;
  DoWhile := True;
  with qryAllAmval do
    while (not Eof and DoWhile) do
    begin
      Sn := FieldByName('SerialNum').AsInteger;
      Dmf.AmvalCal(opt.BaseDate, Sn);
      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      Next;
      Application.ProcessMessages;
    end;
  BigMessage('ثبت شد.', 1);

end;

procedure TAmvalF.btnMasterSerialClick(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
    'SELECT SerialNum, PelakNum, StuffDesc FROM assets.Amval ',
    ['شماره سريال ', 'شماره پلاك', 'نام كالا'], Result, [60, 60, 150], alLeft)
  then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('MasterSerial').AsString := Result[0];
  end;
end;

procedure TAmvalF.ppLabel25GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := cmbDepMode.Text + '  ' + qryAmval.FieldByName('DepValue').AsString +
    '  ' + lblUnit.Caption;

end;

procedure TAmvalF.pplblYearIdGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := inttostr(APPBank.Year);
end;

procedure TAmvalF.pgc1Change(Sender: TObject);
begin
  inherited;
  pnl5.Visible := pgc1.TabIndex = 0;
  pnl6.Visible := pgc1.TabIndex = 0;
  DBNavigator1.Visible := pgc1.TabIndex = 0;

  BitBtn10.Visible := pgc1.TabIndex = 0;
  if pgc1.TabIndex = 1 then
  begin
    qryCardex.Parameters.ParamByName('Serial').Value :=
      qryAmvalSerialNum.AsInteger;
    qryCardex.Open;
    BitBtn8.Action := actPrintCardex;
    BitBtn7.Action := actSearch2;
  end
  else
  begin
    qryCardex.Close;
    BitBtn8.Action := nil;
    BitBtn8.OnClick := BitBtn8Click;
    BitBtn7.Action := actSearch_2;
  end;
end;

procedure TAmvalF.ppDBText6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '    ' + cmbUnitCode.Text;
end;

procedure TAmvalF.mnudepvalueClick(Sender: TObject);
var
  firstValue: string;
  SQLText: string;
begin
  inherited;
  firstValue := EditFirstDepF.editvalue(qryCalc.FieldByName('FirstDepValue')
    .AsString);
  SQLText :=
    Format('update Assets.DepTable set FirstDepValue=%s where Serial=%d and Tablename=''Amval'' and Yearid=%D',
    [firstValue, qryAmvalSerialNum.AsInteger, APPBank.Year]);
  Dmf.adcBSell.Execute(SQLText);
  qryAmval.Requery;
end;

procedure TAmvalF.btnKeeperCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جمعداران اموال',
    'SELECT KeeperCode, KeeperName FROM assets.AssetsKeeper ', ['كد ', 'عنوان'],
    Result, [50, 100], alLeft) then
  begin
    if not(qryAmval.State in dseditmodes) then
      qryAmval.Edit;
    qryAmval.FieldByName('KeeperCode').AsString := Result[0];
  end; // if
end;

// procedure TAmvalF.qryAmvalPelakNumGetText(Sender: TField; var Text: String;
// DisplayText: Boolean);
// begin
// inherited;
// Text:=Text;
/// /  Text := #253#254 + Sender.AsString;
/// /  اشكال در ثبت اتوماتيك شماره پلاك
// end;

procedure TAmvalF.SetReadOnlyEdit;
var
  i: Integer;
  edt: TDBEdit;
  aControl: TComponent;
begin
  for i := 0 to Self.componentCount - 1 do
  begin
    If (Components[i] is TDBEdit) then
    begin
      edt := TDBEdit(Components[i]);
      qryAmval.FieldByName(edt.DataField).ReadOnly := (edt.Tag <> 1) and
        (qryAmval.FieldByName('amvalState').AsInteger = 1);
      aControl := FindComponent('spd' + edt.DataField);
      If Assigned(aControl) then
        TSpeedButton(aControl).Enabled := not qryAmval.FieldByName
          (edt.DataField).ReadOnly;

    end;

  end;
  cmbDepMode.ReadOnly := not opt.EditableDepModeDepValue;
  edtDepValue.ReadOnly := cmbDepMode.ReadOnly;

end;

procedure TAmvalF.actSmsSendExecute(Sender: TObject);
begin
  inherited; // 3
  SmsSendQry(qryAmval, qryCalc, SmsCustomersBalance_Amval, 1, 0, 1);
end;

procedure TAmvalF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAmvalF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TAmvalF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TAmvalF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TAmvalF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
