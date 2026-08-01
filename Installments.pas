unit Installments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, ADODB,
  DM, GlobalPro, shamsiDate, Mask, DBCtrls, StrUtils, FaraConsts, Grids, DBGrids;

type
  TInstallmentsF = class(TTemplate4F)
    qryInstallment: TADOQuery;
    srcInstallments: TDataSource;
    qryInstallmentReciptID: TLargeintField;
    qryInstallmentInstallmentID: TIntegerField;
    qryInstallmentInstallmentNumber: TIntegerField;
    qryInstallmentdueDate: TDateTimeField;
    qryInstallmentPayPrice: TBCDField;
    qryInstallmentRatePrice: TBCDField;
    qryInstallmentTotalPrice: TBCDField;
    qryRecipts: TADOQuery;
    actCalRatePrice: TAction;
    qryChequeINRecipts: TADOQuery;
    actInstallmentsBooklet: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    qryChequeINReciptsChequeID: TLargeintField;
    qryChequeINReciptsCheckNumber: TWideStringField;
    qryChequeINReciptsCheckDate: TDateTimeField;
    qryChequeINReciptsArzTypeID: TIntegerField;
    qryChequeINReciptsArzAmount: TBCDField;
    qryChequeINReciptsCheckAmount: TBCDField;
    qryChequeINReciptsCheckNote: TWideStringField;
    qryChequeINReciptsBankCode: TIntegerField;
    qryChequeINReciptsAccountNumber: TWideStringField;
    qryChequeINReciptsCurenciesEqual: TBCDField;
    qryChequeINReciptsCurenciesEqual_Div: TFMTBCDField;
    qryChequeINReciptsReciptID: TLargeintField;
    qryReciptsReciptID: TLargeintField;
    qryReciptsYearID: TIntegerField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsStoreID2: TSmallintField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TDateTimeField;
    qryReciptsAidCustomerName2: TWideStringField;
    qryReciptsTopicCode: TIntegerField;
    qryReciptsDC2: TIntegerField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsPersonID3: TIntegerField;
    qryReciptsReciptType: TWordField;
    qryReciptsSecondType: TIntegerField;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsDocSerial: TIntegerField;
    qryReciptsReciptState: TWordField;
    qryReciptsExpireDate: TDateTimeField;
    qryReciptsAidNumber: TStringField;
    qryReciptsAidDate: TDateTimeField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsCashArzAmount: TBCDField;
    qryReciptsCashPrice: TBCDField;
    qryReciptsReciptNote: TWideStringField;
    qryReciptsCurenciesEqual: TFMTBCDField;
    qryReciptsCurrencyEqual_Div: TFMTBCDField;
    qryReciptsPaymentCount: TWordField;
    qryReciptsRatePercent: TBCDField;
    qryReciptsRatePrice: TBCDField;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    qryForms: TADOQuery;
    qryFormsFormID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryFormsCustomerID2: TIntegerField;
    qryFormsAmount: TBCDField;
    qryFormsBudgetCode: TIntegerField;
    qryFormsProjectID: TIntegerField;
    qryFormsTopicCode: TLargeintField;
    qryFormsDetailCode: TStringField;
    qryFormsCTopicCode: TStringField;
    qryFormsFomNote: TStringField;
    qryFormsAidInfoNo: TStringField;
    qryFormsAidInfoDate: TStringField;
    qryFormsCTopicCode2: TStringField;
    qryFormsCustomerName2: TStringField;
    qryFormsPayTypes: TIntegerField;
    qryFormsTopicTypes: TIntegerField;
    qryFormsDocNo: TIntegerField;
    qryFormsDocDate: TStringField;
    qryFormsFormState: TWordField;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    qryFormsModifyDate: TDateTimeField;
    qryFormsReciptID: TIntegerField;
    qryFormsManegerNote: TStringField;
    qryFormsCashCheckFormID: TIntegerField;
    qryFormsSubAmount: TBCDField;
    qryFormsRate: TFloatField;
    qryFormsRelatedID: TIntegerField;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormsSellsMethod: TIntegerField;
    qryFormsSellsEmporium: TIntegerField;
    qryFormsDefaultDate: TStringField;
    qryFormsCustomerID3: TIntegerField;
    qryFormsTransmittal: TIntegerField;
    qryFormsRelatedRecipts: TStringField;
    qryFormsAidFormType: TWordField;
    qryFormsCTopicCode3: TStringField;
    qryFormsArzTypeID: TIntegerField;
    qryFormsArzAmount: TBCDField;
    qryFormsArzRate: TFloatField;
    qryFormsLoansFormID: TIntegerField;
    qryFormsGuaranteesFormID: TIntegerField;
    qryFormsAidInfoNo2: TFloatField;
    qryFormsAidInfoDate2: TStringField;
    qryFormsParentFormID: TIntegerField;
    qryFormsCostFactorsType: TWordField;
    qryFormsCostFactorsCode: TStringField;
    qryFormsUserRegistrationDoc: TStringField;
    qryFormsDefaultDuration: TSmallintField;
    qryFormsOperatorID: TIntegerField;
    procedure actCalRatePriceExecute(Sender: TObject);
    procedure actInstallmentsBookletExecute(Sender: TObject);
    procedure qryChequeINReciptsAfterInsert(DataSet: TDataSet);
  private
    procedure CalculateRatePrice(formulText: string);
    procedure ExportBooklet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InstallmentsF: TInstallmentsF;

implementation

{$R *.dfm}

procedure TInstallmentsF.actCalRatePriceExecute(Sender: TObject);
var
  i, aDate: Integer;
  ComName, FName, ComType, caption, value, formula: string;
  myValue: Double;
  sumCheckPrice, sumChecTopkPrice: Currency;
begin
  inherited;
  formula := Opt.RateFormula;
  with DMF.qryFormula do
  begin
    Open;
    DisableControls;
    First;
    while not Eof do
    begin
      ComName := FieldByName('component').AsString;
      ComType := FieldByName('MyType').AsString;
      FName := FieldByName('fieldname').AsString;
      caption := FieldByName('Caption').AsString;
      if ComType = 'qry' then
      begin
        Edit;
        FieldByName('value').AsFloat := TADOQuery(self.FindComponent(ComName))
          .FieldByName(FName).AsFloat;
        Post;
      end
      else if ComType = 'grd' then
      begin
        Edit;
        // i := TCedarDbgrid(self.FindComponent(ComName)).FieldColumns
        // [FName].Index;
        // if TryStrToFloat(VarToStr(TCedarDbgrid(self.FindComponent(ComName))
        // .Columns[i].Footer.SumValue), myValue) then
        // FieldByName('value').AsFloat := myValue;
        Post;
      end;
      if caption <> 'CheckTop' then
      begin
        value := StringReplace(FieldByName('value').AsString, '/', '.',
          [rfReplaceAll]);
        formula := StringReplace(formula, caption, value, [rfReplaceAll]);
      end;
      Next;
    end;
    EnableControls;
  end;
  if Pos('CheckTop', formula) <> 0 then
  begin
    sumCheckPrice := 0;
    sumChecTopkPrice := 0;
    with qryChequeINRecipts do
    begin
      DisableControls;
      First;

      while not Eof do
      begin
        aDate := StrToInt(DateToStr(qryChequeINReciptsCheckDate.AsDateTime -
          qryReciptsReciptDate.AsDateTime));
        if aDate <= 1 then
          aDate := 1;
        sumCheckPrice := sumCheckPrice + qryChequeINReciptsCheckAmount.
          AsCurrency;
        sumChecTopkPrice := sumChecTopkPrice +
          (qryChequeINReciptsCheckAmount.AsCurrency * aDate);
        Next;
      end;
      EnableControls;
      if sumChecTopkPrice <> 0 then
      begin
        value := CurrToStr(sumChecTopkPrice / sumCheckPrice);
        value := StringReplace(FieldByName('value').AsString, '/', '.',
          [rfReplaceAll]);
        formula := StringReplace(formula, 'CheckTop', value, [rfReplaceAll]);
      end
      else
        formula := StringReplace(formula, 'CheckTop', '1', [rfReplaceAll]);
    end;
  end;
  CalculateRatePrice(formula);

end;

procedure TInstallmentsF.actInstallmentsBookletExecute(Sender: TObject);
begin
  inherited;
  if (Trim(MaskEdit1.Text) = '/  /') or
    (MaskEdit1.Text <= qryReciptsReciptDate.AsString) then
  begin
    Warn('تاریخ معتبر نیست');
    exit;
  end;
  if (qryReciptsPaymentCount.IsNull) or
    (qryReciptsPaymentCount.AsInteger = 0) then
  begin
    Warn('تعداد اقساط معتبر نیست');
    exit;
  end;
  if get_response('آیا برای صدور دفترچه قسط مطمئن هستید') <> mrYes then
    exit;
  actCalRatePrice.Execute;
  ExportBooklet;
end;

procedure TInstallmentsF.ExportBooklet;
var
  aPurTotalPrice, aCashPrice, aCheckAmount, aDeficitValue, aRemainingTotal,
    ainstallmentAmount, rateAmount, LastAmount, LastRateAmount: Currency;
  aDate, yDate, dDate: string;
  mDate, DateGap, aCount, i: Integer;
begin
  aPurTotalPrice := 0;
  aCashPrice := 0;
  aCheckAmount := 0;
  aDeficitValue := 0;
  aRemainingTotal := 0;
  ainstallmentAmount := 0;
  with DMF.qryFormula do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('fieldname').AsString = 'PurTotalPrice' then
        aPurTotalPrice := FieldByName('value').AsFloat
      else if FieldByName('fieldname').AsString = 'CashPrice' then
        aCashPrice := FieldByName('value').AsFloat
      else if FieldByName('fieldname').AsString = 'CheckAmount' then
        aCheckAmount := FieldByName('value').AsFloat
      else if FieldByName('fieldname').AsString = 'DeficitValue' then
        aDeficitValue := FieldByName('value').AsFloat;
      Next;
    end;
    EnableControls;
  end;

  aCount := qryReciptsPaymentCount.AsInteger;
  aDate := MaskEdit1.Text;
  aRemainingTotal := aPurTotalPrice -
    (aCashPrice + aCheckAmount + aDeficitValue);
  ainstallmentAmount := Round(aRemainingTotal / aCount);
  LastAmount := aRemainingTotal - (ainstallmentAmount * (aCount - 1));
  rateAmount := Round(qryReciptsRatePrice.AsCurrency / aCount);
  LastRateAmount := qryReciptsRatePrice.AsCurrency -
    (rateAmount * (aCount - 1));

  case ComboBox1.ItemIndex of
    0:
      DateGap := 1;
    1:
      DateGap := 2;
    2:
      DateGap := 3;
  end;
  with qryInstallment do
  begin
    for i := 1 to aCount - 1 do
    begin
      Insert;
      qryInstallmentInstallmentNumber.AsInteger := i;
      qryInstallmentdueDate.Asstring := aDate;
      qryInstallmentPayPrice.AsCurrency := ainstallmentAmount;
      qryInstallmentRatePrice.AsCurrency := rateAmount;
      Post;
      yDate := AnsiLeftStr(aDate, 4);
      dDate := AnsiRightStr(aDate, 3);
      mDate :=StrToInt( (AnsiMidStr(aDate, 6, 2)));
      mDate := mDate + DateGap;
      if mDate > 12 then
      begin
        mDate := mDate - 12;
        yDate := IntToStr(StrToInt( yDate) + 1);
      end;
      aDate := yDate + '/' + Format('%.2d', [mDate]) + dDate;
    end;
    Insert;
    qryInstallmentInstallmentNumber.AsInteger := i;
    qryInstallmentdueDate.Asstring :=aDate;
    qryInstallmentPayPrice.AsCurrency := LastAmount;
    qryInstallmentRatePrice.AsCurrency := LastRateAmount;
    Post;
  end;
end;

procedure TInstallmentsF.CalculateRatePrice(formulText: string);
var
  qry: TADOQuery;
begin
  if formulText = EmptyStr then
  begin
    Warn('فرمول نرخ در تنظیمات سیستم اصلاح شود');
    qryReciptsRatePrice.AsCurrency := 0;
    exit;
  end;
  qry := TADOQuery.Create(nil);
  with qry do
    try
      Close;
      Connection := theMainConnection;
      SQL.Text := 'select ' + formulText + ' ';
      Open;

      qryReciptsRatePrice.AsCurrency := Round(Fields[0].AsCurrency);
      Free;
    except
      Warn('فرمول نرخ در تنظیمات سیستم اصلاح شود');
      qryReciptsRatePrice.AsCurrency := 0;
      qry.Free;
    end;
end;

procedure TInstallmentsF.qryChequeINReciptsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryChequeINReciptsReciptID.AsInteger := qryReciptsReciptID.AsInteger;

end;

end.
