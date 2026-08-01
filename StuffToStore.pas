unit StuffToStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DBCtrls, Grids, Vcl.DBGrids, ComCtrls, ppDB,
  ppBands, ppCache, ppClass, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppPrnabl, ppCtrls, Menus, ppParameter, DM, shamsiDate, ppDesignLayer,
  System.ImageList, System.Actions, FarsiReportBuilde;

type
  TStuffToStoreF = class(Ttemplate2MDIF)
    srcreciptItems: TDataSource;
    Label8: TLabel;
    edtInputEntity: TDBEdit;
    Label9: TLabel;
    edtUnitSellPrice: TDBEdit;
    Label10: TLabel;
    edtTotalInputPrice: TDBEdit;
    Label12: TLabel;
    edtReciptNumber: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    qry_LookPurchaseEffect: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    qry_LookStore: TADOQuery;
    qry_LookStuff: TADOQuery;
    qryEffect: TADOQuery;
    srcEffect: TDataSource;
    qryEffectEffectID: TIntegerField;
    qryEffectAmount: TFloatField;
    qryEffectReciptItemID: TIntegerField;
    DBNavigator1: TDBNavigator;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptItemsReciptItemID: TIntegerField;
    qryReciptItemsReciptID: TIntegerField;
    qryReciptItemsRequestedEntity: TFloatField;
    qryReciptItemsControlCode: TLargeintField;
    qryReciptItemsTotalInputPrice: TBCDField;
    qryReciptItemsTotalOutputPrice: TBCDField;
    qryReciptItemsUnitSellPrice: TFMTBCDField;
    qryReciptItemsTotallSellPrice: TBCDField;
    qryReciptItemsItemNote: TStringField;
    qryReciptItemsUseUnitID: TIntegerField;
    qryReciptItemsPersonID1: TIntegerField;
    qryReciptItemsWaterCo: TFloatField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsUseUnitID: TIntegerField;
    qryRecipts_storeName: TStringField;
    qryRecipts_person1Name: TStringField;
    qryRecipts_person2Name: TStringField;
    qryReciptItems_stuffName: TStringField;
    qryReplaceRate: TADOQuery;
    qryEffectPurchaseID: TIntegerField;
    qryReciptItemsInputEntity: TFloatField;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    ppReport1: TppReport;
    TPipeRecipts: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryReciptsReciptType: TWordField;
    qryRecipts_ContactRate: TCurrencyField;
    qryReplaceRateEffectID: TIntegerField;
    qryReplaceRateEffectName: TStringField;
    qryReplaceRateCoefficient: TFloatField;
    qryReplaceRateAmountRate: TFloatField;
    qryReciptItemsContactRate: TBCDField;
    qryEffectReplaceRate: TBCDField;
    SBtnReciptNumber: TSpeedButton;
    qryReciptItemsShift: TIntegerField;
    qryReciptsReciptState: TWordField;
    qryCustomers1: TADOQuery;
    qryCustomers2: TADOQuery;
    qryinit: TADOQuery;
    PnlPerson1: TPanel;
    PnlPerson2: TPanel;
    DBEdit14: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    LblPerson1: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit4: TDBEdit;
    LblPerson2: TLabel;
    qryReciptsUseOtherID: TWideStringField;
    qryReciptsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptItemsYearID: TIntegerField;
    qryReciptItemsServerID: TIntegerField;
    DataSetDelete1: TDataSetDelete;
    actAdd: TAction;
    TPipeEffect: TppDBPipeline;
    TPipeEffectCTab: TppDBPipeline;
    qryEffectCTab: TADOQuery;
    dsEffectCTab: TDataSource;
    TPipeReciptItems: TppDBPipeline;
    qryEffectServerID: TIntegerField;
    qryEffectYearID: TIntegerField;
    qryEffectReciptID: TIntegerField;
    qryRecipts_InsertAutoEffectID: TIntegerField;
    qryRecipts_EffectID: TIntegerField;
    qryReciptItemsInputWeight: TFloatField;
    qryReciptItemsStuffCode: TLargeintField;
    qryRecipts_Discount: TFloatField;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryReciptItemsFirstUser: TStringField;
    qryReciptItemsLastUser: TStringField;
    qryReciptsAidDate: TStringField;
    qryReciptItemsAidDate: TStringField;
    qryReciptItemsMachineWeight: TFloatField;
    qryReciptItemsMachineNo: TStringField;
    qryReciptItemsMachineName: TStringField;
    qryReciptItemsMachineFullWeight: TFloatField;
    PnlMachine: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    EdtMachineWeight: TDBEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    RdGrpReciptState: TDBRadioGroup;
    Panel4: TPanel;
    btnAdd: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel5: TPanel;
    Label1: TLabel;
    dbedtStoreID: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit17: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    edtContactRate: TDBEdit;
    Panel7: TPanel;
    DBEdit16: TDBEdit;
    SpeedButton4: TSpeedButton;
    dbedtStuffCode: TDBEdit;
    Label5: TLabel;
    edtRequestedEntity: TDBEdit;
    Label6: TLabel;
    lblWaterCo: TLabel;
    ComboShift: TDBComboBox;
    Label14: TLabel;
    actDeficits: TAction;
    qry_Deficits4Print: TADOQuery;
    srcDeficits4Print: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppDBPipeline3ppField1: TppField;
    ppDBPipeline3ppField2: TppField;
    BtnDeficits: TBitBtn;
    qryRecipts_HasDeficit: TIntegerField;
    qryStores: TADOQuery;
    qryRecipts_CustomersDiscount: TFloatField;
    qryRecipts_CustomersDiscountNote: TStringField;
    qryRecipts_CustomersDayTime: TIntegerField;
    StatusBar2: TStatusBar;
    plblPrintPayablePrice: TppLabel;
    plblPrintnum2alphabetPayebel: TppLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    qryReciptItems__MachineFullWeight_Weight: TFloatField;
    PopMuPrint: TPopupMenu;
    N1: TMenuItem;
    N21: TMenuItem;
    GroupBox1: TGroupBox;
    dbmmoItemNote: TDBMemo;
    qryReciptItemsOutputEntity: TFloatField;
    qryReciptItemsOutputWeight: TFloatField;
    qryEffectEffectNote: TStringField;
    qryEffect_EffectName: TStringField;
    qryRecipts_PurchasePercent: TFloatField;
    qryReciptsDocNo: TIntegerField;
    plblShift: TppLabel;
    edtWaterCo: TDBEdit;
    DBEdit6: TDBEdit;
    qryReciptsDefaultDate: TStringField;
    qryReciptsDefaultDuration: TSmallintField;
    pnlDefaultDate: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    dbedtDefaultDate: TDBEdit;
    edtDefaultDuration: TDBEdit;
    qryReplaceRateCoefficientMin: TFloatField;
    qryReplaceRateCoefficientMax: TFloatField;
    qryEffect_CoefficientMin: TFloatField;
    qryEffect_CoefficientMax: TFloatField;
    qryReciptItemsUnitSellPrice2: TBCDField;
    edtUnitSellPrice2: TDBEdit;
    lbl1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure qryReciptItemsBeforePost(DataSet: TDataSet);
    procedure qryReciptItemsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryReciptItemsAfterScroll(DataSet: TDataSet);
    procedure qryEffectAmountChange(Sender: TField);
    procedure qryEffectAfterScroll(DataSet: TDataSet);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryEffectAfterPost(DataSet: TDataSet);
    procedure qryReciptItemsBeforeEdit(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure qryEffectBeforePost(DataSet: TDataSet);
    procedure dbedtStoreIDKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure dbedtStuffCodeKeyPress(Sender: TObject; var Key: Char);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryReciptsAfterCancel(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure qryEffectAfterOpen(DataSet: TDataSet);
    procedure qryEffectBeforeEdit(DataSet: TDataSet);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryReciptItemsRequestedEntityChange(Sender: TField);
    procedure qryReciptItemsWaterCoChange(Sender: TField);
    procedure qryReciptItemsContactRateChange(Sender: TField);
    procedure qryReciptItemsInputEntityChange(Sender: TField);
    procedure qryReciptItemsUnitSellPriceChange(Sender: TField);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryReciptsBeforeEdit(DataSet: TDataSet);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure qryReciptItemsShiftGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryReciptItemsShiftSetText(Sender: TField; const Text: String);
    procedure qryReciptsStoreIDChange(Sender: TField);
    procedure qryReciptsPersonID1Change(Sender: TField);
    procedure actAddExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qryReciptsBeforeInsert(DataSet: TDataSet);
    procedure qryReciptItemsStuffCodeChange(Sender: TField);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryReciptItemsAfterEdit(DataSet: TDataSet);
    procedure actDeficitsExecute(Sender: TObject);
    procedure plblPrintPayablePriceGetText(Sender: TObject; var Text: String);
    procedure plblPrintnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
    procedure qryReciptItemsCalcFields(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure qryReciptItemsOutputEntityChange(Sender: TField);
    procedure mnu4allClick(Sender: TObject);
    procedure plblShiftGetText(Sender: TObject; var Text: string);
    procedure qryReciptsDefaultDurationChange(Sender: TField);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    myStore: TStore;
    formtype: byte;
    insertEffectActiv, PriceOn_StoreType, FormOutput: Boolean;
    FormInOut: String;
    Edit4Deficits: Boolean;
    function GetEntity: real;
    function UnitSellPrice: Currency;
    procedure insert_Effect;
    function TotallPrice: Currency;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InitDBCombos;
    procedure insertEffectItem(EffectID: Integer);
    function Coefficient: Currency;
    function AmountRate: Currency;
    procedure initEffect;

    { Private declarations }
  public
    BeforeStuffCode: Largeint;
    { Public declarations }
  end;

var
  StuffToStoreF: TStuffToStoreF;

implementation

uses mmessage, GlobalPro, searchCode_ADO, sort2, search2, Math, sndkey32,
  FormFunctions, ReciptsDeficits, ReciptsFunctions, FaraConsts;

{$R *.dfm}

procedure TStuffToStoreF.FormCreate(Sender: TObject);
var
  StoreKindList: String;
begin
  inherited;
  myStore := DM.myStore;
  insertEffectActiv := false;
  formtype := var_glb_gParam;
  lblCaption.Hint := IntToStr(formtype);
  SetLookUpCash(qryRecipts);
  initEffect;
  // SetLookUpCash(qryEffect);
  with qryinit do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Active := True;
  end; // with
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 then
  begin
    if qryinit.FieldByName('CustomerKind1').IsNull then
      Warn('هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
    with qryCustomers1 do
    begin
      Active := false;
      SQL.Add(' WHERE (dbo.CustomersGroup.GroupType IN(' +
        Trim(qryinit.FieldByName('CustomerKind1').AsString) +
        ')) AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1')

    end; // with
  end; // if
  IF qryinit.FieldByName('Person2Active').AsInteger = 1 then
  begin
    if qryinit.FieldByName('CustomerKind2').IsNull then
      Warn('هيچ گروهي براي گروه مشتري 2 مشخص نشده است');
    with qryCustomers2 do
    begin
      Active := false;
      SQL.Add(' WHERE (dbo.CustomersGroup.GroupType IN(' +
        Trim(qryinit.FieldByName('CustomerKind2').AsString) +
        ')) AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1')
    end; // with
  end; // if

  with qryStores do
  begin
    StoreKindList := qryinit.FieldByName('StoreKindList').AsString;
    if StoreKindList <> EmptyStr then
    begin
      StoreKindList := ' AND (Stores.StoreKind IN (' + StoreKindList + '))';
      SQL.Text := StringReplace(SQL.Text, ':StoreKindList', StoreKindList,
        [rfReplaceAll])
    end
    else
      SQL.Text := StringReplace(SQL.Text, ':StoreKindList', '', [rfReplaceAll]);
    Parameters.ParamByName('UserID').Value := user.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(user.PowerUser, 127, user.id);
  end; // with

  with qryinit do
  begin
    Caption := FieldByName('ReciptCaption').AsString;
    // <   مشتري 1 فعال >
    PnlPerson1.Visible := FieldByName('Person1Active').AsInteger = 1;
    LblPerson1.Caption := 'كد ' + FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('PersonID1').DisplayLabel := 'كد ' +
      LblPerson1.Caption;
    qryRecipts.FieldByName('_person1Name').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('_person1Name').DisplayLabel := 'نام ' +
      LblPerson1.Caption;

    // < 7  مشتري 2 فعال >
    PnlPerson2.Visible := FieldByName('Person2Active').AsInteger = 1;
    LblPerson2.Caption := 'كد ' + FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('PersonID2').Required := PnlPerson2.Visible;
    qryRecipts.FieldByName('PersonID2').DisplayLabel := 'كد ' +
      LblPerson2.Caption;
    qryRecipts.FieldByName('_person2Name').Required := PnlPerson2.Visible;
    qryRecipts.FieldByName('_person2Name').DisplayLabel := 'نام ' +
      LblPerson2.Caption;

    edtReciptNumber.ReadOnly := FieldByName('EditReciptNumberActive')
      .AsInteger <> 1;
    PnlMachine.Visible := FieldByName('MachineActive').AsInteger = 1;

    // < اطلاعات كسورات و اضافات نمايش شود >
    actDeficits.Visible := FieldByName('DeficitsActive').AsInteger >= 1;

    FormOutput := qryinit.FieldByName('EffectType').AsInteger
      in [3, 4, 5, 7, 8];
    FormInOut := 'Input';
    if FormOutput then
    begin
      FormInOut := 'Output';
      edtInputEntity.DataField := 'OutputEntity';
      edtTotalInputPrice.DataField := 'TotalOutputPrice';
    end;

    pnlDefaultDate.Visible := DefaultDateActive(qryinit);

  end; // with
  with qryRecipts do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    qryReciptItems.Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    Last;
  end; // with
  InitDBCombos;
  ComboShift.Text := ComboShift.Items
    [ComboShift.Items.IndexOfObject(TObject(qryReciptItemsShift.AsInteger))];
  initReportName(qryinit, PopMuPrint, mnu4allClick);

  // qryReciptItems.Active:=true;
end;

procedure TStuffToStoreF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TStuffToStoreF.initEffect;
begin
  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM PurchaseEffect';
    // SQL.Add  ('WHERE StuffCode = :StuffCode');
    // Parameters.ParamByName('StuffCode').Value:=qryReciptItems.FieldByName('StuffCode').AsLargeInt;
    Active := True;
    qryEffectCTab.SQL.Text := 'SELECT';
    while not Eof do
    begin
      qryEffectCTab.SQL.Add('SUM(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = '
        + FieldByName('EffectID').AsString + ' THEN ');
      qryEffectCTab.SQL.Add
        ('dbo.ReciptPurchaseEffect.Amount ELSE 0 END) AS Amount' +
        FieldByName('EffectID').AsString + ',');

      qryEffectCTab.SQL.Add
        ('ROUND(SUM(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = ' +
        FieldByName('EffectID').AsString +
        ' THEN dbo.ReciptPurchaseEffect.Amount ELSE 0 END) /');
      qryEffectCTab.SQL.Add('60, 2) AS TimeAmount' + FieldByName('EffectID')
        .AsString + ',');

      qryEffectCTab.SQL.Add('SUM(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = '
        + FieldByName('EffectID').AsString +
        ' THEN dbo.ReciptPurchaseEffect.ReplaceRate ELSE 0 END) AS');
      qryEffectCTab.SQL.Add('ReplaceRate' + FieldByName('EffectID')
        .AsString + ',');

      qryEffectCTab.SQL.Add
        ('(SELECT EffectNote FROM ReciptPurchaseEffect AS ReciptPurchaseEffect_1');
      qryEffectCTab.SQL.Add
        ('WHERE (ReciptItemID = ReciptPurchaseEffect.ReciptItemID) AND (ReciptID = ReciptPurchaseEffect.ReciptID) ');
      qryEffectCTab.SQL.Add
        ('AND (YearID = ReciptPurchaseEffect.YearID ) AND (ServerID = ReciptPurchaseEffect.ServerID) ');
      qryEffectCTab.SQL.Add('AND (EffectID = ' + FieldByName('EffectID')
        .AsString + ')) AS EffectNote' + FieldByName('EffectID')
        .AsString + ',');

      // qryEffectCTab.SQL.Add('max(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = '+
      // FieldByName('EffectID').AsString+' THEN dbo.ReciptPurchaseEffect.EffectNote ELSE '''' END) AS');
      // qryEffectCTab.SQL.Add('EffectNote'+FieldByName('EffectID').AsString+',');

      next;
    end; // while
    qryEffectCTab.SQL.Add('Min(EffectID) FROM ReciptPurchaseEffect');
    qryEffectCTab.SQL.Add('WHERE ( ReciptItemID = :ReciptItemID ) AND');
    qryEffectCTab.SQL.Add('( ReciptID=:ReciptID )AND( YearID = :YearID ) AND');
    qryEffectCTab.SQL.Add('( ServerID = :ServerID )');
    qryEffectCTab.SQL.Add('GROUP BY ReciptItemID,YearID,ReciptID,ServerID');

  end; // with

end;

procedure TStuffToStoreF.insert_Effect;
begin
  qry_LookPurchaseEffect.Close;
  qry_LookPurchaseEffect.Parameters.ParamByName('StuffCode').Value :=
    qryReciptItems.FieldByName('StuffCode').AsLargeInt;
  qry_LookPurchaseEffect.Open;

  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM PurchaseEffect';
    SQL.Add('WHERE StuffCode = :StuffCode');
    Parameters.ParamByName('StuffCode').Value :=
      qryReciptItems.FieldByName('StuffCode').AsLargeInt;
    Active := True;
    qryEffect.Requery();
    while not Eof do
    begin
      insertEffectItem(FieldByName('EffectID').AsInteger);
      next;
    end; // while
  end; // with

  with qryReplaceRate do
  begin
    Active := false;
    Parameters.ParamByName('EffectID').Value :=
      qryEffect.FieldByName('EffectID').AsInteger;
    Parameters.ParamByName('StuffCode').Value :=
      qryReciptItems.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end;
  insertEffectActiv := True;
end;

procedure TStuffToStoreF.insertEffectItem;
begin
  with qryEffect do
  begin
    Insert;
    FieldByName('PurchaseID').AsInteger :=
      GetANewCode(Self.Name, 'ReciptPurchaseEffect', 'PurchaseID');
    FieldByName('EffectID').AsInteger := EffectID;
    FieldByName('ReciptItemID').AsInteger := qryReciptItems.FieldByName
      ('ReciptItemID').AsInteger;
    FieldByName('ReciptID').AsInteger := qryRecipts.FieldByName('ReciptID')
      .AsInteger;
    FieldByName('YearID').AsInteger := qryRecipts.FieldByName('YearID')
      .AsInteger;
    FieldByName('ServerID').AsInteger := qryRecipts.FieldByName('ServerID')
      .AsInteger;
    FieldByName('Amount').AsInteger := 0;
    FieldByName('ReplaceRate').AsInteger := 0;
    post;
  end;
end;

procedure TStuffToStoreF.qryReciptItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  qryReciptItems.FieldByName('UnitSellPrice').AsCurrency := UnitSellPrice;
  if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
    abort;
end;

procedure TStuffToStoreF.qryReciptItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  GetANewID(DataSet, IntToStr(formtype), 'ReciptItems', 'ReciptItemID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('FirstUser').AsString := user.Name;
end;

procedure TStuffToStoreF.qryReciptsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryRecipts.FieldByName('StoreID').AsInteger := dbedtStoreID.Tag;
  DataSet.FieldByName('ReciptType').AsInteger := formtype;
  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;
  GetANewID(DataSet, IntToStr(formtype), 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  GetReciptNumber(qryinit, DataSet, 0, myStore);
  qryReciptItems.Active := True;
  qryReciptItems.Insert;
  qryReciptItems.FieldByName('StuffCode').AsLargeInt := BeforeStuffCode;
  qryReciptItems.FieldByName('Shift').AsInteger := ComboShift.Tag;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  if DefaultDateActive(qryinit) then
    DataSet.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;

end;

procedure TStuffToStoreF.qryReciptsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryEffect.State in [dsedit] then
    qryEffect.post;
  if qryReciptItems.State in [dsedit] then
    qryReciptItems.post;
  qryReciptItems.UpdateBatch();
  qryEffect.UpdateBatch();
  if insertEffectActiv then
  begin
    InitDBCombos;
    ComboShift.Text := ComboShift.Items
      [ComboShift.Items.IndexOfObject(TObject(qryReciptItemsShift.AsInteger))];
  end;
  insertEffectActiv := false;
  InsertReciptsDeficits(qryRecipts, qryReciptItems, qry_Deficits4Print,
    qry_Deficits4Print, qryinit.FieldByName('StepCorrelate').AsInteger);
  BigMessage('ثبت شد .‏', 1);

end;

procedure TStuffToStoreF.qryReciptItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_LookPurchaseEffect do
  begin
    Active := false;
    Parameters.ParamByName('StuffCode').Value :=
      qryReciptItems.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end;
  with qryReplaceRate do
  begin
    Active := false;
    Parameters.ParamByName('StuffCode').Value :=
      qryReciptItems.FieldByName('StuffCode').AsLargeInt;
  end;
  with qryEffect do
  begin
    Active := false;
    Parameters.ParamByName('ReciptItemID').Value :=
      qryReciptItems.FieldByName('ReciptItemID').AsInteger;
    Parameters.ParamByName('ReciptID').Value :=
      qryReciptItems.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryReciptItems.FieldByName
      ('YearID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryReciptItems.FieldByName('ServerID').AsInteger;
    Active := True;
  end;
  with qryEffectCTab do
  begin
    Active := false;
    Parameters.ParamByName('ReciptItemID').Value :=
      qryReciptItems.FieldByName('ReciptItemID').AsInteger;
    Parameters.ParamByName('ReciptID').Value :=
      qryReciptItems.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryReciptItems.FieldByName
      ('YearID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryReciptItems.FieldByName('ServerID').AsInteger;
    Active := True;
  end;
end;

function TStuffToStoreF.AmountRate: Currency;
begin
  if (qryRecipts.FieldByName('_PurchasePercent').AsCurrency <> 0) then
    Result := qryRecipts.FieldByName('_PurchasePercent').AsCurrency
  else
    Result := qryReplaceRate.FieldByName('AmountRate').AsCurrency;
end;

procedure TStuffToStoreF.qryEffectAmountChange(Sender: TField);
begin
  inherited;
  qryEffect.FieldByName('ReplaceRate').AsCurrency :=
    RoundTo((qryEffect.FieldByName('amount').AsCurrency - AmountRate) *
    Coefficient, 0);
  // qryReplaceRate.FieldByName('Coefficient').AsCurrency ,0 );
end;

procedure TStuffToStoreF.qryEffectAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReplaceRate do
  begin
    Active := false;
    Parameters.ParamByName('EffectID').Value :=
      qryEffect.FieldByName('EffectID').AsInteger;
    Parameters.ParamByName('StuffCode').Value :=
      qryReciptItems.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end;
end;

procedure TStuffToStoreF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  inherited;
  okPanel.Visible := qryRecipts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  actAdd.Visible := okPanel.Visible;
  DataSetDelete1.Visible := okPanel.Visible;

  FreeReservedCodes(DMf.adcBSell, 'recipts', '', IntToStr(formtype));
  FreeReservedCodes(DMf.adcBSell, 'reciptitems', '', IntToStr(formtype));
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);

  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1) or
    (qryinit.FieldByName('EditableFields').AsString <> EmptyStr);
  actDeficits.Enabled := (newPanel.Visible) and
    (qryinit.FieldByName('DeficitValueEditing').AsInteger = 0);
end;

procedure TStuffToStoreF.qryEffectAfterPost(DataSet: TDataSet);
var
  Amount: real;
begin
  inherited;
  if DataSet.FieldByName('EffectID').AsInteger = qryRecipts.FieldByName
    ('_EffectID').AsInteger then
  begin
    Amount := DataSet.FieldByName('Amount').AsFloat;
    if not(DataSet.Locate('EffectID',
      qryRecipts.FieldByName('_InsertAutoEffectID').AsInteger, [])) then
      Exit;
    DataSet.Edit;
    DataSet.FieldByName('Amount').AsFloat := Amount;
    DataSet.post;
    DataSet.Locate('EffectID', qryRecipts.FieldByName('_EffectID')
      .AsInteger, []);
  end;
  StatusBar1.Panels[0].Text :=
    CurrToStrF(CalcSumFileds(qryEffect, 'ReplaceRate'), ffCurrency, 0);

end;

procedure TStuffToStoreF.qryReciptItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  // IF not(qryRecipts.State IN [dsedit]) then qryRecipts.Edit;
end;

procedure TStuffToStoreF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    abort;

  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TStuffToStoreF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'انبار ها',
    'SELECT n_StoreID, c_StoreName FROM Stores ', ['کد', 'نام '], Results,
    [50, 150], alLeft);
  if b then
  begin
    if not(qryRecipts.State in [dsedit]) then
      qryRecipts.Edit;
    qryRecipts['StoreID'] := Results[0];
  end; // if

end;

procedure TStuffToStoreF.SpeedButton2Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT dbo.Customers.CustID,dbo.Customers.CustName FROM dbo.Customers '
    + ' INNER JOIN dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID '
    + ' WHERE (dbo.CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('CustomerKind1').AsString + ')) AND dbo.ChkUser(Customers.OperatorID,' +
    IntToStr(user.id) + ')=1';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + 'ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
    if not(qryRecipts.State in dsEditModes) then
      qryRecipts.Edit;
    qryRecipts['PersonID1'] := Results[0];
    // if PnlPerson2.Visible then EdtPersonID2.SetFocus
  end; // if
end;

procedure TStuffToStoreF.SpeedButton3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT dbo.Customers.CustID,dbo.Customers.CustName FROM dbo.Customers '
    + ' INNER JOIN dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID '
    + ' WHERE (dbo.CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('CustomerKind2').AsString + ')) AND dbo.ChkUser(Customers.OperatorID,' +
    IntToStr(user.id) + ')=1';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person2Caption').AsString + 'ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person2Caption').AsString + ''],
    Results, [50, 150], alLeft);
  if b then
  begin
    if not(qryRecipts.State in dsEditModes) then
      qryRecipts.Edit;
    qryRecipts['PersonID2'] := Results[0];
  end; // if
end;

procedure TStuffToStoreF.SpeedButton4Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  txt: String;
  s_StoreID: Integer;
begin
  inherited;
  s_StoreID := qryRecipts.FieldByName('StoreID').AsInteger;
  txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName ' +
    ' FROM         StuffCoding INNER JOIN ' +
    ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ' +
    ' WHERE     (StoreStuffs.n_StoreID = ' + IntToStr(s_StoreID) + ' ) ' +
    '  GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName ';

  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشخصات كالاها', txt,
    ['کد', 'نام '], Results, [50, 150], alLeft);
  if b then
  begin
    if not(qryRecipts.State in [dsedit]) then
    begin
      qryRecipts.Edit;
    end;
    if not(qryReciptItems.State in [dsedit]) then
      qryReciptItems.Edit;
    qryReciptItems.FieldByName('StuffCode').AsString := Results[0];
  end; // if
end;

procedure TStuffToStoreF.qryReciptsBeforePost(DataSet: TDataSet);
var
  DefaultDate: String;
begin
  inherited;
  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    abort;
  if not CheckRequiredFields(qryRecipts) then
    abort;
  if not CheckRequiredFields(qryReciptItems) then
    abort;

  DefaultDate := DataSet.FieldByName('DefaultDate').AsString;
  if not validate_date(True, '', '', 'تاريخ جانبي', DefaultDate) then
    abort;

  try
    DataSet.FieldByName('DefaultDate').AsString := '';
    if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
      abort;
  finally
    DataSet.FieldByName('DefaultDate').AsString := DefaultDate;
  end;

end;

procedure TStuffToStoreF.qryReciptsDefaultDurationChange(Sender: TField);
begin
  inherited;
  qryReciptsDefaultDate.AsString := DefaultDateCalc(qryReciptsDefaultDuration,
    qryReciptsReciptDate)
end;

procedure TStuffToStoreF.qryEffectBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryEffect) then
    abort;

  // if qryEffect_CoefficientMin.AsFloat > qryEffectAmount.AsFloat then
  // begin
  // Warn(Format('مقدار از حداقل مقدار ""%f"" نمی تواند پایین تر باشد',
  // [qryEffect_CoefficientMin.AsFloat]));
  // abort;
  // end;
  // if qryEffect_CoefficientMax.AsFloat < qryEffectAmount.AsFloat then
  // begin
  // Warn(Format('مقدار از حداکثر مقدار ""%f""  نمی تواند بزرگتر تر باشد',
  // [qryEffect_CoefficientMax.AsFloat]));
  // abort;
  // end;

end;

procedure TStuffToStoreF.dbedtStoreIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click;
end;

procedure TStuffToStoreF.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton2.Click;
end;

procedure TStuffToStoreF.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton3.Click;
end;

procedure TStuffToStoreF.dbedtStuffCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton4.Click;
end;

procedure TStuffToStoreF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TStuffToStoreF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TStuffToStoreF.qryReciptsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryEffect.Cancel;
  qryReciptItems.Cancel;
  qryReciptItems.Requery();
  insertEffectActiv := false;
end;

procedure TStuffToStoreF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryEffect);
  edtUnitSellPrice.Visible := PriceOn_StoreType;
  edtTotalInputPrice.Visible := PriceOn_StoreType;
  edtContactRate.Visible := PriceOn_StoreType;

  try
    if not insertEffectActiv then
    begin
      With qryReciptItems do
      begin
        DisableControls;
        Active := false;
        Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
          .FieldByName('ReciptID').AsInteger;
        Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
          .FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
          .FieldByName('YearID').AsInteger;

        Active := True;
      end;
      insertEffectActiv := false;
    end;
  finally
    qryReciptItems.EnableControls;
  end; // try

  opt.PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar2.Panels[4].Text := '   كسورات=' + CurrToStrF(opt.PayablePrice,
    ffCurrency, 0);
  opt.PayablePrice := CalcSumFileds(qryReciptItems,
    edtTotalInputPrice.DataField) + opt.PayablePrice;
  StatusBar2.Panels[4].Text := StatusBar2.Panels[4].Text + ' قابل پرداخت=' +
    CurrToStrF(opt.PayablePrice, ffCurrency, 0);
  if qryinit.FieldByName('DiscountActive').AsInteger = 1 then
    StatusBar2.Panels[4].Text := StatusBar2.Panels[4].Text + ' خالص ' +
      CurrToStrF(CalcSumFileds(qryReciptItems, 'TotallSellPrice') +
      CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);

  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);
  with qry_Deficits4Print do
  begin
    Active := false;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
      .FieldByName('YearID').AsInteger;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with

end;

procedure TStuffToStoreF.qryEffectAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text :=
    CurrToStrF(CalcSumFileds(qryEffect, 'ReplaceRate'), ffGeneral, 3);
end;

procedure TStuffToStoreF.qryEffectBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IF not(qryRecipts.State IN [dsedit]) then
  begin
    qryRecipts.Edit;
    qryReciptItems.Edit;
  end;
end;

procedure TStuffToStoreF.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1)
end;

procedure TStuffToStoreF.qryReciptItemsRequestedEntityChange(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName(FormInOut + 'Entity').AsFloat := GetEntity;
  qryReciptItems.FieldByName(FormInOut + 'Weight').AsFloat := GetEntity;
end;

procedure TStuffToStoreF.qryReciptItemsWaterCoChange(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName(FormInOut + 'Entity').AsFloat := GetEntity;
  qryReciptItems.FieldByName(FormInOut + 'Weight').AsFloat := GetEntity;
end;

procedure TStuffToStoreF.qryReciptItemsContactRateChange(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName('UnitSellPrice').AsCurrency := UnitSellPrice;
end;

procedure TStuffToStoreF.qryReciptItemsInputEntityChange(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName('Total' + FormInOut + 'Price').AsCurrency :=
    TotallPrice;
end;

procedure TStuffToStoreF.qryReciptItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName('Total' + FormInOut + 'Price').AsCurrency :=
    TotallPrice;
end;

function TStuffToStoreF.GetEntity: real;
begin
  case qryinit.FieldByName('WaterCoEffect').AsInteger of
    0:
      Result := (((100 - qryReciptItems.FieldByName('WaterCo').AsFloat) / 100) *
        qryReciptItems.FieldByName('RequestedEntity').AsFloat);
    1:
      Result := qryReciptItems.FieldByName('RequestedEntity').AsFloat;

  else
    Result := 0;
  end;

end;

function TStuffToStoreF.UnitSellPrice: Currency;
begin
  Result := CalcSumFileds(qryEffect, 'ReplaceRate') + qryReciptItems.FieldByName
    ('ContactRate').AsCurrency;
end;

function TStuffToStoreF.TotallPrice: Currency;
begin
  case qryinit.FieldByName('WaterCoEffect').AsInteger of
    0, 2:
      Result := RoundTo(qryReciptItems.FieldByName(FormInOut + 'Entity')
        .AsCurrency * qryReciptItems.FieldByName('UnitSellPrice')
        .AsCurrency, 0);

    1:
      Result := RoundTo((((100 - qryReciptItems.FieldByName('WaterCo').AsFloat)
        / 100) * qryReciptItems.FieldByName('RequestedEntity').AsFloat) *
        qryReciptItems.FieldByName('UnitSellPrice').AsCurrency, 0);

  else
    Result := 0;
  end;

end;

procedure TStuffToStoreF.gridkeyenter(Sender: TObject; var Key: Char);
begin
  if qryReplaceRate.FieldByName('EffectID').AsInteger < qryEffect.RecordCount
  then
  begin
    sendkey(vk_down, [], false);
    (Sender as TDBGrid).selectedindex := 1;;
  end
  else if qryReplaceRate.FieldByName('EffectID').AsInteger = qryEffect.RecordCount
  then
  begin
    dbmmoItemNote.SetFocus;
  end;
end;

function TStuffToStoreF.Coefficient: Currency;
var
  Discount: String;
begin
  Discount := qryRecipts.FieldByName('_Discount').AsString;
  if (Discount = EmptyStr) then
    Result := qryReplaceRate.FieldByName('Coefficient').AsCurrency
  else
  begin
    Result := StrToCurr(Discount);
    // qryRecipts.FieldByName('_Discount').AsCurrency;
    if Result = 0 then
      if qryEffect.FieldByName('amount').AsCurrency < AmountRate then
        Result := qryReplaceRate.FieldByName('Coefficient').AsCurrency
  end;

  if (qryReplaceRate.FieldByName('Coefficient').AsCurrency = 0) then
    Result := 0;

end;

procedure TStuffToStoreF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if qryEffect_CoefficientMin.AsFloat > qryEffectAmount.AsFloat then
  begin
    // ('مقدار از حداقل مقدار نمی تواند پایین تر باشد');
    DBGrid1.Canvas.Font.Color := clRed;
  end; // if
  if qryEffect_CoefficientMax.AsFloat < qryEffectAmount.AsFloat then
  begin
    // ('مقدار از حداکثر مقدار نمی تواند بزرگتر تر باشد');
    DBGrid1.Canvas.Font.Color := clRed;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TStuffToStoreF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if not(qryEffect.State = dsedit) then
      qryEffect.Edit;
    qryEffect.FieldByName('ReplaceRate').AsCurrency :=
      RoundTo((qryEffect.FieldByName('amount').AsCurrency - AmountRate) *
      Coefficient, 0);
    qryReciptItems.FieldByName('UnitSellPrice').AsCurrency := UnitSellPrice;
    gridkeyenter(Sender, Key);
  end;
end;

procedure TStuffToStoreF.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if ChkFlowForms(qryRecipts) then
    abort;
  if not CheckDay4Edit(qryinit, qryRecipts) then
    abort;
  if not CheckMakeDoc(DataSet) then
    abort;
  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    abort;

  IF not(qryReciptItems.State IN [dsedit]) then
    qryReciptItems.Edit;
end;

procedure TStuffToStoreF.SBtnReciptNumberClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT Recipts.ReciptID,Recipts.ReciptNumber,Recipts.ReciptDate,Stores.c_StoreName '
    + 'FROM Recipts INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID  ' +
    'WHERE (Recipts.ReciptType = ' + IntToStr(formtype) +
    'AND (Recipts.YearID = ' + IntToStr(APPBank.Year) + ') ' +
    ')AND (Recipts.ServerID = ' + IntToStr(opt.ServerID) + ') ';
  // Txt:=Txt+IfThen(RestartStore,'AND (Recipts.StoreID BETWEEN '+
  // IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ', txt,
    ['', 'شماره فرم', 'تاريخ', 'نام انبار'], Results,
    [50, 10, 50, 150], alLeft);
  if b then
    qryRecipts.Locate('ReciptID', Results[0], []);
end;

procedure TStuffToStoreF.qryReciptItemsShiftGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := ComboShift.Items
    [ComboShift.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TStuffToStoreF.qryReciptItemsShiftSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(ComboShift.Items.Objects[ComboShift.ItemIndex]);
end;

procedure TStuffToStoreF.InitDBCombos;
begin
  ComboShift.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT LookUpID,Name FROM LookUps WHERE(Kind = 251) ORDER BY Code';
    Active := True;
    while not Eof do
    begin
      ComboShift.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      next;
    end; // while
    Active := false;
  end; // with
end;

procedure TStuffToStoreF.qryReciptsStoreIDChange(Sender: TField);
begin
  inherited;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryEffect);
  edtUnitSellPrice.Visible := PriceOn_StoreType;
  edtTotalInputPrice.Visible := PriceOn_StoreType;
  edtContactRate.Visible := PriceOn_StoreType;
end;

procedure TStuffToStoreF.qryReciptsPersonID1Change(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName('ContactRate').AsCurrency :=
    qryRecipts.FieldByName('_ContactRate').AsCurrency;
end;

procedure TStuffToStoreF.actAddExecute(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT EffectID, EffectName, Coefficient, AmountRate FROM PurchaseEffect '
    + 'WHERE (NOT (EffectID IN (0';
  With qryEffect do
  begin
    First;
    while not Eof do
    begin
      txt := txt + ',' + FieldByName('EffectID').AsString;
      next;
    end;
    txt := txt + ')))';

  end;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '  عناوين موثر بر خريد خاص  ',
    txt, ['شماره', 'نام', 'ضريب', 'مقدار'], Results, [50, 150, 50, 50], alLeft);
  if b then
  begin
    if not(qryRecipts.State in dsEditModes) then
      qryRecipts.Edit;
    insertEffectItem(StrToInt(Results[0]));
  end;

end;

procedure TStuffToStoreF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TStuffToStoreF.qryReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbedtStoreID.Tag := qryRecipts.FieldByName('StoreID').AsInteger;
  BeforeStuffCode := qryReciptItems.FieldByName('StuffCode').AsLargeInt;
  ComboShift.Tag := qryReciptItems.FieldByName('Shift').AsInteger;
end;

procedure TStuffToStoreF.qryReciptItemsStuffCodeChange(Sender: TField);
begin
  inherited;
  insert_Effect;
end;

procedure TStuffToStoreF.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TStuffToStoreF.qryReciptItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TStuffToStoreF.actDeficitsExecute(Sender: TObject);
var
  PayablePrice: Currency;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeficitsLevelID'), qryRecipts) then
    abort;
  if qryRecipts.FieldByName('_HasDeficit').AsInteger <> 1 then
    Exit;
  qry_Deficits4Print.Requery();
  // if not (qryRecipts.State  in dseditmodes) then qryRecipts.Edit;
  ReciptsDeficitsF.enter(qryReciptItems, qryinit, qryRecipts,
    qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8],
    GetCustomersNoDiscount(qryRecipts, qryinit), Edit4Deficits);
  PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar2.Panels[4].Text := ' كسورات=' + CurrToStrF(PayablePrice,
    ffCurrency, 0);
  PayablePrice := Calc_SumFileds('Price', qryReciptItems, qryinit) +
    PayablePrice;
  StatusBar2.Panels[4].Text := StatusBar2.Panels[4].Text + ' قابل پرداخت=' +
    CurrToStrF(PayablePrice, ffCurrency, 0);
  if qryinit.FieldByName('DiscountActive').AsInteger = 1 then
    StatusBar2.Panels[4].Text := StatusBar2.Panels[4].Text + ' خالص ' +
      CurrToStrF(CalcSumFileds(qryReciptItems, 'TotallSellPrice') +
      CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);
  // qryRecipts.Post;
  qry_Deficits4Print.Requery();
end;

procedure TStuffToStoreF.plblPrintPayablePriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price', qryReciptItems, qryinit) +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)

end;

procedure TStuffToStoreF.plblShiftGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := ComboShift.Text
end;

procedure TStuffToStoreF.plblPrintnum2alphabetPayebelGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price', qryReciptItems, qryinit) +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';

end;

procedure TStuffToStoreF.qryReciptItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if PnlMachine.Visible then
    qryReciptItems.FieldByName('__MachineFullWeight_Weight').AsFloat :=
      qryReciptItems.FieldByName('MachineFullWeight').AsFloat -
      qryReciptItems.FieldByName('MachineWeight').AsFloat;

end;

procedure TStuffToStoreF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    qryReciptItems.DisableControls;
    qryEffect.DisableControls;
    qryEffectCTab.DisableControls;
    InitReportFile(ppReport1, 'StuffToStore', True)
  finally
    qryRecipts.EnableControls;
    qryReciptItems.EnableControls;
    qryEffect.EnableControls;
  end;

end;

procedure TStuffToStoreF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    qryReciptItems.DisableControls;
    qryEffect.DisableControls;
    qryEffectCTab.DisableControls;
    InitReportFile(ppReport1, 'StuffToStore' + IntToStr(formtype), True)
  finally
    qryRecipts.EnableControls;
    qryReciptItems.EnableControls;
    qryEffect.EnableControls
  end;

end;

procedure TStuffToStoreF.qryReciptItemsOutputEntityChange(Sender: TField);
begin
  inherited;
  qryReciptItems.FieldByName('Total' + FormInOut + 'Price').AsCurrency :=
    TotallPrice;
end;

end.
