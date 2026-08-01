unit UTozin;

interface

uses
  Data.Win.ADODB, GlobalPro, FormFunctions, DM, System.SysUtils, Vcl.Controls,
  System.Math, forms, Data.DB, System.StrUtils;

function TozinCorrelateRecipt2(CallForm: TForm; qryinit: TADOQuery;
  qryTozin: tdataset; qryLicense: TADOQuery; Caption: string; Mandeh: Real48;
  ShowMsg, ActSummary: Boolean; ReciptID: Integer): Integer;
function Add2Recipt(qryRecipts4Add: TADOQuery; qryTozin: tdataset;
  qryinit, qryInitCorrelateReciptType: TADOQuery;
  CorrelateReciptType, StepCorrelate: Integer; ActSummary: Boolean): Integer;
procedure Add2ReciptItem(qryinit: TADOQuery; qryTozin: tdataset;
  qryReciptItems4Add, qryRecipts4Add: TADOQuery;
  CorrelateReciptType, StepCorrelate: Integer; Mandeh: Real48;
  ReciptID: Integer);
procedure Add2ReciptsDeficits(qryTozin: tdataset; qryRecipts4Add: TADOQuery;
  ReciptID: Integer);
procedure ChkTozinState(qryTozin: tdataset);

implementation

uses
  MMESSAGE, FaraConsts;

procedure ChkTozinState(qryTozin: tdataset);
begin
  if qryTozin.FieldByName('TozinState').AsInteger = 3 then
  begin
    Warn2('ثبت روی فرم باطله امکان پذیر نیست');
    Abort;
  end;
end;

function TozinCorrelateRecipt2(CallForm: TForm; qryinit: TADOQuery;
  qryTozin: tdataset; qryLicense: TADOQuery; Caption: string; Mandeh: Real48;
  ShowMsg, ActSummary: Boolean; ReciptID: Integer): Integer;
var
  qryRecipts4Add, qryReciptItems4Add, qryInitCorrelateReciptType,
    qry4AllAdd: TADOQuery;
  i, StepCorrelate, CorrelateReciptType: Integer;
  CorrelateCaption: string;

begin
  ChkTozinState(qryTozin);
  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryTozin)
  then
    Abort;

  with qryLicense do
  begin
    Close;
    Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Open;
  end;
  if (qryLicense.RecordCount > 0) and
    (qryLicense.FieldByName('Weight').AsInteger > 0) then
  begin
    Warn2('ثبت قابل انجام نیست');
    Exit
  end;

  if (qryTozin.FieldByName('MachineWeight').AsInteger > 0) and
    (qryTozin.FieldByName('MachineFullWeight').AsInteger > 0) then
  begin
    if ShowMsg then
      if get_response('آيا براي ثبت ' + Caption + ' مطمئن هستيد؟') <> mrYes then
        Exit;

    qryRecipts4Add := TADOQuery.Create(qryinit.Owner);
    qryReciptItems4Add := TADOQuery.Create(qryinit.Owner);

    DMf.qryReciptTypes.Open;
    DMf.qryReciptTypes.Locate('ReciptType',
      qryinit.FieldByName('CorrelateReciptType').AsInteger, []);
    CorrelateCaption := DMf.qryReciptTypes.FieldByName('ReciptCaption')
      .AsString;

    if ActSummary then
      With qryRecipts4Add do
      begin
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT *';
        SQL.Add('FROM ReciptItems');
        SQL.Add('WHERE (ServerID = :ServerID )');
        SQL.Add('AND (TozinID = :TozinID )');
        Parameters.ParamByName('TozinID').Value :=
          qryTozin.FieldByName('TozinID').AsInteger;
        SQL.Add('AND (YearID = :YearID )');
        Parameters.ParamByName('ServerID').Value :=
          qryTozin.FieldByName('ServerID').AsInteger;;
        Parameters.ParamByName('YearID').Value := qryTozin.FieldByName('YearID')
          .AsInteger;;
        Active := True;
        if (RecordCount > 0) then
        begin
          Warn2(CorrelateCaption + ' قبلا ثبت شده است.', 1000);
          Abort;
        end;
      end;

    With qryRecipts4Add do
    begin
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT *';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (ServerID = :ServerID )');
      SQL.Add('AND (TozinID = :TozinID )');
      Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
        .AsInteger;
      SQL.Add('AND (YearID = :YearID )');
      Parameters.ParamByName('ServerID').Value :=
        qryTozin.FieldByName('ServerID').AsInteger;;
      Parameters.ParamByName('YearID').Value := qryTozin.FieldByName('YearID')
        .AsInteger;;
      Active := True;
      if (RecordCount > 0) and (not ActSummary) then
      begin
        Warn2(CorrelateCaption + ' قبلا ثبت شده است.', 1000);
        if not ActSummary then
          Abort;
      end;
    end;

    with qryReciptItems4Add do
    begin
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT TOP (0) *';
      SQL.Add('FROM ReciptItems');
      Open;
    end;

    CorrelateReciptType := qryinit.FieldByName('CorrelateReciptType').AsInteger;
    qryInitCorrelateReciptType := TADOQuery.Create(qryinit.Owner);
    with qryInitCorrelateReciptType do
    begin
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT *';
      SQL.Add('FROM ReciptTypes');
      SQL.Add('where ReciptType= :ReciptType');
      Parameters.ParamByName('ReciptType').Value := CorrelateReciptType;
      Active := True;
      StepCorrelate := FieldByName('StepCorrelate').AsInteger;
    end;

    try
      if ReciptID = 0 then
      begin
        ReciptID := Add2Recipt(qryRecipts4Add, qryTozin, qryinit,
          qryInitCorrelateReciptType, CorrelateReciptType, StepCorrelate,
          ActSummary);
      end;
      Result := ReciptID;

      Add2ReciptItem(qryinit, qryTozin, qryReciptItems4Add, qryRecipts4Add,
        CorrelateReciptType, StepCorrelate, Mandeh, ReciptID);

      if qryinit.FieldByName('CorrelateReciptsDeficits').AsInteger = 1 then
        Add2ReciptsDeficits(qryTozin, qryRecipts4Add, ReciptID);

      qry4AllAdd := TADOQuery.Create(qryinit.Owner);
      With qry4AllAdd do
      begin
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT *';
        SQL.Add('FROM Recipts INNER JOIN');
        SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
        SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
        SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
        SQL.Add('WHERE(Recipts.ReciptID = :ReciptID) ');
        SQL.Add('AND (Recipts.ServerID = :ServerID) AND (Recipts.YearID = :YearID)');
        Parameters.ParamByName('ReciptID').Value := ReciptID;
        Parameters.ParamByName('ServerID').Value :=
          qryTozin.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('YearID').Value := qryTozin.FieldByName('YearID')
          .AsInteger;;
        Active := True;
        if (qry4AllAdd.FieldByName('AutoCorrelateCo').AsInteger and
          Integer(CHkAutoCorrelateCo) <> 0) and
          (qry4AllAdd.FieldByName('ConversionCoSerial').AsInteger > 0) then
          CorrelateConversionCo(CallForm, qryInitCorrelateReciptType,
            qry4AllAdd, qry4AllAdd, 0, opt.EntityDisplayType);
      end;

    finally
      qry4AllAdd.Free;
      qryReciptItems4Add.Free;
      qryRecipts4Add.Free;
      qryInitCorrelateReciptType.Free;
      FreeReservedCodes(DMf.adcBSell, 'recipts', '',
        IntToStr(CorrelateReciptType));
      FreeReservedCodes(DMf.adcBSell, 'reciptitems', '',
        IntToStr(CorrelateReciptType));
      if ShowMsg then
        BigMessage('انجام شد', 2);
    end;
  end;

end;

function Add2Recipt(qryRecipts4Add: TADOQuery; qryTozin: tdataset;
  qryinit, qryInitCorrelateReciptType: TADOQuery;
  CorrelateReciptType, StepCorrelate: Integer; ActSummary: Boolean): Integer;
begin
  with qryRecipts4Add do
  begin
    Insert;
    FieldByName('ReciptID').AsInteger :=
      GetANewID(nil, IntToStr(CorrelateReciptType), 'Recipts', 'ReciptID',
      qryTozin, StepCorrelate);
    Result := FieldByName('ReciptID').AsInteger;
    FieldByName('ReciptType').AsInteger := CorrelateReciptType;
    FieldByName('StoreID').AsInteger := qryTozin.FieldByName('StoreID')
      .AsInteger;
    FieldByName('StoreID2').AsInteger := qryTozin.FieldByName('StoreID2')
      .AsInteger;
    // myStore.code := qryTozinStoreID.AsInteger;
    FieldByName('InsertDate').AsDateTime := now;
    FieldByName('OperatorID').AsInteger := User.id;
    FieldByName('AddDecValue').AsInteger := 0;
    FieldByName('TotalValue').AsInteger := 0;

    if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
      Integer(CHkMasterTozinActive)) <> 0 then
      FieldByName('PersonID1').AsInteger := qryTozin.FieldByName('PersonID1')
        .AsInteger
    else
      FieldByName('PersonID1').AsInteger := 0;

    if ((qryinit.FieldByName('ChangeAidReciptDate').AsInteger and
      Integer(CHKPersonID2TozinToRecipts)) <> 0) then
      FieldByName('PersonID2').AsInteger := qryTozin.FieldByName('PersonID2')
        .AsInteger
    else
      FieldByName('PersonID2').AsInteger := 0;

    FieldByName('PersonID3').AsInteger := qryTozin.FieldByName('PersonID3')
      .AsInteger;

    FieldByName('PersonID4').AsInteger := qryTozin.FieldByName('PersonID4')
      .AsInteger;
    FieldByName('PersonID5').AsInteger := qryTozin.FieldByName('PersonID5')
      .AsInteger;

    if qryTozin.FieldByName('MasirID').AsInteger <> 0 then
      FieldByName('MasirID').AsInteger := qryTozin.FieldByName('MasirID')
        .AsInteger;

    if qryTozin.FieldByName('SellsMethod').AsInteger <> 0 then
      FieldByName('SellsMethod').AsInteger :=
        qryTozin.FieldByName('SellsMethod').AsInteger;

    FieldByName('ReciptState').AsInteger := 0;
    FieldByName('FirstUser').AsString := User.Name;
    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('ServerID').AsInteger := qryTozin.FieldByName('ServerID')
      .AsInteger;
    FieldByName('YearID').AsInteger := qryTozin.FieldByName('YearID').AsInteger;
    FieldByName('ModifyDate').AsDateTime := now;

    if qryinit.FieldByName('CorrelateReciptNumberKind').AsInteger = 2 then
      FieldByName('ReciptNumber').AsInteger :=
        qryTozin.FieldByName('TozinNumber').AsInteger
    else
      GetReciptNumber(qryInitCorrelateReciptType, qryRecipts4Add, 0, myStore,
        True, False);

    qryRecipts4Add.FieldByName('ReciptDate').AsString :=
      qryTozin.FieldByName('TozinDate').AsString;

    if not ActSummary then
      FieldByName('TozinID').AsInteger := qryTozin.FieldByName('TozinID')
        .AsInteger;

    FieldByName('ReciptNote').AsString :=
      qryTozin.FieldByName('TozinNote').AsString;

    FieldByName('PO').AsString := qryTozin.FieldByName('PO').AsString;

    FieldByName('AidNumber').AsString :=
      qryTozin.FieldByName('TozinNumber').AsString;
    FieldByName('AidDate').AsString :=
      qryTozin.FieldByName('TozinDate').AsString;
    FieldByName('MachineName').AsString :=
      qryTozin.FieldByName('MachineName').AsString;
    FieldByName('MachineNo').AsString :=
      qryTozin.FieldByName('MachineNo').AsString;

    if (qryTozin.FieldByName('TruckNumber').AsString <> EmptyStr) then
    begin
      FieldByName('TruckNumber').AsString :=
        qryTozin.FieldByName('TruckNumber').AsString
    end
    else
      FieldByName('TruckNumber').AsString :=
        qryTozin.FieldByName('TozinNumber').AsString;

    Post;
  end;
end;

procedure Add2ReciptItem(qryinit: TADOQuery; qryTozin: tdataset;
  qryReciptItems4Add, qryRecipts4Add: TADOQuery;
  CorrelateReciptType, StepCorrelate: Integer; Mandeh: Real48;
  ReciptID: Integer);
var
  Settings: Int64;
  InfoWeight, InfoWeight2: Boolean;
  Entity, Weight, TotalPrice, Post2Field: string;
  DeficitAddDec, SellPrice1: Real48;
  TaxValue, DeficitValue: Currency;
  VATRound: Integer;
  qryinitCo: TADOQuery;
begin
  qryinitCo := TADOQuery.Create(DMf);
  with qryinitCo do
  begin
    Connection := theMainConnection;
    SQL.Text := 'SELECT  VATRound , VATCo FROM ReciptTypes';
    SQL.Add('WHERE (ReciptType = :ReciptType)');
    Parameters.ParamByName('ReciptType').Value := CorrelateReciptType;
    Active := True;
  end;
  Settings := qryinit.FieldByName('Settings').AsLargeInt;
  InfoWeight := (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHKInfoWeight)) <> 0;

  InfoWeight2 := ((Settings and Integer(CHkFillingCustomerWeight)) <> 0);

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ';
    SQL.Add('ABS(TozinDeficits.DeficitAdd - TozinDeficits.DeficitDec) AS DeficitAddDec');
    SQL.Add(',Deficits.Post2Field');
    SQL.Add('FROM TozinDeficits INNER JOIN');
    SQL.Add('Deficits ON TozinDeficits.DeficitID = Deficits.DeficitID');
    SQL.Add('WHERE (ISNULL(Deficits.Post2Field,'''') > '''')');
    SQL.Add('AND (TozinDeficits.TozinID = :TozinID)');
    SQL.Add('AND (TozinDeficits.ServerID = :ServerID)');
    SQL.Add('AND (TozinDeficits.YearID = :YearID)');
    Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := qryTozin.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := qryTozin.FieldByName('YearID')
      .AsInteger;
    Active := True;
    DeficitAddDec := FieldByName('DeficitAddDec').AsFloat;
    Post2Field := FieldByName('Post2Field').AsString;

    if qryinit.FieldByName('AutoPrice').AsInteger = 2 then
    begin
      Active := False;
      // SQL.Text :='SELECT SellPrice1 FROM StuffCoding WHERE (c_StuffCode = :StuffCode)';
      SQL.Text := 'SELECT  Mi.SellPrice1';
      SQL.Add('FROM Manifesto AS M INNER JOIN');
      SQL.Add('ManifestoItems AS Mi ON M.ManifestoID = Mi.ManifestoID');
      SQL.Add('WHERE (M.SellOrBuy = ' + ifthen(qryinit.FieldByName('SellEffect')
        .AsInteger <> 2, '0', '1') +
        ') AND (M.ManifestoRunDate <= :TozinDate) AND (Mi.StuffCode = :StuffCode )');
      SQL.Add('ORDER BY M.ManifestoRunDate DESC, M.ManifestoNo DESC');
      Parameters.ParamByName('TozinDate').Value :=
        qryTozin.FieldByName('TozinDate').AsString;
      Parameters.ParamByName('StuffCode').Value :=
        qryTozin.FieldByName('StuffCode').AsLargeInt;
      Active := True;
      SellPrice1 := FieldByName('SellPrice1').AsFloat;
    end;

    Active := False;
    SQL.Text := 'SELECT UnitSellPrice, PersonID1';
    SQL.Add('FROM ReciptItems');
    SQL.Add('WHERE (ReciptItemID = :ReciptItemID ) AND (ReciptID = :ReciptID)');
    SQL.Add('AND (ServerID = :ServerID) AND (YearID = :YearID)');
    Parameters.ParamByName('ReciptItemID').Value :=
      qryTozin.FieldByName('ParentReciptItemID').AsInteger;
    Parameters.ParamByName('ReciptID').Value := qryTozin.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := qryTozin.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := qryTozin.FieldByName('YearID')
      .AsInteger;
    Active := True;

    qryReciptItems4Add.Insert;

    qryReciptItems4Add.FieldByName('ReciptItemID').AsInteger :=
      GetANewID(nil, IntToStr(CorrelateReciptType), 'ReciptItems',
      'ReciptItemID', qryTozin, StepCorrelate);
    qryReciptItems4Add.FieldByName('ReciptID').AsInteger := ReciptID;
    qryReciptItems4Add.FieldByName('FirstUser').AsString := User.Name;
    qryReciptItems4Add.FieldByName('InsertTime').AsString := TimeToStr(now);
    qryReciptItems4Add.FieldByName('ServerID').AsInteger :=
      qryTozin.FieldByName('ServerID').AsInteger;
    qryReciptItems4Add.FieldByName('YearID').AsInteger :=
      qryTozin.FieldByName('YearID').AsInteger;

    qryReciptItems4Add.FieldByName('TozinID').AsInteger :=
      qryTozin.FieldByName('TozinID').AsInteger;

    qryReciptItems4Add.FieldByName('StuffCode').AsLargeInt :=
      qryTozin.FieldByName('StuffCode').AsLargeInt;

    if Post2Field <> EmptyStr then
    begin
      if qryReciptItems4Add.FindField(Post2Field) = nil then
        Warn2('فیلد ' + Post2Field + ' یافت نشد')
      else
        qryReciptItems4Add.FieldByName(Post2Field).AsFloat := DeficitAddDec;
    end;

    if qryinit.FieldByName('AutoPrice').AsInteger = 2 then
      qryReciptItems4Add.FieldByName('UnitSellPrice').AsFloat := SellPrice1
    else
      qryReciptItems4Add.FieldByName('UnitSellPrice').AsFloat :=
        FieldByName('UnitSellPrice').AsFloat;

    qryReciptItems4Add.FieldByName('PersonID1').AsInteger :=
      FieldByName('PersonID1').AsInteger;

    if qryinit.FieldByName('CorrelateKind').AsInteger in [1, 2, 6] then
    begin
      Entity := 'InputEntity';
      Weight := 'InputWeight';
      TotalPrice := 'TotalInputPrice';
    end
    else
    begin
      Entity := 'OutputEntity';
      Weight := 'OutputWeight';
      TotalPrice := 'TotalOutputPrice';
    end;

    if InfoWeight or InfoWeight2 then
    begin
      qryReciptItems4Add.FieldByName(Entity).AsFloat :=
        qryTozin.FieldByName('NumberOfBags').AsFloat;
      qryReciptItems4Add.FieldByName(Weight).AsFloat := Mandeh;
    end
    else
    begin
      qryReciptItems4Add.FieldByName(Entity).AsFloat := Mandeh;
    end;

    if (qryinit.FieldByName('RecuestActive').AsLargeInt and
      Integer(CHKMachineEntity)) <> 0 then
      qryReciptItems4Add.FieldByName(Entity).AsFloat :=
        qryTozin.FieldByName('MachineEntity').AsFloat;

    qryReciptItems4Add.FieldByName(TotalPrice).AsCurrency :=
      RoundTo(qryReciptItems4Add.FieldByName('UnitSellPrice').AsFloat *
      qryReciptItems4Add.FieldByName(Entity).AsFloat, 0);

    VATRound := qryinitCo.FieldByName('VATRound').AsInteger;
    VATRound := ifthen(VATRound = 0, 1, VATRound);
    qryReciptItems4Add.FieldByName('Taxco').AsFloat :=
      qryinitCo.FieldByName('VATCo').AsFloat;

    DeficitValue := 0;
    TaxValue := Trunc((qryReciptItems4Add.FieldByName(TotalPrice).AsCurrency -
      DeficitValue) * qryReciptItems4Add.FieldByName('Taxco').AsFloat /
      (100 * VATRound)) * VATRound;

    qryReciptItems4Add.FieldByName('TaxValue').AsCurrency := TaxValue;

    qryReciptItems4Add.FieldByName('TotallSellPrice').AsCurrency :=
      Trunc(qryReciptItems4Add.FieldByName(TotalPrice).AsCurrency + TaxValue -
      DeficitValue);

    qryReciptItems4Add.FieldByName(TotalPrice).AsCurrency;

    qryReciptItems4Add.FieldByName('PrvYearID').AsInteger :=
      qryTozin.FieldByName('PrvYearID').AsInteger;

    qryReciptItems4Add.FieldByName('preReciptItemID').AsInteger :=
      qryTozin.FieldByName('ParentReciptItemID').AsInteger;

    qryReciptItems4Add.Post;
    Active := False;
    qryinitCo.Free;

  end;
end;

procedure Add2ReciptsDeficits(qryTozin: tdataset; qryRecipts4Add: TADOQuery;
  ReciptID: Integer);
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'INSERT INTO ReciptsDeficits';
    SQL.Add('(ReciptDeficitID,');
    SQL.Add('DeficitID, DeficitAdd, DeficitDec, DeficitNote,ReciptID, ServerID, YearID, DeficitCo)');
    SQL.Add('SELECT (SELECT isnull(max(ReciptDeficitID),0) FROM ReciptsDeficits)+ROW_NUMBER() OVER(ORDER BY TozinDeficitID) as');
    SQL.Add('ReciptDeficitID,');
    SQL.Add('TD.DeficitID, TD.DeficitAdd, TD.DeficitDec, TD.DeficitNote, :ReciptID , TD.ServerID, TD.YearID, TD.DeficitCo');
    SQL.Add('FROM TozinDeficits AS TD INNER JOIN');
    SQL.Add('Deficits ON TD.DeficitID = Deficits.DeficitID');
    SQL.Add('WHERE (ISNULL(Deficits.Post2Field,'''') = '''')');
    SQL.Add('AND (TD.TozinID = :TozinID )');
    Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Parameters.ParamByName('ReciptID').Value := ReciptID;
    ExecSQL;
    Active := False;
  end;
end;

end.
