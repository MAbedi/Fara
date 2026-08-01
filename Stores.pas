// Mostafa
unit Stores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, DB, ADODB, DBClient, Provider,
  ComCtrls, zAPIBalloon, ppPrnabl, ppClass, ppCtrls, ppDB, ppBands,
  ppCache, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport, Menus,
  ppVar, ppParameter, Account, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TStoresF = class(Ttemplate2MDIF)
    qryStores: TADOQuery;
    qryStoresn_StoreID: TSmallintField;
    qryStoresc_StoreName: TStringField;
    qryStoresn_ValuationType: TSmallintField;
    qryStoresc_tel: TStringField;
    qryStoresc_fax: TStringField;
    srcStores: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryOperators: TADOQuery;
    qryUserStore: TADOQuery;
    qryUserStoren_UserID: TIntegerField;
    qryUserStoren_StoreID: TSmallintField;
    qryUserStoreStoreType: TWordField;
    qryOperatorsUserID: TIntegerField;
    qryOperatorsname: TStringField;
    cliOperators: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    srcOperators: TDataSource;
    cliOperatorsUserID: TIntegerField;
    cliOperatorsname: TStringField;
    cliOperators_Checked: TBooleanField;
    cliOperators_StoreType: TIntegerField;
    qryStores_MoeenName: TStringField;
    qryStores_DetailName: TStringField;
    ppReport1: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    actPrint: TAction;
    btnPrint: TBitBtn;
    btnExl: TBitBtn;
    actSendToExcel: TAction;
    btnSort: TBitBtn;
    PopupMenu1: TPopupMenu;
    actSort: TAction;
    N2: TMenuItem;
    N1: TMenuItem;
    DBNavigator1: TDBNavigator;
    qryStoresc_address: TStringField;
    qryStoresc_note: TStringField;
    qryStoresc_accDetailCode: TStringField;
    qryStoresc_accCTopicCode: TStringField;
    qryStoresc_accCTopicCode2: TStringField;
    qryStores_CTopicName2: TStringField;
    qryStores_CTopicName: TStringField;
    qryStoresCorrelateStore: TSmallintField;
    qryStoresStoreKind: TWordField;
    actSelectAll: TAction;
    btnSearch: TBitBtn;
    PopMnuPrint: TPopupMenu;
    AllMenuItem: TMenuItem;
    MenuItem6: TMenuItem;
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
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    qryStoresHasDeficit: TSmallintField;
    qryStoresEntity: TFloatField;
    qryStoresWeight: TFloatField;
    actSelectAllStore: TAction;
    qryStores_accTopicCodeCostDownSave: TStringField;
    qryStoresEntityCaption: TStringField;
    qryStoresWeightCaption: TStringField;
    qryStoresEntityDisplayType: TWordField;
    qryStoresCTopicCode3: TStringField;
    qryStoresDetailCode: TStringField;
    qryStoresCTopicCode: TStringField;
    qryStoresCTopicCode2: TStringField;
    qryStoresTopicCode: TLargeintField;
    qryStoresc_accTopicCode: TLargeintField;
    qryStoresaccTopicCodeCostDownSave: TLargeintField;
    qryStoresTypeOfSale: TWordField;
    PageControl1: TPageControl;
    tsUserRelations: TTabSheet;
    tsStoreInfos: TTabSheet;
    Panel5: TPanel;
    Label13: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    cmbStoreKind: TDBComboBox;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    SpeedButton5: TSpeedButton;
    dbtxt_accTopicCodeCostDownSave: TDBText;
    dbedtaccTopicCodeCostDownSave: TDBEdit;
    BitBtn11: TBitBtn;
    Panel6: TPanel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    actRelateToAllStore: TAction;
    Panel1: TPanel;
    btnRevertAll: TBitBtn;
    btnSelectAll: TBitBtn;
    qryStoresCalculateOutPutFields: TLargeintField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    qryStoresStorlength: TFloatField;
    qryStoresStorWidth: TFloatField;
    qryStoresStorHeight: TFloatField;
    actStoresAlternativeF: TAction;
    BitBtn1: TBitBtn;
    qryStoresWarehouseID: TStringField;
    edtWarehouseID: TDBEdit;
    lbl1: TLabel;
    tsEntity: TTabSheet;
    TabSheet2: TTabSheet;
    cmbTypeOfSale: TDBComboBox;
    Label9: TLabel;
    DBCheckBox1: TDBCheckBox;
    edtWeight: TDBEdit;
    edtEntity: TDBEdit;
    edtStorWidth: TDBEdit;
    edtStorlength: TDBEdit;
    edtStorHeight: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    edtEntityCaption: TDBEdit;
    Label19: TLabel;
    edtWeightCaption: TDBEdit;
    Label20: TLabel;
    cmbEntityDisplayType: TDBComboBox;
    Label18: TLabel;
    cmbn_ValuationType: TDBComboBox;
    Label7: TLabel;
    grpValuationType: TGroupBox;
    btnCalculateOutPutFields: TSpeedButton;
    edtCalculateOutPutFields: TDBEdit;
    qryStoresPostCode: TStringField;
    edtPostCode: TDBEdit;
    Label12: TLabel;
    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryStoresAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcStoresStateChange(Sender: TObject);
    procedure cliOperators_StoreTypeSetText(Sender: TField; const Text: String);
    procedure qryStoresAfterScroll(DataSet: TDataSet);
    procedure cmbValuationTypeChange(Sender: TObject);
    procedure qryStoresAfterPost(DataSet: TDataSet);
    procedure ppLblCompanyGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryStoresBeforeDelete(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure cliOperators_StoreTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryStoresBeforePost(DataSet: TDataSet);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppDBTxtValuationTypeGetText(Sender: TObject; var Text: String);
    procedure AllMenuItemClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure actSelectAllStoreExecute(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure actRelateToAllStoreExecute(Sender: TObject);
    procedure btnRevertAllClick(Sender: TObject);
    procedure cmbn_ValuationTypeChange(Sender: TObject);
    procedure btnCalculateOutPutFieldsClick(Sender: TObject);
    procedure qryStoresCalculateOutPutFieldsGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryStoresBeforeScroll(DataSet: TDataSet);
    procedure actStoresAlternativeFExecute(Sender: TObject);
  private
    UserID: Integer;
    Show_Message: Boolean;
    FRevertAll: Boolean;
    procedure SaveSelected;
    procedure ReadSelected;
    function CheckTick: Boolean;

    { Private declarations }
  public

    { Public declarations }
  end;

var
  StoresF: TStoresF;

implementation

uses dm, GlobalPro, mmessage, search2, FormFunctions, FaraConsts,
  ReciptsFunctions, StoresAlternative, main;

{$R *.dfm}

procedure TStoresF.SaveSelected;
begin
  with qryUserStore do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        delete;
      end; // while
      cliOperators.DisableControls;
      cliOperators.First;
      cliOperators.Filtered := False;
      while not cliOperators.eof do
      begin
        if cliOperators_Checked.AsBoolean then
        begin
          Insert;
          FieldByName('n_userid').AsInteger :=
            cliOperators.FieldByName('UserID').AsInteger;
          FieldByName('n_StoreID').AsInteger :=
            qryStores.FieldByName('n_StoreID').AsInteger;
          FieldByName('StoreType').AsInteger :=
            cliOperators.FieldByName('_StoreType').AsInteger;
          post;

        end; // if
        cliOperators.Next;
      end; // while
    finally
      UpdateBatch;
      EnableControls;
      cliOperators.EnableControls;
    end; // try
  end; // with
end;

procedure TStoresF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  if not(qryStores.State in dseditmodes) then
    qryStores.Edit;
  DataSetEdit1.Execute;
  with cliOperators do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    post;
  end; // with
end;

procedure TStoresF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  accSpeedButtonTopicCode(qryStores, (Sender as TSpeedButton).Hint)
end;

procedure TStoresF.qryStoresAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CorrelateStore').AsInteger := 0;
  DataSet.FieldByName('StoreKind').AsInteger := 0;
  DataSet.FieldByName('n_ValuationType').AsInteger := 0;
  DataSet.FieldByName('c_accTopicCode').AsInteger := 0;
  DataSet.FieldByName('c_accDetailCode').AsInteger := 0;
  DataSet.FieldByName('c_accCTopicCode').AsInteger := 0;
  DataSet.FieldByName('c_accCTopicCode2').AsInteger := 0;
  DataSet.FieldByName('n_StoreId').AsInteger := GetANewCode(Self.Name, 'Stores',
    'n_StoreId');
  DBEdit1.SetFocus;
end;

procedure TStoresF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  InitConstTypeOfSale(cmbTypeOfSale);

  cmbn_ValuationType.Items.Clear;
  for i := 0 to high(TValuationType) do
    cmbn_ValuationType.Items.Add(TValuationType[i]);

  cmbStoreKind.Clear;
  for i := 0 to High(StoreKind) do
    cmbStoreKind.Items.Add(StoreKind[i]);

  tsEntity.Visible := User.admin;
  PageControl1.TabIndex := 2;
  PageControl1.ActivePage := tsStoreInfos;
  PageControl1.TabIndex := 0;
  // if opt.AccOldAvailable then begin
  //
  // qryStores.FieldByName('_CTopicName2').LookupKeyFields:='CTopicCode';
  // qryStores.FieldByName('_CTopicName2').LookupResultField:='Desc';
  //
  // qryStores.FieldByName('_DetailName').LookupResultField:='Desc';
  //
  // qryStores.FieldByName('_CTopicName').LookupResultField:='Desc';
  // end;//if
  with qryUserStore do
  begin
    Active := False;
    SQL.Text := 'SELECT n_UserID, n_StoreID, StoreType';
    SQL.Add('FROM dbo.UsersStore');
    SQL.Add('Where ( n_StoreID =:n_StoreID)');
    if CompanyFilterinLogin then
      SQL.Add('AND ( n_UserID in (SELECT DISTINCT UserID FROM FaraSystems.dbo.OperatorCompanies WHERE(n_subcompany = '
        + FcompanyCode.ToString + ')))');
    Active := True;
  end;

  with qryOperators do
  begin
    Active := False;
    SQL.Text := 'SELECT UserID, name';
    SQL.Add('FROM FaraSystems.dbo.Operators');
    SQL.Add('WHERE (SystemID IN(0, 18,40) )');
    if CompanyFilterinLogin then
      SQL.Add('AND ( UserID in (SELECT DISTINCT UserID FROM FaraSystems.dbo.OperatorCompanies WHERE(n_subcompany = '
        + FcompanyCode.ToString + ')))');
    Active := True;
  end;

  qryStores.Active := True;
  Show_Message := True;
  // actSelectAll.Visible:=User.a dmin;
  // actSelectAllStore.Visible:=User.a dmin;
  // setColumns2(DBGrid2,not User.a dmin,'_StoreType',aReadOnly);

end;

procedure TStoresF.srcStoresStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStores.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  actSelectAllStore.Enabled := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);

  DBGrid1.Enabled := newPanel.Visible;

end;

procedure TStoresF.ReadSelected;
begin
  cliOperators.Active := False;
  cliOperators.Active := True;
  with qryUserStore do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        with cliOperators do
        begin
          if Locate('UserID', qryUserStore.FieldByName('n_userID').AsInteger, [])
          then
          begin
            Edit;
            FieldByName('_Checked').AsBoolean := True;
            FieldByName('_StoreType').AsInteger :=
              qryUserStore.FieldByName('StoreType').AsInteger;
            post;
          end; // if
        end; // with
        Next;
      end; // while
    finally
      EnableControls;
      cliOperators.EnableControls;
    end; // try
  end; // with
end;

procedure TStoresF.cliOperators_StoreTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := DBGrid2.Columns[2].PickList.IndexOf(Text);
end;

procedure TStoresF.qryStoresAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // grpValuationType.Visible := qryStoresn_ValuationType.AsInteger = 0;
  ReadSelected;
  cliOperators.Locate('UserID', UserID, []);

end;

procedure TStoresF.cmbn_ValuationTypeChange(Sender: TObject);
begin
  inherited;
  // grpValuationType.Visible := cmbn_ValuationType.ItemIndex = 0
end;

procedure TStoresF.cmbValuationTypeChange(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TStoresF.qryStoresAfterPost(DataSet: TDataSet);
begin
  inherited;
  SaveSelected;
  if Show_Message then
    BigMessage('ثبت شد.‏', 1);
end;

procedure TStoresF.ppLblCompanyGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := AppBank.CompanyName;
end;

procedure TStoresF.actStoresAlternativeFExecute(Sender: TObject);
begin
  inherited;
  CreateChildForm(TStoresAlternativeF, StoresAlternativeF, mainF,
    qryStoresn_StoreID.AsInteger, alNone);
end;

procedure TStoresF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStoresF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStoresF.FormDestroy(Sender: TObject);
begin
  inherited;
  DMf.qryStores.Close;
  DMf.qryStoreType.Close;
end;

procedure TStoresF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TStoresF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TStoresF.qryStoresBeforeDelete(DataSet: TDataSet);
var
  candel: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Select count(N_storeid) from StoreStuffs where N_storeid = ' +
      DataSet.FieldByName('N_storeid').AsString;
    Active := True;
    candel := Fields[0].AsInteger = 0;
    Active := False;
  end; // with

  if candel then
  begin
    if get_response('آيا براي حذف اين انبار مطمئن هستيد؟') <> mrYes then
      Abort;
    BigMessage('حذف شد.', 1);
  end
  else
  begin
    Warn('حذف اين انبار مجاز نيست.');
    Abort;
  end; // else

end;

procedure TStoresF.N2Click(Sender: TObject);
begin
  inherited;
  qryStores.Sort := 'c_StoreName';
end;

procedure TStoresF.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStoresF.N1Click(Sender: TObject);
begin
  inherited;
  qryStores.Sort := 'N_StoreId';
end;

procedure TStoresF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStoresF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStoresF.cliOperators_StoreTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cliOperators_StoreType.AsInteger = 0 then
    Text := 'مقداري'
  else
    Text := 'مقداري ريالي';
end;

function TStoresF.CheckTick: Boolean;
begin
  Result := False;
  with cliOperators do
  begin
    DisableControls;
    Filtered := False;
    First;
    try
      while not eof do
      begin
        Result := cliOperators_Checked.AsBoolean;
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

procedure TStoresF.qryStoresBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckTick then
  begin
    Warn('حداقل يك كاربر بايد انتخاب شود.‏‏');
    Abort;
  end; // if

end;

procedure TStoresF.qryStoresBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  UserID := cliOperatorsUserID.AsInteger;
end;

procedure TStoresF.qryStoresCalculateOutPutFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := getCalculateOutPutFields('', Sender.AsLargeInt, True)
end;

procedure TStoresF.actSelectAllExecute(Sender: TObject);
// var
// StoreType:Integer;
begin
  inherited;
    if get_response('آيا براي ' + (Sender as TAction).Caption + ' مطمئن هستيد؟')
    <> mrYes then
    Abort;
if not(qryStores.State in dseditmodes) then
    qryStores.Edit;
  with cliOperators do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        Edit;
        if FRevertAll then
        begin
          FieldByName('_Checked').AsBoolean := not FieldByName('_Checked')
            .AsBoolean;
          FieldByName('_StoreType').AsInteger := 1 - FieldByName('_StoreType')
            .AsInteger;
        end
        else
        begin
          FieldByName('_Checked').AsBoolean := True;
          FieldByName('_StoreType').AsInteger := 1;
        end;
        post;
        Next;
      end; // while
    finally
      EnableControls;
    end; // try1
  end; // with
  FRevertAll := False;
end;

procedure TStoresF.actRelateToAllStoreExecute(Sender: TObject);
var
  UserID: Integer;
  Checked: Boolean;
  StoreType: Integer;
begin
  inherited;
  if get_response('آيا براي ' + (Sender as TAction).Caption + ' مطمئن هستيد؟')
    <> mrYes then
    Abort;

  UserID := cliOperatorsUserID.AsInteger;
  Checked := cliOperators_Checked.AsBoolean;
  StoreType := cliOperators_StoreType.AsInteger;
  With qryStores do
  begin
    First;
    Show_Message := False;
    while not eof do
    begin
      Edit;
      with cliOperators do
      begin
        if cliOperators.Locate('UserID', UserID, []) then
        begin
          Edit;
          FieldByName('_Checked').AsBoolean := Checked;
          FieldByName('_StoreType').AsInteger := StoreType;
          post;
        end;
      end; // with
      post;
      Next;
    end;
    Show_Message := True;
  end;

end;

procedure TStoresF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStores);
end;

procedure TStoresF.ppDBTxtValuationTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := cmbn_ValuationType.Items.strings
    [qryStores.FieldByName('n_ValuationType').AsInteger];
end;

procedure TStoresF.AllMenuItemClick(Sender: TObject);
begin
  inherited;
  try
    qryStores.DisableControls;
    InitReportFile(ppReport1, 'StoresF' + IntToStr((Sender as TMenuItem).Tag));
  finally
    qryStores.EnableControls;
  end; // try

end;

procedure TStoresF.BitBtn11Click(Sender: TObject);
var
  StoreID: Integer;
begin
  inherited;
  StoreID := qryStoresn_StoreID.AsInteger;
  try
    Accountf.enter(qryStores)
  finally
    qryStores.Requery();
    qryStores.Locate('n_StoreID', StoreID, []);
  end;
end;

procedure TStoresF.btnCalculateOutPutFieldsClick(Sender: TObject);
begin
  inherited;
  CalculateOutPutFields(qryStores)
end;

procedure TStoresF.btnRevertAllClick(Sender: TObject);
begin
  inherited;
  FRevertAll := True;
  actSelectAll.Execute;
end;

procedure TStoresF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  // if (qryStores.State in dseditmodes) then
  // qryStores.post;
end;

procedure TStoresF.actSelectAllStoreExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي ' + (Sender as TAction).Caption + ' مطمئن هستيد؟')
    <> mrYes then
    Abort;
  With qryStores do
  begin
    First;
    Show_Message := False;
    while not eof do
    begin
      actSelectAll.Execute;
      post;
      Next;
    end;
    Show_Message := True;
  end;
end;

end.
