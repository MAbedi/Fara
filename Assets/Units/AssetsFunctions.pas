unit AssetsFunctions;

interface

uses System.DateUtils, shamsiDate, System.Math, System.SysUtils, GlobalPro,
  System.Classes, strutils,System.UITypes,
  Data.DB,
  Data.Win.ADODB;

type
  Tcalculate = class
  public
    class var TimeToDefinitive: Int8;
    class function AmvalCal(BaseDate: string; sn: Integer;
      QryCal: TADOQuery = nil): boolean;

  end;

  TAssetsFunctions = class
  public
    class function CheckUsingDate(InDate: String; sn: Integer): boolean;
    class procedure SaveBankConfig(OptionName: string; OptionValue: string);
    class procedure MakeAssetsYear(NewYear: Integer);
    class procedure MakeSingleAssetsYear(adc: TADOConnection; YearId: Integer;
      CanMove: boolean);
  end;

implementation

uses
  Dm;

// function Tcalculate.ExecuteQry(Command: string): boolean;
// begin
// Result := True;
// with TADOQuery.Create(nil) do
// try
// Connection := Dmf.adcBsell;
// Close;
// CommandTimeout := 0;
// SQL.Text := Command;
// try
// ExecSQL;
// except
// on E: Exception do
// begin
// Result := False;
// Warn('اشكال در اجرا' + E.Message);
// add2log(E.Message);
// end;
// end;
// finally
// Free;
// end;
// end;

class function Tcalculate.AmvalCal(BaseDate: string; sn: Integer;
  QryCal: TADOQuery = nil): boolean;
var
  SumFirstDepValue, SumDepValueInYear, AidFirstDepValue, AidDepValueInYear,
    DepValueInYear, SumPrice, FirstDepValue: Currency;
 // FirstDepValueActive: boolean;
  StopAssets: boolean;
 // StopDepNo: Real;
  BeforeSerial: Integer;
  StartUsingDate_U: TDate;
  StartNowMaliYear: TDate;
  CalDateMode1: TDate;
  calculatedate: TDate;
  Kind: Integer;
  I: Byte;
  // ---------------------------------Insert Values ---------------------------
  procedure InsertValue(SecondKind: Byte; keyValue: Integer);
  var
    sqlinsert: string;
    TableName: string;
  begin
    TableName := EmptyStr;
    SumFirstDepValue := RoundTo(SumFirstDepValue, 0);
    SumDepValueInYear := RoundTo(SumDepValueInYear, 0);
    SumPrice := RoundTo(SumPrice, 0);
    case SecondKind of
      0:
        TableName := 'BerakAmval';
      1:
        case Kind of
          0:
            TableName := 'Amval';
          1:
            TableName := 'Expenses';
        end; // case2
      3:
        TableName := 'Movement';
    end;
    if TableName <> EmptyStr then
    begin
      sqlinsert := Format('exec Assets.InsertValues %d,%d,%S,%d,%s,%s',
        [sn, APPBank.Year, TableName, keyValue, CurrToStr(SumFirstDepValue),
        CurrToStr(SumDepValueInYear)]);
      try
        Dmf.adcBsell.Execute(sqlinsert);
      finally
        if TimeToDefinitive = 1 then
          Dmf.adcBsell.Execute
            (Format('UPDATE assets.Amval SET AmvalState = 1 WHERE SerialNum =%d ',
            [keyValue]));
      end;
    end;
  end;
// --------------------------------Update Amval------------------------------
  procedure UpdateValue(SecondKind: Byte; keyValue: Integer);
  Var
    SqlUpdate: String;
  begin
    SumFirstDepValue := RoundTo(SumFirstDepValue, 0);
    SumDepValueInYear := RoundTo(SumDepValueInYear, 0);
    SumPrice := RoundTo(SumPrice, 0);
    case SecondKind of
      0:
        SqlUpdate :=
          Format('UPDATE Assets.BerakAmval SET FirstDepValueEndStop = %s ,DepvalueInYearEndStop= %s WHERE (ID = %d)',
          [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
          keyValue]);
      1:
        case Kind of
          0:
            SqlUpdate :=
              Format('UPDATE Assets.Amval SET FirstDepValue = %s ,DepvalueInYear = %s WHERE (SerialNum = %d)',
              [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
              keyValue]);
          1:
            SqlUpdate :=
              Format('UPDATE Assets.Expenses  SET FirstDepValue = %s ,DepvalueInYear = %s WHERE (ExpID = %d)',
              [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
              keyValue]);
          2:
            SqlUpdate :=
              Format('UPDATE Assets.ReValidateItems  SET FirstDepValue = %s ,DepvalueInYear = %s WHERE (ID = %d)',
              [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
              keyValue]);
        end; // case2
      2:
        SqlUpdate :=
          Format('UPDATE Assets.BerakAmval SET  FirstDepValue = %s ,DepvalueInYear= %s WHERE (ID = %d)',
          [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
          keyValue]);
      3:
        SqlUpdate :=
          Format('UPDATE Assets.Movement SET FirstDepValue = %s ,DepvalueInYear = %s ,CostValue = %S WHERE (MoveID = %d)',
          [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
          CurrToStr(SumPrice), keyValue]);
    end;
    if SqlUpdate <> EmptyStr then
      Dmf.adcBsell.Execute(SqlUpdate);
    if TimeToDefinitive = 1 then
      Dmf.adcBsell.Execute
        (Format('UPDATE assets.Amval SET AmvalState = 1 WHERE SerialNum =%d ',
        [keyValue]));
  end;
// -----------------------------Procedure Calculate------------------------------
  procedure Cal;
  begin
    StopAssets := False;
    BeforeSerial := 0;
  //  StopDepNo := StrToFloat(Dmf.ReadBankConfig('StopDepNo'));
  //  FirstDepValueActive := StrToBool(Dmf.ReadBankConfig('FirstDepValueActive'));
    with QryCal do
      try
        First;
        DisableControls;
        while not eof do
        begin
          sn := FieldByName('SerialNum').AsInteger;
          if (FieldByName('UniqCode').AsInteger <> BeforeSerial) or
            (FieldByName('Kind').AsInteger <> Kind) then
          begin
            SumFirstDepValue := 0;
            SumDepValueInYear := 0;
            AidFirstDepValue := 0;
            AidDepValueInYear := 0;
            DepValueInYear := 0;
            FirstDepValue := 0;
            SumPrice := FieldByName('AssetsValue').AsCurrency -
              FieldByName('EsqValue').AsCurrency;
            StartUsingDate_U := Shamsi2Miladi(FieldByName('StartUsingDate')
              .AsString) - IfThen(FieldByName('SecondKind')
              .AsInteger = 2, 0, 1);
            StartNowMaliYear := Shamsi2Miladi(FieldByName('StartNowMaliYear')
              .AsString) - IfThen(FieldByName('SecondKind')
              .AsInteger = 2, 0, 1);
            BeforeSerial := FieldByName('UniqCode').AsInteger;
            Kind := FieldByName('Kind').AsInteger;
          end; // if serial
          calculatedate := Shamsi2Miladi(FieldByName('calculatedate').AsString);
          if opt.FirstDepValueActive then
          begin
            FirstDepValue := FieldByName('SecondFirstDepValue').AsCurrency;
            // SumFirstDepValue :=  FieldByName('FirstDepValue').AsCurrency ;
          end
          else
            case FieldByName('DepMode').AsInteger of
              0:
                if (SumPrice <> 0) and (FieldByName('DepValue').AsInteger <> 0)
                then
                  FirstDepValue := Round(IfThen(StopAssets, opt.StopDepNo / 100, 1)
                    * ((IfThen(calculatedate < StartNowMaliYear, calculatedate,
                    IfThen(StartUsingDate_U > StartNowMaliYear,
                    StartUsingDate_U, StartNowMaliYear)) - StartUsingDate_U) /
                    365 * SumPrice / FieldByName('DepValue').AsInteger));
              1:
                begin
                  FirstDepValue := 0;
                  if StartUsingDate_U < StartNowMaliYear then
                  begin
                    CalDateMode1 :=
                      Shamsi2Miladi(FieldByName('NextStartUsingDate')
                      .AsString) - 1;
                    SumPrice := SumPrice - SumFirstDepValue;
                    while CalDateMode1 - 1 <= StartNowMaliYear do
                    begin
                      if (SumPrice <> 0) and
                        (FieldByName('DepValue').AsInteger <> 0) then
                        FirstDepValue :=
                          Round(FirstDepValue + IfThen(StopAssets,
                          opt.StopDepNo / 100, 1) *
                          (IfThen(IsLongYear(CalDateMode1), CalDateMode1 - 1,
                          CalDateMode1) - StartUsingDate_U) / 365 *
                          (SumPrice - FirstDepValue) *
                          (FieldByName('DepValue').AsInteger / 100));
                      StartUsingDate_U := IfThen(IsLongYear(CalDateMode1),
                        CalDateMode1 - 1, CalDateMode1);
                      CalDateMode1 := IncYear(CalDateMode1);
                    end;
                    SumPrice := SumPrice + SumFirstDepValue;
                  end;
                end; // 1
              2:
                begin
                  SumFirstDepValue := 0;
                  SumDepValueInYear := 0;
                end;
            end; // case
          // ------------------------------------------------------------------
          if FirstDepValue + IfThen(opt.FirstDepValueActive, 0, SumFirstDepValue) > SumPrice
          then
          begin
            FirstDepValue := SumPrice - SumFirstDepValue;
            DepValueInYear := 0;
          end
          else if (calculatedate >= StartNowMaliYear) and
            (calculatedate >= StartUsingDate_U) then
          begin
            case FieldByName('DepMode').AsInteger of
              0:
                begin
                  if not opt.FirstDepValueActive then
                    DepValueInYear :=
                      Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                      (calculatedate - StartUsingDate_U) / 365 * SumPrice /
                      FieldByName('DepValue').AsInteger - FirstDepValue)
                  else if (SumPrice <> 0) and
                    (FieldByName('DepValue').AsInteger <> 0) then
                    DepValueInYear :=
                      Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                      (calculatedate - IfThen(StartUsingDate_U >
                      StartNowMaliYear, StartUsingDate_U, StartNowMaliYear)) /
                      365 * SumPrice / FieldByName('DepValue').AsInteger)
                end; // 0
              1:
                begin
                  if (SumPrice <> 0) and (FieldByName('DepValue').AsInteger <> 0)
                  then
                    DepValueInYear :=
                      Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                      (calculatedate - IfThen(StartUsingDate_U >
                      StartNowMaliYear, StartUsingDate_U, StartNowMaliYear)) /
                      365 * (SumPrice - FirstDepValue -
                      IfThen(opt.FirstDepValueActive, 0, SumFirstDepValue)
                      // SumFirstDepValue
                      ) * FieldByName('DepValue').AsInteger / 100);
                end;
              2:
                begin
                  SumFirstDepValue := 0;
                  SumDepValueInYear := 0;
                end;
              7:
                begin
                  DepValueInYear :=
                    Round(((SumPrice - FirstDepValue) / (FieldByName('DepValue')
                    .AsInteger * 365 - IfThen(StartUsingDate_U >
                    StartNowMaliYear, StartUsingDate_U - StartNowMaliYear,
                    StartNowMaliYear - StartUsingDate_U))) *
                    (calculatedate - IfThen(StartUsingDate_U > StartNowMaliYear,
                    StartUsingDate_U, StartNowMaliYear)));
                end;
            end;
            if DepValueInYear >
              (SumPrice - FirstDepValue - IfThen(opt.FirstDepValueActive, 0,
              SumFirstDepValue)) then
              DepValueInYear :=
                (SumPrice - FirstDepValue - IfThen(opt.FirstDepValueActive, 0,
                SumFirstDepValue));
            // Modified by Mehdi 4/5/2015
            if (SumFirstDepValue + SumDepValueInYear + DepValueInYear) >= SumPrice
            then
              DepValueInYear := SumPrice - SumFirstDepValue - SumDepValueInYear;
            // Modified by Mehdi 4/5/2015
          end
          else
            DepValueInYear := 0;
          // -------------------------------------------
          if opt.FirstDepValueActive then
            SumFirstDepValue := FirstDepValue
          else
            SumFirstDepValue := SumFirstDepValue + FirstDepValue;
          SumDepValueInYear := SumDepValueInYear + DepValueInYear;
          StartUsingDate_U := calculatedate - 1;
          if Kind <> 0 then
          begin
            AidFirstDepValue := FieldByName('SecondFirstDepValue').AsCurrency;
            AidDepValueInYear := FieldByName('SecondDepValueInYear').AsCurrency;
            SumFirstDepValue := SumFirstDepValue + AidFirstDepValue;
            SumDepValueInYear := SumDepValueInYear + AidDepValueInYear;
          end; // if
          case FieldByName('SecondKind').AsInteger of
            0:
              begin
                StopAssets := False;
                StartUsingDate_U := calculatedate;
              end; // 0
            1:
              begin
                SumFirstDepValue := SumFirstDepValue - AidFirstDepValue;
                SumDepValueInYear := SumDepValueInYear - AidDepValueInYear;
              end; // 1
            2:
              StopAssets := True;
            4:
              begin
                SumPrice := SumPrice - FieldByName('SecondPrice').AsCurrency;
                if calculatedate < StartNowMaliYear then
                  SumFirstDepValue := SumFirstDepValue
                  // + fieldbyname('SecondFirstDepValue').AsCurrency
                    + FieldByName('SecondDepValueInYear').AsCurrency;
                // else begin
                // SumFirstDepValue := SumFirstDepValue + fieldbyname('SecondFirstDepValue').AsCurrency ;
                // SumDepValueInYear := SumDepValueInYear + fieldbyname('SecondDepValueInYear').AsCurrency ;
                // end ;// if
              end; // 4
          end; // case
          if ((FieldByName('SecondKind').AsInteger = 1) and (Kind = 2)) or
            (FieldByName('SecondKind').AsInteger = 2) then
            UpdateValue(FieldByName('SecondKind').AsInteger,
              FieldByName('Id4Info').AsInteger)
          else
            InsertValue(FieldByName('SecondKind').AsInteger,
              FieldByName('Id4Info').AsInteger);
          // GoProgressBar(IntToStr(RecNo) + '/' + IntToStr(RecordCount));
          SumFirstDepValue := SumFirstDepValue - AidFirstDepValue;
          SumDepValueInYear := SumDepValueInYear - AidDepValueInYear;
          Next;
        end;
      finally
        // CloseMessage;
        EnableControls;
      end;
  end;

begin
  try
    Result := True;
    if not Assigned(QryCal) then
    begin
      for I := 0 to 1 do
        try
          with QryCal do
          begin
            QryCal := TADOQuery.Create(nil);
            Connection := Dmf.adcBsell;
            SQL.Text := 'SELECT  * FROM Assets.' +
              IfThen(I = 0, 'DepProcess(:Basedate, :Yearid) DepProcess',
              'DepProcessOther(:Basedate, :yearid) DepProcessOther');
            SQL.Add('WHERE (SerialNum = :SN) ');
            SQL.Add('ORDER BY Kind, UniqCode, SerialNum, calculatedate, SecondKind');
            Parameters.ParamValues['Basedate'] := BaseDate;
            Parameters.ParamValues['Yearid'] := APPBank.Year;
            Parameters.ParamValues['SN'] := sn;
            Open;
          end;
          Cal
        finally
          FreeAndNil(QryCal);
        end;
    end
    else
    begin
      // BigMessageProgBar('در حال محاسبه ....', QryCal.RecordCount);
      Cal;
    end
  except
    on E: Exception do
    begin
      Result := False;
      Warn('اشكال در محاسبه' + E.Message);
    end;
  end;
end;

{ TAssetsFunctions }

class function TAssetsFunctions.CheckUsingDate(InDate: String;
  sn: Integer): boolean;
begin
  with TADOQuery.Create(nil) do
    try
      Connection := Dmf.adcBsell;
      SQL.Text :=
        'SELECT Count(SerialNum) FROM Assets.Amval WHERE (SerialNum =:Sn) AND (InvoiceDate <= :Date)';
      Parameters[0].Value := sn;
      Parameters[1].Value := InDate;
      Open;
      Result := Fields[0].AsInteger <> 0;
      if not Result then
        Warn('تاريخ وارد شده از تاريخ خريد كوچكتر است');

    finally
      Free;
    end;
end;

class procedure TAssetsFunctions.MakeAssetsYear(NewYear: Integer);
begin
  With TADOStoredProc.Create(nil) do
    try
      Active := False;
      ProcedureName := 'Assets.InsertDepTableOnCreateYearid';
      Connection := Dmf.adcBsell;
      Parameters.AddParameter;
      Parameters.Refresh;
      Parameters.ParamByName('@YearIDfrom').Value := APPBank.Year;
      Parameters.ParamByName('@YearIDto').Value := NewYear;
      try
        ExecProc;
      except
        on E: Exception do
        begin
          add2log(E.Message);
        end;
      end;
    finally
      Free;
    end;
end;

class procedure TAssetsFunctions.MakeSingleAssetsYear(adc: TADOConnection;
  YearId: Integer; CanMove: boolean);

  procedure EmptyTable(TabelName: String);
  var
    Q: TADOQuery;
  const
    SqlTxt = 'DELETE FROM assets.%s';
  begin
    Q := TADOQuery.Create(adc.Owner);
    with Q do
      try
        Q.Connection := adc;
        Q.CommandTimeout := 1000;
        SQL.Text := Format(SqlTxt, [TabelName]);

        ExecSQL;

      finally
        Free;
      end // try
  end;

  procedure EmptyAllTable;
  begin
    EmptyTable('Expenses');
//    EmptyTable('Decrease');
    EmptyTable('Amval');
    EmptyTable('AssetsGroups');
    EmptyTable('AccCtopics');
    EmptyTable('AccTopics');
    EmptyTable('Units');
    EmptyTable('Users');
    EmptyTable('Places');
  end;

var
  QRY: TADOQuery;

begin
  Warn('در دست بررسی');
  Exit;
  if CanMove then
    EmptyAllTable
  else
    try
      // adc.BeginTrans;
      with QRY do
      begin
        Connection := adc;
        Close;
        SQL.Text :=
          'DELETE FROM Assets.Expenses WHERE (((Assets.Expenses.SerialNum) ' +
          'In (SELECT SerialNum FROM Assets.Decrease)))';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text := 'if ((select COUNT(*) from Util.MaliYear) < 2) ' +
          'DELETE FROM Assets.Amval  WHERE (((Assets.Amval.SerialNum) ' +
          'In (SELECT SerialNum FROM Assets.Decrease)))';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text := 'UPDATE Assets.Amval';
        SQL.Add('SET AssetsValue = Assets.Amval.AssetsValue - derivedtbl_1.AssetsValue,');
        SQL.Add('FirstDepValue = Assets.Amval.FirstDepValue + derivedtbl_1.FirstDepValue,');
        SQL.Add('DepvalueInYear = Assets.Amval.DepvalueInYear + derivedtbl_1.DepvalueInYear');
        SQL.Add('FROM Assets.Amval INNER JOIN');
        SQL.Add('(SELECT Assets.AlterAssets.Serial, SUM( Assets.AlterAssets.AlterPrice) AS');
        SQL.Add('AssetsValue, SUM( Assets.AlterAssets.AlterDepValue) AS FirstDepValue,');
        SQL.Add('SUM( Assets.AlterAssets.AlterDepValueInYear) AS');
        SQL.Add('DepvalueInYear');
        SQL.Add('FROM Assets.AlterAssets where AlterAssets.YearID =  '+APPBank.Year.ToString);
        SQL.Add('GROUP BY Assets.AlterAssets.Serial) AS derivedtbl_1 ON Assets.Amval.SerialNum = derivedtbl_1.Serial');

        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text :=
          'UPDATE Assets.Amval SET FirstDepValue = DepvalueInYear + FirstDepValue, DepvalueInYear = 0';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text := 'UPDATE Assets.DepTable ';
        SQL.Add('SET ');
        SQL.Add('FirstDepValue = Assets.DepTable.FirstDepValue - derivedtbl_1.FirstDepValue, ');
        SQL.Add('DepvalueInYear = Assets.DepTable.DepvalueInYear - derivedtbl_1.DepvalueInYear ');
        SQL.Add('FROM Assets.DepTable INNER JOIN ');
        SQL.Add('(SELECT Assets.AlterAssets.Serial, SUM( Assets.AlterAssets.AlterPrice) AS ');
        SQL.Add('AssetsValue, SUM( Assets.AlterAssets.AlterDepValue) AS FirstDepValue, ');
        SQL.Add('SUM( Assets.AlterAssets.AlterDepValueInYear) AS ');
        SQL.Add('DepvalueInYear ');
        SQL.Add('FROM Assets.AlterAssets where AlterAssets.YearID =  '+APPBank.Year.ToString);
        SQL.Add(' GROUP BY Assets.AlterAssets.Serial) AS derivedtbl_1 ON Assets.DepTable.Id4table = derivedtbl_1.Serial');
        SQL.Add(' where Assets.DepTable.Tablename=''Amval''');
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text :=
          'UPDATE Assets.DepTable SET FirstDepValue = DepvalueInYear + FirstDepValue, DepvalueInYear = 0';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text :=
          'UPDATE Assets.Expenses SET FirstDepValue = DepvalueInYear + FirstDepValue, DepvalueInYear = 0';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text :=
          'UPDATE Assets.ReValidateItems SET  FirstDepValue =FirstDepValue+ DepvalueInYear , DepvalueInYear =0;';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text := 'DELETE FROM Assets.BerakAmval';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
        SQL.Text := 'DELETE FROM Assets.DocExports';
        // GoProgressBar(IntToStr(ExecSQL));
        ExecSQL;

        Close;
//        SQL.Text := 'DELETE FROM Assets.AlterAssets ';
  //      ExecSQL;
        // GoProgressBar('');
        Close;
        SQL.Text := Format('UPDATE  Assets.Config SET  BaseDate = ''%d/01/01''',
          [YearId]);
        ExecSQL;
        // GoProgressBar(IntToStr(ExecSQL));

        Close;
        SQL.Text := 'DELETE FROM Util.MaliYear WHERE (YearID <> ' +
          IntToStr(APPBank.Year) + ')';
        ExecSQL;
        // GoProgressBar(IntToStr(ExecSQL));

        Close;
        SQL.Text := 'UPDATE Util.MaliYear' + ' SET YearID = YearID + 1' +
          ' ,StartYear = LTRIM(STR(LEFT(StartYear, 4) + 1) + RIGHT(StartYear, 6))'
          + ' ,EndYear = LTRIM(STR(LEFT(EndYear,4) + 1) + RIGHT(EndYear, 6))' +
          ' WHERE (YearID = ' + IntToStr(APPBank.Year) + ')';
        ExecSQL;
        // GoProgressBar(IntToStr(ExecSQL));

      end; // with
      // Dmf.adcBSell.CommitTrans;
    except
      ON E: Exception do
      begin
        // Dmf.adcBSell.RollbackTrans;
        add2log(E.Message);
        Warn(E.Message);
      end;

    end;
end;

class procedure TAssetsFunctions.SaveBankConfig(OptionName: string;
  OptionValue: string);
begin
  with TADOQuery.Create(Dmf) do
    try
      Connection := Dmf.adcBsell;
      SQL.Text := 'Select * from Assets.Config';
      Open;
      if IsEmpty then
      begin
        Insert;
        Post;
      end; // if
      Edit;
      FieldByName(OptionName).AsString := OptionValue;
      Post;
    finally
      Free;
    end; // try
end;

end.
