unit ReciptsFunctions;

interface

uses Dialogs, ADODB, Forms, ppDBPipe, StrUtils, Vcl.DBGrids, SysUtils, sndkey32,
  db,
  System.Math, StdCtrls, Controls, editNew, DBCtrls, ActnList, Classes,
  EasyLinq, Vcl.ExtCtrls, System.JSON, REST.JSON, ComCtrls, DateUtils, Menus,
  SumDBGrid, uExtensionMethods, DBGrideh, CedarDbgrid, Vcl.Graphics,
  Winapi.Windows;

type
  THackQuery = class(TADOQuery);
  THackField = class(TField);
  TRecallEvent = (RE_RecallStateChange, RE_Recall);
  TSyntheticCode = (SyntheticCode, SyntheticCodeIn);

procedure SaveFormItems(qryItems: TADOQuery);
procedure LoadFormItems(qryItems: TADOQuery);
procedure ChangeSQlqryStuff(qryStuff, qryinit, qryRecipts: TADOQuery;
  lblWarn: TLabel);
// procedure ChkControlEntryCustInfo(qry4Chek: TADOQuery; lblWarn: TLabel);
procedure RefreshLookupList(const qry: TADOQuery);
function addAgreementsSQL(qryinit, qryRecipts: TADOQuery): String;
procedure chkPerson3ControlWeightCustomer(qryinit, qryRecipts: TADOQuery);
procedure DisplayLabel4InOut(qryinit, qryItems: TADOQuery);
procedure setLblCaptions(qryinit: TADOQuery; f: TForm);
procedure CopyNewRecipts(qryAllRecipts, qryRecipt, qryinit: TADOQuery);
procedure ReciptsSplit(qryRecipts, qryinit: TADOQuery);
procedure AllEdit(qryRecipts, qryItems: TADOQuery);
procedure AllEditUnitSellPrice(qryRecipts, qryItems: TADOQuery;
  FieldName: string);
procedure qryCustCreate(var qry: TADOQuery; CustNo: Char; self_: TForm);
procedure qryCustManagCreate(var qry: TADOQuery; CustNo: Char; self_: TForm);
procedure qryCustActive(var qry: TADOQuery; PersonID: Integer);
procedure qryTozinActive(var qry: TADOQuery; TozinID: Integer);
procedure FilterOnPrint(qryinit, qryItems: TADOQuery; FileName: string);
procedure qryGroupDeficitIDActive(var qry: TADOQuery; qryRecipts: TADOQuery);
procedure qryGroupDeficitIDCreate(var qry: TADOQuery; self_: TForm);
procedure qryTozinCreate(var qry: TADOQuery; self_: TForm);
function Calc_SumFileds(FiledName: String; qryItems, qryinit: TADOQuery)
  : Currency;
function UnitSellPriceAutoPrice_14_15(UnitSellPrice: Real;
  qryItems: TADOQuery): Real;
function BarCodeCount(Form_InOut: string;
  qryItems, qryRecipts, qryinit: TADOQuery; var EntityValue: Extended;
  StatusBar2: TStatusBar; PriceOn_StoreType: Boolean;
  var MachineFullWeight1: Real; FormOutput: Boolean;
  FieldNameEntity, FieldNameWeight: string; MenSellPrice: TPopupMenu;
  mnuSp: array of TMenuItem): Int64;
procedure GetStuffCodeFromsynthetic(StuffTecInfo: String;
  qryinit, qryItems: TADOQuery; aSyntheticCode: TSyntheticCode);
function EntityIsItemNote(qryItem: TADOQuery; IDName: string): Boolean;

function GetUnitSellPrice(qryItems, qryRecipts, qryinit: TADOQuery;
  FieldNameEntity: string; MenSellPrice: TPopupMenu; mnuSp: array of TMenuItem)
  : Currency;
function IsFormOutput(qryinit: TADOQuery): Boolean;
procedure StuffCodeChange(qryItems, qryRecipts, qryinit: TADOQuery;
  var EntityValue: Extended; StatusBar2: TStatusBar; PriceOn_StoreType: Boolean;
  var MachineFullWeight1: Real; FormOutput: Boolean;
  FieldNameEntity, FieldNameWeight: string; MenSellPrice: TPopupMenu;
  mnuSp: array of TMenuItem);
function GetSellPriceonCustValuationType(const Sp: array of Currency;
  MenSellPrice: TPopupMenu; mnuSp: array of TMenuItem; qryItems: TADOQuery)
  : Currency;
procedure CalcOnStuffDiscont(qryItems, qryRecipts, qryinit: TADOQuery);
function GetDays(i: Integer): Real;
procedure SetFieldIndexFormGrid(DBGrid: TDBGrid); overload;
procedure SetFieldIndexFormGrid(DBGrid: TDBGrideh); overload;

function LimitRecord(qryItems, qryinit: TADOQuery; InsertItem: Boolean)
  : Boolean;
procedure GetReciptID(qryRecipts, qryItems, qryinit: TADOQuery;
  EventKind: Byte);
procedure ReciptsSumOnStuffCode(qryRecipts, qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
procedure ReciptsSumOnStuffCodepreReciptItemID(qryRecipts, qryItems,
  qryinit: TADOQuery; FieldNameWeight, FieldNameEntity: string);

procedure ReciptsRecallEditKind(qryItems, qryRecipts, qryinit: TDataSet;
  Kind: TRecallEvent);
procedure VATActiveFields(qryStores, qryRecipts, qryItems, qryinit,
  qryCustomers2, qryCustomers1, qryStuff_Unit_TecInf: TADOQuery;
  DBGrid: TComponent; aTaxCoChange: TFieldNotifyEvent;
  aTaxValueChange: TFieldNotifyEvent; SumGrid1: TSumGrid);
procedure ControlCodeUnic(ReciptID: Integer; qryinit: TADOQuery);
procedure ControlCodeUnicOnType(qryItem, qryinit: TADOQuery);
procedure GetControlCode(qryinit, qryItems, qryRecipts: TADOQuery);
function OkDeleteItem(ReciptItemID: String; qryRecipts: TADOQuery): Boolean;
function OkDeleteMaster(ReciptID: String; var ReciptID4ParentReciptID: string;
  qryRecipts, qryinit: TADOQuery): Boolean;
procedure SellPriceCheck(qryItems, qryinit: TADOQuery);
procedure stCountFields(qryItems, qryinit: TADOQuery; DBGrid: TComponent;
  grdIndex: Integer; MyKeyFields: string; AddSt: Integer = 0);
function GetANewID4Excel(qryItems, qryRecipts, qryinit: TADOQuery;
  CheckStuffCode: Boolean = False): Boolean;
function RecallChangeType(var getresponseShow: Boolean;
  qryinit, qryAllRecipts: TADOQuery; formType: Integer; FormOutput: Boolean;
  qryRecipts, qryItems: TADOQuery; StoreID: Integer): Boolean;
procedure initAddmnuCofferType(frParent: TForm; qry_init, qry_Master: TADOQuery;
  MyMnu: TMenuItem);
procedure DarayiCaptions(EffectName: string; Memo1: TMemo;
  FilterStr: string = '');
function GetSellEffect(formType: Integer; qrySt: TADOQuery): string;
function OkEditMasterCo(qryRecipts, qryinit: TADOQuery;
  var Edit4Deficits: Boolean): Boolean;
function CheckControlPrintingByDate(qryinit, qryRecipts: TADOQuery;
  msgActive: Boolean = True): Boolean;
procedure Add2Customers(qryCust: TADOQuery; fld: TField;
  CustomerGrpID: Integer);
procedure Add2CustomersMasir(PersonID1: Integer; qryMasir: TADOQuery;
  fld: TField);
procedure InsertDefault(qryinit, qryItems, qryStuffCodingItems,
  qry_Lookup: TADOQuery);
function InitConstTypeOfSale(cmbTypeOfSale: TDBComboBox): string;
procedure ReturnRecallType9(qryInitQry, qryRecipts: TDataSet;
  popReturnRecall: TMenuItem);
procedure SendReciptsCorrelateSMS(ReciptID, ServerID, YearID: Integer);
function ChkReciptState4Delete(qryinit, qryRecipts: TADOQuery): Boolean;
function ReciptStateDeficitsVisible(qryRecipts: TADOQuery): Boolean;
procedure ReciptsGiftItemsOnStuffCode(qryRecipts, qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
procedure ReciptsGiftItemsOnStuffCode1(qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
procedure ReciptsGiftItemsOnStuffCode2(qryItems, qryinit: TADOQuery;
  FieldNameEntity: string; PersonID1: Integer);
procedure ReciptsGiftItemsOnStuffCode3(qryRecipts, qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
function GetPersonCaption(formType: Integer; qryWithCust: TADOQuery;
  custIDKindActive: Integer; OrginalSQL: string): string;
function changePersonIDInSQLText(SQLText: string;
  custIDKindActive: Integer): string;
function ChkIsStepCorrelate(qryRecipts: TADOQuery): Boolean;
procedure AddcmbHCKharidarTypeCode(cmbHCKharidarTypeCode: TDBComboBox);
procedure GetCustomersDiscount(qryRecipts, qryItems, qryinit: TADOQuery);
function GetCustomersNoDiscount(qryRecipts, qryinit: TADOQuery;
  ExtendedName: string = ''): Extended;
procedure ReciptBe4PostAutoPrice14(PersonID1: Integer;
  qryItems, qryinit: TADOQuery; ReviewOrders, ReviewRequests: Boolean;
  masg: string);
procedure PersonIdActive(Sid: Char; var qryinit, qryRecipts, qryCustomersN,
  qryCust, qryCustManag: TADOQuery; pnlPerson: TPanel; LblPerson: TLabel;
  dbtxtPersonID: TDBText; self_: TForm);
procedure TozinIDActive(var qryinit, qryRecipts, qryTozin: TADOQuery;
  pnlTozinID: TPanel; txtTozinID: TDBText; self_: TForm);
procedure PersonIDOnDetailActiveChange(Sender: TField;
  qryinit, qryItems: TADOQuery);
procedure PersonIDHistoryOnType(Sender: TDBEdit;
  qryRecipts, qryinit: TADOQuery);
procedure IRTAXIDFind(Sender: TObject);
procedure MachineNoHistory(Sender: TDBEdit; qryTozin, qryinit: TADOQuery);
procedure DesignFormIDActive(var qryinit, qryRecipts, qryDesignForm: TADOQuery;
  self_: TForm);
procedure allSortRecipts(qryRecipts, qryinit: TDataSet; Tag_: Integer);

procedure SetPersonCaption(ReciptTypes: string; qry4Set: TADOQuery);
function chkUsersStoreReciptTypes(StoreID, ReciptType: Integer): Boolean;
function Total(SellPrice: Real; qryIncorporate: TADOQuery; Form_InOut: string;
  UnitSellPrice: string = ''): String; overload;
function Total(SellPrice: String; qryIncorporate: TADOQuery; Form_InOut: string)
  : String; overload;

function CheckAidDateDay(qryinit, qryRecipts: TADOQuery): Boolean;
function GetFullCustName(CustID: Integer): string;
function IntToStrArzesh(Value: Int64): string;
procedure initOtherFieldCaptions(qryinit, qryItems, qryRecipts: TDataSet);
procedure ReciptType4Copy(qryAllRecipts, qryRecipts, qryItems,
  qryinit: TADOQuery);
procedure ChangerYearID(qryAllRecipts, qryRecipts: TADOQuery);
procedure HideOrShowSellPriceFields(DataSet: TDataSet; Grid: TCedarDbgrid);

implementation

uses DM, GlobalPro, MMESSAGE, Variants, FormFunctions, shamsiDate,
  CPortFunctions, FaraConsts, HelpShow, SMSUnit, GeneralDM, UModels,
  GeneralConst;

type
  TMyCofferType = class(TMenuItem)
  private
    FCofferType: Integer;
    DisplayFormType: Integer;
    FFormParent: TForm;
    FqryMaster: TADOQuery;
    Property CofferType: Integer read FCofferType write FCofferType;
    Property qryMaster: TADOQuery read FqryMaster write FqryMaster;
  public
    procedure Click; override;
  end;

  { TMyCofferType }

type
  TMyRecallType9 = class(TMenuItem)
  private
    qry_Recipts: TDataSet;
    FReciptType: Integer;
    // DisplayFormType: Integer;
    // FFormParent: TForm;
    Property ReciptType: Integer read FReciptType write FReciptType;
  public
    procedure Click; override;
  end;

const
  WaterCoConst = 100;

procedure HideOrShowSellPriceFields(DataSet: TDataSet; Grid: TCedarDbgrid);
const
  SellPriceFields: array [0 .. 14] of string = ('FirstSellPrice',
    'AddSellPrice', 'DecSellPrice', 'InvSellPrice', 'InTotallSellPrice',
    'OutTotallSellPrice', 'CalcuBacklogSellPrice', 'TotallSellPrice',
    'DifferTotallSellPrice', 'OtherTotallSellPrice', 'FirstSellPrice',
    'AddSellPrice', 'DecSellPrice', 'InvSellPrice', 'PureSell');
var
  i, j: Integer;
  Field: TField;
  Visible: Boolean;
begin
  if not Assigned(DataSet) or not Assigned(Grid) then
    Exit;

  Visible := opt.ActiveSellPrice2;

  // 1. تنظیم Visibility در DataSet
  for i := 0 to High(SellPriceFields) do
  begin
    Field := DataSet.FindField(SellPriceFields[i]);
    if Assigned(Field) then
      Field.Visible := Visible;
  end;

  // 2. اگر غیرفعال است، ستون‌ها را از گرید حذف کن (برای اطمینان کامل)
  if not Visible then
  begin
    for i := Grid.Columns.Count - 1 downto 0 do
    begin
      if Grid.Columns[i].FieldName = '' then
        Continue;
      for j := 0 to High(SellPriceFields) do
      begin
        if SameText(Grid.Columns[i].FieldName, SellPriceFields[j]) then
        begin
          Grid.Columns.Delete(i);
          Break;
        end;
      end;
    end;
  end;
end;

procedure TMyCofferType.Click;

var
  ReciptID, ServerID, YearID: Integer;
begin
  inherited;
  ReciptID := 0;
  ServerID := 0;
  YearID := 0;
  if qryMaster <> nil then
  begin
    ReciptID := qryMaster.FieldByName('ReciptID').AsInteger;
    ServerID := qryMaster.FieldByName('ServerID').AsInteger;
    YearID := qryMaster.FieldByName('YearID').AsInteger;
  end;
  ShowFormTypesForm(FFormParent, Caption, CofferType, DisplayFormType, 0, 0,
    ServerID, YearID, ReciptID, nil)
end;

procedure Add2Customers(qryCust: TADOQuery; fld: TField;
  CustomerGrpID: Integer);
var
  qry: TADOQuery;
  src: TDataSource;
begin
  if CustomerGrpID = 0 then
  begin
    Warn('كد گروه مشتري براي اضافه شدن مشتري در زمان ثبت وارد نشده');
    Exit;
  end;
  qry := TADOQuery.Create(DMf);
  src := TDataSource.Create(DMf);
  src.DataSet := qry;
  try
    with qry do
    begin
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT TOP 0 CustID, CustomerGrpID, CustName , Mobile,';
      SQL.Add('acc_TopicCode, acc_DetailCode, acc_CTopicCode, acc_CTopicCode2,');
      SQL.Add('acc_CTopicCode3, FirstUser, ModifyDate,InfoDate,TechnicalCode as pelak');
      SQL.Add(',InfoWeight,NationalID,City,Address,CarType');
      SQL.Add('FROM Customers');
      Active := True;
      FieldByName('Mobile').DisplayLabel := 'تلفن همراه/' + fld.DisplayLabel;
      FieldByName('CustName').DisplayLabel := fld.DisplayLabel; // 'نام مشتري';
      FieldByName('pelak').DisplayLabel := 'کد فنی';
      FieldByName('InfoWeight').DisplayLabel := 'وزن';

      FieldByName('NationalID').DisplayLabel := 'كد ملي';
      FieldByName('City').DisplayLabel := 'شهر';
      FieldByName('Address').DisplayLabel := 'آدرس';
      FieldByName('CarType').DisplayLabel := 'نوع خودرو';

      Insert;
      editNewF.show(src, dsInsert, [FieldByName('Mobile'),
        FieldByName('CustName'), FieldByName('pelak'),
        FieldByName('InfoWeight'), FieldByName('NationalID'),
        FieldByName('City'), FieldByName('Address'),
        FieldByName('CarType')], False);
      if (FieldByName('Mobile').AsString <> EmptyStr) and
        (FieldByName('CustName').AsString <> EmptyStr) and
        (FieldByName('pelak').AsString <> EmptyStr) then
      begin
        // FieldByName('CustID').AsString :=
        // RightStr(FieldByName('Mobile').AsString, 9);
        FieldByName('CustID').AsInteger :=
          GetANewCode('Customers',
          'Select max(CustID) from Customers where  CustomerGrpID =' +
          IntToStr(CustomerGrpID), 'CustID');
        // FieldByName('TechnicalCode').AsString :=
        // FieldByName('TechnicalCode').AsString;
        FieldByName('acc_TopicCode').AsInteger := 0;
        FieldByName('acc_DetailCode').AsInteger := FieldByName('CustID')
          .AsInteger;
        FieldByName('acc_CTopicCode').AsInteger := 0;
        FieldByName('acc_CTopicCode2').AsInteger := 0;
        FieldByName('acc_CTopicCode3').AsInteger := 0;
        FieldByName('FirstUser').AsString := User.Name;
        FieldByName('ModifyDate').AsDateTime := Now;
        FieldByName('InfoDate').AsString := var_glb_CurrentDate;
        FieldByName('CustomerGrpID').AsInteger := CustomerGrpID;

        try
          if FieldByName('CustID').AsInteger <> 0 then
            Post;
          qryCust.Requery();
          fld.AsInteger := FieldByName('CustID').AsInteger;
          // if qryMain <> nil then
          // begin
          // qryMain.FieldByName('MachineNo').AsString :=
          // FieldByName('pelak').AsString;
          // qryMain.FieldByName('MachineName').AsString :=
          // FieldByName('CustName').AsString;
          // end;

          if (fld.FieldName = 'PersonID2') and
            (fld.DataSet.FieldByName('MachineNo') <> nil) then
          begin
            fld.DataSet.FieldByName('MachineNo').AsString :=
              FieldByName('pelak').AsString;
            fld.DataSet.FieldByName('MachineName').AsString :=
              FieldByName('CustName').AsString;

          end;
        except
          on E: Exception do
          begin
            fld.AsInteger := FieldByName('CustID').AsInteger;
            Warn2(E.Message);
          end;
        end;
      end;
    end;
  finally
    FreeReservedCodes(DMf.adcBSell, 'Customers', '');
    qry.Free;
    src.Free;
  end;

end;

procedure Add2CustomersMasir(PersonID1: Integer; qryMasir: TADOQuery;
  fld: TField);
var
  qry: TADOQuery;
  src: TDataSource;
begin
  qry := TADOQuery.Create(DMf);
  src := TDataSource.Create(DMf);
  src.DataSet := qry;
  try
    with qry do
    begin
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT ID,PersonID1, MasirID, MasirNote';
      SQL.Add('FROM CustomersMasir');
      SQL.Add('WHERE (PersonID1 = :PersonID1 )');
      SQL.Add('ORDER BY ID DESC');
      Parameters.ParamByName('PersonID1').Value := PersonID1;
      Active := True;
      FieldByName('MasirNote').DisplayLabel := 'آدرس';
      Insert;
      FieldByName('MasirID').AsInteger := 1;
      editNewF.show(src, dsInsert, [FieldByName('MasirNote')], False);
      if (FieldByName('MasirNote').AsString <> EmptyStr) then
      begin
        FieldByName('PersonID1').AsInteger := PersonID1;
        try
          Post;
          Requery();
          qryMasir.Requery();
          fld.AsInteger := FieldByName('ID').AsInteger;
        except
          on E: Exception do
          begin
            fld.AsInteger := FieldByName('ID').AsInteger;
            Warn2(E.Message);
          end;
        end;
      end;
    end;
  finally
    qry.Free;
    src.Free;
  end;

end;

function OkEditMasterCo(qryRecipts, qryinit: TADOQuery;
  var Edit4Deficits: Boolean): Boolean;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
      + 'WHERE Recipts.ParentCoReciptID =' + qryRecipts.FieldByName
      ('ReciptID').AsString;
    SQL.Add('AND ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID = ' + qryRecipts.FieldByName('YearID').AsString);
    Active := True;
    Result := IsEmpty;
    if not Result then
    begin
      Result := False;

      if Edit4Deficits then
        Result := True
      else
        Warn('از اين ' + qryinit.FieldByName('ReciptCaption').AsString + ' در '
          + Fields[2].AsString + '  با شماره ' + Fields[0].AsString +
          ' و تاريخ ' + Fields[1].AsString +
          '  استفاده شده است و قابل ويرايش نيست.‏');
    end;
    Active := False;
  end; // with
end;

function CheckControlPrintingByDate(qryinit, qryRecipts: TADOQuery;
  msgActive: Boolean = True): Boolean;
begin
  case qryinit.FieldByName('ControlPrintingByDate').AsInteger of
    0:
      Result := True;
    1:
      Result := qryRecipts.FieldByName('ReciptDate')
        .AsString = var_glb_CurrentDate;

    2:
      Result := User.PowerUser or
        (qryRecipts.FieldByName('ReciptDate').AsString = var_glb_CurrentDate);
  else
    Result := True;
  end;

  if (not Result) and msgActive then
    Warn('كنترل چاپ بر حسب تاريخ', mtInformation);
end;

function GetSellEffect(formType: Integer; qrySt: TADOQuery): string;
var
  FormTypes: String;
begin
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'DECLARE @ReciptType varchar(500)';
    SQL.Add('DECLARE @ReciptCaption varchar(1000)');
    SQL.Add('SET @ReciptType = ''' + IntToStr(formType) + '''');
    SQL.Add('SET @ReciptCaption = '' ''');
    SQL.Add('SELECT @ReciptType= @ReciptType+'',''+LTRIM(STR(ReciptType))');
    SQL.Add(',      @ReciptCaption= @ReciptCaption+'',''+ReciptCaption');
    SQL.Add('FROM ReciptTypes');
    case formType of
      12:
        SQL.Add('WHERE (SellEffect = 1)');
      5:
        SQL.Add('WHERE (BuyEffect = 1)');
      6:
        SQL.Add('WHERE (SellEffect = 2)');
    else
      FormTypes := IntToStr(formType);
    end;
    SQL.Add('SELECT @ReciptType,@ReciptCaption');
    Active := True;
    FormTypes := Fields[0].AsString;
    Result := Fields[1].AsString;
  end;

  qrySt.SQL.Text := StringReplace(qrySt.SQL.Text, ':Recipt__Type', FormTypes,
    [rfReplaceAll]);

end;

procedure initAddmnuCofferType(frParent: TForm; qry_init, qry_Master: TADOQuery;
  MyMnu: TMenuItem);
var
  Itm: TMyCofferType;
  qryFormTypes: TADOQuery;
begin
  qryFormTypes := TADOQuery.Create(MyMnu);
  with qryFormTypes do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT FormType,FormCaption,DisplayFormType';
      SQL.Add('FROM FormTypes');
      SQL.Add('WHERE ('',' + qry_init.FieldByName('CofferType').AsString +
        ','' LIKE ''%,'' + LTRIM(RTRIM(STR(FormType))) + '',%'')');
      Active := True;
      MyMnu.Clear;
      while not Eof do
      begin
        Itm := TMyCofferType.Create(MyMnu);
        Itm.Caption := FieldByName('FormCaption').AsString;
        Itm.CofferType := FieldByName('FormType').AsInteger;
        Itm.DisplayFormType := FieldByName('DisplayFormType').AsInteger;
        Itm.FFormParent := frParent;
        Itm.qryMaster := qry_Master;
        MyMnu.Add(Itm);
        Next;
      end;
      MyMnu.Visible := RecordCount > 0;
    finally
      Free;
    end;
end;

procedure setLblCaptions(qryinit: TADOQuery; f: TForm);
begin

end;

procedure DarayiCaptions(EffectName: string; Memo1: TMemo;
  FilterStr: string = '');
var
  s: string;
begin
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptCaption';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (' + EffectName + ' <> 0)');
    SQL.Add(FilterStr);
    Active := True;
    s := 'عنوان فرم: ';
    while not Eof do
    begin
      s := s + Fields[0].AsString + ifthen(RecNo = RecordCount, '', ' و ');
      Next;
    end;
    Active := False;
    Memo1.Lines.Add(s);
    Memo1.Height := Memo1.Lines.Count * 15;
  end;
end;

function RecallChangeType(var getresponseShow: Boolean;
  qryinit, qryAllRecipts: TADOQuery; formType: Integer; FormOutput: Boolean;
  qryRecipts, qryItems: TADOQuery; StoreID: Integer): Boolean;

begin
  Result := qryinit.FieldByName('RecallType').AsInteger <> 9;
  if Result then
    Exit;
  getresponseShow := False;
  CallRecall(qryinit, formType, FormOutput, qryRecipts, qryItems, qryAllRecipts,
    StoreID, '', '', nil, []);
  getresponseShow := True;

end;

function GetANewID4Excel(qryItems, qryRecipts, qryinit: TADOQuery;
  CheckStuffCode: Boolean = False): Boolean;
var
  YearID, ServerID, StepCorrelate: Integer;
  formName, tblName, fldName, s, st: String;
  qryStuff: TADOQuery;
  i: Largeint;
  function chkStuffCode(StuffCode: Largeint): String;
  begin
    with qryStuff do
    begin
      Active := True;
      if Locate('c_StuffCode', StuffCode, []) then
        Result := EmptyStr
      else
        Result := IntToStr(StuffCode)
    end;
  end;

begin
  Result := True;
  with qryItems do
  begin
    qryRecipts.Edit;
    YearID := qryRecipts.FieldByName('YearID').AsInteger;
    ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
    formName := qryinit.FieldByName('ReciptType').AsString;
    tblName := 'reciptitems';
    fldName := 'ReciptItemID';
    StepCorrelate := qryinit.FieldByName('StepCorrelate').AsInteger;
    i := GetANewID(nil, formName, tblName, fldName, qryRecipts, StepCorrelate);
    Add2InProcess(qryItems.Connection, formName, tblName, fldName,
      IntToStr(i + (qryItems.RecordCount * StepCorrelate) + StepCorrelate));
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('ReciptItemID').AsInteger = 0 then
      begin
        Edit;
        FieldByName('ReciptItemID').AsInteger := i;
        FieldByName('YearID').AsInteger := YearID;
        FieldByName('ServerID').AsInteger := ServerID;
        Post;
      end;
      Application.ProcessMessages;
      i := i + StepCorrelate;
      Next;
    end;
    if CheckStuffCode then
    begin
      qryStuff := TADOQuery.Create(nil);
      with qryStuff do
      begin
        Connection := DMf.adcBSell;
        LockType := ltReadOnly;
        SQL.Text := 'SELECT c_StuffCode FROM StuffCoding ';
      end;
      First;
      while not Eof do
      begin
        s := chkStuffCode(FieldByName('StuffCode').AsLargeInt);
        if s <> EmptyStr then
          st := st + #13#10 + s;
        Next;
      end;
      qryStuff.Free;
    end;
    EnableControls;
    if st <> EmptyStr then
    begin
      Result := False;
      HelpShowF.enter(st, 'كالاهايي كه در كدينگ كالا تعريف نشده اند');
    end;
  end;
end;

procedure SellPriceCheck(qryItems, qryinit: TADOQuery);
begin
  if qryinit.FieldByName('SellPriceCheck').AsInteger = 0 then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT SellPrice1 FROM StuffCoding WHERE c_StuffCode = ' +
      qryItems.FieldByName('StuffCode').AsString;
    Active := True;
    if qryItems.FieldByName('UnitSellPrice').AsCurrency < Fields[0].AsCurrency
    then
      Warn(' قيمت ثبت شده از قيمت بهاي فروش 1 كمتر مي باشد.' + #13#10 +
        CurrToStrF(Fields[0].AsCurrency, ffCurrency, 0), mtInformation);
    Active := False;
  end; // with

end;

function OkDeleteMaster(ReciptID: String; var ReciptID4ParentReciptID: string;
  qryRecipts, qryinit: TADOQuery): Boolean;
begin
  ReciptID4ParentReciptID := '';
  if ChkIsStepCorrelate(qryRecipts) then
  begin
    Result := True;
    ReciptID4ParentReciptID := qryRecipts.FieldByName('ReciptID').AsString;
    Exit;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
      + 'WHERE (ParentReciptID= ' + ReciptID + '  OR   ParentCoReciptID= ' +
      ReciptID + ')';
    SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
    Active := True;
    Result := IsEmpty;
    // Warn(ReciptID);
    if not Result then
      Warn('از اين ' + qryinit.FieldByName('ReciptCaption').AsString + ' در ' +
        Fields[2].AsString + '  با شماره ' + Fields[0].AsString + ' و تاريخ ' +
        Fields[1].AsString + '  استفاده شده است و قابل حذف نيست.‏',
        mtInformation);
    Active := False;
  end; // with
end;

function OkDeleteItem(ReciptItemID: String; qryRecipts: TADOQuery): Boolean;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM         Recipts INNER JOIN ' +
      'ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID  '
      + 'AND Recipts.YearID = ReciptItems.YearID INNER JOIN ' +
      'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ' +
      'WHERE  ReciptItems.preReciptItemID in(' + ifthen(ReciptItemID = '', '0',
      ReciptItemID) + ')';
    SQL.Add('and Recipts.ServerID = ' + qryRecipts.FieldByName('ServerID')
      .AsString);
    SQL.Add('and Recipts.YearID = ' + qryRecipts.FieldByName('YearID')
      .AsString);

    Active := True;
    Result := IsEmpty;
    if not Result then
      Warn('از اين كالا در ' + Fields[2].AsString + '  با شماره ' +
        Fields[0].AsString + ' و تاريخ ' + Fields[1].AsString +
        '  استفاده شده است و قابل حذف نيست.‏', mtInformation);
    Active := False;
  end; // with
end;

procedure ControlCodeUnic(ReciptID: Integer; qryinit: TADOQuery);
begin
  if not opt.ControlCodeActive > 0 then
    Exit;

  if qryinit.FieldByName('ControlCodeUnic').AsInteger = 0 then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT  COUNT(ControlCode) AS ControlCode';
    SQL.Add('FROM ReciptItems  GROUP BY ReciptID, ControlCode');
    SQL.Add('HAVING      (ReciptID =' + IntToStr(ReciptID) + ')');
    SQL.Add('ORDER BY COUNT(ControlCode) DESC');
    Active := True;
    if Fields[0].AsInteger > 1 then
    begin
      Warn('شماره راهنماي تکراري وجود دارد', mtInformation);
    end;
    Active := False;
  end; // with
end;

procedure ControlCodeUnicOnType(qryItem, qryinit: TADOQuery);
var
  s: string;
begin
  if not opt.ControlCodeActive > 0 then
    Exit;
  if qryinit.FieldByName('ControlCodeUnic').AsInteger = 0 then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(Ri.ControlCode) AS C,Ri.ControlCode,MAX(ReciptNumber) AS ReciptNumber';
    SQL.Add('FROM ReciptItems AS Ri INNER JOIN');
    SQL.Add('Recipts AS R ON Ri.ReciptID = R.ReciptID AND Ri.ServerID = R.ServerID AND Ri.YearID = R.YearID');
    SQL.Add('WHERE (R.ReciptType = ' + qryinit.FieldByName('ReciptType')
      .AsString + ')');
    SQL.Add('and R.YearID = ' + qryItem.FieldByName('YearID')
      .AsInteger.ToString);
    SQL.Add('and R.ReciptID = ' + qryItem.FieldByName('ReciptID')
      .AsInteger.ToString);
    SQL.Add('and R.ServerID = ' + qryItem.FieldByName('ServerID')
      .AsInteger.ToString);
    SQL.Add('GROUP BY Ri.ControlCode, R.ReciptType');
    SQL.Add('HAVING  COUNT(Ri.ControlCode)>1');
    SQL.Add('ORDER BY  COUNT(Ri.ControlCode) DESC');
    Active := True;
    if Fields[0].AsInteger > 1 then
    begin
      s := qryItem.FieldByName('ControlCode').DisplayLabel +
        ' تکراري وجود دارد';
      s := s + #13#10 + Format(' (کد %d تکراری) در شماره فرم %d وجود دارد',
        [Fields[1].AsLargeInt, Fields[2].AsLargeInt]);
      Warn(s, mtInformation);
      Warn2(s, 0);
    end;
    Active := False;
  end;
end;

procedure GetControlCode(qryinit, qryItems, qryRecipts: TADOQuery);
var
  ControlCode2, ControlCode: Largeint;
  formType: Integer;
  txt, S_Sort, sLeft: string;
begin
  if (qryinit.FieldByName('MaxControlCode').AsInteger = 2) then
    try

      ControlCode := 0;
      formType := qryinit.FieldByName('ReciptType').AsInteger;
      qryItems.DisableControls;
      // qryItems.AfterPost := nil;
      // qryItems.BeforePost := nil;

      // S_Sort := qryItems.Sort;
      // qryItems.Sort := 'ControlCode';
      qryItems.First;
      while not qryItems.Eof do
      begin
        if (qryItems.FieldByName('ControlCode').AsLargeInt = 0) or
          (ControlCode = qryItems.FieldByName('ControlCode').AsLargeInt) then
        begin
          qryItems.Edit;
          // txt := 'SELECT LTRIM(' + qryRecipts.FieldByName('StoreID').AsString.Trim
          // + ')+LTRIM(' + qryRecipts.FieldByName('YearID').AsString.Trim +
          // ')+RIGHT( ''00000''+LTRIM ( MAX(ReciptItems.ControlCode)+1),5) AS ControlCode'

          sLeft := qryRecipts.FieldByName('StoreID').AsString.Trim +
            RightStr(qryRecipts.FieldByName('YearID').AsString.Trim, 2);

          txt := 'SELECT LTRIM(' + qryRecipts.FieldByName('StoreID')
            .AsString.Trim + ')+LTRIM(''' +
            RightStr(qryRecipts.FieldByName('YearID').AsString.Trim, 2) +
            ''' )+RIGHT(''00000''+LTRIM(MAX(CAST(RIGHT(LTRIM(ReciptItems.ControlCode),5) AS int))),5)  AS ControlCode '

            + ' FROM ReciptItems INNER JOIN' +
            ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND'
            + ' ReciptItems.YearID = Recipts.YearID' +
            ' WHERE (ReciptItems.YearID = ' + qryRecipts.FieldByName('YearID')
            .AsString + ') AND (Recipts.StoreID = ' + qryRecipts.FieldByName
            ('StoreID').AsString + ') '
          // + ' AND (Recipts.ReciptType = ' + qryRecipts.FieldByName('ReciptType').AsString + ')'
          // + ' AND (Recipts.ID <> ' + qryRecipts.FieldByName('ID').AsString + ')'
            + ' AND  left(LTRIM(ReciptItems.ControlCode),' +
            IntToStr(Length(sLeft)) + ')=''' + sLeft + ''' ' // +
          // ' AND (Recipts.PersonID4 = ' + qryRecipts.FieldByName('PersonID4')
          // .AsString + ') '
            ;

          ControlCode2 := GetANewCode(IntToStr(formType), txt, 'ControlCode');
          if Length(ControlCode2.ToString) > 3 then
            qryItems.FieldByName('ControlCode').AsLargeInt := ControlCode2

          else
            qryItems.FieldByName('ControlCode').AsString := sLeft + '000' +
              abs(qryItems.RecNo).ToString
            // qryItems.Post;
        end;
        ControlCode := qryItems.FieldByName('ControlCode').AsLargeInt;
        qryItems.Next;
      end;

      // qryItems.Sort := S_Sort;
      qryItems.EnableControls;
      // qryItems.AfterPost := qryItemsAfterPost;
      // qryItems.BeforePost := qryItemsBeforePost;

    finally
    end;

end;

procedure VATActiveFields(qryStores, qryRecipts, qryItems, qryinit,
  qryCustomers2, qryCustomers1, qryStuff_Unit_TecInf: TADOQuery;
  DBGrid: TComponent; aTaxCoChange: TFieldNotifyEvent;
  aTaxValueChange: TFieldNotifyEvent; SumGrid1: TSumGrid);
var
  b: Boolean;
  i: Integer;
  DBGrid1: TDBGrid;
  GidCedar: TCedarDbgrid;
  DiscountActive: Integer;
begin
  if DBGrid is TDBGrid then
  begin
    DBGrid1 := TDBGrid(DBGrid);
    GidCedar := nil;
  end
  else
  begin
    GidCedar := TCedarDbgrid(DBGrid);
    DBGrid1 := nil;
  end;
  DiscountActive := qryinit.FieldByName('DiscountActive').AsInteger;
  With qryinit do
  begin
    b := FieldByName('VATActive').AsInteger >= 1;
    if b and (qryItems.FindField('TaxCo') = nil) then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'TaxCo';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'درصدماليات';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := ColumnIndexByFieldName(DBGrid, 'TotalDeficient') + 1;
        if i = 0 then
          i := ColumnIndexByFieldName(DBGrid, 'DeficitValue') + 1;
        OnChange := aTaxCoChange; // qryItemsTaxCoChange
        if DBGrid1 <> nil then
          With DBGrid1.Columns.Add do
          begin
            FieldName := 'TaxCo';
            Index := i;
            Alignment := taCenter;
            ReadOnly := ((not(CurAccess and Integer(akEditTax) <> 0)) and
              not User.PowerUser);
          end
        else if GidCedar <> nil then
          With GidCedar.Columns.Add do
          begin
            FieldName := 'TaxCo';
            Index := i;
            Alignment := taCenter;
            ReadOnly := ((not(CurAccess and Integer(akEditTax) <> 0)) and
              not User.PowerUser);
            // Footer.ValueType := fvtSum;
          end;

        if SumGrid1 <> NIL then
          SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';';
        // if DBGrid2 <> nil then
        // DBGrid2.Add2SumFooter(FieldName);
      end;
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'TaxValue';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مبلغ ماليات';
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        qryItems.FieldByName(FieldName).OnChange := aTaxValueChange;
        // qryItemsTaxValueChange;
        if DBGrid1 <> nil then
          With DBGrid1.Columns.Add do
          begin
            FieldName := 'TaxValue';
            Index := i + 1;
            ReadOnly := FieldByName('VATActive').AsInteger in [0, 1];
          end
        else if GidCedar <> nil then
          With GidCedar.Columns.Add do
          begin
            FieldName := 'TaxValue';
            Index := i + 1;
            ReadOnly := FieldByName('VATActive').AsInteger in [0, 1];
            // Footer.ValueType := fvtSum;
          end;
        if SumGrid1 <> NIL then
          SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';';
        // if DBGrid2 <> nil then
        // DBGrid2.Add2SumFooter(FieldName);
      end;
      with TWordField.Create(qryItems) do
      begin
        FieldName := '_VatExempt';
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        qryItems.FieldDefs.Add(Name, ftWord, 0, False);
        KeyFields := 'StuffCode';
        LookupDataSet := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'VatExempt';
      end;
      with TFloatField.Create(qryItems) do
      begin
        FieldName := '_VatExemptCo';
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        qryItems.FieldDefs.Add(Name, ftWord, 0, False);
        KeyFields := 'StuffCode';
        LookupDataSet := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'VatExemptCo';
      end;
    end;
    b := FieldByName('AutoPrice').AsInteger = 12;
    if b then
    begin
      with TWordField.Create(qryRecipts) do
      begin
        FieldName := '_TypeOfSale';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        qryRecipts.FieldDefs.Add(Name, ftWord, 0, False);
        KeyFields := 'StoreID';
        LookupDataSet := qryStores;
        LookUpKeyFields := 'n_StoreID';
        LookupResultField := 'TypeOfSale';
      end;
    end;

    b := FieldByName('CustomersNoDiscount').AsInteger = 2;
    if b and (qryCustomers2 <> nil) then
    begin
      with TFloatField.Create(qryRecipts) do
      begin
        FieldName := '_CustomersDiscount2';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        qryRecipts.FieldDefs.Add(Name, ftFloat, 0, False);
        KeyFields := 'PersonID2';
        LookupDataSet := qryCustomers2;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'Discount';
      end;
    end;

    b := DiscountActive and Integer(CHkDeficitValue1OfDiscount1) <> 0;
    if b then
    begin
      with TFloatField.Create(qryRecipts) do
      begin
        case FieldByName('CustomersNoDiscount').AsInteger of
          0, 1:
            begin
              FieldName := '_CustomersDiscountOne';
              KeyFields := 'PersonID1';
              LookupDataSet := qryCustomers1;
            end
        else
          begin
            FieldName := '_CustomersDiscount2One';
            KeyFields := 'PersonID2';
            LookupDataSet := qryCustomers2;
          end;

        end;

        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        qryRecipts.FieldDefs.Add(Name, ftFloat, 0, False);

        LookUpKeyFields := 'CustID';
        LookupResultField := 'DiscountOne';
      end;
    end;

  end;

end;

procedure stCountFields(qryItems, qryinit: TADOQuery; DBGrid: TComponent;
  grdIndex: Integer; MyKeyFields: string; AddSt: Integer = 0);
var
  i, j: Integer;
  qry: TADOQuery;
  TsAddField, TsAddFieldCaption: TStringList;
  DBGrid1: TDBGrid;
  DBGrid2: TDBGrideh;
begin
  if DBGrid is TDBGrid then
  begin
    DBGrid1 := TDBGrid(DBGrid);
    DBGrid2 := nil;
  end
  else
  begin
    DBGrid1 := nil;
    DBGrid2 := TDBGrideh(DBGrid);
  end;
  if opt.stCount > 0 then
    for j := 1 to opt.stCount do
    begin
      i := j + AddSt;
      With qry do
      begin
        qry := TADOQuery.Create(qryItems.Owner);
        Name := 'qrylookupst' + IntToStr(i);
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT StuffCoding.c_StuffCode, LookUps4Type.Name';
        SQL.Add(',StuffCoding.st' + IntToStr(j));
        SQL.Add('FROM StuffCoding INNER JOIN');
        SQL.Add('LookUps4Type(' + IntToStr(i + 300) +
          ') AS LookUps4Type ON StuffCoding.st' + IntToStr(j) +
          ' = LookUps4Type.Code');
        SQL.Add('WHERE (StuffCoding.State = 0)');
        LockType := ltReadOnly;
        Active := True;
      end;
      if (qryItems.FindField('_st' + IntToStr(i)) <> nil) then
        qryItems.FieldByName('_st' + IntToStr(i)).Free;

      if (qryItems.FindField('st' + IntToStr(i)) <> nil) then
        qryItems.FieldByName('st' + IntToStr(i)).Free;

      with TStringField.Create(qryItems) do
      begin
        FieldName := '_st' + IntToStr(i);
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := GetStName(i);
        KeyFields := MyKeyFields;
        LookupDataSet := qry;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'Name';
        Size := 50;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        ReadOnly := True;
        if DBGrid1 <> nil then
        begin
          With DBGrid1.Columns.Add do
          begin
            FieldName := '_st' + IntToStr(i);
            Index := grdIndex;
            inc(grdIndex);
          end;
        end
        else if DBGrid2 <> nil then
        begin
          With DBGrid2.Columns.Add do
          begin
            FieldName := '_st' + IntToStr(i);
            Index := grdIndex;
            inc(grdIndex);
          end;
        end;

      end;
    end; // for

  // if AddSt <> 0 then
  // Exit;

  TsAddField := TStringList.Create;
  TsAddField.Text := StringReplace(qryinit.FieldByName('StuffCodingAddField')
    .AsString, ';', #13, [rfReplaceAll]);

  TsAddFieldCaption := TStringList.Create;
  TsAddFieldCaption.Text :=
    StringReplace(qryinit.FieldByName('StuffCodingAddFieldCaption').AsString,
    ';', #13, [rfReplaceAll]);

  if TsAddField.Count > 0 then
  begin
    With qry do
    begin
      qry := TADOQuery.Create(qryItems.Owner);
      Name := 'qrylookupStuffCoding';
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT c_StuffCode';
      for i := 0 to TsAddField.Count - 1 do
        SQL.Add(',' + TsAddField[i]);
      SQL.Add('FROM StuffCoding ');
      SQL.Add('WHERE (State = 0)');
      LockType := ltReadOnly;
      Active := True;
    end;
    for i := 0 to TsAddField.Count - 1 do
    begin
      if (qryItems.FindField('_F_' + TsAddField[i]) <> nil) then
        qryItems.FieldByName('_F_' + TsAddField[i]).Free;

      with TStringField.Create(qryItems) do
      begin
        FieldName := '_F_' + TsAddField[i];
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := TsAddFieldCaption[i];
        KeyFields := MyKeyFields;
        LookupDataSet := qry;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := TsAddField[i];
        Size := 50;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        ReadOnly := True;
        if DBGrid1 <> nil then
        begin
          With DBGrid1.Columns.Add do
          begin
            FieldName := '_F_' + TsAddField[i];
            Index := grdIndex;
            inc(grdIndex);
          end;
        end
        else if DBGrid2 <> nil then
        begin
          With DBGrid2.Columns.Add do
          begin
            FieldName := '_F_' + TsAddField[i];
            Index := grdIndex;
            inc(grdIndex);
          end;
        end

      end;
    end;
  end;
  TsAddField.Free;
  TsAddFieldCaption.Free;

end;

procedure ReciptsRecallEditKind(qryItems, qryRecipts, qryinit: TDataSet;
  Kind: TRecallEvent);
var
  i, RecallEditKind: Integer;
begin
  RecallEditKind := qryinit.FieldByName('RecallEditKind').AsInteger;
  if RecallEditKind < 2 then
    Exit;
  if RecallEditKind = 6 then
    With qryRecipts do
    begin
      for i := 0 to FieldCount - 1 do
        Fields[i].ReadOnly := True;
      FieldByName('ModifyDate').ReadOnly := False;
      FieldByName('ReciptValue').ReadOnly := False;
      FieldByName('AidDate').ReadOnly := False;
      FieldByName('DefaultDate').ReadOnly := False;
      FieldByName('ReciptID').ReadOnly := False;
      FieldByName('YearID').ReadOnly := False;
      FieldByName('ServerID').ReadOnly := False;
      FieldByName('ReciptNumber').ReadOnly := False;
      FieldByName('EditTime').ReadOnly := False;
      FieldByName('LastUser').ReadOnly := False;
    end;

  if Kind = RE_RecallStateChange then
  begin
    // With qryRecipts do
    // begin
    // for i:=0 to FieldCount-1 do Fields[i].ReadOnly:=True;
    // FieldByName('ModifyDate').ReadOnly:=False;
    // FieldByName('ReciptValue').ReadOnly:=False;
    // FieldByName('AidDate').ReadOnly:=False;
    // FieldByName('DefaultDate').ReadOnly:=False;
    // FieldByName('ReciptID').ReadOnly:=False;
    // FieldByName('YearID').ReadOnly:=False;
    // FieldByName('ServerID').ReadOnly:=False;
    // end;// qryRecipts
    With qryItems do
    begin
      for i := 0 to FieldCount - 1 do
        Fields[i].ReadOnly := True;
      FieldByName('UnitSellPrice').ReadOnly := False;
      FieldByName('TotalInputPrice').ReadOnly := False;
      FieldByName('TotalOutputPrice').ReadOnly := False;
      if RecallEditKind in [3] then // , 9
      begin
        FieldByName('InputWeight').ReadOnly := False;
        FieldByName('OutputWeight').ReadOnly := False;

        FieldByName('InputEntity').ReadOnly := False;
        FieldByName('OutputEntity').ReadOnly := False;

      end;
      if (RecallEditKind in [9]) and
        (qryRecipts.FieldByName('ReciptState').AsInteger = 0) then
      begin
        FieldByName('UseUnitID').ReadOnly := False;

        FieldByName('InputWeight').ReadOnly := False;
        FieldByName('OutputWeight').ReadOnly := False;

        FieldByName('InputEntity').ReadOnly := False;
        FieldByName('OutputEntity').ReadOnly := False;
        if FindField('InBox') <> nil then
          FieldByName('InBox').ReadOnly := False;

      end;
      if (RecallEditKind in [9]) and
        (qryRecipts.FieldByName('ReciptState').AsInteger = 1) then
        MyEditableFields(qryItems, qryinit);

      FieldByName('ControlCode').ReadOnly := False;
      FieldByName('AidDate').ReadOnly := False;
      FieldByName('ItemDate').ReadOnly := False;
      FieldByName('DeficitValue').ReadOnly := False;
      FieldByName('TotalStandardRate').ReadOnly := False;
      FieldByName('StandardRate').ReadOnly := False;
      FieldByName('TotallSellPrice').ReadOnly := False;
      FieldByName('ReciptID').ReadOnly := False;
      FieldByName('YearID').ReadOnly := False;
      FieldByName('ServerID').ReadOnly := False;
      FieldByName('ReciptItemID').ReadOnly := False;
      FieldByName('FirstUser').ReadOnly := False;
      FieldByName('LastUser').ReadOnly := False;
      FieldByName('WaterCo').ReadOnly := False;
      FieldByName('AidNumber').ReadOnly := False;
      FieldByName('AidDate').ReadOnly := False;
      FieldByName('PersonID1').ReadOnly := False;
      FieldByName('InsertTime').ReadOnly := False;

      FieldByName('prvYearID').ReadOnly := False;
      FieldByName('RequestedEntity').ReadOnly := False;
      FieldByName('RequestedWeight').ReadOnly := False;
      FieldByName('AcceptEntity').ReadOnly := False;
      FieldByName('RollbackWeight').ReadOnly := False;
      FieldByName('RollbackEntity').ReadOnly := False;
      FieldByName('RollbackEntity').ReadOnly := False;

      FieldByName('SecondTypeItem').ReadOnly := False;

      FieldByName('DiagnosisCalcTotalPrice').ReadOnly := False;

      if qryinit.FieldByName('VATActive').AsInteger >= 1 then
      begin
        FieldByName('TaxCo').ReadOnly := False;
        FieldByName('TaxValue').ReadOnly := False;
      end;
    end; // qryItems

  end;
  if Kind = RE_Recall then
    With qryItems do
    begin
      FieldByName('StuffCode').ReadOnly := False;
      FieldByName('OutputEntity').ReadOnly := False;
      FieldByName('OutputWeight').ReadOnly := False;
      FieldByName('InputEntity').ReadOnly := False;
      FieldByName('InputWeight').ReadOnly := False;
      FieldByName('StuffAlloy').ReadOnly := False;
      FieldByName('StuffGrade').ReadOnly := False;
      FieldByName('StuffSize').ReadOnly := False;
      FieldByName('StuffDiameter').ReadOnly := False;
      FieldByName('ControlCode').ReadOnly := False;
      if FindField('Portage') <> nil then
        FieldByName('Portage').ReadOnly := False;
      if FindField('Article') <> nil then
      begin
        FieldByName('Article').ReadOnly := False;
        FieldByName('Wage').ReadOnly := False;
        FieldByName('Scoria').ReadOnly := False;
      end;
      FieldByName('TotalInputPrice').ReadOnly := False;
      FieldByName('TotalInputPrice').ReadOnly := False;
      FieldByName('TotalOutputPrice').ReadOnly := False;
      FieldByName('TotalOutputPrice').ReadOnly := False;
      FieldByName('UnitSellPrice').ReadOnly := False;
      FieldByName('PersonID1').ReadOnly := False;
      FieldByName('preReciptItemID').ReadOnly := False;
      FieldByName('ItemNote').ReadOnly := False;
      FieldByName('Auxiliary').ReadOnly := False;
      FieldByName('UseUnitID').ReadOnly := False;
      FieldByName('AidDate').ReadOnly := False;
      FieldByName('AidNumber').ReadOnly := False;
    end;
end;

procedure ReciptsSumOnStuffCode(qryRecipts, qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
type
  TDateRec = record
    StuffCode: Largeint;
    EdtIOEntity: Real;
    PestEntity: Real;
  end;
var
  aRec: TDateRec;
  aBeforeNotifyEvent, aAfterNotifyEvent: TDataSetNotifyEvent;
  b1, b2: Boolean;
begin
  aBeforeNotifyEvent := qryItems.BeforeDelete;
  aAfterNotifyEvent := qryItems.AfterDelete;
  if qryinit.FieldByName('SumOnStuffCode').AsInteger in [1, 2] then
  begin
    b1 := qryItems.FieldByName(FieldNameEntity).ReadOnly;
    b2 := qryItems.FieldByName('PestEntity').ReadOnly;
    try
      With qryItems do
      begin

        qryItems.AfterDelete := nil;
        if qryinit.FieldByName('SumOnStuffCode').AsInteger = 2 then
          qryItems.BeforeDelete := nil;

        FieldByName(FieldNameEntity).ReadOnly := False;
        FieldByName('PestEntity').ReadOnly := False;
        DisableControls;
        First;
        Sort := 'StuffCode';
        aRec.StuffCode := FieldByName('StuffCode').AsLargeInt;
        aRec.EdtIOEntity := FieldByName(FieldNameEntity).AsFloat;
        aRec.PestEntity := FieldByName('PestEntity').AsFloat;
        Next;
        while not Eof do
        begin
          if FieldByName('StuffCode').AsLargeInt = aRec.StuffCode then
          begin
            Edit;

            aRec.EdtIOEntity := FieldByName(FieldNameEntity).AsFloat +
              aRec.EdtIOEntity;
            FieldByName(FieldNameEntity).AsFloat := aRec.EdtIOEntity;

            aRec.PestEntity := FieldByName('PestEntity').AsFloat +
              aRec.PestEntity;
            FieldByName('PestEntity').AsFloat := aRec.PestEntity;

            Post;
            Prior;
            DMf.s_Msm := ' به علت "جمع كالاهاي تكراري در فرم " ';
            Delete;
            DMf.s_Msm := EmptyStr;
            Next;
          end
          else
          begin
            aRec.StuffCode := FieldByName('StuffCode').AsLargeInt;
            aRec.EdtIOEntity := FieldByName(FieldNameEntity).AsFloat;
            aRec.PestEntity := FieldByName('PestEntity').AsFloat;
            Next;
          end;

        end;
      end;

    finally
      qryItems.FieldByName(FieldNameEntity).ReadOnly := b1;
      qryItems.FieldByName('PestEntity').ReadOnly := b2;
      qryItems.BeforeDelete := aBeforeNotifyEvent;
      qryItems.AfterDelete := aAfterNotifyEvent;
      qryItems.EnableControls;
    end;
  end;

  ReciptsGiftItemsOnStuffCode(qryRecipts, qryItems, qryinit, FieldNameEntity);

end;

procedure ReciptsSumOnStuffCodepreReciptItemID(qryRecipts, qryItems,
  qryinit: TADOQuery; FieldNameWeight, FieldNameEntity: string);
type
  TDateRec = record
    StuffCode: Largeint;
    preReciptItemID: Integer;
    EdtIOWeight: Real;
    EdtIOEntity: Real;
  end;
var
  aRec: TDateRec;
  aBeforeNotifyEvent, aAfterNotifyEvent: TDataSetNotifyEvent;
  b1: Boolean;
begin
  if qryinit.FieldByName('SumOnStuffCode').AsInteger = 3 then
  begin
    aBeforeNotifyEvent := qryItems.BeforeDelete;
    aAfterNotifyEvent := qryItems.AfterDelete;
    b1 := qryItems.FieldByName(FieldNameWeight).ReadOnly;
    try
      With qryItems do
      begin
        qryItems.AfterDelete := nil;
        qryItems.BeforeDelete := nil;
        FieldByName(FieldNameWeight).ReadOnly := False;
        DisableControls;
        First;
        Sort := 'StuffCode, preReciptItemID';
        aRec.StuffCode := FieldByName('StuffCode').AsLargeInt;
        aRec.EdtIOWeight := FieldByName(FieldNameWeight).AsFloat;
        aRec.EdtIOEntity := FieldByName(FieldNameEntity).AsFloat;
        aRec.preReciptItemID := FieldByName('preReciptItemID').AsInteger;
        Next;
        while not Eof do
        begin
          if (FieldByName('StuffCode').AsLargeInt = aRec.StuffCode) and
            (FieldByName('preReciptItemID').AsInteger = aRec.preReciptItemID)
          then
          begin
            Edit;

            aRec.EdtIOWeight := FieldByName(FieldNameWeight).AsFloat +
              aRec.EdtIOWeight;

            aRec.EdtIOEntity := FieldByName(FieldNameEntity).AsFloat +
              aRec.EdtIOEntity;

            FieldByName(FieldNameWeight).AsFloat := aRec.EdtIOWeight;
            FieldByName(FieldNameEntity).AsFloat := aRec.EdtIOEntity;

            Post;
            Prior;
            DMf.s_Msm := ' به علت "جمع كالاهاي تكراري در فرم " ';
            Delete;
            DMf.s_Msm := EmptyStr;
            Next;
          end
          else
          begin
            aRec.StuffCode := FieldByName('StuffCode').AsLargeInt;
            aRec.preReciptItemID := FieldByName('preReciptItemID').AsInteger;
            aRec.EdtIOWeight := FieldByName(FieldNameWeight).AsFloat;
            aRec.EdtIOEntity := FieldByName(FieldNameEntity).AsFloat;

            Next;
          end;

        end;
      end;

    finally
      qryItems.FieldByName(FieldNameWeight).ReadOnly := b1;
      qryItems.FieldByName(FieldNameEntity).ReadOnly := b1;
      qryItems.BeforeDelete := aBeforeNotifyEvent;
      qryItems.AfterDelete := aAfterNotifyEvent;
      qryItems.EnableControls;
    end;
  end;
end;

procedure GetReciptID(qryRecipts, qryItems, qryinit: TADOQuery;
  EventKind: Byte);
begin
  case EventKind of
    0:
      begin
        if qryinit.FieldByName('ReciptIDEventKind').AsInteger = 0 then
          GetANewID(qryRecipts, qryinit.FieldByName('ReciptType').AsString,
            'Recipts', 'ReciptID', nil, qryinit.FieldByName('StepCorrelate')
            .AsInteger)
        else
        begin
          qryRecipts.FieldByName('ReciptID').AsInteger := 0;
          qryRecipts.FieldByName('YearID').AsInteger := APPBank.Year;
          qryRecipts.FieldByName('ServerID').AsInteger := opt.ServerID;
        end;

      end;
    1:
      begin
        if not(qryRecipts.State in [dsInsert]) then
          Exit;
        if qryinit.FieldByName('ReciptIDEventKind').AsInteger = 0 then
          Exit;

        GetANewID(qryRecipts, qryinit.FieldByName('ReciptType').AsString,
          // qryinit.FieldByName('ReciptType').AsString
          'Recipts', 'ReciptID', nil, qryinit.FieldByName('StepCorrelate')
          .AsInteger);
        With qryItems do
          try
            DisableControls;
            First;
            while Not Eof do
            begin
              Edit;
              GetANewID(qryItems, qryinit.FieldByName('ReciptType').AsString,
                // qryinit.FieldByName('ReciptType').AsString
                'ReciptItems', 'ReciptItemID', qryRecipts,
                qryinit.FieldByName('StepCorrelate').AsInteger);
              qryItems.FieldByName('ReciptID').AsInteger :=
                qryRecipts.FieldByName('ReciptID').AsInteger;
              qryItems.FieldByName('YearID').AsInteger :=
                qryRecipts.FieldByName('YearID').AsInteger;
              qryItems.FieldByName('ServerID').AsInteger :=
                qryRecipts.FieldByName('ServerID').AsInteger;
              Post;
              Next;
            end;
          finally
            EnableControls;
          end;

      end;
  end;

end;

function LimitRecord(qryItems, qryinit: TADOQuery; InsertItem: Boolean)
  : Boolean;
begin
  Result := False;
  If qryItems.RecNo > qryinit.FieldByName('MaxRowsPerForm').AsInteger then
  begin
    Warn('حداكثر ركورد قابل ثبت در ' + qryinit.FieldByName('ReciptCaption')
      .AsString + ' " ' + qryinit.FieldByName('MaxRowsPerForm').AsString +
      ' " ركورد مي‌باشد.');
    Result := True;
  end; // if

  if not InsertItem then
    If qryItems.RecNo < qryinit.FieldByName('MinRowsPerForm').AsInteger then
    begin
      Warn('حداقل ركورد قابل ثبت در ' + qryinit.FieldByName('ReciptCaption')
        .AsString + ' " ' + qryinit.FieldByName('MinRowsPerForm').AsString +
        ' " ركورد مي‌باشد.');
      Result := True;
    end; // if

end;

procedure SetFieldIndexFormGrid(DBGrid: TDBGrid); overload;
var
  i, k: Integer;
begin
  k := 0;
  for i := 0 to DBGrid.Columns.Count - 1 do
    if (DBGrid.Columns[i].Visible) and not(DBGrid.Columns[i].ReadOnly) then
    begin
      DBGrid.Columns[i].Field.Index := k;
      inc(k);
    end;
end;

procedure SetFieldIndexFormGrid(DBGrid: TDBGrideh); overload;
var
  i, k: Integer;
begin
  k := 0;
  for i := 0 to DBGrid.Columns.Count - 1 do
    if (DBGrid.Columns[i].Visible) and not(DBGrid.Columns[i].ReadOnly) then
    begin
      if DBGrid.DataSource.DataSet.FindField(DBGrid.Columns[i].FieldName) <> nil
      then
        DBGrid.Columns[i].Field.Index := k;
      inc(k);
    end;
end;

function GetSellPriceonCustValuationType(const Sp: array of Currency;
  MenSellPrice: TPopupMenu; mnuSp: array of TMenuItem; qryItems: TADOQuery)
  : Currency;
var
  i: Integer;
  ICount: Integer;
begin
  ICount := 0;
  Result := 0;
  for i := 0 to High(mnuSp) do
  begin
    mnuSp[i].Caption := CurrToStrF(Sp[i], ffCurrency, 0);
    mnuSp[i].Hint := CurrToStr(Sp[i]);
    if mnuSp[i].Hint <> '0' then
    begin
      Result := Sp[i];
      inc(ICount);
    end;
  end;
  //
  // mnuSp1.Caption := CurrToStrF(Sp[0], ffCurrency, 0);
  // mnuSp2.Caption := CurrToStrF(Sp[1], ffCurrency, 0);
  // mnuSp3.Caption := CurrToStrF(Sp[2], ffCurrency, 0);
  // mnuSp4.Caption := CurrToStrF(Sp[3], ffCurrency, 0);
  // mnuSp1.Hint := CurrToStr(Sp[0]);
  // mnuSp2.Hint := CurrToStr(Sp[1]);
  // mnuSp3.Hint := CurrToStr(Sp[2]);
  // mnuSp4.Hint := CurrToStr(Sp[3]);
  if ICount <= 1 then
    qryItems.FieldByName('UnitSellPrice').AsCurrency := Result
  else
    MenSellPrice.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

function GetDays(i: Integer): Real;
begin
  Result := 0;
  case i of
    00 .. 11:
      Result := 0.0;
    12 .. 24:
      Result := 0.5;
    25 .. 29:
      Result := 1;
  end;
end;

function IsFormOutput(qryinit: TADOQuery): Boolean;
begin
  Result := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
end;

function GetUnitSellPrice(qryItems, qryRecipts, qryinit: TADOQuery;
  FieldNameEntity: string; MenSellPrice: TPopupMenu; mnuSp: array of TMenuItem)
  : Currency;
var
  AutoPrice, AgrAmount, DiscountPercent, MTaxCo: Real;
  myCustValuationType, SellEffect, BuyEffect: Integer;
  Rate: Currency;
  AutoPriceTag: Byte;
  StuffCode, RecallTypeOption: Largeint;
  aTFieldNotifyEvent: TFieldNotifyEvent;
  i: Integer;
  s: string;
begin
  RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;
  AutoPriceTag := qryinit.FieldByName('AutoPrice').AsInteger;
  SellEffect := qryinit.FieldByName('SellEffect').AsInteger;
  BuyEffect := qryinit.FieldByName('BuyEffect').AsInteger;

  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  AutoPrice := 0;
  Rate := 0;
  AgrAmount := 0;
  DiscountPercent := 0;
  myCustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;

  if qryinit.FieldByName('AutoPrice').AsInteger = 12 then
    myCustValuationType := qryRecipts.FieldByName('_TypeOfSale').AsInteger;

  // ___________________________   انتقال قيمت في       ____________________________
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT c_StuffCode, SellPrice1, SellPrice2, SellPrice3';
    SQL.Add(', SellPrice4, BuyPrice, StandardRate,State');
    SQL.Add(', SellPrice5, SellPrice6, SellPrice7,BlockOutput,StuffWeight');
    SQL.Add('FROM StuffCoding WHERE c_StuffCode=' + IntToStr(StuffCode));

    if AutoPriceTag in [6, 7, 13, 18] then
    begin
      SQL.Text :=
        'SELECT A.Rate,A.AgrAmount,Sc.State,Sc.BlockOutput,A.DiscountPercent';
      SQL.Add('FROM Agreements AS A INNER JOIN StuffCoding AS Sc ON A.StuffCode = Sc.c_StuffCode');
      SQL.Add('WHERE (AgrState = 0)');
      SQL.Add('AND (YearID = :YearID )');
      SQL.Add('AND (StuffCode = :StuffCode )');
      SQL.Add('AND (PersonID1 = :PersonID1 )');
      SQL.Add('AND (AgreementsDate <= :ReciptDate )');
      SQL.Add('AND (SellsMethod = :SellsMethod )');

      if AutoPriceTag = 18 then
        SQL.Add(Format('AND (PersonID1D = %d)',
          [qryItems.FieldByName('PersonID1').AsInteger]));

      SQL.Add('ORDER BY  AgreementsDate DESC, AgreementsID DESC ');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('StuffCode').Value := StuffCode;

      Parameters.ParamByName('PersonID1').Value :=
        ifthen((qryinit.FieldByName('AutoPrice').AsInteger in [6, 7, 18]),
        qryRecipts.FieldByName('PersonID1').AsInteger,
        qryRecipts.FieldByName('PersonID2').AsInteger);

      Parameters.ParamByName('SellsMethod').Value :=
        qryRecipts.FieldByName('SellsMethod').AsInteger;

      Parameters.ParamByName('ReciptDate').Value :=
        qryRecipts.FieldByName('ReciptDate').AsString;
      Active := True;
      Rate := FieldByName('Rate').AsCurrency;
      AgrAmount := FieldByName('AgrAmount').AsFloat;
      DiscountPercent := FieldByName('DiscountPercent').AsFloat;
    end;
    if (AutoPriceTag in [5, 8, 10, 11, 12, 17]) or
      ((AutoPriceTag = 7) and (Rate = 0)) then
    begin
      Active := False;
      SQL.Text := 'SELECT TOP 1 StuffCode, Mi.SellPrice1,';
      SQL.Add('Mi.SellPrice2, Mi.SellPrice3,Mi.SellPrice4,');
      SQL.Add('Mi.SellPrice5, Mi.SellPrice6,Mi.SellPrice7,');
      SQL.Add('BuyPrice, StandardRate, StuffCoding.State,Mi.DiscountPercent,Mi.DiscountAmount');
      SQL.Add(',Mi.DiscountPercent2,Mi.DiscountAmount2, StuffCoding.BlockOutput');
      SQL.Add(',Mi.MTaxCo');
      SQL.Add('FROM Manifesto INNER JOIN');
      SQL.Add('ManifestoItems Mi ON Manifesto.ManifestoID = Mi.ManifestoID INNER JOIN');
      SQL.Add('StuffCoding ON Mi.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
      SQL.Add('Customers ON Manifesto.CustomerGrpIDFrom <= Customers.CustomerGrpID AND Manifesto.CustomerGrpIDTo >=');
      SQL.Add('Customers.CustomerGrpID AND');
      SQL.Add('Manifesto.CustIDFrom <= Customers.CustID AND Manifesto.CustIDTo >= Customers.CustID');
      SQL.Add('WHERE(StuffCode = ' + IntToStr(StuffCode));
      SQL.Add(')AND (SellOrBuy = ' + ifthen(((SellEffect <> 2) AND
        (BuyEffect <> 1)), '0', '1') + ') AND (ManifestoRunDate <= ''' +
        qryRecipts.FieldByName('ReciptDate').AsString + ''')');
      SQL.Add(' AND (Manifesto.SellsMethod = ' + qryRecipts.FieldByName
        ('SellsMethod').AsInteger.ToString + ')');

      if ((qryinit.FieldByName('RecuestActive').AsLargeInt and
        Integer(CHKManifestoSellsEmporiumOffFilter)) = 0) then
        SQL.Add(' AND (Manifesto.SellsEmporium = ' + qryRecipts.FieldByName
          ('SellsEmporium').AsInteger.ToString + ')');

      SQL.Add(' AND (Customers.CustID = ' + qryRecipts.FieldByName('PersonID1')
        .AsInteger.ToString + ')');

      if AutoPriceTag = 8 then
        SQL.Add('AND (ManifestoRunDate =(SELECT MAX(ManifestoRunDate)FROM Manifesto))');

      if AutoPriceTag = 11 then
        SQL.Add(Format('AND (StuffCodingItemID = %d)',
          [qryItems.FieldByName('StuffCodingItemID').AsInteger]));

      if AutoPriceTag = 17 then
        SQL.Add(Format('AND (PersonID1D = %d)',
          [qryItems.FieldByName('PersonID1').AsInteger]));

      SQL.Add('ORDER BY Manifesto.ManifestoRunDate DESC,Manifesto.ManifestoNo DESC');
    end;

    if (AutoPriceTag in [16]) then
    begin
      Active := False;
      SQL.Text := ';WITH #tbParent as';
      SQL.Add('(');
      SQL.Add('SELECT r.ControlCode, s.ReciptNumber,s.ReciptDate,s.ReciptType, r.ReciptID,');
      SQL.Add('r.ReciptItemID,r.YearID,r.PrvYearID,r.preReciptItemID ,r.PersonID1,r.UnitSellPrice,r.ID');
      SQL.Add('FROM ReciptItems r JOIN recipts s on r.ReciptID=s.ReciptID and r.YearID=s.YearID and r.ServerID=s.ServerID');
      SQL.Add('WHERE r.YearID = ' + qryRecipts.FieldByName('YearID').AsString +
        ' and (  r.ReciptItemID = ' + qryItems.FieldByName('preReciptItemID')
        .AsInteger.ToString + ')');
      SQL.Add('UNION ALL');
      SQL.Add('SELECT t.ControlCode, v.ReciptNumber,v.ReciptDate,v.ReciptType, t.ReciptID,');
      SQL.Add('t.ReciptItemID,t.YearID,t.PrvYearID,t.preReciptItemID');
      SQL.Add(',t.PersonID1,t.UnitSellPrice,t.ID');
      SQL.Add('FROM ReciptItems t');
      SQL.Add('JOIN #tbParent on t.ReciptItemID=#tbParent.preReciptItemID and t.YearID=#tbParent.PrvYearID');
      SQL.Add('JOIN recipts v on t.ReciptID=v.ReciptID and t.YearID=v.YearID and t.ServerID=v.ServerID');
      SQL.Add('WHERE t.YearID = ' + qryRecipts.FieldByName('YearID')
        .AsString + ' )');

      SQL.Add('SELECT top 1 mi.*,m.ManifestoRunDate,0 as BlockOutput FROM #tbParent p');
      SQL.Add('JOIN ManifestoItems mi ON p.ID = mi.ReciptItemsID');
      SQL.Add('INNER JOIN Manifesto AS m ON mi.ManifestoID = m.ManifestoID');
      SQL.Add('WHERE (ManifestoRunDate <=  ''' + qryRecipts.FieldByName
        ('ReciptDate').AsString + ''')AND (SellOrBuy = ' +
        ifthen(((SellEffect <> 2) AND (BuyEffect <> 1)), '0', '1') + ')');
      SQL.Add('ORDER BY m.ManifestoRunDate DESC ,m.ManifestoNo DESC ');

    end;

    if (AutoPriceTag in [14, 15]) then
    begin
      Active := False;
      SQL.Text :=
        'SELECT c_stuffcode, UnitSellPrice,SellPrice1,SellPrice2,SellPrice3';
      SQL.Add('FROM Cnt.GetContractOperations( :PersonID1 ) AS GetCntOpt');
      SQL.Add('WHERE (c_stuffcode = :StuffCode )');
      if (AutoPriceTag = 15) then
      begin
        SQL.Add('AND (ContractsStatus = 1 )');
        Parameters.ParamByName('PersonID1').Value := 0;
      end
      else
        Parameters.ParamByName('PersonID1').Value :=
          qryRecipts.FieldByName('PersonID1').AsInteger;
      Parameters.ParamByName('StuffCode').Value := StuffCode;
    end;

    Active := True;

    if AutoPriceTag = 10 then
    begin
      if FieldByName('DiscountPercent').AsFloat <> 0 then
        qryItems.FieldByName('WaterCo').AsFloat :=
          FieldByName('DiscountPercent').AsFloat;
      if FieldByName('DiscountAmount').AsFloat <> 0 then
        qryItems.FieldByName('DeficitValue').AsFloat :=
          FieldByName('DiscountAmount').AsFloat;

      if FieldByName('DiscountPercent2').AsFloat <> 0 then
        qryItems.FieldByName('DeficitValueCo2').AsFloat :=
          FieldByName('DiscountPercent2').AsFloat;
      if FieldByName('DiscountAmount2').AsFloat <> 0 then
        qryItems.FieldByName('DeficitValue2').AsFloat :=
          FieldByName('DiscountAmount2').AsFloat;

    end;
    case AutoPriceTag of
      2, 5, 7, 8, 10, 11, 12, 15, 16, 17, 18:
        begin
          if Rate = 0 then
          begin
            case myCustValuationType of
              0, 1, 2, 3:
                AutoPrice :=
                  FieldByName('SellPrice' + IntToStr(myCustValuationType + 1))
                  .AsCurrency;
              6, 7, 8:
                begin
                  AutoPrice :=
                    FieldByName('SellPrice' + IntToStr(myCustValuationType - 1))
                    .AsCurrency;

                end;
              4:
                begin
                  if mnuSp[1] = nil then
                  begin
                    Result := Fields[1].AsCurrency;
                    for i := 2 to 4 do
                      if (Fields[i].AsCurrency <> 0) and
                        (Result > Fields[i].AsCurrency) then
                        Result := Fields[i].AsCurrency;
                  end
                  else
                    AutoPrice := GetSellPriceonCustValuationType
                      ([FieldByName('SellPrice1').AsCurrency,
                      FieldByName('SellPrice2').AsCurrency,
                      FieldByName('SellPrice3').AsCurrency,
                      FieldByName('SellPrice4').AsCurrency,
                      FieldByName('SellPrice5').AsCurrency,
                      FieldByName('SellPrice6').AsCurrency,
                      FieldByName('SellPrice7').AsCurrency], MenSellPrice,
                      mnuSp, qryItems);
                end;
              5:
                begin
                  AutoPrice := Rate;
                end;
            end;
          end
          else
            AutoPrice := Rate;
          if FindField('DiscountPercent') <> nil then
            DiscountPercent := FieldByName('DiscountPercent').AsFloat; // new
          if ((qryItems.FindField('TaxCo') <> nil) and
            (qryItems.FieldByName('TaxCo').AsFloat = 0) and
            (FindField('MTaxCo') <> nil) and
            (FieldByName('MTaxCo').AsFloat <> 0)) then
            qryItems.FieldByName('TaxCo').AsFloat :=
              FieldByName('MTaxCo').AsFloat;
        end;

      3:
        AutoPrice := FieldByName('BuyPrice').AsCurrency;
      4:
        AutoPrice := FieldByName('StandardRate').AsCurrency;
      6, 13:
        AutoPrice := Rate;
      14:
        AutoPrice := FieldByName('UnitSellPrice').AsCurrency;
    else
      AutoPrice := 0;
    end; // end case

    // ShowNotEntityOnSearch := qryinit.FieldByName('ShowNotEntityOnSearch')
    // .AsLargeInt;
    // if not((ShowNotEntityOnSearch and Integer(CHKStuffStatePost)) <> 0) then
    if (IsFormOutput(qryinit)) and (FieldByName('BlockOutput').AsInteger = 1)
    then
    begin
      Warn('كالاي انتخاب شده برای خروجی مسدود است!!‏');
      aTFieldNotifyEvent := qryItems.FieldByName('StuffCode').OnChange;
      qryItems.FieldByName('StuffCode').AsFloat := 0;
      qryItems.FieldByName('StuffCode').OnChange := aTFieldNotifyEvent;
    end;

    if (opt.StuffEnableKind in [2]) and (FieldByName('State').AsInteger = 1)
    then
    begin
      Warn('كالاي انتخاب شده غير فعال است!!‏');
      aTFieldNotifyEvent := qryItems.FieldByName('StuffCode').OnChange;
      qryItems.FieldByName('StuffCode').AsFloat := 0;
      qryItems.FieldByName('StuffCode').OnChange := aTFieldNotifyEvent;
    end;

    if not((RecallTypeOption and Integer(CHKNoWeight)) <> 0) then
      if (FindField('StuffWeight') <> nil) and
        (FieldByName('StuffWeight').AsFloat <> 0) then
      begin
        qryItems.FieldByName(FieldNameEntity).ReadOnly := False;
        s := FieldNameEntity.Replace('Entity', 'Weight');
        qryItems.FieldByName(s).ReadOnly := False;
        qryItems.FieldByName(s).AsFloat := FieldByName('StuffWeight').AsFloat;
      end;

    Active := False;
  end; // end case
  // if (qryItems.FieldByName('UnitSellPrice').IsNull) or (qryItems.FieldByName('UnitSellPrice').AsCurrency=0) then
  if not(qryItems.State in dseditmodes) then
    qryItems.Edit;

  if AutoPriceTag in [14, 15] then
  begin
    AutoPrice := UnitSellPriceAutoPrice_14_15(AutoPrice, qryItems);
  end;
  if AutoPriceTag in [6, 7, 13, 18] then
  begin
    qryItems.FieldByName(FieldNameEntity).AsFloat := AgrAmount;
    qryItems.FieldByName('WaterCo').AsFloat := DiscountPercent;

  end;
  Result := AutoPrice;
end;

procedure StuffCodeChange(qryItems, qryRecipts, qryinit: TADOQuery;
  var EntityValue: Extended; StatusBar2: TStatusBar; PriceOn_StoreType: Boolean;
  var MachineFullWeight1: Real; FormOutput: Boolean;
  FieldNameEntity, FieldNameWeight: string; MenSellPrice: TPopupMenu;
  mnuSp: array of TMenuItem);
var
  RealEntity, RealWeight, UnitSellPrice: Real;
  StuffCode: Largeint;
  DisplayStatusBar: Integer;
begin
  // ___________________________   انتقال قيمت في       ____________________________
  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  if StuffCode = 0 then
    Exit;
  // اگه تیک معاف خورد در هر صورتی 0     اگر نخورده بود از تنظیمات فرم تایپ 9 می افته و اگر درصد خاص خورده بود اون درصد خاص
  if qryinit.FieldByName('VATActive').AsInteger >= 1 then
  begin
    if qryItems.FieldByName('_VatExempt').AsInteger = 0 then
    begin
      if qryItems.FieldByName('_VatExemptCo').AsFloat <> 0 then
        qryItems.FieldByName('TaxCo').AsFloat :=
          qryItems.FieldByName('_VatExemptCo').AsFloat
      else
        qryItems.FieldByName('TaxCo').AsFloat :=
          qryinit.FieldByName('VATCo').AsFloat
    end
    else
      qryItems.FieldByName('TaxCo').AsFloat := 0;

  end;

  qryItems.FieldByName('UnitSellPrice').AsFloat :=
    GetUnitSellPrice(qryItems, qryRecipts, qryinit, FieldNameEntity,
    MenSellPrice, mnuSp);

  if ((qryinit.FieldByName('BarCodeKind').AsInteger = 0) and
    not(((qryinit.FieldByName('NonZeroActive').AsLargeInt and
    Integer(CHkNotCalcEntityOnChangeSttuf)) <> 0)) or
    (qryinit.FieldByName('InsertEntity').AsInteger > 0)) then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT SUM(InputEntity - OutputEntity) AS Entity';
      SQL.Add(',SUM(InputWeight - OutputWeight) AS Weight');
      SQL.Add(', SUM(TotalInputPrice - TotalOutputPrice) AS Price');
      SQL.Add(', sum(case when EffectType = 3 then InputEntity - OutputEntity else 0 end ) as ReservEntity ');
      SQL.Add(', sum(case when EffectType = 3 then InputWeight - OutputWeight else 0 end ) as Reserveweight ');
      SQL.Add('FROM ReciptItems_Stock');
      SQL.Add('WHERE (ReciptDate <= ''' + qryRecipts.FieldByName('ReciptDate')
        .AsString + ''')  ');
      SQL.Add(' AND (StoreID BETWEEN :StoreIDFrom AND :StoreIDTo ) ');
      SQL.Add(' AND (StuffCode = ' + IntToStr(StuffCode) + ')');

      if qryinit.FieldByName('ControlEntityActive').AsInteger = 2 then
        SQL.Add(' AND (ProductModel = ' +
          IntToStr(qryItems.FieldByName('ProductModel').AsInteger) + ')');

      if qryinit.FieldByName('ControlEntityActive').AsInteger = 6 then
        SQL.Add(' AND (PersonID1D = ' +
          IntToStr(qryItems.FieldByName('PersonID1').AsInteger) + ')');

      if qryinit.FieldByName('Commendation').AsInteger = 0 then
        SQL.Add('AND (  EffectType in(2,4) )')
      else
        SQL.Add('AND (  EffectType in(2,4)  or ' + ' ( ReciptType= ' +
          qryRecipts.FieldByName('ReciptType').AsString +
          ' and ParentReciptID is null )   )');

      SQL.Add('AND(ReciptItemID <> ' + qryItems.FieldByName('ReciptItemID')
        .AsString);
      SQL.Add('or ReciptID <> ' + qryRecipts.FieldByName('ReciptID').AsString);
      SQL.Add('or ServerID <> ' + qryRecipts.FieldByName('ServerID').AsString);
      SQL.Add('or YearID <> ' + qryRecipts.FieldByName('YearID').AsString);
      SQL.Add(')AND (ReciptState < 3)');
      SQL.Add('AND YearID = ' + qryRecipts.FieldByName('YearID').AsString);

      Parameters.ParamByName('StoreIDFrom').Value :=
        qryRecipts.FieldByName('StoreID').AsInteger;
      Parameters.ParamByName('StoreIDTo').Value :=
        qryRecipts.FieldByName('StoreID').AsInteger;
      Active := True;
      EntityValue := FieldByName('Entity').AsInteger;
      RealEntity := FieldByName('Entity').AsFloat;
      RealEntity := RoundTo(RealEntity, opt.RoundEntity);
      DisplayStatusBar := qryinit.FieldByName('DisplayStatusBar').AsInteger;
      StatusBar2.Visible := DisplayStatusBar > 0;
      if (opt.EntityDisplay) and (DisplayStatusBar in [1, 3]) then
        StatusBar2.Panels[2].Text := opt.EntityCaption + '=' +
          ifthen(FieldByName('Entity').AsString = '', '0',
          FloatToStr(RealEntity));
      RealWeight := FieldByName('Weight').AsFloat;
      RealWeight := RoundTo(RealWeight, opt.RoundEntity);
      if (opt.WeightDisplay) and (DisplayStatusBar in [1, 3]) then
        StatusBar2.Panels[1].Text := opt.WeightCaption + '=' +
          ifthen(FieldByName('Weight').AsString = '', '0',
          FloatToStr(RealWeight));
      if (PriceOn_StoreType) and (DisplayStatusBar in [2, 3]) then
        StatusBar2.Panels[0].Text := 'مبلغ=' +
          CurrToStrF(FieldByName('Price').AsCurrency, ffCurrency, 0)
      else
        StatusBar2.Panels[0].Text := '';
      case qryinit.FieldByName('InsertEntity').AsInteger of
        1:
          begin
            qryItems.FieldByName('InvEntity').AsFloat :=
              FieldByName('Entity').AsFloat;
            qryItems.FieldByName('InvWeight').AsFloat :=
              FieldByName('Weight').AsFloat;
          end;
        2:
          begin
            Active := False;
            Parameters.ParamByName('StoreIDFrom').Value := 0;
            Parameters.ParamByName('StoreIDTo').Value := 9999;
            Active := True;
            qryItems.FieldByName('InvEntity').AsFloat :=
              FieldByName('Entity').AsFloat;
            qryItems.FieldByName('InvWeight').AsFloat :=
              FieldByName('Weight').AsFloat;
          end;
      end; // case
      Active := False;
    end;
  // _______________________________________كتاب_______________________________________________
  CalcOnStuffDiscont(qryItems, qryRecipts, qryinit);
  if qryinit.FieldByName('StandardRateActive').AsInteger = 1 then
    qryItems.FieldByName('StandardRate').AsCurrency :=
      qryItems.FieldByName('_StandardRate').AsCurrency;

  if qryinit.FieldByName('TozinActive').AsInteger in [1, 4] then
  begin
    MachineFullWeight1 := ReadFromTxtOrComPort;
    qryItems.FieldByName('TotalWeight').AsFloat := 0;
    qryItems.FieldByName('MachineFullWeight').AsFloat := MachineFullWeight1;
    qryItems.FieldByName('MachineWeight').AsFloat :=
      qryRecipts.FieldByName('_InfoWeight').AsFloat;
  end;

  if qryinit.FieldByName('TozinActive').AsInteger = 3 then
  begin
    if FormOutput then
      qryItems.FieldByName('MachineWeight').AsFloat := ReadFromTxtOrComPort
    else
      qryItems.FieldByName('MachineFullWeight').AsFloat := ReadFromTxtOrComPort;
  end;
  if qryinit.FieldByName('TozinActive').AsInteger = 2 then
  begin
    // qryItems.FieldByName(FieldNameEntity).ReadOnly:=False;
    qryItems.FieldByName(FieldNameEntity).AsFloat := ReadFromTxtOrComPort;
    // qryItems.FieldByName(FieldNameEntity).ReadOnly:=True;
  end;

  if (((qryinit.FieldByName('RecallTypeOption').AsLargeInt and
    Integer(CHkLastRciptDate11)) <> 0)) or
    (((qryinit.FieldByName('NonZeroActive').AsInteger and
    Integer(CHkInsetCurentEntity)) <> 0)) then
  begin
    qryItems.FieldByName(FieldNameEntity).AsFloat := RealEntity;
    qryItems.FieldByName(FieldNameWeight).AsFloat := RealWeight;
  end;

end;

function UnitSellPriceAutoPrice_14_15(UnitSellPrice: Real;
  qryItems: TADOQuery): Real;
begin
  if qryItems.FieldByName('_VatExempt').AsInteger = 0 then
    Result := RoundTo(UnitSellPrice / 1.09, -2)
  else
    Result := UnitSellPrice;
end;

procedure ReturnRecallType9(qryInitQry, qryRecipts: TDataSet;
  popReturnRecall: TMenuItem);
var
  newItem: TMyRecallType9;
begin
  popReturnRecall.Visible := (qryInitQry.FieldByName('RecallType')
    .AsInteger = 9) and
    (CheckUserlevel(qryInitQry.FieldByName('FormRelatedLevelID'),
    qryRecipts, False));
  if not popReturnRecall.Visible then
    Exit;

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptType, ReciptCaption';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE ('',' + qryInitQry.FieldByName('RecallReciptTypes').AsString
      + ','' LIKE ''%,'' + LTRIM(RTRIM(STR(ReciptType))) + '',%'')');
    Active := True;
    popReturnRecall.Clear;
    while not Eof do
    begin
      newItem := TMyRecallType9.Create(nil);
      with newItem do
      begin
        ReciptType := FieldByName('ReciptType').AsInteger;
        qry_Recipts := qryRecipts;
        Caption := FieldByName('ReciptCaption').AsString;
        popReturnRecall.Add(newItem);
      end;
      Next;
    end;
    Active := False;
  end;
end;

function InitConstTypeOfSale(cmbTypeOfSale: TDBComboBox): string;
var
  i: Integer;
begin
  cmbTypeOfSale.Clear;
  for i := 0 to High(ConstTypeOfSale) do
    cmbTypeOfSale.Items.Add(ConstTypeOfSale[i]);
  Result := cmbTypeOfSale.Items.Text;
end;

procedure CalcOnStuffDiscont(qryItems, qryRecipts, qryinit: TADOQuery);
var
  residDays, CountDays: Real;
  calc: Integer;
begin
  // residDays:=0;
  calc := 0;
  if ((opt.StuffCodingKind >= 1) and (qryinit.FieldByName('DiscountEntryKind')
    .AsInteger = 2)) then
    with DMf.qryTmpTmp do
    begin
      Close;
      SQL.Text :=
        'SELECT  top 1 ReciptItems.StuffCode, ISNULL(ReciptItems.WaterCo, 0) AS WaterCo , Recipts.ReciptDate , ';
      SQL.Add('(case when Recipts.AidDate='''' then (SELECT StartMaliYear FROM Config) else Recipts.AidDate end) as AidDate');
      SQL.Add(',Recipts.ReciptType');
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN ');
      SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID');
      SQL.Add('WHERE(Recipts.StoreID = %d )AND(ReciptItems.StuffCode = %d ) ');
      SQL.Add('AND(Recipts.ReciptType in(1,2,5,13,17))AND(Recipts.ReciptDate <= :ReciptDate )');
      SQL.Add('ORDER BY Recipts.ReciptDate DESC, Recipts.ReciptNumber DESC, ReciptItems.ReciptID, ReciptItems.ReciptItemID');
      SQL.Text := Format(SQL.Text, [qryRecipts.FieldByName('StoreId').AsInteger,
        qryItems.FieldByName('StuffCode').AsLargeInt]);
      Parameters.ParamByName('ReciptDate').Value :=
        qryRecipts.FieldByName('ReciptDate').AsString;
      Open;

      If qryRecipts.FieldByName('AidDate').AsString > '80/00/00' Then

        calc := DaysBetween(Shamsi2Miladi(qryRecipts.FieldByName('AidDate')
          .AsString) + 1, Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate')
          .AsString));
      calc := calc div 30;
      residDays := calc + GetDays(calc mod 30);
      calc := DaysBetween(Shamsi2Miladi(FieldByName('AidDate').AsString) + 1,
        Shamsi2Miladi(FieldByName('ReciptDate').AsString));
      calc := calc div 30;
      CountDays := calc + GetDays(calc mod 30);
      if (FieldByName('ReciptType').AsInteger <> 17) then
        residDays := FieldByName('WaterCo').AsFloat + CountDays - 6 - residDays
      else if (qryRecipts.FieldByName('AidDate')
        .AsString = qryRecipts.FieldByName('ReciptDate').AsString) then
        residDays := FieldByName('WaterCo').AsFloat + CountDays - residDays + 6
      else
        residDays := FieldByName('WaterCo').AsFloat + 6 - residDays;

      qryItems.FieldByName('WaterCo').AsFloat := RoundTo(residDays, -2);
      if qryItems.FieldByName('WaterCo').AsInteger < 20 then
        qryItems.FieldByName('WaterCo').AsInteger := 20;
    end;
end;

function BarCodeCount(Form_InOut: string;
  qryItems, qryRecipts, qryinit: TADOQuery; var EntityValue: Extended;
  StatusBar2: TStatusBar; PriceOn_StoreType: Boolean;
  var MachineFullWeight1: Real; FormOutput: Boolean;
  FieldNameEntity, FieldNameWeight: string; MenSellPrice: TPopupMenu;
  mnuSp: array of TMenuItem): Int64;
var
  fNV: TFieldNotifyEvent;
  StuffTecInfo: string;
begin
  Result := qryItems.FieldByName('StuffCode').AsLargeInt;
  if qryinit.FieldByName('BarCodeKind').AsInteger in [0, 1, 4, 7, 8, 9, 10, 11]
  then
  begin
    StuffCodeChange(qryItems, qryRecipts, qryinit, EntityValue, StatusBar2,
      PriceOn_StoreType, MachineFullWeight1, FormOutput, FieldNameEntity,
      FieldNameWeight, MenSellPrice, mnuSp);
    Exit;
  end;
  fNV := qryItems.FieldByName('StuffCode').OnChange;
  with qryItems do
    try
      DisableControls;
      // if (qryinit.FieldByName('BarCodeKind').AsInteger <> 6) then
      StuffTecInfo := qryItems.FieldByName('____StuffTecInfo').AsString;
      begin
        Cancel;
        First;
      end;
      if (qryinit.FieldByName('BarCodeKind').AsInteger <> 6) and
        (Locate('StuffCode', Result, [])) then
      begin
        Edit;
        FieldByName(Form_InOut + 'Entity').AsInteger :=
          FieldByName(Form_InOut + 'Entity').AsInteger + 1;
        StuffCodeChange(qryItems, qryRecipts, qryinit, EntityValue, StatusBar2,
          PriceOn_StoreType, MachineFullWeight1, FormOutput, FieldNameEntity,
          FieldNameWeight, MenSellPrice, mnuSp);
        Post;
      end
      else
      begin
        Insert;
        qryItems.FieldByName('StuffCode').OnChange := nil;
        if (qryinit.FieldByName('BarCodeKind').AsInteger = 6) then
          GetStuffCodeFromsynthetic(StuffTecInfo, qryinit, qryItems,
            SyntheticCodeIn);
        FieldByName('StuffCode').AsLargeInt := Result;

        // case qryinit.FieldByName('BarCodeKind').AsInteger of
        // 0:
        // ;
        // 6:
        // begin
        // if EntityIsItemNote(qryItems, 'preReciptItemID') then
        // FieldByName(Form_InOut + 'Entity').AsInteger := 1
        // else
        // FieldByName(Form_InOut + 'Weight').AsInteger := 1;
        // end
        // else
        // FieldByName(Form_InOut + 'Entity').AsInteger := 1;
        // end;

        if (qryinit.FieldByName('BarCodeKind').AsInteger = 6) then
        begin
          if EntityIsItemNote(qryItems, 'preReciptItemID') then
            FieldByName(Form_InOut + 'Entity').AsInteger := 1
          else
            FieldByName(Form_InOut + 'Weight').AsInteger := 1;
        end
        else
          FieldByName(Form_InOut + 'Entity').AsInteger := 1;

        StuffCodeChange(qryItems, qryRecipts, qryinit, EntityValue, StatusBar2,
          PriceOn_StoreType, MachineFullWeight1, FormOutput, FieldNameEntity,
          FieldNameWeight, MenSellPrice, mnuSp);
        Post;
      end;
      Insert;
    finally
      EnableControls;
      qryItems.FieldByName('StuffCode').OnChange := fNV;
    end; // try
end;

procedure GetStuffCodeFromsynthetic(StuffTecInfo: String;
  qryinit, qryItems: TADOQuery; aSyntheticCode: TSyntheticCode);
var
  strCode: string;
  i, n, ID: Integer;
  // partTwo: Boolean;
  TSC: TStringList;
begin
  if StuffTecInfo = EmptyStr then
    Exit;

  TSC := TStringList.Create;
  try

    TSC.Text := StringReplace
      (qryinit.FieldByName(ifthen(aSyntheticCode = SyntheticCodeIn,
      'SyntheticCodeInField', 'SyntheticCodeField')).AsString, ';', #13,
      [rfReplaceAll]);

    n := Length(StuffTecInfo);
    SetLength(StuffTecInfo, n);
    strCode := EmptyStr;
    ID := 0;
    for i := 1 to n do
    begin
      if StuffTecInfo[i] = '_' then
      begin
        qryItems.FieldByName(TSC.Strings[ID]).AsString := strCode;
        inc(ID);
        strCode := EmptyStr;
      end;
      if StuffTecInfo[i] <> '_' then
        strCode := strCode + StuffTecInfo[i];
      if i = n then
        if UpperCase(TSC.Strings[ID]) = UpperCase('PrvYearID') then
          qryItems.FieldByName('PrvYearID').AsInteger := APPBank.Year
        else
          qryItems.FieldByName(TSC.Strings[ID]).AsString := strCode;
    end;
  finally
    TSC.Free;
  end;
end;

function EntityIsItemNote(qryItem: TADOQuery; IDName: string): Boolean;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DMf);
  With qry do
    try
      Connection := theMainConnection;
      SQL.Text := 'SELECT ItemNote';
      SQL.Add('FROM ReciptItems');
      SQL.Add('WHERE (ReciptItemID = :ReciptItemID)');
      SQL.Add('AND (ServerID = :ServerID)');
      SQL.Add('AND (YearID = :YearID)');
      Parameters.ParamByName('ReciptItemID').Value :=
        qryItem.FieldByName(IDName).AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryItem.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryItem.FieldByName('YearID')
        .AsInteger;
      Active := True;
      Result := Pos(Entity_Char, FieldByName('ItemNote').AsString) > 0
    finally
      Free;
    end;
end;

function Calc_SumFileds(FiledName: String; qryItems, qryinit: TADOQuery)
  : Currency;
var
  Total: String;
begin
  Total := ifthen(FiledName = 'Price', 'Total', '');
  Result := 0;
  if qryItems.Active then
    try
      with TADOQuery.Create(nil) do
      begin
        Clone(qryItems, ltReadOnly);
        First;
        while not Eof do
        begin
          Result := Result + FieldByName(Total + 'Input' + FiledName).AsCurrency
            + FieldByName(Total + 'Output' + FiledName).AsCurrency;
          Next;
        end; // while
        Free;
        // if qryinit.FieldByName('EffectOnCustomer').AsInteger=2 then
        // Result:=Result*-1;
      end; // with
    except
    end; // try
end;

procedure FilterOnPrint(qryinit, qryItems: TADOQuery; FileName: string);
begin
  // if qryinit.FieldByName('AutoPrice').AsInteger = 14 then
  if Pos('filter', LowerCase(FileName)) <> 0 then
  begin
    qryItems.Filter := ' ProductCode = 0 ';
    qryItems.Filtered := True;
  end;
end;

procedure qryCustActive(var qry: TADOQuery; PersonID: Integer);
begin
  if qry <> nil then
    With qry do
    begin
      if Parameters.ParamByName('CustID').Value <> PersonID then
      begin
        Active := False;
        Parameters.ParamByName('CustID').Value := PersonID;
        // qryRecipts.FieldByName('PersonID' + IntToStr(CustNo)).AsInteger;
        Active := True;
      end;
      // add2log(qry.Name+'c='+qry.RecordCount.ToString+'  '+PersonID.ToString);
    end;
end;

procedure qryTozinActive(var qry: TADOQuery; TozinID: Integer);
begin
  if qry <> nil then
    With qry do
    begin
      if Parameters.ParamByName('TozinID').Value <> TozinID then
      begin
        Active := False;
        Parameters.ParamByName('TozinID').Value := TozinID;
        Active := True;
      end;
    end;
end;

procedure qryGroupDeficitIDActive(var qry: TADOQuery; qryRecipts: TADOQuery);
begin
  if (qry <> nil) and (qry.Parameters.FindParam('ReciptID') <> nil) then
    With qry do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
        .AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Active := True;
    end;
end;

procedure qryGroupDeficitIDCreate(var qry: TADOQuery; self_: TForm);
var
  src: TDataSource;
  S_Q_L: string;

begin
  With qry do
  begin
    qry := TADOQuery.Create(self_);
    qry.Name := 'qryGroupDeficitID';
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT DISTINCT GroupDeficitID';
    SQL.Add('FROM Deficits');
    SQL.Add('WHERE (GroupDeficitID <> 0)');
    Active := True;
    if RecordCount > 0 then
    begin
      while not Eof do
      begin
        S_Q_L := S_Q_L +
          Format(' ,SUM(CASE WHEN ISNULL(Deficits.GroupDeficitID, 0) = %d',
          [Fields[0].AsInteger]) +
          Format(' THEN ReciptsDeficits.DeficitAdd - ReciptsDeficits.DeficitDec ELSE 0 END) AS Deficit_Add_Dec%d',
          [Fields[0].AsInteger]);
        Next;
      end;
      Active := False;
      SQL.Text := 'SELECT ''گروه بندي كسورات فاكتور'' AS DeficitName';
      SQL.Add(S_Q_L);
      SQL.Add(' FROM Deficits INNER JOIN');
      SQL.Add(' ReciptsDeficits ON Deficits.DeficitID = ReciptsDeficits.DeficitID');
      SQL.Add(' WHERE (ReciptsDeficits.ReciptID = :ReciptID)');
      SQL.Add(' AND (ReciptsDeficits.YearID = :YearID)');
      SQL.Add(' AND (ReciptsDeficits.ServerID = :ServerID)');
      LockType := ltReadOnly;
      src := TDataSource.Create(self_);
      src.Name := 'srcGroupDeficitID';
      src.DataSet := qry;
      With TppDBPipeline.Create(self_) do
      begin
        DataSource := src;
        Name := 'ppDBPipelineGroupDeficitID';
      end;
    end;
  end;
end;

procedure qryTozinCreate(var qry: TADOQuery; self_: TForm);
var
  src: TDataSource;
begin
  With qry do
  begin
    qry := TADOQuery.Create(self_);
    qry.Name := 'qryTozin1';
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT * ';
    SQL.Add(',  MachineFullWeight - MachineWeight - CASE WHEN MoistureContent + RisingUseful + RisingNonUseFul <> 0');
    SQL.Add('THEN (100 - (MoistureContent + RisingUseful + RisingNonUseFul)) ELSE 0 END AS Mandeh');
    SQL.Add(', LEFT(MachineNo, 2) AS Pelak1, SUBSTRING(MachineNo, 4, 1) AS Pelak2');
    SQL.Add(', SUBSTRING(MachineNo, 6, 3) AS Pelak3, RIGHT(MachineNo, 2) AS Pelak4');
    SQL.Add('FROM Tozin ');
    SQL.Add('WHERE (TozinID = :TozinID)');
    LockType := ltReadOnly;
    src := TDataSource.Create(self_);
    src.Name := 'srcTozin1';
    src.DataSet := qry;
    With TppDBPipeline.Create(self_) do
    begin
      DataSource := src;
      Name := 'ppDBPipelineTozin1';
    end;
  end;
end;

procedure qryCustCreate(var qry: TADOQuery; CustNo: Char; self_: TForm);
var
  src: TDataSource;
begin
  With qry do
  begin
    qry := TADOQuery.Create(self_);
    qry.Name := 'qryCust' + CustNo;
    Connection := DMf.adcBSell;
    SQL.Text :=
      'SELECT *, CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName'
      + ' ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS FullCustName , ';

    if opt.AccountServerName = EmptyStr then
    begin
      SQL.Add('CenterTopics.CTopicName_L1,');
      SQL.Add('CenterTopics2.CTopicName2_L1');

    end
    else
    begin
      SQL.Add('''AccServerName'' AS CTopicName_L1,');
      SQL.Add('''noAccount'' AS CTopicName2_L1');
    end;

    SQL.Add('FROM Customers INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID AND Customers.CustID = :CustID');
    SQL.Add('LEFT OUTER JOIN Zone ON Customers.CityCode = Zone.ShahrCode');
    if opt.AccountServerName = EmptyStr then
    begin
      SQL.Add('LEFT OUTER JOIN Accounting.Acc.CenterTopics AS CenterTopics ON Customers.acc_CTopicCode =');
      SQL.Add('CenterTopics.CTopicCode LEFT OUTER JOIN');
      SQL.Add('Accounting.Acc.CenterTopics2 AS CenterTopics2 ON Customers.acc_CTopicCode2 =');
      SQL.Add('CenterTopics2.CTopicCode2');
    end;

    SQL.Add('LEFT OUTER JOIN   Cnt.Contracts ON  Cnt.Contracts.CaseNo =  Customers.CustID');

    SQL.Text := StringReplace(SQL.Text, 'Accounting', opt.AccountName,
      [rfIgnoreCase, rfReplaceAll]);

    LockType := ltReadOnly;
    src := TDataSource.Create(self_);
    src.Name := 'srcCustomers' + CustNo;
    src.DataSet := qry;

    With TppDBPipeline.Create(self_) do
    begin
      DataSource := src;
      Name := 'ppDBPipelineCustomers' + CustNo;
      OpenDataSource := True;
    end;
  end;
end;

procedure qryCustManagCreate(var qry: TADOQuery; CustNo: Char; self_: TForm);
var
  src: TDataSource;
begin
  With qry do
  begin
    qry := TADOQuery.Create(self_);
    qry.Name := 'qryCustomersManag' + CustNo;
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT CustomersManag.JobCode, CustomersManag.ManagName,';
    SQL.Add('CustomersManag.Mobile, CustomersManag.Tel, CustomersManag.Fax, CustomersManag.Email,');
    SQL.Add('CustomersManag.BirthDate, CustomersManag.MarriageDate, SellsInfo.SellsName');
    SQL.Add('FROM CustomersManag INNER JOIN');
    SQL.Add('SellsInfo ON CustomersManag.JobCode = SellsInfo.SellsCode');
    SQL.Add('WHERE (CustomersManag.PersonID1 = :CustID)');
    LockType := ltReadOnly;
    src := TDataSource.Create(self_);
    src.Name := 'srcCustomersManag' + CustNo;
    src.DataSet := qry;
    With TppDBPipeline.Create(self_) do
    begin
      DataSource := src;
      Name := 'PipCustomersManag' + CustNo;
    end;
  end;
end;

procedure AllEdit(qryRecipts, qryItems: TADOQuery);
begin
  if not(qryRecipts.State in dseditmodes) then
    qryRecipts.Edit;
  With qryItems do
  begin
    First;
    while not Eof do
    begin
      Edit;
      Post;
      Next;
    End;
  end; // with
end;

procedure AllEditUnitSellPrice(qryRecipts, qryItems: TADOQuery;
  FieldName: string);
begin
  if not(qryRecipts.State in dseditmodes) then
    qryRecipts.Edit;
  With qryItems do
  begin
    First;
    while not Eof do
    begin
      Edit;
      qryItems.FieldByName(FieldName).AsFloat :=
        qryItems.FieldByName(FieldName).AsFloat;
      Post;
      Next;
    End;
  end; // with
end;

procedure CopyNewRecipts(qryAllRecipts, qryRecipt, qryinit: TADOQuery);
var
  OldReciptID, ReciptID, ServerID, YearID: Integer;
  b: Boolean;
  s: string;
  ano: TDataSetNotifyEvent;
begin
  if not CheckUserlevel(qryinit.FieldByName('CopyFormLevelID'), qryRecipt) then
    Abort;
  if get_response('آيا براي كپي اين فرم مطمئن هستيد؟‏') <> mrYes then
    Exit;

  OldReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;

  With TADOStoredProc.Create(Application) do
    try
      ProcedureName := 'NewRecipts';
      ConnectionString := GetConStr(APPBank.Name);
      // Parameters.AddParameter;
      Parameters.Refresh;
      Parameters.ParamByName('@ReciptID').Value := 0;
      Parameters.ParamByName('@OldReciptID').Value := OldReciptID;
      Parameters.ParamByName('@ServerID').Value := ServerID;
      Parameters.ParamByName('@YearID').Value := YearID;
      ExecProc;
      ReciptID := Parameters.ParamByName('@RETURN_VALUE').Value;
      qryAllRecipts.Requery();
      if qryAllRecipts.Locate('ReciptID;ServerID;YearID',
        VarArrayOf([ReciptID, ServerID, YearID]), []) then
      begin
        qryRecipt.Edit;
        b := qryRecipt.FieldByName('ReciptNumber').ReadOnly;
        qryRecipt.FieldByName('ReciptNumber').ReadOnly := False;
        GetReciptNumber(qryinit, qryRecipt,
          qryinit.FieldByName('ReciptNumberEventKind').AsInteger,
          myStore, False);
        qryRecipt.FieldByName('ReciptNumber').ReadOnly := b;
        qryRecipt.Post;

      end;
    finally
      if qryRecipt.State in dseditmodes then
      begin
        ano := qryRecipt.BeforeCancel;
        qryRecipt.BeforeCancel := nil;
        qryRecipt.Cancel;
        qryRecipt.BeforeCancel := ano;

        s := 'DELETE FROM Recipts WHERE (ReciptID = %d) AND (ServerID = %d) AND (YearID = %d)';
        s := Format(s, [ReciptID, ServerID, YearID]);
        DMf.adcBSell.Execute(s);
        qryAllRecipts.Requery();
        qryAllRecipts.Locate('ReciptID;ServerID;YearID',
          VarArrayOf([OldReciptID, ServerID, YearID]), []);
        Warn2('اشکال در کپی فرم', 0)
      end
      else
      begin
        BigMessage('كپي شد.‏', 1);
      end;
      Free;
    end;
end;

procedure ReciptsSplit(qryRecipts, qryinit: TADOQuery);
var
  OldReciptID, ReciptID, ServerID, YearID, SplitCountInt: Integer;
  SplitCount: string;
begin
  if not CheckUserlevel(qryinit.FieldByName('CopyFormLevelID'), qryRecipts) then
    Abort;
  if get_response('آيا براي تقسيط اين فرم مطمئن هستيد؟‏') <> mrYes then
    Exit;

  SplitCount := ReadConfig(APPID, 'SplitCount', '');
  repeat
    SplitCount := Get_Box('هر فرم به چند سطر تقسيط شود', 'تعداد سطر:',
      SplitCount);
  until (SplitCount = EmptyStr) or (TryStrToInt(SplitCount, SplitCountInt));
  if SplitCount = EmptyStr then
    Exit;

  SaveConfig(APPID, 'SplitCount', SplitCount);

  OldReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;

  With TADOStoredProc.Create(Application) do
    try
      ProcedureName := 'ReciptsSplit';
      ConnectionString := GetConStr(APPBank.Name);
      Parameters.Refresh;
      Parameters.ParamByName('@LastReciptID').Value := 0;
      Parameters.ParamByName('@SplitCount').Value := SplitCountInt;
      Parameters.ParamByName('@OldReciptID').Value := OldReciptID;
      Parameters.ParamByName('@ServerID').Value := ServerID;
      Parameters.ParamByName('@YearID').Value := YearID;
      ExecProc;
      ReciptID := Parameters.ParamByName('@RETURN_VALUE').Value;
      BigMessage('تقسيط شد.‏', 1);
      qryRecipts.Requery();
      qryRecipts.Locate('ReciptID;ServerID;YearID',
        VarArrayOf([ReciptID, ServerID, YearID]), []);
    finally
      Free;
    end;
end;

procedure DisplayLabel4InOut(qryinit, qryItems: TADOQuery);
var
  i: Integer;
  FormOutput: Boolean;
begin
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  if FormOutput then
    for i := 0 to qryItems.FieldCount - 1 do
    begin
      if Pos('input', LowerCase(qryItems.Fields[i].FieldName)) <> 0 then
      begin
        qryItems.Fields[i].Tag := 0;
        qryItems.Fields[i].DisplayLabel := '#';
      end;
    end
  else
    for i := 0 to qryItems.FieldCount - 1 do
    begin
      if Pos('output', LowerCase(qryItems.Fields[i].FieldName)) <> 0 then
      begin
        qryItems.Fields[i].Tag := 0;
        qryItems.Fields[i].DisplayLabel := '#';
      end;
    end;

end;

procedure chkPerson3ControlWeightCustomer(qryinit, qryRecipts: TADOQuery);
var
  Weight: Real;
begin
  if (qryinit.FieldByName('Person3ControlWeightCustomer').AsInteger > 0) then
    with TADOQuery.Create(nil) do
      try
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT SUM(ReciptItems.OutputWeight) AS Weight, Customers.InfoWeight, ReciptTypes.Person3Caption';
        SQL.Add('FROM Recipts INNER JOIN');
        SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
        SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
        SQL.Add('Customers ON Recipts.PersonID3 = Customers.CustID INNER JOIN');
        SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
        SQL.Add('WHERE (Recipts.ReciptDate = :ReciptDate ) AND (Recipts.PersonID3 = :PersonID3 )');
        SQL.Add('AND (Recipts.ReciptType = :ReciptType )');
        SQL.Add('GROUP BY Customers.InfoWeight, ReciptTypes.Person3Caption');
        Parameters.ParamByName('ReciptDate').Value :=
          qryRecipts.FieldByName('ReciptDate').AsString;
        Parameters.ParamByName('PersonID3').Value :=
          qryRecipts.FieldByName('PersonID3').AsInteger;
        Parameters.ParamByName('ReciptType').Value :=
          qryRecipts.FieldByName('ReciptType').AsInteger;
        Open;
        Weight := FieldByName('Weight').AsFloat -
          FieldByName('InfoWeight').AsFloat;
        if Weight > 0 then
        begin
          Warn('وزن ثبت شده براي اين ' + FieldByName('Person3Caption').AsString
            + #13 + FloatToStr(Weight) + #13 + '  بيشتر از حد مجاز مي باشد.‏',
            mtInformation);
        end;
        Close;
      finally
        Free;
      end;
end;

procedure RefreshLookupList(const qry: TADOQuery);
begin
  if qry.Active then
    THackQuery(qry).CalculateFields(qry.ActiveBuffer)
end;

// procedure ChkControlEntryCustInfo(qry4Chek: TADOQuery; lblWarn: TLabel);
// begin
// if opt.ControlEntryCustInfo then
// if (qry4Chek.FieldByName('CustomerID2').AsInteger <> 0) and
// (Trim(qry4Chek.FieldByName('_NationalIDCustomer2').AsString) +
// Trim(qry4Chek.FieldByName('_NationalIDCustomer2').AsString) = EmptyStr)
// then
// begin
// lblWarn.Caption := 'كد ملي يا  كد اقتصادي مشتري وارد نشده';
// lblWarn.Visible := True;
// lblWarn.Parent.Visible := True;
// end
// else
// begin
// lblWarn.Caption := EmptyStr;
// end;
// end;

procedure ChangeSQlqryStuff(qryStuff, qryinit, qryRecipts: TADOQuery;
  lblWarn: TLabel);
begin
  if opt.ControlEntryCustInfo then
    if (qryRecipts.FieldByName('PersonID1').AsInteger <> 0) and
      (Trim(qryRecipts.FieldByName('_PersonEconomicNumber').AsString) +
      Trim(qryRecipts.FieldByName('_NationalID').AsString) = EmptyStr) then
      lblWarn.Caption := 'كد ملي يا  كد اقتصادي مشتري وارد نشده'
    else
      lblWarn.Caption := EmptyStr;

  with qryStuff do
  begin
    Active := False;
    if (qryinit.FieldByName('AutoPrice').AsInteger in [6, 13]) and
      (qryRecipts.FieldByName('_CustValuationType').AsInteger = 5) then
    begin
      SQL.Text := 'SELECT Aid_StuffCoding2.*,Agreements.*';
      SQL.Add('FROM Aid_StuffCoding2 RIGHT OUTER JOIN');
      SQL.Add('Agreements ON Aid_StuffCoding2.c_StuffCode = Agreements.StuffCode');
      SQL.Add('WHERE (AgrState = 0)');
      SQL.Add('AND (YearID = :YearID )');
      SQL.Add('AND ((StoreID IS NULL) OR (StoreID = :StoreID))');

      SQL.Add(Format('AND(PersonID1 = %d )AND (AgreementsDate <= %s )',
        [qryRecipts.FieldByName(ifthen(qryinit.FieldByName('AutoPrice')
        .AsInteger = 6, 'PersonID1', 'PersonID2')).AsInteger,
        QuotedStr(qryRecipts.FieldByName('ReciptDate').AsString)]));

      if opt.StuffEnableKind in [0] then
        SQL.Add('AND  (State = 0)');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('StoreID').Value :=
        qryRecipts.FieldByName('StoreID').AsInteger;
    end
    else if (opt.StuffCodingKind in [1, 2]) or
      (qryinit.FieldByName('StoreActive').AsInteger = 2) then
    begin
      SQL.Text := 'SELECT Aid_StuffCoding2.* FROM Aid_StuffCoding2 ';
      SQL.Add('WHERE (State = 0) ');
      SQL.Add('AND ((StoreID IS NULL) OR (StoreID = :StoreID))');
      Parameters.ParamByName('StoreID').Value :=
        qryRecipts.FieldByName('StoreID').AsInteger;
    end
    else
    begin
      SQL.Text := 'SELECT Aid_StuffCoding2.*';
      SQL.Add('FROM Aid_StuffCoding2 INNER JOIN  StoreStuffs ON ');
      SQL.Add('Aid_StuffCoding2.c_StuffCode = StoreStuffs.c_StuffCode');
      SQL.Add(Format('WHERE (n_StoreID = %d)',
        [qryRecipts.FieldByName('StoreID').AsInteger]));
      SQL.Add('AND ((StoreID IS NULL) OR (StoreStuffs.n_StoreID = :StoreID))');
      Parameters.ParamByName('StoreID').Value :=
        qryRecipts.FieldByName('StoreID').AsInteger;

    end;
    SQL.Add('AND((Aid_StuffCoding2.c_StuffCode IN');
    SQL.Add('(SELECT DISTINCT StuffCode');
    SQL.Add('FROM ReciptItems');
    SQL.Add(Format
      ('WHERE (ReciptID = %d) AND (ServerID = %d) AND (YearID = %d)))',
      [qryRecipts.FieldByName('ReciptID').AsInteger,
      qryRecipts.FieldByName('ServerID').AsInteger,
      qryRecipts.FieldByName('YearID').AsInteger]));
    // SQL.Add(Format('OR(Aid_StuffCoding2.c_StuffCode IN(%s)))', [StuffCodes]));
    SQL.Add('OR(Aid_StuffCoding2.c_StuffCode ' +
      'IN(SELECT StuffCode FROM StuffCodeTemp  ' +
      Format('WHERE (ReciptType = %d) AND (UserID = %d))))',
      [qryinit.FieldByName('ReciptType').AsInteger, User.ID]));
    Active := True;
  end;

end;

function addAgreementsSQL(qryinit, qryRecipts: TADOQuery): String;
begin
  Result := EmptyStr;
  if (qryinit.FieldByName('AutoPrice').AsInteger in [6, 13]) or
    (qryRecipts.FieldByName('_CustValuationType').AsInteger = 5) then
  begin
    Result := ' INNER JOIN (SELECT StuffCode FROM Agreements ' +
      ' WHERE (AgrState = 0) AND (AgreementsDate <= ''' + qryRecipts.FieldByName
      ('ReciptDate').AsString + ''') AND (YearID = ' +
      IntToStr(APPBank.Year) + ')';
    Result := Result + ' AND (PersonID1 = ' + qryRecipts.FieldByName
      (ifthen(qryinit.FieldByName('AutoPrice').AsInteger = 6, 'PersonID1',
      'PersonID2')).AsString + ')';
    Result := Result + ') AS Agreements_1 ON ' +
      ' StuffCoding.c_StuffCode = Agreements_1.StuffCode ';
  end;
end;

procedure SaveFormItems(qryItems: TADOQuery);
begin
  With TSaveDialog.Create(nil) do
    try
      FileName := 'SavedFormItems.dat';
      If not Execute then
        Exit;
      qryItems.SaveToFile(FileName);
    finally
      Free;
    end;
end;

procedure LoadFormItems(qryItems: TADOQuery);
begin
  With TOpenDialog.Create(nil) do
    try
      FileName := 'SavedFormItems.dat';
      If not Execute then
        Exit;
      With TADOQuery.Create(nil) do
        try
          LoadFromFile(FileName);
          while not Eof do
          begin
            qryItems.Insert;
            qryItems.FieldByName('StuffCode').AsLargeInt :=
              FieldByName('StuffCode').AsLargeInt;
            Next;
          end;
        finally
          Free;
        end;
    finally
      Free;
    end;

end;

procedure InsertDefault(qryinit, qryItems, qryStuffCodingItems,
  qry_Lookup: TADOQuery);
begin
  if qryinit.FieldByName('AutoPrice').AsInteger = 11 then
    if qryStuffCodingItems.Locate('StuffCode', qryItems.FieldByName('StuffCode')
      .AsLargeInt, []) then
    begin
      qryItems.FieldByName('StuffCodingItemID').AsInteger :=
        qryStuffCodingItems.FieldByName('StuffCodingItemID').AsInteger;
      qryItems.FieldByName('Length_').AsFloat := qryStuffCodingItems.FieldByName
        ('Length_').AsFloat;
      qryItems.FieldByName('Width').AsFloat := qryStuffCodingItems.FieldByName
        ('Width').AsFloat;
      qryItems.FieldByName('stuffdiameter').AsFloat :=
        qryStuffCodingItems.FieldByName('Thickness').AsFloat;
    end;

  if (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 3]) and
    (qryinit.FieldByName('ShowEntityOnSearch').AsInteger <> 4) then
  begin
    qryItems.FieldByName('ProductModel').AsInteger :=
      qry_Lookup.FieldByName('LookUpID').AsInteger;
  end;
end;

{ TMyRecallType9 }

procedure TMyRecallType9.Click;
var
  qryTmp: TADOQuery;
begin
  inherited;
  if Parent.Tag <> 3 then
  begin
    With qryTmp do
    begin
      qryTmp := TADOQuery.Create(DMf);
      qryTmp.Connection := DMf.adcBSell;
      Active := False;
      SQL.Text := 'SELECT ReciptDate,ReciptNumber,';
      SQL.Add('AidDate,AidNumber,ReciptType ');
      SQL.Add('FROM Recipts ');
      SQL.Add(Format('WHERE(ReciptID = %d )',
        [qry_Recipts.FieldByName('ReciptID').AsInteger]));
      SQL.Add(Format('AND (ServerID = %d )',
        [qry_Recipts.FieldByName('ServerID').AsInteger]));
      SQL.Add(Format('AND (YearID = %d )',
        [qry_Recipts.FieldByName('YearID').AsInteger]));
      Active := True;
      Edit;
      FieldByName('ReciptDate').AsString := FieldByName('AidDate').AsString;
      FieldByName('ReciptNumber').AsString := FieldByName('AidNumber').AsString;
      FieldByName('ReciptType').AsInteger := ReciptType;
      FieldByName('AidDate').AsString := '';
      FieldByName('AidNumber').AsString := '0';
      Post;
      qryTmp.Free;
      qry_Recipts.Refresh;
    end
  end
  else
    Warn('امکان پذیر نیست');

end;

procedure SendReciptsCorrelateSMS(ReciptID, ServerID, YearID: Integer);
var
  qryRecipts: TADOQuery;
begin
  if not opt.SysSmsActive then
    Exit;
  qryRecipts := TADOQuery.Create(nil);
  with qryRecipts do
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT Customers_1.CustName AS _PersonName1, Customers_1.Mobile AS _Mobile, Customers_2.CustName AS';
      SQL.Add('_PersonName2, Customers_3.CustName AS _PersonName3, Customers_2.Mobile AS _Mobile2,');
      SQL.Add('Customers_3.Mobile AS _Mobile3, Stores.c_StoreName AS _StoresName');
      SQL.Add(', StuffCoding.c_StuffName AS _StuffName');
      SQL.Add(',Recipts.*,ReciptItems.*,Customers_1.*,Stores.*,StuffCoding.*');
      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
      SQL.Add('Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.CustID INNER JOIN');
      SQL.Add('Customers AS Customers_2 ON Recipts.PersonID2 = Customers_2.CustID INNER JOIN');
      SQL.Add('Customers AS Customers_3 ON Recipts.PersonID3 = Customers_3.CustID INNER JOIN');
      SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN');
      SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode');
      SQL.Add('WHERE (Recipts.ReciptID = :ReciptID) ');
      SQL.Add('AND (Recipts.ServerID = :ServerID) AND (Recipts.YearID = :YearID)');
      Parameters.ParamByName('ReciptID').Value := ReciptID;
      Parameters.ParamByName('ServerID').Value := ServerID;
      Parameters.ParamByName('YearID').Value := YearID;
      Active := True;
      SmsSendQry(qryRecipts, qryRecipts, SmsRecipts, FieldByName('ReciptType')
        .AsInteger, 0, 2);
    finally
      sleep2(3000);
      qryRecipts.Free;
    end;
end;

function ChkReciptState4Delete(qryinit, qryRecipts: TADOQuery): Boolean;
begin
  Result := True;
  if qryRecipts.FieldByName('ReciptState').AsInteger in [1, 2, 3] then
  begin
    Warn('فقط ' + qryinit.FieldByName('ReciptCaption').AsString +
      'ي كه نوع اطلاعات آن موقت/پیش نویس/رزرو است قابل حذف است‏',
      mtInformation);
    Result := False;
  end;

  if (qryRecipts.FindField('tax_status') <> nil) and
    (qryRecipts.FieldByName('tax_status').AsInteger in [1, 2]) then
  begin
    Warn('فرم های ارسال شده به مودیان قابل حذف نیستند', mtInformation);
    Result := False;
  end;

end;

function ReciptStateDeficitsVisible(qryRecipts: TADOQuery): Boolean;
begin
  Result := qryRecipts.FieldByName('ReciptState').AsInteger in [0, 1, 4, 5]
end;

procedure ReciptsGiftItemsOnStuffCode(qryRecipts, qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
begin
  if qryinit.FieldByName('ActiveGiftItems').AsInteger = 1 then
    ReciptsGiftItemsOnStuffCode1(qryItems, qryinit, FieldNameEntity);
  if qryinit.FieldByName('ActiveGiftItems').AsInteger = 2 then
    ReciptsGiftItemsOnStuffCode2(qryItems, qryinit, FieldNameEntity,
      qryRecipts.FieldByName('PersonID1').AsInteger);
  if qryinit.FieldByName('ActiveGiftItems').AsInteger = 3 then
    ReciptsGiftItemsOnStuffCode3(qryRecipts, qryItems, qryinit, FieldNameEntity)
end;

procedure ReciptsGiftItemsOnStuffCode1(qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
var
  b1, b2: Boolean;
  qry: TADOQuery;
  StuffCode: Largeint;
  aBeforeNotifyEvent, aAfterNotifyEvent: TDataSetNotifyEvent;
  Entity, PercentGiftItems: Double;
  MinAmountOfGiftItems: Integer;
begin
  MinAmountOfGiftItems := qryinit.FieldByName('MinAmountOfGiftItems').AsInteger;
  PercentGiftItems := qryinit.FieldByName('PercentGiftItems').AsFloat;

  aBeforeNotifyEvent := qryItems.BeforeDelete;
  aAfterNotifyEvent := qryItems.AfterDelete;
  b1 := qryItems.FieldByName(FieldNameEntity).ReadOnly;
  b2 := qryItems.FieldByName('ProductCode').ReadOnly;
  qry := TADOQuery.Create(nil);
  try
    with qry do
    begin
      Clone(qryItems, ltReadOnly);
      Filter := 'UnitSellPrice > 0 AND WaterCo <>  ' + IntToStr(WaterCoConst);
      Filtered := True;
      Sort := 'StuffCode';
      First;
    end;

    with qryItems do
    begin
      DisableControls;
      Filter := 'ProductCode <> 0';
      Filtered := True;
      First;
      AfterDelete := nil;
      BeforeDelete := nil;
      while not Eof do
        Delete;
      FieldByName(FieldNameEntity).ReadOnly := False;
      FieldByName('ProductCode').ReadOnly := False;
      Filter := EmptyStr;
    end;

    while not qry.Eof do
    begin
      StuffCode := qry.FieldByName('StuffCode').AsLargeInt;
      if qryItems.Locate('StuffCode', StuffCode, []) then
      begin
        Entity := qryItems.FieldByName(FieldNameEntity).AsFloat;
        if Entity >= MinAmountOfGiftItems then
        begin
          qryItems.Append;
          qryItems.FieldByName('StuffCode').AsLargeInt := StuffCode;
          qryItems.FieldByName(FieldNameEntity).AsFloat :=
            RoundTo(PercentGiftItems * Entity / 100, 0);
          qryItems.FieldByName('ProductCode').AsLargeInt := StuffCode;
          qryItems.FieldByName('WaterCo').AsInteger := WaterCoConst;
          if qryItems.FindField('TaxCo') <> nil then
            qryItems.FieldByName('TaxCo').AsInteger := 0;
          qryItems.Post;
        end;

      end;
      qry.Next;
    end;
  finally
    qryItems.FieldByName(FieldNameEntity).ReadOnly := b1;
    qryItems.FieldByName('ProductCode').ReadOnly := b2;
    qryItems.BeforeDelete := aBeforeNotifyEvent;
    qryItems.AfterDelete := aAfterNotifyEvent;
    qryItems.EnableControls;
    qry.Free;
  end;
end;

procedure ReciptsGiftItemsOnStuffCode2(qryItems, qryinit: TADOQuery;
  FieldNameEntity: string; PersonID1: Integer);
var
  b1, b2: Boolean;
  qry, qryGiftItems: TADOQuery;
  StuffCode: Largeint;
  aBeforeNotifyEvent, aAfterNotifyEvent: TDataSetNotifyEvent;
  Entity, ForEachPercentGift: Double;
  ForEachAmountGift: Integer;
  sFilter: string;
begin
  aBeforeNotifyEvent := qryItems.BeforeDelete;
  aAfterNotifyEvent := qryItems.AfterDelete;
  b1 := qryItems.FieldByName(FieldNameEntity).ReadOnly;
  b2 := qryItems.FieldByName('ProductCode').ReadOnly;
  qry := TADOQuery.Create(nil);

  qryGiftItems := TADOQuery.Create(nil);
  with qryGiftItems do
  begin
    Connection := theMainConnection;
    SQL.Text := 'SELECT MaxAmount, ForEachPercentGift, ForEachAmountGift';
    SQL.Add(', StuffCodeGift ,Description_');
    SQL.Add(', StuffCodeFrom , StuffCodeTo ,MinAmount');
    SQL.Add('FROM StuffCodingGiftItems');
    SQL.Add('WHERE (:CustID BETWEEN CustIDFrom AND CustIDTo)');
    Parameters.ParamByName('CustID').Value := PersonID1;
    Active := True;
  end;

  try
    with qry do
    begin
      Clone(qryItems, ltReadOnly);
      Filter := 'UnitSellPrice > 0 AND WaterCo <> ' + IntToStr(WaterCoConst);
      Filtered := True;
      Sort := 'StuffCode';
      First;
    end;

    with qryItems do
    begin
      DisableControls;
      Filter := 'ProductCode <> 0';
      Filtered := True;
      First;
      AfterDelete := nil;
      BeforeDelete := nil;
      while not Eof do
        Delete;
      FieldByName(FieldNameEntity).ReadOnly := False;
      FieldByName('ProductCode').ReadOnly := False;
      Filter := EmptyStr;
    end;

    while not qry.Eof do
    begin
      StuffCode := qry.FieldByName('StuffCode').AsLargeInt;
      if qryItems.Locate('StuffCode', StuffCode, []) then
      begin
        Entity := qryItems.FieldByName(FieldNameEntity).AsFloat;
        with qryGiftItems do
        begin
          Active := True;
          Filtered := False;
          sFilter :=
            'MinAmount <= %f AND StuffCodeFrom <= %d AND StuffCodeTo >= %d ';
          sFilter := Format(sFilter, [Entity, StuffCode, StuffCode]);
          Filter := sFilter;
          Filtered := True;
          if RecordCount > 0 then
          begin
            qryItems.Append;
            qryItems.FieldByName('StuffCode').AsLargeInt :=
              FieldByName('StuffCodeGift').AsLargeInt;

            ForEachPercentGift := FieldByName('ForEachPercentGift').AsFloat;

            if ForEachPercentGift > 0 then
              qryItems.FieldByName(FieldNameEntity).AsFloat :=
                RoundTo(ForEachPercentGift * Entity / 100, 0);

            ForEachAmountGift := FieldByName('ForEachAmountGift').AsInteger;

            if ForEachAmountGift > 0 then
              qryItems.FieldByName(FieldNameEntity).AsInteger :=
                qry.FieldByName(FieldNameEntity)
                .AsInteger div ForEachAmountGift;

            if qryItems.FieldByName(FieldNameEntity).AsFloat >
              FieldByName('MaxAmount').AsFloat then
              qryItems.FieldByName(FieldNameEntity).AsFloat :=
                FieldByName('MaxAmount').AsFloat;

            qryItems.FieldByName('ProductCode').AsLargeInt :=
              FieldByName('StuffCodeGift').AsLargeInt;
            qryItems.FieldByName('WaterCo').AsInteger := WaterCoConst;
            if qryItems.FindField('TaxCo') <> nil then
              qryItems.FieldByName('TaxCo').AsInteger := 0;

            qryItems.FieldByName('ItemNote').AsString :=
              FieldByName('Description_').AsString;

            qryItems.Post;
          end;
          Active := False;
        end;

      end;
      qry.Next;
    end;
  finally
    qryItems.FieldByName(FieldNameEntity).ReadOnly := b1;
    qryItems.FieldByName('ProductCode').ReadOnly := b2;
    qryItems.BeforeDelete := aBeforeNotifyEvent;
    qryItems.AfterDelete := aAfterNotifyEvent;
    qryItems.EnableControls;
    qry.Free;
    qryGiftItems.Free;
  end;
end;

procedure ReciptsGiftItemsOnStuffCode3(qryRecipts, qryItems, qryinit: TADOQuery;
  FieldNameEntity: string);
var
  qryGiftItems: TADOQuery;
  StuffCode: Largeint;
  ForEachPercentGift: Double;
  ForEachAmountGift: Integer;
  Entity, sFilter: string;
begin
  qryGiftItems := TADOQuery.Create(nil);
  with qryGiftItems do
  begin
    Connection := theMainConnection;
    SQL.Text := 'SELECT MaxAmount, ForEachPercentGift, ForEachAmountGift';
    SQL.Add(', StuffCodeGift ,Description_');
    SQL.Add(', StuffCodeFrom , StuffCodeTo ,MinAmount');
    SQL.Add('FROM StuffCodingGiftItems');
    SQL.Add('WHERE (:CustID BETWEEN CustIDFrom AND CustIDTo)');
    Parameters.ParamByName('CustID').Value :=
      qryRecipts.FieldByName('PersonID1').AsInteger;
    Active := True;
  end;

  try
    qryItems.DisableControls;
    qryItems.First;
    while not qryItems.Eof do
    begin
      StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
      Entity := qryItems.FieldByName(FieldNameEntity).AsFloat.ToString;
      qryItems.Edit;
      qryItems.FieldByName('SugarEntity').AsFloat := 0;
      // qryItems.FieldByName('DeficitValue').AsFloat := 0;
      if (qryRecipts.FieldByName('CalcGiftItems').AsBoolean or
        qryRecipts.FieldByName('CalcGiftItems').IsNull) then
        with qryGiftItems do
        begin
          Active := True;
          Filtered := False;
          sFilter :=
            'MinAmount <= %s AND StuffCodeFrom <= %d AND StuffCodeTo >= %d ';
          sFilter := Format(sFilter, [Entity, StuffCode, StuffCode]);
          Filter := sFilter;
          Filtered := True;
          if RecordCount > 0 then
          begin
            ForEachPercentGift := FieldByName('ForEachPercentGift').AsFloat;

            if ForEachPercentGift > 0 then
              qryItems.FieldByName('SugarEntity').AsFloat :=
                RoundTo(ForEachPercentGift * Entity.ToDouble / 100, 0);

            ForEachAmountGift := FieldByName('ForEachAmountGift').AsInteger;

            if ForEachAmountGift > 0 then
              qryItems.FieldByName('SugarEntity').AsInteger :=
                qryItems.FieldByName(FieldNameEntity)
                .AsInteger div ForEachAmountGift;

            if qryItems.FieldByName(FieldNameEntity).AsFloat >
              FieldByName('MaxAmount').AsFloat then
              qryItems.FieldByName('SugarEntity').AsFloat :=
                FieldByName('MaxAmount').AsFloat;

            qryItems.FieldByName('DeficitValue').AsFloat :=
              RoundTo(qryItems.FieldByName('SugarEntity').AsFloat *
              qryItems.FieldByName('UnitSellPrice').AsFloat, 0);

            // qryItems.FieldByName('WaterCo').AsInteger := WaterCoConst;
            // if qryItems.FindField('TaxCo') <> nil then
            // qryItems.FieldByName('TaxCo').AsInteger := 0;

            if qryItems.FieldByName('ItemNote').AsString = EmptyStr then
              qryItems.FieldByName('ItemNote').AsString :=
                FieldByName('Description_').AsString;

          end;
          Active := False;
        end;
      qryItems.Post;
      qryItems.Next;
    end;
  finally
    qryItems.EnableControls;
    qryGiftItems.Free;
  end;
end;

function changePersonIDInSQLText(SQLText: string;
  custIDKindActive: Integer): string;
begin
  case custIDKindActive of
    1:
      Result := StringReplace(SQLText, 'Recipts.PersonID1', 'Recipts.PersonID2',
        [rfReplaceAll]);
    2:
      Result := StringReplace(SQLText, 'Recipts.PersonID1', 'Recipts.PersonID3',
        [rfReplaceAll]);
    3:
      Result := StringReplace(SQLText, 'Recipts.PersonID1',
        'ReciptItems.PersonID1', [rfReplaceAll]);
  else
    Result := StringReplace(SQLText, 'Recipts.PersonID1', 'Recipts.PersonID1',
      [rfReplaceAll]);
  end;
end;

function GetPersonCaption(formType: Integer; qryWithCust: TADOQuery;
  custIDKindActive: Integer; OrginalSQL: string): string;
begin
  qryWithCust.SQL.Text := changePersonIDInSQLText(OrginalSQL, custIDKindActive);
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Person1Caption FROM dbo.GetPersonCaption(:Type)';
    SQL.Add('WHERE (ID = :ID)');
    Parameters.ParamByName('Type').Value := formType;
    Parameters.ParamByName('ID').Value := custIDKindActive;
    Active := True;
    Result := FieldByName('Person1Caption').AsString;
    qryWithCust.FieldByName('PersonID1').DisplayLabel := 'کد' + Result;
    qryWithCust.FieldByName('CustName').DisplayLabel := Result;
    Active := False;
  end;
end;

function ChkIsStepCorrelate(qryRecipts: TADOQuery): Boolean;
begin
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT dbo.ChkIsStepCorrelate(:ReciptType,:ReciptID,:ParentReciptID) AS StepCorrelate';
    Parameters.ParamByName('ReciptType').Value :=
      qryRecipts.FieldByName('ReciptType').AsInteger;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ParentReciptID').Value :=
      qryRecipts.FieldByName('ParentReciptID').AsInteger;
    Active := True;
    Result := FieldByName('StepCorrelate').AsBoolean;
    Active := False;
  end;
end;

procedure AddcmbHCKharidarTypeCode(cmbHCKharidarTypeCode: TDBComboBox);
begin
  cmbHCKharidarTypeCode.Clear;
  cmbHCKharidarTypeCode.Items.Add('');
  cmbHCKharidarTypeCode.Items.Add('1-حقيقي');
  cmbHCKharidarTypeCode.Items.Add('2-حقوقي');
  // cmbHCKharidarTypeCode.Items.Add('حقوقي دولتي(وزارتخانه ها و سازمانها)');
  cmbHCKharidarTypeCode.Items.Add('3 -مشاركت مدنی');
  cmbHCKharidarTypeCode.Items.Add('4 -اتباع غیر ایرانی');
  cmbHCKharidarTypeCode.Items.Add('5 -حذف شد');
  /// /مصرف كننده نهایی
end;

procedure GetCustomersDiscount(qryRecipts, qryItems, qryinit: TADOQuery);
var
  DiscountActive: Integer;
begin
  if (qryinit.FieldByName('DiscountEntryKind').AsInteger = 1) then
  begin
    DiscountActive := qryinit.FieldByName('DiscountActive').AsInteger;
    if DiscountActive and Integer(CHkDeficitValue3C) <> 0 then
    begin
      qryItems.FieldByName('DeficitValueCo3').AsFloat :=
        GetCustomersNoDiscount(qryRecipts, qryinit)
    end
    else
      qryItems.FieldByName('WaterCo').AsFloat :=
        GetCustomersNoDiscount(qryRecipts, qryinit);

    if DiscountActive and Integer(CHkDeficitValue1OfDiscount1) <> 0 then
      qryItems.FieldByName('WaterCo').AsFloat :=
        GetCustomersNoDiscount(qryRecipts, qryinit, 'One');

  end;
end;

function GetCustomersNoDiscount(qryRecipts, qryinit: TADOQuery;
  ExtendedName: string = ''): Extended;
begin
  case qryinit.FieldByName('CustomersNoDiscount').AsInteger of
    0, 1:
      Result := qryRecipts.FieldByName('_CustomersDiscount' +
        ExtendedName).AsFloat
  else

    Result := qryRecipts.FieldByName('_CustomersDiscount2' +
      ExtendedName).AsFloat
  end;
end;

procedure ReciptBe4PostAutoPrice14(PersonID1: Integer;
  qryItems, qryinit: TADOQuery; ReviewOrders, ReviewRequests: Boolean;
  masg: string);
var
  val, FieldNameInOut: string;
  JSONArray: TJSONArray;
  jitem: TJSONValue;
  Items: TEasyLINQ<TReciptItem>;
  item: TReciptItem;
  aBeforeNotifyEvent, aAfterNotifyEvent: TDataSetNotifyEvent;
  Output: Boolean;
begin
  Items := nil;
  Output := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  if Output then
  begin
    FieldNameInOut := 'Output';
  end
  else
  begin
    FieldNameInOut := 'Input';
  end;
  aBeforeNotifyEvent := qryItems.BeforeDelete;
  aAfterNotifyEvent := qryItems.AfterDelete;

  With qryItems do
    try

      DisableControls;
      if not ReviewRequests then
      begin
        BeforeDelete := nil;
        AfterDelete := nil;
        Filter := 'ProductCode <> 0';
        Filtered := True;
        First;
        while not Eof do
        begin
          if ReviewOrders then
          begin
            Edit;
            qryItems.FieldByName(FieldNameInOut + 'Weight').AsFloat := 0;
            qryItems.FieldByName(FieldNameInOut + 'Entity').AsFloat := 0;
            Post;
            Next;
          end
          else
            Delete;

        end;
        Filtered := False;
      end;
      First;

      // if IsDelphiRunning then
      // SaveUniCodeFile(qryItems.ToJSONArray.ToString,
      // 'd:\jesonBiulder' + qryItems.RecordCount.ToString +ReviewRequests.ToString +'.txt');

      val := theServerClient.SellsMethods.ReciptBe4PostAutoPrice14(PersonID1,
        qryItems.ToJSONArray.ToString, qryinit.FieldByName('ReciptType')
        .AsInteger, ReviewOrders);
      if val = '' then
        Exit;

      JSONArray := TJSOnObject.ParseJSONValue(val) as TJSONArray;
      try

        Items := TEasyLINQ<TReciptItem>.Create(False);
        for jitem in JSONArray do
        begin
          item := TJson.JsonToObject<TReciptItem>(TJSOnObject(jitem));
          Items.Add(item)
        end;

        for item in Items do
        begin // (not ReviewRequests) and
          if ((qryItems.Locate('ReciptItemID', item.ReciptItemID, []))) then
          begin
            qryItems.Edit;
            qryItems.FieldByName('WaterCo').AsFloat := item.WaterCo;
            qryItems.FieldByName('DeficitValue2').AsFloat := item.DeficitValue2;
            qryItems.Post;
          end
          else if item.StuffCode <> 0 then
          begin
            if (item.ProductCode <> 0) then
            begin
              qryItems.Insert;
              qryItems.FieldByName('ProductCode').AsLargeInt :=
                item.ProductCode;
              qryItems.FieldByName('StuffCode').AsLargeInt := item.StuffCode;
              qryItems.FieldByName('ItemNote').AsString := item.ItemNote;
              qryItems.FieldByName('UnitSellPrice').AsInteger := 0;

              if Output then
              begin
                qryItems.FieldByName('OutputEntity').AsFloat :=
                  item.OutputEntity;
                qryItems.FieldByName('OutputWeight').AsFloat :=
                  item.OutputWeight;
              end
              else
              begin
                qryItems.FieldByName('InputEntity').AsFloat := item.InputEntity;
                qryItems.FieldByName('InputWeight').AsFloat := item.InputWeight;
              end;
              qryItems.FieldByName('WaterCo').AsFloat := item.WaterCo;
              qryItems.FieldByName('DeficitValue2').AsFloat :=
                item.DeficitValue2;
              qryItems.Post;
            end;
          end
        end;

      finally
        Items.Free;
        if JSONArray <> nil then
          FreeAndNil(JSONArray);

      end;

    finally
      BeforeDelete := aBeforeNotifyEvent;
      AfterDelete := aAfterNotifyEvent;
      EnableControls;
      Warn2('محاسبه انجام شد ' + masg);
    end;

end;

procedure PersonIdActive(Sid: Char; var qryinit, qryRecipts, qryCustomersN,
  qryCust, qryCustManag: TADOQuery; pnlPerson: TPanel; LblPerson: TLabel;
  dbtxtPersonID: TDBText; self_: TForm);
var
  b: Boolean;
begin
  With qryinit do
  begin
    b := FieldByName('Person' + Sid + 'Active').AsInteger = 1;
    pnlPerson.Visible := b;
    if b then
    begin
      LblPerson.Caption := 'كد ' +
        FieldByName('Person' + Sid + 'Caption').AsString;
      qryRecipts.FieldByName('PersonID' + Sid).Required := pnlPerson.Visible;
      qryRecipts.FieldByName('PersonID' + Sid).DisplayLabel :=
        'كد ' + LblPerson.Caption;
      qryCustomersN := TADOQuery.Create(self_);
      With qryCustomersN do
      begin
        Name := 'qryCustomers' + Sid;
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT DISTINCT CustID, CustName,';
        SQL.Add('InfoWeight,Address,Mobile FROM Vu_CustomersGroups ');
        if not NotNull(qryinit.FieldByName('CustomerKind' + Sid).AsString,
          'هيچ گروهي براي گروه مشتري ' + Sid + '  مشخص نشده است') then
          SQL.Add(GetCustomersGroupTypeSQL('CustomerKind' + Sid,
            qryinit, True));
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_PersonName' + Sid;
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID' + Sid;
        LookupDataSet := qryCustomersN;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'CustName';
        Required := pnlPerson.Visible;
        DisplayLabel := 'نام ' +
          FieldByName('Person' + Sid + 'Caption').AsString;
        Size := 100;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dbtxtPersonID.DataField := FieldName;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_Mobile' + Sid;
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID' + Sid;
        LookupDataSet := qryCustomersN;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'Mobile';
        Size := 100;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
      end;

      qryCustCreate(qryCust, Sid, self_);
      qryCustManagCreate(qryCustManag, Sid, self_);
    end;
  end;
end;

procedure TozinIDActive(var qryinit, qryRecipts, qryTozin: TADOQuery;
  pnlTozinID: TPanel; txtTozinID: TDBText; self_: TForm);
var
  b: Boolean;
begin
  With qryinit do
  begin
    b := qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
      Integer(CHKTozinID) <> 0;
    pnlTozinID.Visible := b;
    if b then
    begin
      qryRecipts.FieldByName('TozinID').Required := pnlTozinID.Visible;
      With qryTozin do
      begin
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_TozinNote';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'TozinID';
        LookupDataSet := qryTozin;
        LookUpKeyFields := 'TozinID';
        LookupResultField := 'Note';
        if txtTozinID <> nil then
          Required := pnlTozinID.Visible;
        DisplayLabel := 'توضیحات باسکول ';
        Size := 1000;
        qryRecipts.FieldDefs.Add(Name, ftString, 1000, True);
        if txtTozinID <> nil then
          txtTozinID.DataField := FieldName;
      end;
      // qryCustManagCreate(qryCustManag, Sid, self_);
    end;
  end;
end;

procedure PersonIDOnDetailActiveChange(Sender: TField;
  qryinit, qryItems: TADOQuery);
var
  PersonFildName: string;
BEGIN
  if Sender.AsInteger = 0 then
    Exit;
  if (not qryItems.Active) then
    Exit;
  if (qryItems.RecordCount = 0) then
    Exit;
  if Sender.FieldName = 'PersonID1' then
  begin
    if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [0, 1] then
      PersonFildName := 'PersonID1';
  end
  else
  begin
    if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [3] then
      PersonFildName := 'PersonID2';
  end;
  if PersonFildName <> EmptyStr then
    if get_response('آيا براي تغییر کد مشتری آرتیکل ها هم مطمئن هستيد!؟‏‏') = mrYes
    then
    begin
      With qryItems do
      begin
        First;
        while not Eof do
        begin
          if FieldByName('PersonID1').AsInteger = Sender.OldValue then
          begin
            Edit;
            FieldByName('PersonID1').AsInteger := Sender.NewValue;
            Post;
          end;
          Next;
        end;
      end;
    end;
END;

procedure PersonIDHistoryOnType(Sender: TDBEdit;
  qryRecipts, qryinit: TADOQuery);
var
  s: string;
  qry: TADOQuery;
BEGIN
  if Sender.Field.AsInteger = 0 then
    Exit;
  qry := TADOQuery.Create(DMf);
  qry.Connection := theMainConnection;
  With DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName';
    SQL.Add(', ReciptItems.InputEntity + ReciptItems.OutputEntity AS Entity,');
    SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight AS Weight');
    SQL.Add('FROM (SELECT TOP (1) ReciptID, ServerID, YearID');
    SQL.Add('FROM Recipts AS Recipts_1');
    SQL.Add('WHERE (PersonID1 = :PersonID1 ) AND (ReciptType = :ReciptType)');
    SQL.Add('AND (ReciptID <> :ReciptID )');
    SQL.Add('ORDER BY ReciptDate DESC, ReciptID DESC) AS Recipts INNER JOIN');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
    SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode');
    Parameters.ParamByName('PersonID1').Value := Sender.Field.AsInteger;
    Parameters.ParamByName('ReciptType').Value :=
      qryinit.FieldByName('ReciptType').AsInteger;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Open;
    while not Eof do
    begin
      s := s + FieldByName('StuffCode').AsString + FieldByName('c_StuffName')
        .AsString + ' ' + opt.EntityCaption + FieldByName('Entity').AsString +
        ' ' + opt.WeightCaption + FieldByName('Weight').AsString + #13#10;
      Next;
    end;
    Close;
    Parameters.Clear;
    DMf.zbal.Title := AnsiString('آخرین سابقه ' + qryinit.FieldByName
      ('ReciptCaption').AsString);
    DMf.zbal.Prompt.Text := s;
    DMf.zbal.show(Sender);
  end;
  With qry do
    try
      SQL.Text :=
        'SELECT Customers.MaxCredit-  Fn_rptCustomersBalance2F_1.Balance  as Balance  ';
      SQL.Add('FROM dbo.Fn_rptCustomersBalance2F ( DEFAULT , DEFAULT , DEFAULT , DEFAULT , :PersonID1From , :PersonID1To , :DateTo , :Date10To , :YearIDFrom');
      SQL.Add(', :YearIDTo , DEFAULT , DEFAULT , DEFAULT , DEFAULT , DEFAULT');
      SQL.Add(', DEFAULT , DEFAULT , DEFAULT , DEFAULT , DEFAULT ,:FormTypeCecksIn ,:FormTypeBank ,:CheckReturned ,:SaderehBardashtNashode )AS Fn_rptCustomersBalance2F_1 INNER JOIN ');
      SQL.Add('Customers ON Fn_rptCustomersBalance2F_1.PersonID1 = Customers.CustID');
      Parameters.ParamByName('PersonID1From').Value := Sender.Field.AsInteger;
      Parameters.ParamByName('PersonID1To').Value := Sender.Field.AsInteger;
      Parameters.ParamByName('FormTypeCecksIn').Value := GetFormTypes('4');
      Parameters.ParamByName('FormTypeBank').Value := GetFormTypes('3');
      Parameters.ParamByName('CheckReturned').Value := GetFormTypes('11,12');
      Parameters.ParamByName('SaderehBardashtNashode').Value := '50,54';

      Parameters.ParamByName('DateTo').Value :=
        qryRecipts.FieldByName('ReciptDate').AsString;

      Parameters.ParamByName('Date10To').Value :=
        Date1400Cnv(qryRecipts.FieldByName('ReciptDate').AsString);

      Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

      // if opt.ChkUsersCustomersGroupsActive then
      // begin
      // SQL.Add('Where (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , CustomerID1 ) = 1)');
      // Parameters.ParamByName('UserID').Value := User.id;
      // Parameters.ParamByName('UserAdmin').Value := ifthen(User.a dmin, 1, 0);
      // end;

      Open;
      s := s + 'مانده اعتبار = ' + CurrToStrF(FieldByName('balance').AsCurrency,
        ffCurrency, 0);
      DMf.zbal.Prompt.Text := s;
      Close;

      DMf.zbal.show(Sender);

    finally
      Free;
    end;

END;

procedure IRTAXIDFind(Sender: TObject);
var
  s, TAXID, TAXName: string;
  qry: TADOQuery;
BEGIN
  if Sender is TDBEdit then
  begin
    TAXName := TDBEdit(Sender).Field.FieldName;
    TAXID := TDBEdit(Sender).Field.AsString;
  end
  else
  begin
    TAXName := TColumnEh(Sender).Field.FieldName;
    TAXID := TColumnEh(Sender).Field.AsString;
  end;
  if TAXID = EmptyStr then
    Exit;
  qry := TADOQuery.Create(DMf);
  qry.Connection := theMainConnection;
  With DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'SELECT Recipts.ReciptNumber, ReciptTypes1.ReciptCaption';
    SQL.Add('FROM Recipts INNER JOIN');
    SQL.Add('ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType');
    if TAXName = 'TAXID' then
      SQL.Add('WHERE (Recipts.IRTAXID = :TAXID )')
    else
      SQL.Add('WHERE (Recipts.TAXID = :TAXID )');
    Parameters.ParamByName('TAXID').Value := TAXID;

    Open;
    while not Eof do
    begin
      s := s + FieldByName('ReciptNumber').AsString +
        FieldByName('ReciptCaption').AsString + ' ' + #13#10;
      Next;
    end;
    Close;
    Parameters.Clear;
    DMf.zbal.Title := AnsiString('شماره مالیاتی در فرم های   ');
    DMf.zbal.Prompt.Text := s;
    if Sender is TDBEdit then
      DMf.zbal.show(TDBEdit(Sender))
    else
      DMf.zbal.show(TColumnEh(Sender).Grid);
  end;
END;

procedure MachineNoHistory(Sender: TDBEdit; qryTozin, qryinit: TADOQuery);
var
  s: string;
BEGIN
  if Sender.Field.AsString = '' then
    Exit;
  With DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'SELECT Rt.ReciptCaption, T.TozinNumber, T.MachineName';
    SQL.Add('FROM Tozin AS T INNER JOIN');
    SQL.Add('ReciptTypes AS Rt ON T.ReciptType = Rt.ReciptType');
    SQL.Add('WHERE ( (T.MachineWeight = 0)OR(T.MachineFullWeight = 0))');
    SQL.Add('AND (T.MachineNo = :MachineNo )');
    SQL.Add('AND (T.TozinDate = :TozinDate )');
    Parameters.ParamByName('MachineNo').Value :=
      qryTozin.FieldByName('MachineNo').AsString;
    Parameters.ParamByName('TozinDate').Value := var_glb_CurrentDate;
    Open;
    while not Eof do
    begin
      s := s + FieldByName('ReciptCaption').AsString + ' ' +
        FieldByName('TozinNumber').AsString + ' ' + FieldByName('MachineName')
        .AsString + #13#10;
      Next;
    end;
    Close;
    Parameters.Clear;
    DMf.zbal.Title := AnsiString('آخرین سابقه ' + qryinit.FieldByName
      ('ReciptCaption').AsString + ' ناتمام ');
    DMf.zbal.Prompt.Text := s;
    DMf.zbal.show(Sender);
  end;
END;

procedure DesignFormIDActive(var qryinit, qryRecipts, qryDesignForm: TADOQuery;
  self_: TForm);
var
  b: Boolean;
  DesignFormID: Integer;
  src: TDataSource;
begin
  With qryinit do
  begin
    DesignFormID := FieldByName('DesignFormID').AsInteger;
    b := DesignFormID <> 0;
    if b then
    begin
      qryDesignForm := TADOQuery.Create(self_);
      With qryDesignForm do
      begin
        Name := 'qryDesignForm';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT * ';
        SQL.Add(' FROM Vu_ReciptsDsn' + DesignFormID.ToString);
        SQL.Add('WHERE (ReciptID = :ReciptID) ');
        SQL.Add('AND (ServerID = :ServerID) AND (YearID = :YearID)');
        LockType := ltReadOnly;

        src := TDataSource.Create(self_);
        src.Name := 'srcDesignForm';
        src.DataSet := qryDesignForm;

        With TppDBPipeline.Create(self_) do
        begin
          DataSource := src;
          Name := 'PlnDesignForm';
        end;

      end;
    end;
  end;
end;

procedure allSortRecipts(qryRecipts, qryinit: TDataSet; Tag_: Integer);
var
  Jump: Integer;
  StrSort: String;
  p, ReciptNumber: string;
  Settings: Int64;
  DoWhile: Boolean;
begin
  if get_response
    (' بهتر است قبل از انجام این کار پشتیبان تهیه شود که در صورت نیاز استفاده شود '
    + #13#10 + 'آیا پشتیبان تهیه شود.', clGreen) = mrYes then
  begin
    p := ReadConfig(APPID, 'AutoBackupPath', 'd:\FaraBackup\' + APPID +
      'Backup');
    BackupDatabaseLocalAndNet(p);
  end;
  Settings := qryinit.FieldByName('Settings').AsLargeInt;
  if ((Settings and Integer(CHKUpFormerFromTruckNumber)) <> 0) then
    ReciptNumber := 'TruckNumber'
  else
    ReciptNumber := 'ReciptNumber';
  Jump := 1;
  if qryRecipts is TADOQuery then
    StrSort := TADOQuery(qryRecipts).Sort;

  StrSort := StringReplace(StrSort, 'ReciptDate ASC', '', []);
  StrSort := StringReplace(StrSort, 'ReciptDate DESC', '', []);
  StrSort := 'ReciptDate ASC,' + StrSort;
  StrSort := StringReplace(StrSort, ', ,', ',', []);
  StrSort := StringReplace(StrSort, ',,', ',', []);
  StrSort := Trim(StrSort);
  if MidStr(StrSort, Length(StrSort), 1) = ',' then
    StrSort := LeftStr(StrSort, Length(StrSort) - 1);

  if qryRecipts is TADOQuery then
    TADOQuery(qryRecipts).Sort := StrSort;
  // 'ReciptDate,ReciptNumber';
  // if get_response('آيا شماره فرم‏ها به ترتيب كنوني فرم مرتب شوند؟‏')<>mrYes then Exit;
  Jump := StrToInt(Trim(Get_Box('مرتب كردن شماره فرمها',
    'شروع مرتب سازي از عدد:', IntToStr(Jump))));
  if get_response('آيا براي تغيير شماره فرم ها از شماره  ' + IntToStr(Jump) +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;
  Dec(Jump);
  With qryRecipts do
  begin
    DisableControls;
    First;
    BigMessageProgBar('در حال مرتب كردن فرمها....‏', RecordCount);
    DoWhile := True;
    while (not Eof and DoWhile) do
    begin
      DMf.qryTmpTmp.Active := False;

      DMf.qryTmpTmp.SQL.Text :=
        Format('UPDATE Recipts SET ReciptNumberFormer = ' + ReciptNumber +
        ' , ReciptNumber = %d', [RecNo + Jump]);
      if Tag_ = 1 then
        DMf.qryTmpTmp.SQL.Add(Format('WHERE ReciptID in ( %d , %d )',
          [FieldByName('ReciptID').AsInteger, FieldByName('ParentReciptID')
          .AsInteger]))
      else
        DMf.qryTmpTmp.SQL.Add(Format('WHERE ReciptID in ( %d )',
          [FieldByName('ReciptID').AsInteger]));

      DMf.qryTmpTmp.SQL.Add(Format('AND (ServerID = %d)',
        [FieldByName('ServerID').AsInteger]));
      DMf.qryTmpTmp.SQL.Add(Format('AND (YearID = %d)',
        [FieldByName('YearID').AsInteger]));
      DMf.qryTmpTmp.SQL.Add('AND (ISNULL(tax_status,0) <> 1)');
      DMf.qryTmpTmp.SQL.Add('AND (DocNo = 0)');
      DMf.qryTmpTmp.SQL.Add('AND (ReciptState = 0)');
      DMf.qryTmpTmp.ExecSQL;
      GoProgressBar(FieldByName('ReciptNumber').AsString);
      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      Next;
      // Application.ProcessMessages;

    end;
    // while
    EnableControls;
    Active := False;
    Open;
    CloseMessage;
  end;
end;

procedure SetPersonCaption(ReciptTypes: string; qry4Set: TADOQuery);
var
  qry: TADOQuery;
  i: Integer;
begin
  qry := TADOQuery.Create(qry4Set);
  With qry do
    Try
      Connection := theMainConnection;
      SQL.Text := 'SELECT Person1Caption,Person2Caption,Person3Caption';
      SQL.Add('FROM ReciptTypes WHERE (ReciptType in (' + ReciptTypes + '))');
      Open;
      for i := 0 to qry4Set.Fields.Count - 1 do
      begin

        if Pos('personid1', LowerCase(qry4Set.Fields[i].FieldName)) > 0 then
          qry4Set.Fields[i].DisplayLabel := 'کد' +
            FieldByName('Person1Caption').AsString;

        if Pos('custname1', LowerCase(qry4Set.Fields[i].FieldName)) > 0 then
          qry4Set.Fields[i].DisplayLabel :=
            FieldByName('Person1Caption').AsString;

        if Pos('personid2', LowerCase(qry4Set.Fields[i].FieldName)) > 0 then
          qry4Set.Fields[i].DisplayLabel := 'کد' +
            FieldByName('Person2Caption').AsString;

        if Pos('custname2', LowerCase(qry4Set.Fields[i].FieldName)) > 0 then
          qry4Set.Fields[i].DisplayLabel :=
            FieldByName('Person2Caption').AsString;

        if Pos('personid3', LowerCase(qry4Set.Fields[i].FieldName)) > 0 then
          qry4Set.Fields[i].DisplayLabel := 'کد' +
            FieldByName('Person3Caption').AsString;

        if Pos('custname3', LowerCase(qry4Set.Fields[i].FieldName)) > 0 then
          qry4Set.Fields[i].DisplayLabel :=
            FieldByName('Person3Caption').AsString;
      end;

    Finally
      Close;
      Free;
    End;

end;

function chkUsersStoreReciptTypes(StoreID, ReciptType: Integer): Boolean;
begin
  With DMf.qryUsersStoreReciptTypes do
  begin
    if not Active then
      Parameters.ParamByName('UserID').Value := User.ID;
    Active := True;
    Filter := Format('StoreID = %d AND ReciptType = %d ',
      [StoreID, ReciptType]);
    Filtered := True;
    Result := RecordCount = 0;
    if not Result then
      Warn2('محدویت ارتباط فرم با انبار و کاربر');
  end;
end;

function Total(SellPrice: Real; qryIncorporate: TADOQuery; Form_InOut: string;
  UnitSellPrice: string = ''): String;
var
  LimitFi: Currency;
begin
  if UnitSellPrice = '' then
    UnitSellPrice := FloatToStr(SellPrice);
  LimitFi := GetLimitFi(qryIncorporate);
  case opt.EntityDisplayType of
    0:
      Result := ' ' + Form_InOut + 'Entity * ' + UnitSellPrice;
    1:
      Result := ' ' + Form_InOut + 'Weight * ' + UnitSellPrice;
    2:
      if SellPrice >= LimitFi then
        Result := ' ' + Form_InOut + 'Weight * ' + UnitSellPrice
      else
        Result := ' ' + Form_InOut + 'Entity * ' + UnitSellPrice;
    3:
      if SellPrice >= LimitFi then
        Result := ' ' + Form_InOut + 'Entity * ' + UnitSellPrice
      else
        Result := ' ' + Form_InOut + 'Weight * ' + UnitSellPrice;
  end;
end;

function Total(SellPrice: string; qryIncorporate: TADOQuery;
  Form_InOut: string): String;
// var
// LimitFi: Currency;
begin
  // LimitFi := GetLimitFi(qryIncorporate);
  case opt.EntityDisplayType of
    0, 2:
      Result := ' ' + Form_InOut + 'Entity * ' + SellPrice;
    1, 3:
      Result := ' ' + Form_InOut + 'Weight * ' + SellPrice;
  end;
end;

function CheckAidDateDay(qryinit, qryRecipts: TADOQuery): Boolean;
var
  AidDateDay: Integer;
  ReciptDate: TDateTime;
  NewAidDate: string;
begin
  Result := True;
  AidDateDay := qryinit.FieldByName('AidDateDay').AsInteger;
  if AidDateDay = 0 then
    Exit;

  ReciptDate := Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate').AsString);
  ReciptDate := IncDay(ReciptDate, AidDateDay);
  NewAidDate := miladi2Shamsi(ReciptDate);

  Result := qryRecipts.FieldByName('AidDate').AsString >= NewAidDate;
  if not Result then
    Warn(Format('تاریخ %s باید %d روز بزرگتر از تاریخ فرم باشد',
      [qryinit.FieldByName('AidInfoCaption').AsString, AidDateDay]));

end;

function GetFullCustName(CustID: Integer): string;
begin
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT C.CustName ';
    SQL.Add('+ ''-'' + ISNULL(Selers.CustName,'''') + ''-'' + ISNULL(Dossier.CustName,'''')');
    SQL.Add('+ ''-'' + ISNULL(Factory.CustName,'''') AS CustName');
    SQL.Add('FROM Customers AS C LEFT OUTER JOIN');
    SQL.Add('Customers AS Selers ON C.PersonID1 = Selers.CustID LEFT OUTER JOIN');
    SQL.Add('Customers AS Dossier ON C.AlternativeCustID = Dossier.CustID LEFT OUTER JOIN');
    SQL.Add('Customers AS Factory ON C.AlternativeCustID2 = Factory.CustID');
    SQL.Add('WHERE (C.CustID = ' + CustID.ToString + ')');
    Active := True;
    Result := Fields[0].AsString;
    Active := False;
  end;
end;

function IntToStrArzesh(Value: Int64): string;
begin
  Result := IntToStr( { Abs } (Value));
  if Result = '0' then
    Result := EmptyStr
end;

procedure initOtherFieldCaptions(qryinit, qryItems, qryRecipts: TDataSet);
var
  ts: TStringList;
  i: Integer;
  lbl: TLabel;
begin
  ts := TStringList.Create;
  ts.Text := qryinit.FieldByName('OtherFieldCaptions').AsString;
  for i := 0 to ts.Count - 1 do
  begin

    // if qryItems.FindField(ts.KeyNames[i]+'D') <> nil then
    // qryItems.FieldByName(ts.KeyNames[i]+'D').DisplayLabel := ts.ValueFromIndex[i];

    if qryItems.FindField(ts.KeyNames[i]) <> nil then
      qryItems.FieldByName(ts.KeyNames[i]).DisplayLabel := ts.ValueFromIndex[i];

  end;

  ts.Text := qryinit.FieldByName('LabelCaptions').AsString;
  for i := 0 to ts.Count - 1 do
  begin
    lbl := TLabel(qryinit.Owner.FindComponent(ts.KeyNames[i]));
    if lbl <> nil then
      lbl.Caption := ts.ValueFromIndex[i];

    if qryRecipts.FindField(ts.KeyNames[i]) <> nil then
      qryRecipts.FieldByName(ts.KeyNames[i]).DisplayLabel :=
        ts.ValueFromIndex[i];

  end;
  ts.Free;

end;

procedure ReciptType4Copy(qryAllRecipts, qryRecipts, qryItems,
  qryinit: TADOQuery);
var
  OldReciptID, ReciptID, ServerID, YearID, i, ReciptNumberOfType: Integer;
  b, ReciptFound: Boolean;
  s: string;
  qryRec: TADOQuery;
begin
  if get_response(' آیا برای ایجاد /کپی  فرم  به فرم تعیین شده مطمئن هستید؟ ')
    <> mrYes then
    Exit;

  OldReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;
  qryRec := TADOQuery.Create(DMf);

  ReciptNumberOfType := qryinit.FieldByName('ReciptType4Copy').AsInteger;
  With qryRec do
  begin
    Connection := theMainConnection;
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptType = :ReciptType)');
    Parameters.ParamByName('ReciptType').Value := ReciptNumberOfType;
    Active := True;
  end;
  // ReciptNumber := GetReciptNumber(qryRec, qryRecipts,
  // qryinit.FieldByName('ReciptNumberEventKind').AsInteger, myStore,
  // False, False);

  With qryRec do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM Recipts');
    SQL.Add('WHERE(REFERENCENUMBER = :ID )');
    Parameters.ParamByName('ID').Value := qryRecipts.FieldByName('ID').AsString;
    Active := True;
    ReciptFound := RecordCount > 0;
    if ReciptFound then
    begin
      ReciptID := FieldByName('ReciptID').AsInteger;
      YearID := FieldByName('YearID').AsInteger;
      ServerID := FieldByName('ServerID').AsInteger;
    end;
    Active := False;
  end;

  if not ReciptFound then
    With TADOStoredProc.Create(DMf) do
      try
        try
          DMf.adcBSell.BeginTrans;
          ProcedureName := 'NewRecipts';
          ConnectionString := DMf.adcBSell.ConnectionString;
          Parameters.Refresh;
          Parameters.ParamByName('@ReciptID').Value := 0;
          Parameters.ParamByName('@OldReciptID').Value := OldReciptID;
          Parameters.ParamByName('@ServerID').Value := ServerID;
          Parameters.ParamByName('@YearID').Value := YearID;
          ExecProc;
          ReciptID := Parameters.ParamByName('@RETURN_VALUE').Value;
          BigMessage('كپي شد.‏', 1);
          s := 'UPDATE Recipts SET ReciptDate =''' + var_glb_CurrentDate +
            ''' ,ReciptState = 0,DocNo=0, ReciptNumber = ReciptNumber,ReciptType = %d ,REFERENCENUMBER = '''
            + qryRecipts.FieldByName('ID').AsString + ''' ,LastUser =''#' +
            User.Name +
            ''' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
          s := Format(s, [ReciptNumberOfType, ReciptID, YearID, ServerID]);
          DMf.adcBSell.Execute(s, i);
          if i > 0 then
            if DMf.adcBSell.InTransaction then
              DMf.adcBSell.CommitTrans;

        except
          on E: Exception do
          begin
            if DMf.adcBSell.InTransaction then
              DMf.adcBSell.RollbackTrans;
            add2log(E.Message);
            Warn2(E.Message);
          end;
        end;

      finally
        Free;
      end
  else
    Warn('قبلا کپی شده');

  With qryRec do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM Recipts');
    SQL.Add('WHERE(ReciptID = :ReciptID )AND(YearID = :YearID )AND(ServerID = :ServerID)');
    Parameters.ParamByName('ReciptID').Value := ReciptID;
    Parameters.ParamByName('YearID').Value := YearID;
    Parameters.ParamByName('ServerID').Value := ServerID;
    Active := True;
    ShowReciptTypes(qryRec, Application.MainForm);
    Active := False;
  end;
  qryRec.Free;

end;

procedure ChangerYearID(qryAllRecipts, qryRecipts: TADOQuery);
var
  ReciptID, ServerID, YearID, NewYearID: Integer;
  ReciptDate: string;
begin
  ReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;

  NewYearID := StrToInt(Trim(Get_Box('سال مالی', 'انتقال به سال مالی:',
    IntToStr(YearID + 1))));

  if get_response(' آیا برای انتقال فرم جاری به سال های دیگر تعیین شده ' +
    NewYearID.ToString + ' مطمئن هستید؟ ') <> mrYes then
    Exit;

  ReciptDate := qryRecipts.FieldByName('ReciptDate').AsString;
  // گرفتن 6 کاراکتر آخر تاریخ
  ReciptDate := Copy(ReciptDate, Length(ReciptDate) - 5, 6);
  // الحاق سال جدید به ابتدای رشته
  ReciptDate := IntToStr(NewYearID) + ReciptDate;

  With DMf.qryTmpTmp do
    try
      Active := False;
      SQL.Text := 'DECLARE @ReciptID int = ' + ReciptID.ToString;
      SQL.Add('DECLARE @YearID int =' + YearID.ToString);
      SQL.Add('DECLARE @ServerID int = ' + ServerID.ToString);
      SQL.Add('DECLARE @NewYearID int = ' + NewYearID.ToString);
      SQL.Add('SELECT YearID,ReciptID,ReciptNumber,ReciptDate,');
      SQL.Add('(SELECT ISNULL(MAX(ReciptID),0)+1 AS NewReciptID FROM Recipts R2');
      SQL.Add(' WHERE(R2.ServerID = R.ServerID) AND (YearID =');
      SQL.Add('@NewYearID))NewReciptID');
      SQL.Add(',(SELECT ISNULL(MAX(ReciptNumber),0)+1 AS NewReciptNumber FROM Recipts R3');
      SQL.Add(' WHERE(R3.ReciptType = R.ReciptType) AND (YearID = @NewYearID))NewReciptNumber');
      SQL.Add('FROM Recipts R');
      SQL.Add('WHERE(ReciptID = @ReciptID )AND(YearID = @YearID )AND(ServerID = @ServerID)');

      // Parameters.ParamByName('ReciptID').Value := ReciptID;
      // Parameters.ParamByName('YearID').Value := YearID;
      // Parameters.ParamByName('ServerID').Value := ServerID;
      Active := True;
      if RecordCount = 1 then
      begin
        Edit;
        FieldByName('YearID').AsInteger := NewYearID;
        FieldByName('ReciptDate').AsString := ReciptDate;
        FieldByName('ReciptID').AsInteger := FieldByName('NewReciptID')
          .AsInteger;
        FieldByName('ReciptNumber').AsInteger := FieldByName('NewReciptNumber')
          .AsInteger;
        Post;
        Warn('انتقال یافت', mtInformation);
        qryRecipts.Requery([]);
      end;
    finally
      Active := False;
    end;
end;

end.
