unit DMTax;

interface

uses
  System.SysUtils, System.Classes, taxunit, Winapi.Windows, REST.Client, Math,
  IdBaseComponent, Json, IdSSLOpenSSLHeaders_static, System.DateUtils, Data.DB,
  IdIOHandler, IdIOHandlerStack, IdTCPClient, ppBarCode2D, IdSSL, REST.Types,
  IdSSLOpenSSL, IdSSLOpenSSLHeaders, DynVarsEh, DBGridEhGrouping, Vcl.ToolWin,
  Unipc, FaraConsts, dm, Vcl.Dialogs, Data.Win.ADODB, Graphics, System.UITypes,
  shamsiDate, CPortFunctions, System.StrUtils, System.Variants, UserJame,
  Datasnap.DBClient, Vcl.Menus, REST.Authenticator.Basic, Encryption;

type
  TTaxFormKind = (TaxMain = 1, TaxCorrection = 2, TaxCancellation = 3,
    TaxReturn = 4, TaxCorrection2 = 5);

  TSuccess = class
  private
    Fstatus: Integer;
    Ferror: Integer;
  public
    property error: Integer read Ferror write Ferror;
    property status: Integer read Fstatus write Fstatus;
  end;

  TDMTaxF = class(TDataModule)
    qryRec: TADOQuery;
  private
    { Private declarations }
    Send_Message: string;
    procedure SetRest(Matod: string; aTax: TMainTax); overload;
    procedure SetRest(Matod: string; aTax: TUserJame); overload;
    procedure MoaadiyanTaxCorrection(TaxFormKind: TTaxFormKind;
      qryCustomers1, qryAllRecipts, qryRecipts, qryItems, qryTrades,
      qryinit: TADOQuery; cliBarcode: TClientDataSet;
      MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan, MnuTaxCancellation,
      MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop, mnuEntity,
      mnuWeight: TMenuItem);
  public
    { Public declarations }
    function ErrorTrans(SUCCESS, error: string): string;
    function ErrorTransW(error: string): TMsgDlgType; overload;
    procedure CheckRequest(aTax: TMainTax; uid, ReferenceNumber, TAXID: string;
      TaxFormKind: TTaxFormKind; qryRecipts: TDataSet);
    procedure SetKeysModel(aaTax: TMainTax); overload;
    procedure SetKeysModel(aaUser: TUserJame); overload;
    function CalcSumWeight(qryItems: TADOQuery): Real48;
    procedure Moaadiyan(TaxFormKind: TTaxFormKind; qryCustomers1, qryAllRecipts,
      qryRecipts: TDataSet; qryItems, qryTrades, qryinit: TADOQuery;
      cliBarcode: TClientDataSet; MnuCheckMoaadiyan, Mnusandbox,
      MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
      MnuTaxReturnFromSale, MnuLoop, mnuEntity, mnuWeight: TMenuItem;
      Send1From: Boolean = True);
    procedure CheckMoaadiyan(MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
      MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale,
      MnuLoop: TMenuItem; qryRecipts: TADOQuery; SellEffect: Integer;
      Send1From: Boolean = True);
    procedure TaxStateMenu(MnuTaxMoaadiyan, MnuTaxCancellation,
      MnuTaxCorrection, MnuTaxReturnFromSale, MnuCheckMoaadiyan,
      MnuLoop: TMenuItem; qryRecipts: TDataSet; SellEffect: Integer);
    procedure MoaadiyanTaxReturnFromSale(TaxFormKind: TTaxFormKind;
      qryCustomers1, qryAllRecipts, qryRecipts, qryItems, qryTrades,
      qryinit: TADOQuery; cliBarcode: TClientDataSet;
      MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan, MnuTaxCancellation,
      MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop, mnuEntity,
      mnuWeight: TMenuItem; ReturnFromSaleNext: Boolean);
    procedure JameTajarat(qryCustomers1, qryAllRecipts, qryRecipts: TDataSet;
      qryItems, qryTrades, qryinit: TADOQuery; cliBarcode: TClientDataSet;
      Send1From: Boolean = True);
    procedure JameTajaratEst(qryCustomers1, qryAllRecipts, qryRecipts: TDataSet;
      qryItems, qryTrades, qryinit: TADOQuery; cliBarcode: TClientDataSet;
      Send1From: Boolean = True);
  end;

var
  DMTaxF: TDMTaxF;
  RESTResponse1: TRESTResponse;
  RESTRequest1: TRESTRequest;
  RESTClient1: TRESTClient;
  IsSendingMoadiyan: Boolean;
  HTTPBasicAuthenticator1: THTTPBasicAuthenticator;

function DateTimeToUTC(dt: TDateTime): Int64;
function TaxFormKindName(TaxFormKind: TTaxFormKind): string;
function Gettax_statusCaption(tax_status: Integer): string;
function NewReciptOnly(ID: Largeint; qryRecipts: TDataSet): Largeint;

implementation

uses
  GlobalPro, GeneralDM, MMESSAGE, FormFunctions, main;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDMTaxF.MoaadiyanTaxReturnFromSale(TaxFormKind: TTaxFormKind;
  qryCustomers1, qryAllRecipts, qryRecipts, qryItems, qryTrades,
  qryinit: TADOQuery; cliBarcode: TClientDataSet; MnuCheckMoaadiyan, Mnusandbox,
  MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale,
  MnuLoop, mnuEntity, mnuWeight: TMenuItem; ReturnFromSaleNext: Boolean);
var
  OldReciptID, ReciptID, ServerID, YearID, i, ReciptNumberOfType,
    ReciptNumber: Integer;
  ReciptFound: Boolean;
  s: string;
begin
  if (qryRecipts.FieldByName('DocNo').AsInteger <> 0) then
  begin
    if get_response
      ('فرم دارای سند حسابداری می باشد و قابل ارسال به مودیان نیست!!' +
      ' آیا برای ایجاد /ارسال  فرم ' + TaxFormKindName(TaxReturn) +
      ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes then
      exit;
  end
  ELSE if get_response(' آیا برای ایجاد /ارسال  فرم ' +
    TaxFormKindName(TaxReturn) + ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes
  then
    exit;

  if (qryRecipts.FieldByName('IRTAXID').AsString <> EmptyStr) and
    (ReturnFromSaleNext and (qryRecipts.FieldByName('tax_status').AsInteger
    <> 1)) then
  begin
    Moaadiyan(TaxFormKind, qryCustomers1, qryAllRecipts, qryRecipts, qryItems,
      qryTrades, qryinit, cliBarcode, MnuCheckMoaadiyan, Mnusandbox,
      MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
      MnuTaxReturnFromSale, MnuLoop, mnuEntity, mnuWeight);
    exit;
  end;

  OldReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;

  With qryRec do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptType';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptNumberOfType LIKE ''%' + qryRecipts.FieldByName
      ('ReciptType').AsString + '%'')');

    if ReturnFromSaleNext and (qryinit.FieldByName('SellEffect').AsInteger = 2)
    then
      SQL.Add(' AND (ReciptType = :ReciptType2)')
    else
      SQL.Add(' AND (ReciptType <> :ReciptType2)');

    Parameters.ParamByName('ReciptType2').Value :=
      qryRecipts.FieldByName('ReciptType').AsInteger;
    Active := True;
    ReciptNumberOfType := FieldByName('ReciptType').AsInteger;
    Active := False;
  end;
  ReciptNumber := GetReciptNumber(qryinit, qryRecipts,
    qryinit.FieldByName('ReciptNumberEventKind').AsInteger, myStore,
    False, False);

  With qryRec do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM Recipts');
    SQL.Add('WHERE(IRTAXID = :IRTAXID )');
    Parameters.ParamByName('IRTAXID').Value :=
      qryRecipts.FieldByName('TAXID').AsString;
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
    With TADOStoredProc.Create(self) do
      try
        try
          if not DmF.adcBSell.InTransaction then
            DmF.adcBSell.BeginTrans;
          if ReturnFromSaleNext and
            (qryinit.FieldByName('SellEffect').AsInteger = 2) and
            (ReciptNumberOfType <> qryinit.FieldByName('ReciptType').AsInteger)
          then
            ProcedureName := 'NewReciptsIrTax'
          else
            ProcedureName := 'NewRecipts';

          ConnectionString := DmF.adcBSell.ConnectionString;
          Parameters.Refresh;
          Parameters.ParamByName('@ReciptID').Value := 0;
          Parameters.ParamByName('@OldReciptID').Value := OldReciptID;
          Parameters.ParamByName('@ServerID').Value := ServerID;
          Parameters.ParamByName('@YearID').Value := YearID;
          ExecProc;
          ReciptID := Parameters.ParamByName('@RETURN_VALUE').Value;
          BigMessage('كپي شد.‏', 1);
          // NULL
          s := 'UPDATE Recipts SET ReciptDate =''' + var_glb_CurrentDate +
            ''' ,ReciptState = 0, ReciptNumber = ' + ReciptNumber.ToString +
            ',ReciptType = %d ,DATE_OF_SEND_TO_TAX = GETDATE(),tax_status = 3,TAXID ='''',IRTAXID = '''
            + qryRecipts.FieldByName('TAXID').AsString + ''' ,LastUser =''#' +
            User.Name +
            ''' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
          s := Format(s, [ReciptNumberOfType, ReciptID, YearID, ServerID]);

          DmF.adcBSell.Execute(s, i);

          // if not ReturnFromSaleNext then
          // begin
          s := 'UPDATE ReciptItems SET InputEntity = OutputEntity , InputWeight = OutputWeight  '
            + ',TotalInputPrice = TotalOutputPrice ' +
            ' , RollbackEntity = OutputEntity  , RollbackWeight = OutputWeight '
            + ' ,OutputEntity = 0 ,OutputWeight = 0 , TotalOutputPrice = 0 ' +
            ' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
          s := Format(s, [ReciptID, YearID, ServerID]);
          DmF.adcBSell.Execute(s, i);
          // end;

          // if i > 0 then
          if DmF.adcBSell.InTransaction then
            DmF.adcBSell.CommitTrans;

        except
          on E: Exception do
          begin
            if DmF.adcBSell.InTransaction then
              DmF.adcBSell.RollbackTrans;
            add2log(E.Message);
            Warn2('اشکال در ثبت' + E.Message);
          end;
        end;

      finally
        Free;
      end;

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
    ShowReciptTypes(qryRec, mainF);
    Active := False;
  end;
  Warn('اصلاحات را روی فرم جاری انجام داده و دوباره ارسال برگشتی را بزنید');

end;

procedure TDMTaxF.MoaadiyanTaxCorrection(TaxFormKind: TTaxFormKind;
  qryCustomers1, qryAllRecipts, qryRecipts, qryItems, qryTrades,
  qryinit: TADOQuery; cliBarcode: TClientDataSet; MnuCheckMoaadiyan, Mnusandbox,
  MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale,
  MnuLoop, mnuEntity, mnuWeight: TMenuItem);
var
  OldReciptID, ReciptID, ServerID, YearID, i: Integer;
  b: Boolean;
  s: string;
begin
  if (qryRecipts.FieldByName('DocNo').AsInteger <> 0) then
  begin
    Warn('فرم دارای سند حسابداری می باشد و قابل ارسال به مودیان نیست!!');
    exit;
  end;

  if get_response(' آیا برای ایجاد /ارسال  فرم ' +
    TaxFormKindName(TaxCorrection) + ' به سامانه مودیان مطمئن هستید؟ ', clGreen)
    <> mrYes then
    exit;

  if (qryRecipts.FieldByName('IRTAXID').AsString <> EmptyStr) then
  begin
    Moaadiyan(TaxCorrection, qryCustomers1, qryAllRecipts, qryRecipts, qryItems,
      qryTrades, qryinit, cliBarcode, MnuCheckMoaadiyan, Mnusandbox,
      MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
      MnuTaxReturnFromSale, MnuLoop, mnuEntity, mnuWeight);
    exit;
  end;

  OldReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;

  if not DmF.adcBSell.InTransaction then
    DmF.adcBSell.BeginTrans;
  With TADOStoredProc.Create(self) do
    try

      try

        ProcedureName := 'NewRecipts';
        ConnectionString := DmF.adcBSell.ConnectionString;
        // Parameters.AddParameter;
        Parameters.Refresh;
        Parameters.ParamByName('@ReciptID').Value := 0;
        Parameters.ParamByName('@OldReciptID').Value := OldReciptID;
        Parameters.ParamByName('@ServerID').Value := ServerID;
        Parameters.ParamByName('@YearID').Value := YearID;
        ExecProc;
        ReciptID := Parameters.ParamByName('@RETURN_VALUE').Value;
        BigMessage('كپي شد.‏', 1);

        s := 'UPDATE Recipts SET DATE_OF_SEND_TO_TAX = GETDATE(),tax_status = 3,IRTAXID = '''
          + qryRecipts.FieldByName('TAXID').AsString + ''' ,LastUser =''#' +
          User.Name +
          ''' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
        s := Format(s, [ReciptID, YearID, ServerID]);
        DmF.adcBSell.Execute(s, i);

        qryAllRecipts.Requery();
        if qryAllRecipts.Locate('ReciptID;ServerID;YearID',
          VarArrayOf([ReciptID, ServerID, YearID]), []) then
        begin
          qryRecipts.edit;
          b := qryRecipts.FieldByName('ReciptNumber').ReadOnly;
          qryRecipts.FieldByName('ReciptNumber').ReadOnly := False;
          GetReciptNumber(qryinit, qryRecipts,
            qryinit.FieldByName('ReciptNumberEventKind').AsInteger, myStore,
            False, False);
          qryRecipts.FieldByName('ReciptNumber').ReadOnly := b;
          qryRecipts.Post;
        end;

        s := 'UPDATE Recipts SET ReciptState = 3, LastUser =''##' + User.Name +
          ''' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
        s := Format(s, [OldReciptID, YearID, ServerID]);
        DmF.adcBSell.Execute(s, i);
        if i > 0 then
          if DmF.adcBSell.InTransaction then
            DmF.adcBSell.CommitTrans;

      except
        on E: Exception do
        begin
          if DmF.adcBSell.InTransaction then
            DmF.adcBSell.RollbackTrans;
          add2log(E.Message);
          Warn2(E.Message);
        end;

      end;

    finally
      Warn('اصلاحات را روی فرم جاری انجام داده و دوباره ارسال اصلاحی را بزنید');
      Free;
    end;
end;

procedure TDMTaxF.Moaadiyan(TaxFormKind: TTaxFormKind;
  qryCustomers1, qryAllRecipts, qryRecipts: TDataSet;
  qryItems, qryTrades, qryinit: TADOQuery; cliBarcode: TClientDataSet;
  MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan, MnuTaxCancellation,
  MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop, mnuEntity,
  mnuWeight: TMenuItem; Send1From: Boolean = True);
var
  aTax: TMainTax;
  Item: TInvoiceBodyDto;
  Result, s, SQL: string;
  SUCCESS: TSuccess;
  res: TPacketResponse;
  ReciptDate: TDateTime;
  cdcDate: TDateTime;
  Time: TTime;
  Tonw, ArzAmount: Real; //
  Temp, TotalPrice_T, prdis, tprdis: Largeint;
  TotallSellPrice_T, DeficitValue, TaxValue, ID, tsstam, cop, vop,
    tvop: Largeint;
  b: Boolean;
  DsItem: TDataSet;
  SellEffect: Integer;

begin
  inherited;
  if qryRecipts.State in dsEditModes then
    qryRecipts.Post;
  if Send1From then
    try
      qryCustomers1.Refresh();
      if qryTrades <> nil then
        qryTrades.Refresh();
    except
      on E: Exception do
    end;
  begin
  end;

  if (TaxFormKind in [TaxCancellation, TaxCorrection]) and
    (qryRecipts.FieldByName('DocNo').AsInteger <> 0) then
  begin
    if get_response('فرم دارای سند حسابداری می باشد ' + ' آیا برای ارسال فرم ' +
      TaxFormKindName(TaxFormKind) + ' به سامانه مودیان مطمئن هستید؟ ', clRed)
      <> mrYes then
      exit;
  end;

  SellEffect := qryinit.FieldByName('SellEffect').AsInteger;
  if qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkPrintTax) = 0 then
    DsItem := qryItems
  else
    DsItem := cliBarcode;

  if qryRecipts.FieldByName('InvoiceTemplate').AsInteger = 7 then
  begin
    s := EmptyStr;
    if qryRecipts.FieldByName('ArzTypeID').AsInteger <> qryTrades.FieldByName
      ('ArzType').AsInteger then
      s := 'نوع ارز در اطلاعات ارزي با اطلاعات فرم همخواني ندارد' + #13#13;

    if RoundTo(CalcSumWeight(qryItems), -3) <>
      RoundTo(qryTrades.FieldByName('RTWeight').AsFloat, -3) then
      s := s + 'وزن در اطلاعات ارزي با اطلاعات فرم همخواني ندارد(تا دو رقم اعشار)'
        + #13#10 + FloatToStr(CalcSumWeight(qryItems)) + '<>' +
        qryTrades.FieldByName('RTWeight').AsString;

    if s <> EmptyStr then
    begin
      Warn(s);
      // actReciptsTradesF.Execute;
      exit;
    end;
  end;

  if (Send1From) and
    (get_response(' آیا برای ارسال فرم ' + TaxFormKindName(TaxFormKind) +
    ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes) then
    exit;
  IsSendingMoadiyan := True;

  if (TaxFormKind = TaxCancellation) and
    (qryRecipts.FieldByName('IRTAXID').AsString = EmptyStr) then
  begin
    ID := qryRecipts.FieldByName('ID').AsLargeInt;

    s := 'update Recipts set ReciptState = 3  WHERE  id= %s  ';
    s := Format(s, [qryRecipts.FieldByName('ID').AsString]);
    DmF.adcBSell.Execute(s);

    qryRecipts.Insert;
    NewReciptOnly(ID, qryRecipts);
    qryAllRecipts.Refresh();
    qryAllRecipts.Last;

    Warn2('درصورت ارسال نشدن با منو ' + MnuCheckMoaadiyan.Caption +
      ' کنترل کنید ', 0);
  end;

  if (TaxFormKind = TaxMain) and
    (qryRecipts.FieldByName('tax_status').AsInteger = 1) then
  begin
    Warn2('فرم قبلا به سامانه مودیان ارسال شده');
    exit;
  end;

  if (qryRecipts.FieldByName('tax_status').AsInteger = 2) then
  begin
    Warn2('لطفا صبر کنید ...فرم قبلا به سامانه مودیان ارسال شده');
    exit;
  end;

  if (TaxFormKind <> TaxCorrection) and
    (qryRecipts.FieldByName('tax_status').AsInteger = 3) then
  begin
    Warn2('اصلاحی صادر شود');
    exit;
  end;

  aTax := TMainTax.Create;
  if Mnusandbox.Checked then
  begin
    if (Send1From) and (get_response(' آیا برای ارسال به محیط سند باکس فرم ' +
      TaxFormKindName(TaxFormKind) + ' به سامانه مودیان مطمئن هستید؟ ', clGray)
      <> mrYes) then
      exit;
    aTax.ConfigModel.SERVERTYPE := '2';
  end
  else
    aTax.ConfigModel.SERVERTYPE := '1';

  SetKeysModel(aTax);
  TotallSellPrice_T := Trunc(CalcSumFileds(qryItems, 'TotallSellPrice'));
  TotalPrice_T := Trunc(CalcSumFileds(qryItems, 'TotalOutputPrice'));
  TotalPrice_T := TotalPrice_T +
    Trunc(CalcSumFileds(qryItems, 'TotalInputPrice'));
  DeficitValue := Trunc(CalcSumFileds(qryItems, 'DeficitValue'));
  TaxValue := Trunc(CalcSumFileds(qryItems, 'TaxValue'));
  tvop := 0;
  tprdis := 0;
  Tonw := 0;
  ArzAmount := 0;

{$REGION 'InvoiceHeaderDto'}
  // with aTax.InvoiceHeaderDto do
  begin
    // aTax.InvoiceHeaderDto.taxid := qryReciptsID.AsString;
    /// الگوی صورتحساب
    /// وضوع صورتحساب شامل: اصلی 1 ،اصالحی 2 ،ابطالی 3 و برگشتاز فروش 4 ،است.
    aTax.InvoiceHeaderDto.ins := IntToStr(Integer(TaxFormKind));

    if TaxFormKind <> TaxMain then
      aTax.InvoiceHeaderDto.irtaxid := qryRecipts.FieldByName('TAXID').AsString;
    if TaxFormKind = TaxCancellation then
      aTax.InvoiceHeaderDto.irtaxid := qryRecipts.FieldByName
        ('IRTAXID').AsString;

    if TaxFormKind = TaxCorrection then
      aTax.InvoiceHeaderDto.irtaxid := qryRecipts.FieldByName
        ('IRTAXID').AsString;

    Time := TimeOf(Now);

    ReciptDate := Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate').AsString);
    ReciptDate := ReciptDate + Time;
    aTax.InvoiceHeaderDto.indatim := DateTimeToUTC(ReciptDate);
    // ماده (9) قانون پایانه‌های فروشگاهی: insr/indati2m فقط برای اسناد
    // ثبت‌شده/کتمان‌شده دیرارسال پر می‌شوند، نه برای هر سند.
    if qryRecipts.FieldByName('Insr').AsBoolean then
    begin
      aTax.InvoiceHeaderDto.Insr := '1';
      if not qryRecipts.FieldByName('Indati2m').IsNull then
        aTax.InvoiceHeaderDto.Indati2m :=
          DateTimeToUTC(qryRecipts.FieldByName('Indati2m').AsDateTime);
    end
    else
      aTax.InvoiceHeaderDto.Indati2m := aTax.InvoiceHeaderDto.indatim;

    if qryRecipts.FieldByName('Nti1').AsString.Trim <> EmptyStr then
      aTax.InvoiceHeaderDto.Nti1 := qryRecipts.FieldByName('Nti1').AsString;
    if qryRecipts.FieldByName('Nti2').AsString.Trim <> EmptyStr then
      aTax.InvoiceHeaderDto.Nti2 := qryRecipts.FieldByName('Nti2').AsString;
    // taxId:=taxId;

    aTax.InvoiceHeaderDto.inno :=
      RightStr('0000000000' + qryRecipts.FieldByName('ReciptNumber')
      .AsString.Trim, 10);
    // if TaxFormKind = TaxCancellation then
    // aTax.InvoiceHeaderDto.inno := '-' + aTax.InvoiceHeaderDto.inno;

    // aTax.PaymentDto.pid := qryCustomers1.FieldByName('HCKharidarTypeCode')      .AsString; // کد ملی  اتباع

    aTax.InvoiceHeaderDto.inp := qryRecipts.FieldByName('InvoiceTemplate')
      .AsInteger; // '1';
    /// HCTarafGaradadTypeCode
    // if qryCustomers1.FieldByName('HCKharidarTypeCode').AsInteger = 5 then
    /// HCKharidarTypeCode
    if qryCustomers1.FieldByName('HCTarafGaradadTypeCode').AsInteger in [1, 8]
    then
    begin
      aTax.InvoiceHeaderDto.inty := '2'; // =2= نوع صورتحساب
    end
    else
    begin
      aTax.InvoiceHeaderDto.inty := '1'; // نوع صورتحساب
    end;
    if qryRecipts.FieldByName('InvoiceTemplate').AsInteger = 7 then
      aTax.InvoiceHeaderDto.inty := '1'; // نوع صورتحساب

    // وش ت�ویه شامل: نقدی 1 ،نسیه 2 و نقدی/نسیه3 است.
    if qryRecipts.FieldByName('LoanPayment').AsCurrency > 0 then
    begin
      if qryRecipts.FieldByName('LoanPayment').AsCurrency = TotallSellPrice_T
      then
        aTax.InvoiceHeaderDto.setm := '2'
      else
      begin
        aTax.InvoiceHeaderDto.setm := '3';
        aTax.InvoiceHeaderDto.cap :=
          IntToStr(TotallSellPrice_T - qryRecipts.FieldByName('LoanPayment')
          .AsLargeInt - TaxValue);
        // مبلغ نقدی
        // مبلغ پرداختی نقدی از فرمول زیر محاسبه میشود.
        // C= Xs - W2 – W – Cr
        // Cr : مبلغ نسیه
        // W : مجموع مالیات بر ارزش افزوده
        // W2 : مجموع سایر مالیات، عوارض و وجوه قانونی
        // Xs : مجموع صورتحساب

        aTax.InvoiceHeaderDto.insp :=
          IntToStr(TotallSellPrice_T - (TotallSellPrice_T -
          qryRecipts.FieldByName('LoanPayment').AsLargeInt) - TaxValue);
        // مبلغ نسیه
        // مبلغ نسیه از فرمول زیر محاسبه میشود.
        // Cr= Xs - W2 – W– C
        // C : مبلغ پرداختی نقدی
        // W : مجموع مالیات بر ارزش افزوده
        // W2 : مجموع سایر مالیات، عوارض و وجوه قانونی
        // Xs : مجموع صورتحساب

      end;

      // 1 -عدم پرداخت      ///     2 -پرداخت
      // aTax.InvoiceHeaderDto.dpvb := '2';

    end
    else
    begin
      aTax.InvoiceHeaderDto.setm := '1';
      aTax.InvoiceHeaderDto.cap := IntToStr(TotalPrice_T - DeficitValue);
      // مبلغ نقدی
      aTax.InvoiceHeaderDto.insp := '0';
      // aTax.InvoiceHeaderDto.dpvb := '1';
    end;

    aTax.InvoiceHeaderDto.tins := opt.Economic_Number;

    if not((qryRecipts.FieldByName('InvoiceTemplate').AsInteger = 7) or
      (aTax.InvoiceHeaderDto.inty = '2')) then
    begin

      aTax.InvoiceHeaderDto.tob := qryCustomers1.FieldByName
        ('HCKharidarTypeCode').AsString; // نوع شخص خریدار
      aTax.InvoiceHeaderDto.bid := qryRecipts.FieldByName
        ('_NationalID').AsString;

      if qryCustomers1.FieldByName('HCKharidarTypeCode').AsInteger = 2 then
        aTax.InvoiceHeaderDto.tinb := qryCustomers1.FieldByName
          ('NationalCode').AsString
      else
        aTax.InvoiceHeaderDto.tinb := qryCustomers1.FieldByName
          ('EconomicNumber').AsString;
      // شماره اقتصادی خریدا

      // کد شعبه فروشنده
      // if (qryinit.FieldByName('SellsEmporiumActive').AsInteger = 1) then
      /// aTax.InvoiceHeaderDto.sbc := qryReciptsSellsEmporium.AsString;

      aTax.InvoiceHeaderDto.bpc := qryCustomers1.FieldByName
        ('PostalCode').AsString;
    end;

    // aTax.InvoiceHeaderDto.tprdis := IntToStr(TotalPrice);  پایین تر
    // مجموع مبلغ کل قبل از کسر تخفیف

    { مجموع مبلغ کل پس از کسر تخفیف )Vs )برابر است با: جمع مبلغ
      پس از کسر تخفیف در صورتحساب }

    Temp := TotalPrice_T - DeficitValue;
    aTax.InvoiceHeaderDto.tadis := IntToStr(Temp);

    aTax.InvoiceHeaderDto.tdis := IntToStr(DeficitValue);

    // IntToStr(StrToInt(tprdis) - StrToInt(tadis));  //7 مجموع تخفیفات
    Temp := (TotallSellPrice_T);
    aTax.InvoiceHeaderDto.tbill := IntToStr(Temp);
    // فیلد مجموع صورتحساب

    aTax.InvoiceHeaderDto.todam := '0'; // یلد مجموع سایر مالیات،

    aTax.InvoiceHeaderDto.tvam := IntToStr(TaxValue);
    // مجموع مالیات بر ارزش افزوده



    // Tax17  := tvam ;

  end;
{$ENDREGION}
{$REGION 'InvoiceBodyDto'}
  with DsItem do
  begin
    First;
    while not Eof do
    begin
      if DsItem.FieldByName('TotallSellPrice').AsFloat > 0 then
      begin
        Item := TInvoiceBodyDto.Create;
        Item.sstid := DsItem.FieldByName('_NationalStuffCode').AsString;

        if (qryinit.FieldByName('ValueControl').AsLargeInt and
          Integer(CHkNotSendItemNote) <> 0) then
          Item.Sstt := DsItem.FieldByName('_StuffName').AsString
        else
          Item.Sstt := DsItem.FieldByName('_StuffName').AsString + ' ' +
            DsItem.FieldByName('ItemNote').AsString;

        Item.Sstt := Copy(Item.Sstt, 1, 300);

        Item.mu := DsItem.FieldByName('_Tax_mu').AsString;

        if mnuEntity.Checked then
          Item.am := FloatToStr(DsItem.FieldByName('OutputEntity').AsFloat +
            DsItem.FieldByName('InputEntity').AsFloat);
        if mnuWeight.Checked then
          Item.am := FloatToStr(DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat);

        ArzAmount := ArzAmount + DsItem.FieldByName('ArzAmount').AsFloat;
        if qryRecipts.FieldByName('InvoiceTemplate').AsInteger = 7 then
        begin

          Item.Nw := FloatToStr(DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat);

          // HeaderDto.torv
          Item.ssrv := DsItem.FieldByName('TotallSellPrice').AsString;

          // HeaderDto.tocv        مجموع ارزش ارزی
          Item.sscv := DsItem.FieldByName('ArzAmount').AsFloat.ToString;

          Tonw := Tonw + DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat;

        end;

        Item.Fee := DsItem.FieldByName('UnitSellPrice').AsFloat.ToString;;
        if DsItem.FieldByName('ArzAmount').AsFloat <> 0 then
        begin
          Item.Cut := qryRecipts.FieldByName('CurrencyCode').AsString.Trim;
          // 'USD''840'
          Item.cFee := DsItem.FieldByName('ArzRate').AsFloat.ToString;
          Item.exr := DsItem.FieldByName('ArzAmount').AsFloat.ToString;
          Item.exr := qryRecipts.FieldByName('RialsEqual').AsFloat.ToString;

        end
        else
        begin
        end;

        {
          مبلغ قبل از تخفیف )Es )از فرمول زیر محاسبه میشود.
          Es=As*Cs
          As : تعداد/مقدار
          Cs : مبلغ واحد
          مهم
          2
          مبلغ قبل از تخفیف میبایست بزرگتر از صفر باشد }
        if mnuEntity.Checked then
          prdis := Trunc((DsItem.FieldByName('OutputEntity').AsFloat +
            DsItem.FieldByName('InputEntity').AsFloat) *
            DsItem.FieldByName('UnitSellPrice').AsFloat);
        if mnuWeight.Checked then
          prdis := Trunc((DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat) *
            DsItem.FieldByName('UnitSellPrice').AsFloat);

        Item.prdis := IntToStr(prdis);
        tprdis := tprdis + prdis;
        aTax.InvoiceHeaderDto.tprdis := IntToStr(tprdis);

        Item.dis := DsItem.FieldByName('DeficitValue').AsLargeInt.ToString;;
        Item.adis := IntToStr(DsItem.FieldByName('TotalInputPrice').AsLargeInt +
          DsItem.FieldByName('TotalOutputPrice').AsLargeInt -
          DsItem.FieldByName('DeficitValue').AsLargeInt);

        // Item.vra :=FloatToStr( {ROUNDTO(} qryItems.FieldByName('TaxCo').AsFloat/100 {,-2)} );
        Item.vra := qryItems.FieldByName('TaxCo').AsFloat.ToString;
        // نرخ مالیات بر ارزش‌افزوده

        // مبلغ مالیات بر ارزش
        Item.vam := qryItems.FieldByName('TaxValue').AsLargeInt.ToString;

        if qryItems.FindField('TotallCommission') <> nil then
          Item.Bros := qryItems.FieldByName('TotallCommission')
            .AsLargeInt.ToString;

        if qryItems.FindField('Wage') <> nil then
          Item.consfee := qryItems.FieldByName('Wage').AsLargeInt.ToString;

        { مبلغ کل کاال/خدمت )Os )برابر است با: جمع مبلغ مالیات بر ارزش افزوده،
          مبلغ بعد از تخفیف، مبلغ سایر مالیات و عوارض و مبلغ سایر وجوه قانونی.
          فرمول محاسبه به صورت زیر میباشد }
        tsstam := (DsItem.FieldByName('TotalInputPrice').AsLargeInt +
          DsItem.FieldByName('TotalOutputPrice').AsLargeInt) +
          qryItems.FieldByName('TaxValue').AsLargeInt -
          DsItem.FieldByName('DeficitValue').AsLargeInt;
        Item.tsstam := IntToStr(tsstam);
        // Item.tsstam := tadis;//  مبلغ کل کالا و خدمت

        // وش تسویه شامل: نقدی 1 ،نسیه 2 و نقدی/نسیه3 است.

        if aTax.InvoiceHeaderDto.setm = '3' then // نقد و نسیه
        begin
          vop := Trunc((qryItems.FieldByName('TaxValue').AsLargeInt *
            StrToInt64(aTax.InvoiceHeaderDto.cap)) /
            (TotallSellPrice_T - DeficitValue)); //
          Item.vop := vop.ToString;

          tvop := tvop + vop;

          cop := Trunc
            ((TotallSellPrice_T * StrToInt64(aTax.InvoiceHeaderDto.cap)) /
            (TotallSellPrice_T));
          Item.cop := cop.ToString;

        end;

        aTax.InvoiceBodyDto.Add(Item);
      end
      else
        Warn2('برای خالص صفر ارسال انجام نمی شود');
      Next;
    end; // همه سطرها

    if aTax.InvoiceHeaderDto.setm = '3' then // نقد و نسیه
      aTax.InvoiceHeaderDto.tvop := tvop.ToString;
    // مجموع سهم مالیات بر ارزش افزوده از پرداخت

    if qryRecipts.FieldByName('InvoiceTemplate').AsInteger = 7 then
    begin
      aTax.InvoiceHeaderDto.Tonw := FloatToStr(Tonw);

      // مجموع ارزش ریالی       Item.ssrv
      aTax.InvoiceHeaderDto.torv := TotallSellPrice_T.ToString;

      // Item.sscv       مجموع ارزش ارزی
      aTax.InvoiceHeaderDto.tocv := FloatToStr(ArzAmount);

      // شماره کوتاژ اظهارنامه گمرکی
      aTax.InvoiceHeaderDto.cdcn := qryTrades.FieldByName('Kotaj_No').AsString;

      // تاریخ کوتاژ اظهارنامه گمرکی
      if Length(Trim(qryTrades.FieldByName('Kotaj_Date').AsString)) = 10 then
      begin
        cdcDate := Shamsi2Miladi(qryTrades.FieldByName('Kotaj_Date').AsString);
        cdcDate := cdcDate + Time;
        aTax.InvoiceHeaderDto.cdcd :=
          IntToStr(DateTimeToUTC(cdcDate) div 86400000);
      end;

    end;
    //

  end;

{$ENDREGION}
  SUCCESS := TSuccess.Create;
  try
    SetRest('INVOICE', aTax);
    add2log2('_______________1INVOICE=' + qryRecipts.FieldByName('ReciptNumber')
      .AsString);
    add2log2(#13#10 + aTax.AsJson);
    add2logLast(aTax.AsJson);
    RESTRequest1.Timeout := 60000;
    RESTRequest1.Execute;

    if RESTResponse1.status.SUCCESS then
      Result := RESTResponse1.Content
    else
      Result := RESTResponse1.Content;

    try
      add2log2('_______________2INVOICE=' + qryRecipts.FieldByName
        ('ReciptNumber').AsString);
      add2log2(#13#10 + Result);
      res := TPacketResponse.Create;
      res.AsJson := Result;
    except
      // on E: Exception do
      res.uid := '';
      res.Message := Result;
    end;

    if ((res.TAXID <> EmptyStr) { and (qryRecipts.FieldByName('TAXID')
        .AsString = EmptyStr) } ) then
    begin
      SQL := ' update Recipts set TAXID = ''%s''';
      SQL := SQL + ' WHERE  id= %s ';
      SQL := Format(SQL, [res.TAXID, qryRecipts.FieldByName('ID').AsString]);
      DmF.adcBSell.Execute(SQL);
    end;

    if res.uid <> EmptyStr then
      CheckRequest(aTax, res.uid, res.ReferenceNumber, res.TAXID, TaxFormKind,
        qryRecipts)
    else
      s := ' از سامانه مودیان پاسخی دریافت نشد ' + #13#10 + res.error;

  except
    on E: Exception do
    begin
      // add2log(url);
      add2log(E.Message);
      Warn(E.Message);
    end;
  end;

  res.Free;
  SUCCESS.Free;
  if Send1From then
    qryRecipts.Refresh;
  if qryRecipts.FieldByName('tax_status').AsInteger = 1 then
    Warn2('ارسال به سامانه مودیان انجام شد')
  else
  begin
    if s <> EmptyStr then
      Warn2(s + #13#10 + Send_Message)
    else
      Warn2(s + #13#10 + Send_Message, 3000);

    // s := __TheTempDIR + qryRecipts.FieldByName('ID').AsString + 'RN' +
    // qryRecipts.FieldByName('ReciptNumber').AsString + '.html';
    // SaveUniCodeFile(Result, s);
    // if CtrlDown then
    // RunDoc(s);
  end;

  TaxStateMenu(MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
    MnuTaxReturnFromSale, MnuCheckMoaadiyan, MnuLoop, qryRecipts, SellEffect);
  // id_SSL.Free;
  // IdHTTP.Free;
  IsSendingMoadiyan := False;
end;

procedure TDMTaxF.TaxStateMenu(MnuTaxMoaadiyan, MnuTaxCancellation,
  MnuTaxCorrection, MnuTaxReturnFromSale, MnuCheckMoaadiyan, MnuLoop: TMenuItem;
  qryRecipts: TDataSet; SellEffect: Integer);
begin
  MnuTaxMoaadiyan.Visible := (qryRecipts.FieldByName('tax_status')
    .AsInteger = 0) and (qryRecipts.FieldByName('ReciptState').AsInteger <> 3);
  MnuTaxCancellation.Visible :=
    ((qryRecipts.FieldByName('tax_status').AsInteger in [1]) and
    (qryRecipts.FieldByName('ReciptState').AsInteger <> 3)) or
    (qryRecipts.FieldByName('IRTAXID').AsString <> EmptyStr) or
    ( { (qryItems.RecordCount = 0) and } (qryRecipts.FieldByName('tax_status')
    .AsInteger <> 1));
  MnuTaxCorrection.Visible := (qryRecipts.FieldByName('tax_status').AsInteger
    in [1, 3]) and (qryRecipts.FieldByName('ReciptState').AsInteger <> 3);
  MnuTaxReturnFromSale.Visible := SellEffect = 2;

  MnuCheckMoaadiyan.Visible :=
    (qryRecipts.FieldByName('tax_status').AsInteger <> 1);
  MnuLoop.Visible := (qryRecipts.FieldByName('tax_status').AsInteger = 2);

end;

procedure TDMTaxF.CheckRequest(aTax: TMainTax;
  uid, ReferenceNumber, TAXID: string; TaxFormKind: TTaxFormKind;
  qryRecipts: TDataSet);
var
  RError: TRError;
  s, Result: string;
begin
  try
    aTax.QueryModel.uid := uid;
    aTax.QueryModel.ReferenceNumber := ReferenceNumber;
    SetRest('QUERY_UID', aTax);
    /// /     QUERY_REF_NUMBER      QUERY_UID
    add2log2('_______________3QUERY_UID=' + qryRecipts.FieldByName
      ('ReciptNumber').AsString);
    add2log2(#13#10 + aTax.AsJson);

    RESTRequest1.Execute;
    if RESTResponse1.status.SUCCESS then
    begin
      Result := RESTResponse1.Content;
    end
    else
    begin
      Result := RESTResponse1.Content;
    end;

    try
      add2log2('_______________4QUERY_UID=' + qryRecipts.FieldByName
        ('ReciptNumber').AsString);
      add2log2(#13#10 + Result);
      RError := TRError.Create;
      RError.AsJson := Result;
    except
      on E: Exception do
      begin
        RError.error := E.Message;
        add2log(E.Message);
      end;

    end;

    s := 'declare @v_return varchar(2000)= %s ' + ' update Recipts' +
      ' set DATE_OF_SEND_TO_TAX = GETDATE(),tax_status = case when @v_return =''SUCCESS'' then 1 when @v_return = ''FAILED''  then 0 else 2 end'
      + ' , TAXID = ''%s''' + ' ,TAXUID = ''%s''' +
      ' ,REFERENCENUMBER =  ''%s''';

    // if SellEffect = 2 then
    // s := s + ' , IRTAXID =   ''' + qryReciptsIRTAXID.AsString +
    // '''' + #13#10;

    if TaxFormKind = TaxCancellation then
      s := s + ' ,ReciptState = case when @v_return =''SUCCESS'' then 3 else 0 end  WHERE  id= %s  '
      /// isnull(tax_status,0) = 1 and
    else
      s := s + ' WHERE  id= %s '; // isnull(tax_status,0)<>1 and

    s := Format(s, [QuotedStr(RError.status), TAXID, uid, ReferenceNumber,
      qryRecipts.FieldByName('ID').AsString]);
    DmF.adcBSell.Execute(s);
    // Warn(res.Message);

    Warn2(ErrorTrans(RError.status, RError.error));
    RError.Free;
  except
    on E: Exception do
    begin
      Warn2('اشکال در ارتباط به سامانه', 3000);
      add2log(E.Message);
    end;

  end;

end;

procedure TDMTaxF.CheckMoaadiyan(MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
  MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale,
  MnuLoop: TMenuItem; qryRecipts: TADOQuery; SellEffect: Integer;
  Send1From: Boolean = True);
var
  aTax: TMainTax;
  s: string;
begin
  inherited;
  aTax := TMainTax.Create;
  if Mnusandbox.Checked then
  begin
    aTax.ConfigModel.SERVERTYPE := '2';
  end
  else
    aTax.ConfigModel.SERVERTYPE := '1';

  SetKeysModel(aTax);
  try
    if qryRecipts.FieldByName('TAXUID').AsString <> EmptyStr then
      CheckRequest(aTax, qryRecipts.FieldByName('TAXUID').AsString,
        qryRecipts.FieldByName('REFERENCENUMBER').AsString,
        qryRecipts.FieldByName('TAXID').AsString, TaxCorrection, qryRecipts)
    else
      s := 'از سامانه مودیان پاسخی دریافت نشد';
  except
    on E: Exception do
    begin
      // add2log(url);
      add2log(E.Message);
      Warn(E.Message);
    end;
  end;

  aTax.Free;
  if Send1From then
    qryRecipts.Requery();
  TaxStateMenu(MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
    MnuTaxReturnFromSale, MnuCheckMoaadiyan, MnuLoop, qryRecipts, SellEffect);
  if qryRecipts.FieldByName('tax_status').AsInteger = 1 then
    Warn2('ارسال به سامانه مودیان انجام شده')
  else
    Warn2(s + #13#10 + Send_Message);

end;

function TDMTaxF.ErrorTrans(SUCCESS, error: string): string;
var
  i: Integer;
  s: string;
begin
  i := Pos('SUCCESS', SUCCESS);
  if i > 0 then
    s := 'ارسال موفق.' + #13#10
  else
  begin
    i := Pos('PENDING', SUCCESS) + Pos('IN_PROGRESS', SUCCESS);
    if i > 0 then
    begin
      Result := 'ارسال با موفقیت در صف انتظار تائید قرار گرفت.' + #13#10;
      exit;
    end
    else
      s := 'ارسال ناموفق!';
  end;
  Result := s;
  i := Pos('FiscalId =', error);
  if i > 0 then
    error := midstr(error, i + 10, Length(error));

  i := Pos('error', error);
  if i > 0 then
    Result := Result + #13#10 + midstr(error, i + 5, Length(error))
  else
    Result := Result + #13#10 + error;

  // i := Pos(':is:', Result);
  // if i > 0 then
  // Result := s + ':is:' + #13#10 + Result;

  Result := ReplaceStr(Result, '\', '');
  Result := ReplaceStr(Result, '"', '');
  Result := ReplaceStr(Result, 'errorType:ERROR', #13#10 + 'msg=');

  Result := ReplaceStr(Result, 'errorType:WARNING', #13#10 + 'اخطار' + #13#10
    + #13#10);

  Result := ReplaceStr(Result, 'confirmationReferenceId:nullerror', '');

  Result := ReplaceStr(Result, 'message:', '');
  Result := ReplaceStr(Result, ',message:', #13#10 + 'msg=');

  Result := ReplaceStr(Result, 'msg=', #13#10 + 'msg=');
  Result := ReplaceStr(Result, 'msg=', '');
  Result := ReplaceStr(Result, 'status:SUCCESS', 'ارسال موفق.');
  Result := ReplaceStr(Result, 'warning:', #13#10 + 'اخطار:' + #13#10);

  Result := ReplaceStr(Result, 'code:', 'C');

  Result := ReplaceStr(Result, 'detail=[]', 'D');

  Result := ReplaceStr(Result, 'message:', '');
  Result := ReplaceStr(Result, 'warning:', '');
  Result := ReplaceStr(Result, 'errorType:WARNINGsuccess', '');

  Result := ReplaceStr(Result, 'errorType:WARNING', #13#10 + '');

  Result := ReplaceStr(Result, '[', '');
  Result := ReplaceStr(Result, ']', '');
  Result := ReplaceStr(Result, '{', '');
  Result := ReplaceStr(Result, '}', '');
  Result := ReplaceStr(Result, ',', '');

end;

function TDMTaxF.ErrorTransW(error: string): TMsgDlgType;
var
  i: Integer;
begin
  i := Pos('SUCCESS', error);
  if i > 0 then
    Result := mtInformation
  else
  begin
    i := Pos('PENDING', error) + Pos('IN_PROGRESS', error);
    if i > 0 then
    begin
      Result := mtWarning;
      Send_Message := 'ارسال با موفقیت در صف انتظار تایید سامانه قرار گرفت';
    end
    else
    begin
      Result := mtError;
      Send_Message := 'ارسال انجام نـشـد';
    end;
  end;
end;

procedure TDMTaxF.SetKeysModel(aaTax: TMainTax);
begin
  aaTax.KeysModel.ECONOMICNUMBER := opt.Economic_Number;
  aaTax.KeysModel.FISCALId := opt.FISCAL_ID;
  aaTax.KeysModel.PUBKEY := opt.PUB_KEY;
  aaTax.KeysModel.PUBKEYID := opt.PUB_KEY_ID;
  aaTax.KeysModel.PRVKY := opt.PRV_KY;
  aaTax.KeysModel.CRT_KEY := opt.CRT_KEY;
  aaTax.KeysModel.CRT_KEY := opt.CRT_KEY;
end;

function DateTimeToUTC(dt: TDateTime): Int64;
var
  tzi: TTimeZoneInformation;
begin
  Result := DateTimeToUnix(dt);
  GetTimeZoneInformation(tzi);
  Result := (Result + tzi.Bias * 60) * 1000; //
end;

procedure TDMTaxF.SetRest(Matod: string; aTax: TMainTax);
// var  url: string;
begin
  // url :='http://213.108.242.54:8080/moadianwsh/MoadianAPI/FARA/';
  // http://93.118.123.138:5000/moadianwsh/MoadianAPI/FARA/
  if RESTRequest1 <> nil then
    RESTRequest1.Free;

  if RESTResponse1 <> nil then
    RESTResponse1.Free;

  if RESTClient1 <> nil then
    RESTClient1.Free;

  RESTResponse1 := TRESTResponse.Create(self);
  RESTRequest1 := TRESTRequest.Create(self);
  RESTClient1 := TRESTClient.Create(self);

  RESTResponse1.Name := 'RESTResponse1';
  RESTRequest1.Name := 'RESTRequest1';
  RESTRequest1.Client := RESTClient1;
  RESTRequest1.Method := rmPOST;
  with RESTRequest1.Params.AddItem do
  begin
    Kind := pkREQUESTBODY;
    name := 'body';
    Options := [poDoNotEncode];
    ContentType := ctAPPLICATION_JSON;
  end;
  RESTRequest1.Response := RESTResponse1;
  RESTRequest1.SynchronizedEvents := False;
  RESTClient1.Name := 'RESTClient1';
  RESTClient1.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
  RESTClient1.AcceptCharset := 'UTF-8, *;q=0.8';

  RESTClient1.BaseURL := opt.URL_MoadianAPI + Matod;

  RESTClient1.ContentType := 'application/json';
  // RESTClient1.Params := <>;
  RESTClient1.HandleRedirects := True;
  RESTClient1.RaiseExceptionOn500 := False;

  RESTRequest1.Body.ClearBody;
  RESTRequest1.Body.Add(aTax.AsJson);

end;

function TDMTaxF.CalcSumWeight(qryItems: TADOQuery): Real48;
begin
  Result := 0;
  try
    with qryItems do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Result := Result + FieldByName('InputWeight').AsFloat +
          FieldByName('OutputWeight').AsFloat;
        Next;
      end; // while
      EnableControls;
    end; // with
  except
    on E: Exception do
    begin
      Warn(E.Message);
    end;
  end; // try
end;

function TaxFormKindName(TaxFormKind: TTaxFormKind): string;
begin
  case TaxFormKind of
    TaxMain:
      Result := 'اصلی';
    TaxCorrection:
      Result := 'اصلاحی';
    TaxCancellation:
      Result := 'ابطالی';
    TaxReturn:
      Result := 'برگشت از فروش';
    // TaxReturnFromSaleNext:      Result := 'برگشتی برگشت از فروش';
    TaxCorrection2:
      Result := 'اصلاح اصلاحی';
  end;
end;

function Gettax_statusCaption(tax_status: Integer): string;
begin
  case tax_status of
    0:
      Result := 'خطا';
    1:
      Result := 'ارسال شده';
    2:
      Result := 'در صف انتظار تائید';
    3:
      Result := 'آماده برای ارسال';

  else
    Result := 'ارسال نشده';
  end;
end;

function NewReciptOnly(ID: Largeint; qryRecipts: TDataSet): Largeint;
begin
  with DmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT  * FROM Recipts ';
    SQL.Add('WHERE (ID = ' + ID.ToString + ')');
    Active := True;
    qryRecipts.FieldByName('AidNumber').AsString :=
      FieldByName('ReciptNumber').AsString;
    qryRecipts.FieldByName('AidDate').AsString :=
      FieldByName('ReciptDate').AsString;

    qryRecipts.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;

    qryRecipts.FieldByName('IRTAXID').AsString := FieldByName('TAXID').AsString;
    // qryRecipts.FieldByName('TAXID').AsString := FieldByName('TAXID').AsString;

    qryRecipts.FieldByName('StoreID').AsString :=
      FieldByName('StoreID').AsString;

    qryRecipts.FieldByName('ReciptNote').AsString := FieldByName('ReciptNote')
      .AsString + ' ابطالی فرم شماره ' + FieldByName('ReciptNumber').AsString;

    qryRecipts.FieldByName('PersonID1').AsString :=
      FieldByName('PersonID1').AsString;

    qryRecipts.FieldByName('PersonID2').AsString :=
      FieldByName('PersonID2').AsString;
    qryRecipts.FieldByName('PersonID3').AsString :=
      FieldByName('PersonID3').AsString;
    qryRecipts.FieldByName('PersonID4').AsString :=
      FieldByName('PersonID4').AsString;
    qryRecipts.FieldByName('PersonID5').AsString :=
      FieldByName('PersonID5').AsString;
    qryRecipts.FieldByName('ReciptNote').AsString :=
      FieldByName('ReciptNote').AsString;
    qryRecipts.FieldByName('SellsMethod').AsString :=
      FieldByName('SellsMethod').AsString;
    qryRecipts.FieldByName('SellsEmporium').AsString :=
      FieldByName('SellsEmporium').AsString;
    qryRecipts.FieldByName('TAXUID').AsString := FieldByName('TAXUID').AsString;
    qryRecipts.FieldByName('REFERENCENUMBER').AsString :=
      FieldByName('REFERENCENUMBER').AsString;
    qryRecipts.FieldByName('DATE_OF_SEND_TO_TAX').AsString :=
      FieldByName('DATE_OF_SEND_TO_TAX').AsString;
    // qryRecipts.FieldByName('tax_status').AsString:=  FieldByName('tax_status').AsString;
    qryRecipts.FieldByName('LoanPayment').AsString :=
      FieldByName('LoanPayment').AsString;
    qryRecipts.FieldByName('ReciptState').AsInteger := 3;
    qryRecipts.Post;
    Active := False;
  end;

end;

procedure TDMTaxF.JameTajarat(qryCustomers1, qryAllRecipts,
  qryRecipts: TDataSet; qryItems, qryTrades, qryinit: TADOQuery;
  cliBarcode: TClientDataSet; Send1From: Boolean = True);
var
  aUser: TUserJame;
  aDocumentList: TDocumentList;
  Item: TStuffsIn;
  IDi: TImportsDeclareInfo;
  Result, s, SQL: string;
  SUCCESS: TSuccess;
  // res: TResultJame;
  aError: TError1;
  ReciptDate: TDateTime;
  cdcDate: TDateTime;
  Time: TTime;
  Temp, TotalPrice_T: Largeint;
  TotallSellPrice_T, DeficitValue, TaxValue, ID: Largeint;
  b: Boolean;
  DsItem: TDataSet;
  SellEffect: Integer;
  GetStatus: Boolean;

  EntityOrWeight: Integer;

  JsonStr: string;

begin
  inherited;
  if qryRecipts.State in dsEditModes then
    qryRecipts.Post;
  if Send1From then
    try
      qryCustomers1.Refresh();
      if qryTrades <> nil then
        qryTrades.Refresh();
    except
      on E: Exception do
    end;

  if // (TaxFormKind in [TaxCancellation, TaxCorrection]) and
    (qryRecipts.FieldByName('DocNo').AsInteger <> 0) then
  begin
    if get_response('فرم دارای سند حسابداری می باشد ' +
      ' آیا برای ارسال فرم  به سامانه جامع مطمئن هستید؟ ', clRed) <> mrYes then
      exit;
    // exit;
  end;

  SellEffect := qryinit.FieldByName('SellEffect').AsInteger;
  DsItem := qryItems;

  if (Send1From) and
    (get_response(' آیا برای ارسال فرم  به  سامانه جامع تجارت مطمئن هستید؟ ',
    clGreen) <> mrYes) then
    exit;

  aUser := TUserJame.Create;

  SetKeysModel(aUser);
  TotallSellPrice_T := Trunc(CalcSumFileds(qryItems, 'TotallSellPrice'));
  TotalPrice_T := Trunc(CalcSumFileds(qryItems, 'TotalOutputPrice'));
  TotalPrice_T := TotalPrice_T +
    Trunc(CalcSumFileds(qryItems, 'TotalInputPrice'));
  DeficitValue := Trunc(CalcSumFileds(qryItems, 'DeficitValue'));
  TaxValue := Trunc(CalcSumFileds(qryItems, 'TaxValue'));

{$REGION 'DocumentList'}
  begin
    aDocumentList := TDocumentList.Create;

    Time := TimeOf(Now);

    ReciptDate := Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate').AsString);
    ReciptDate := ReciptDate + Time;
    aDocumentList.DocumentDate := ReciptDate;
    aDocumentList.DocNumber := qryRecipts.FieldByName('ReciptNumber')
      .AsString.Trim;
    aDocumentList.DocumentDescription :=
      qryRecipts.FieldByName('ReciptNote').AsString;

    // IDi := TImportsDeclareInfo.Create;
    if qryTrades.FieldByName('LC_No').AsString <> '' then
      aDocumentList.ImportsDeclareInfo.PrfOrderNumber :=
        qryTrades.FieldByName('LC_No').AsLargeInt;
    aDocumentList.ImportsDeclareInfo.PreCotagId :=
      qryTrades.FieldByName('ArzType').AsLargeInt;
    aDocumentList.ImportsDeclareInfo.CotageCode :=
      qryTrades.FieldByName('Kotaj_No').AsString;

    aDocumentList.UserSellType := qryRecipts.FieldByName('ReciptType')
      .AsInteger;

  end;
{$ENDREGION}
{$REGION 'StuffsIn'}
  with DsItem do
  begin
    First;
    while not Eof do
    begin
      Item := TStuffsIn.Create;

      if DsItem.FieldByName('UnitSellPrice').AsFloat > 0 then
      begin
        Item := TStuffsIn.Create;
        Item.Code := DsItem.FieldByName('_NationalStuffCode').AsString;

        if qryinit.FieldByName('CalculatedEntityOrWeight').AsInteger > 0 then
          EntityOrWeight := DsItem.FieldByName('DiagnosisCalcTotalPrice')
            .AsInteger
        else
          EntityOrWeight := opt.EntityOrWeight;

        if EntityOrWeight = 0 then
          Item.Count := (DsItem.FieldByName('OutputEntity').AsInteger +
            DsItem.FieldByName('InputEntity').AsInteger)
        else
          Item.Count := (DsItem.FieldByName('OutputWeight').AsInteger +
            DsItem.FieldByName('InputWeight').AsInteger);

        Item.Price := DsItem.FieldByName('UnitSellPrice').AsLargeInt;

        Item.Discount := DsItem.FieldByName('DeficitValue').AsInteger;
        Item.OtherCharges := DsItem.FieldByName('DeficitValue2').AsInteger;
        Item.Vat := DsItem.FieldByName('TaxValue').AsInteger;

        aDocumentList.StuffsIn.Add(Item);
      end
      else
        Warn2('برای خالص صفر ارسال انجام نمی شود');
      Next;
    end; // همه سطرها

  end;

{$ENDREGION}
  aUser.DocumentList.Add(aDocumentList);

  SUCCESS := TSuccess.Create;
  try

    SetRest('RegisterDocumentRequest', aUser);

    JsonStr := '{"input":' + aUser.AsJson + '}';

    JsonStr := StringReplace(JsonStr, '"preCotagId":""', '"preCotagId":null',
      [rfReplaceAll]);

    JsonStr := StringReplace(JsonStr, '"prfOrderNumber":""',
      '"prfOrderNumber":null', [rfReplaceAll]);

    add2log2('_______________1RDR=' + qryRecipts.FieldByName('ReciptNumber')
      .AsString, True, 'Ntsw');
    add2log2(#13#10 + MaskSensitiveFields(JsonStr), True, 'Ntsw');
    add2logLast(MaskSensitiveFields(JsonStr));
    RESTRequest1.Timeout := 60000;
    RESTRequest1.Execute;

    if RESTResponse1.status.SUCCESS then
      Result := RESTResponse1.Content
    else
      Result := RESTResponse1.Content;

    try
      add2log2('_______________2RDR=' + qryRecipts.FieldByName('ReciptNumber')
        .AsString, True, 'Ntsw');
      add2log2(#13#10 + Result, True, 'Ntsw');
      // res := TResultJame.Create;
      aError := TError1.Create;
      aError.AsJson := Result;
    except
      // on E: Exception do
    end;

    if (aError.Obj <> 0) then
    begin
      SQL := ' update Recipts set NtswID = %s WHERE  id= %s ';
      SQL := Format(SQL, [aError.Obj.ToString, qryRecipts.FieldByName('ID')
        .AsString]);
      DmF.adcBSell.Execute(SQL);
    end;

    if aError.ResultMessage <> EmptyStr then
    begin
      GetStatus := True;
      Warn(aError.ResultMessage)
      // + #13#10 + 'لطفا استعلام ثبت را حتما بگیرید'
    end
    else
    begin
      GetStatus := False;
      s := ' از سامانه  جامع تجارت پاسخی دریافت نشد ' + #13#10 +
        aError.ResultCode.ToString;
      Warn(s);
    end;

  except
    on E: Exception do
    begin
      // add2log(url);
      add2log2(E.Message);
      Warn(E.Message);
    end;
  end;

  aError.Free;
  SUCCESS.Free;
  if Send1From then
    qryRecipts.Refresh;
  IsSendingMoadiyan := False;
  if GetStatus then
    JameTajaratEst(qryCustomers1, qryAllRecipts, qryRecipts, qryItems,
      qryTrades, qryinit, cliBarcode, False)
end;
// procedure TDMTaxF.JameTajarat(qryCustomers1, qryAllRecipts,
// qryRecipts: TDataSet; qryItems, qryTrades, qryinit: TADOQuery;
// cliBarcode: TClientDataSet; Send1From: Boolean = True);
// var
// aUser: TUserJame;
// aDocumentList: TDocumentList;
// Item: TStuffsIn;
// aError: TError1;
// ReciptDate: TDateTime;
// Time: TTime;
// TotalSellPrice, TotalPrice, DeficitValue, TaxValue: Largeint;
// SellEffect: Integer;
// DsItem: TDataSet;
// GetStatus: Boolean;
// EntityOrWeight: Integer;
// SQL: string;
// ResultJson: string;
// begin
// inherited;
//
// // اعتبارسنجی ورودی‌های ضروری
// if not Assigned(qryRecipts) or not Assigned(qryItems) or not Assigned(qryinit)
// then
// begin
// Warn('داده‌های ورودی نامعتبر هستند.');
// exit;
// end;
//
// // ذخیره تغییرات در صورت ویرایش
// if qryRecipts.State in dsEditModes then
// qryRecipts.Post;
//
// // رفرش دیتاست‌ها در صورت نیاز
// if Send1From then
// begin
// try
// qryCustomers1.Refresh;
// if Assigned(qryTrades) then
// qryTrades.Refresh;
// except
// on E: Exception do
// add2log2('خطا در رفرش داده‌ها: ' + E.Message);
// end;
// end;
//
// // هشدار در صورت وجود سند حسابداری
// if qryRecipts.FieldByName('DocNo').AsInteger <> 0 then
// Warn2('توجه کنید فرم دارای سند حسابداری است!!');
//
// // تأیید کاربر برای ارسال
// if Send1From and
// (get_response('آیا برای ارسال فرم به سامانه جامع تجارت مطمئن هستید؟',
// clGreen) <> mrYes) then
// exit;
//
// // محاسبه مقادیر کلی
// SellEffect := qryinit.FieldByName('SellEffect').AsInteger;
// DsItem := qryItems;
//
// TotalSellPrice := Trunc(CalcSumFileds(qryItems, 'TotallSellPrice'));
// TotalPrice := Trunc(CalcSumFileds(qryItems, 'TotalOutputPrice')) +
// Trunc(CalcSumFileds(qryItems, 'TotalInputPrice'));
// DeficitValue := Trunc(CalcSumFileds(qryItems, 'DeficitValue'));
// TaxValue := Trunc(CalcSumFileds(qryItems, 'TaxValue'));
//
// // ایجاد و تنظیم UserJame
// aUser := TUserJame.Create;
// try
// SetKeysModel(aUser);
//
// // ایجاد و تنظیم DocumentList
// aDocumentList := TDocumentList.Create;
// try
// Time := TimeOf(Now);
// ReciptDate := Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate')
// .AsString) + Time;
//
// aDocumentList.DocumentDate := ReciptDate;
// aDocumentList.DocNumber := qryRecipts.FieldByName('ReciptNumber')
// .AsString.Trim;
// aDocumentList.DocumentDescription :=
// qryRecipts.FieldByName('ReciptNote').AsString;
//
// // تنظیمات واردات (در صورت وجود)
// if Assigned(qryTrades) then
// begin
// if qryTrades.FieldByName('LC_No').AsString <> '' then
// aDocumentList.ImportsDeclareInfo.PrfOrderNumber :=
// qryTrades.FieldByName('LC_No').AsInteger;
// aDocumentList.ImportsDeclareInfo.PreCotagId :=
// qryTrades.FieldByName('ArzType').AsInteger;
// aDocumentList.ImportsDeclareInfo.CotageCode :=
// qryTrades.FieldByName('Kotaj_No').AsInteger;
// end;
//
// aDocumentList.UserSellType := qryRecipts.FieldByName('ReciptType')
// .AsInteger;
//
// // افزودن اقلام
// DsItem.First;
// while not DsItem.Eof do
// begin
// if DsItem.FieldByName('UnitSellPrice').AsFloat > 0 then
// begin
// Item := TStuffsIn.Create;
// try
// Item.Code := DsItem.FieldByName('_NationalStuffCode').AsString;
//
// EntityOrWeight := qryinit.FieldByName('CalculatedEntityOrWeight')
// .AsInteger;
// if EntityOrWeight = 0 then
// EntityOrWeight := opt.EntityOrWeight;
//
// if EntityOrWeight = 0 then
// Item.Count := DsItem.FieldByName('OutputEntity').AsInteger +
// DsItem.FieldByName('InputEntity').AsInteger
// else
// Item.Count := DsItem.FieldByName('OutputWeight').AsInteger +
// DsItem.FieldByName('InputWeight').AsInteger;
//
// Item.Price := DsItem.FieldByName('UnitSellPrice').AsLargeInt;
// Item.Discount := DsItem.FieldByName('DeficitValue').AsInteger;
// Item.OtherCharges := DsItem.FieldByName('DeficitValue2').AsInteger;
// Item.Vat := DsItem.FieldByName('TaxValue').AsInteger;
//
// aDocumentList.StuffsIn.Add(Item);
// except
// Item.Free;
// raise;
// end;
// end
// else
// Warn2('برای خالص صفر ارسال انجام نمی‌شود');
//
// DsItem.Next;
// end;
//
// aUser.DocumentList.Add(aDocumentList);
//
// // ارسال به سامانه
// SetRest('RegisterDocumentRequest', aUser);
// add2log2('_______________1RDR=' + qryRecipts.FieldByName('ReciptNumber')
// .AsString, True, 'Ntsw');
// add2log2(#13#10 + MaskSensitiveFields(aUser.AsJson), True, 'Ntsw');
// add2logLast(MaskSensitiveFields(aUser.AsJson));
//
// RESTRequest1.Timeout := 60000;
// RESTRequest1.Execute;
//
// ResultJson := RESTResponse1.Content;
//
// add2log2('_______________2RDR=' + qryRecipts.FieldByName('ReciptNumber')
// .AsString, True, 'Ntsw');
// add2log2(#13#10 + ResultJson, True, 'Ntsw');
//
// aError := TError1.Create;
// try
// aError.AsJson := ResultJson;
//
// // ذخیره شناسه پاسخ در دیتابیس
// if aError.Obj <> 0 then
// begin
// SQL := Format('UPDATE Recipts SET NtswID = %d WHERE id = %d',
// [aError.Obj, qryRecipts.FieldByName('ID').AsInteger]);
// DmF.adcBSell.Execute(SQL);
// end;
//
// // بررسی وضعیت پاسخ
// if aError.ResultMessage <> '' then
// begin
// GetStatus := True;
// Warn(aError.ResultMessage);
// end
// else
// begin
// GetStatus := False;
// Warn('از سامانه جامع تجارت پاسخی دریافت نشد. کد خطا: ' +
// aError.ResultCode.ToString);
// end;
//
// finally
// aError.Free;
// end;
//
// finally
// aDocumentList.Free;
// end;
//
// except
// on E: Exception do
// begin
// add2log2('خطا در ارسال به سامانه جامع تجارت: ' + E.Message);
// Warn('خطا در ارسال: ' + E.Message);
// end;
// end;
//
// // پاکسازی
// aUser.Free;
// IsSendingMoadiyan := False;
//
// // در صورت موفقیت، فراخوانی مجدد برای استعلام وضعیت
// if GetStatus and Send1From then
// JameTajaratEst(qryCustomers1, qryAllRecipts, qryRecipts, qryItems,
// qryTrades, qryinit, cliBarcode, False);
// end;

procedure TDMTaxF.SetKeysModel(aaUser: TUserJame);
begin
  aaUser.username := 'Public_User';
  aaUser.password := 'A32@sVy%f53Z#g3y';
  aaUser.passwordotpCode := Decrypt(opt.JamePassWord, 62354);
  // '66947820@Fara';
  aaUser.nationalCode := opt.nationalCode; // '0558534643';
  if Length(opt.UserRoleId) > 1 then
    aaUser.UserRoleId := opt.UserRoleId;
  // '1860116'; // '0558534643';

end;

procedure TDMTaxF.SetRest(Matod: string; aTax: TUserJame);
begin
  if RESTRequest1 <> nil then
    RESTRequest1.Free;

  if RESTResponse1 <> nil then
    RESTResponse1.Free;

  if RESTClient1 <> nil then
    RESTClient1.Free;

  if HTTPBasicAuthenticator1 <> nil then
    HTTPBasicAuthenticator1.Free;

  RESTResponse1 := TRESTResponse.Create(self);
  RESTRequest1 := TRESTRequest.Create(self);
  RESTClient1 := TRESTClient.Create(self);

  HTTPBasicAuthenticator1 := THTTPBasicAuthenticator.Create(self);

  HTTPBasicAuthenticator1.Name := 'HTTPBasicAuthenticator1';
  HTTPBasicAuthenticator1.username := 'internalservice';
  HTTPBasicAuthenticator1.password := 'ESBesb12?';

  RESTClient1.Authenticator := HTTPBasicAuthenticator1;

  RESTResponse1.Name := 'RESTResponse1';
  RESTRequest1.Name := 'RESTRequest1';
  RESTRequest1.Client := RESTClient1;
  RESTRequest1.Method := rmPOST;
  with RESTRequest1.Params.AddItem do
  begin
    Kind := pkREQUESTBODY;
    name := 'body';
    Options := [poDoNotEncode];
    ContentType := ctAPPLICATION_JSON;
  end;
  RESTRequest1.Response := RESTResponse1;
  RESTRequest1.SynchronizedEvents := False;
  RESTClient1.Name := 'RESTClient1';
  RESTClient1.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
  RESTClient1.AcceptCharset := 'UTF-8, *;q=0.8';

  RESTClient1.BaseURL := 'https://pub-cix.ntsw.ir/ITWSApi/V1/' + Matod;
  // GetRegisterDocumentRequestStatus
  // RegisterDocumentRequest

  RESTClient1.ContentType := 'application/json';
  // RESTClient1.Params := <>;
  RESTClient1.HandleRedirects := True;
  RESTClient1.RaiseExceptionOn500 := False;

  RESTRequest1.Body.ClearBody;
  RESTRequest1.Body.Add(aTax.AsJson);

end;

procedure TDMTaxF.JameTajaratEst(qryCustomers1, qryAllRecipts,
  qryRecipts: TDataSet; qryItems, qryTrades, qryinit: TADOQuery;
  cliBarcode: TClientDataSet; Send1From: Boolean = True);
var
  aUser: TUserJame;
  aError: TRootError;
  ResultJson: string;
  TrackingCode: string;
  i: Integer;
  ErrorMsg: string;
begin
  inherited;

  // اعتبارسنجی اولیه
  if not Assigned(qryRecipts) then
  begin
    Warn('اطلاعات فاکتور در دسترس نیست.');
    exit;
  end;

  TrackingCode := qryRecipts.FieldByName('NtswID').AsString.Trim;

  if TrackingCode = '' then
  begin
    Warn('شناسه ارسال به سامانه جامع تجارت (NtswID) وجود ندارد. ابتدا فاکتور را ارسال کنید.');
    exit;
  end;

  // ایجاد آبجکت‌های لازم
  aUser := TUserJame.Create;
  aError := TRootError.Create;
  try
    SetKeysModel(aUser);
    aUser.TrackingCode := TrackingCode;

    add2log2('در حال استعلام وضعیت سند با TrackingCode: ' + TrackingCode,
      True, 'Ntsw');

    SetRest('GetRegisterDocumentRequestStatus', aUser);

    RESTRequest1.Timeout := 60000; // 60 ثانیه تایم‌اوت

    try
      RESTRequest1.Execute;
      ResultJson := RESTResponse1.Content;

      add2log2('پاسخ دریافتی از سامانه: ' + ResultJson, True, 'Ntsw');

      aError.AsJson := ResultJson;

      // جمع‌آوری پیام‌های خطا (اگر وجود داشته باشد)
      ErrorMsg := '';
      if Assigned(aError.Obj) and Assigned(aError.Obj.ErrorList) then
      begin
        for i := 0 to aError.Obj.ErrorList.Count - 1 do
          ErrorMsg := ErrorMsg + aError.Obj.ErrorList[i].ErrorMessage +
            sLineBreak;
      end;

      if ErrorMsg <> '' then
        Warn(aError.ResultMessage + sLineBreak + ErrorMsg)
      else if aError.ResultMessage <> '' then
        Warn(aError.ResultMessage)
      else
        Warn('پاسخ نامشخص از سامانه دریافت شد.');

    except
      on E: Exception do
      begin
        add2log2('خطا در اجرای درخواست استعلام: ' + E.Message, True, 'Ntsw');
        Warn('خطا در برقراری ارتباط با سامانه: ' + E.Message);
      end;
    end;

  finally
    aUser.Free;
    aError.Free;
  end;

end;

end.
