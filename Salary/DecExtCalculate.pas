// Mostafa
unit DecExtCalculate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2, Grids, Vcl.DBGrids, StdCtrls, ExtCtrls, DBActns,
  ActnList, Buttons, DB, ADODB, Mask, DBClient, Provider, DBCtrls,
  ComCtrls, MyComboBoxUnit, System.Actions,Filter_ADO_Const;

type

  TDecExtCalculateF = class(Ttemplate2F)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    lblYears: TLabel;
    qryDecExtCal: TADOQuery;
    srcDecExtCal: TDataSource;
    DataSetProvider1: TDataSetProvider;
    cliDecExtCal: TClientDataSet;
    cliDecExtCalPersonelNo: TIntegerField;
    cliDecExtCalNationalID: TStringField;
    cliDecExtCalIDNumber: TStringField;
    cliDecExtCalSupPepNumber: TSmallintField;
    actCal: TAction;
    actPrint: TAction;
    actSaveData: TAction;
    actSendToExcel: TAction;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    cliDecExtCalBasePrice: TBCDField;
    cliDecExtCalname_L1: TStringField;
    cliDecExtCalname_L2: TStringField;
    cliDecExtCalfatherName_L1: TStringField;
    cliDecExtCalfatherName_L2: TStringField;
    chkSponsorship: TCheckBox;
    cliDecExtCal_Cal: TCurrencyField;
    Panel4: TPanel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    edtCaption: TDBEdit;
    DBNavigator1: TDBNavigator;
    cliDecExtCal_Selected: TBooleanField;
    qryMaster: TADOQuery;
    qryMasterFormInfoID: TIntegerField;
    qryMasterFormType: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryMasterInfoName_L2: TStringField;
    srcMaster: TDataSource;
    qryInitForm: TADOQuery;
    qryPersonelDec: TADOQuery;
    qryPersonelDecDecExtID: TIntegerField;
    qryPersonelDecFormInfoID: TIntegerField;
    qryPersonelDecPersonelNo: TIntegerField;
    qryPersonelDecEmployeeAmount: TBCDField;
    qryPersonelDecFirstMounth: TWordField;
    qryPersonelDecEndMounth: TWordField;
    qryPersonelDecAidNo1: TStringField;
    qryPersonelDecAidNo2: TStringField;
    qryPersonelDecDayQuntity: TFloatField;
    qryPersonelDecDayTime: TFloatField;
    qryPersonelDecEmployerAmount: TBCDField;
    qryPersonelDecFormInfoID2: TIntegerField;
    qryPersonelDecAccTopicCode: TIntegerField;
    qryPersonelDecAccDetailCode: TIntegerField;
    qryPersonelDecAccCTopicCode: TIntegerField;
    qryPersonelDecAccCTopicCode2: TIntegerField;
    qryPersonelDecPaymentLoan: TBCDField;
    srcPersonelDec: TDataSource;
    DBGrid1: TDBGrid;
    Image3: TImage;
    Image2: TImage;
    qryPersonelDecAidDate1: TStringField;
    qryPersonelDecAidDate2: TStringField;
    StatusBar1: TStatusBar;
    qryPersonelDecAccCTopicCode3: TIntegerField;
    qryCalculateWage: TADOQuery;
    dsCalculateWage: TDataSource;
    qryLookUp: TADOQuery;
    qryCalculateWageSalaryID: TIntegerField;
    qryCalculateWageAmount: TFloatField;
    qryCalculateWage_CaptionName: TStringField;
    pnlCalculateWage: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    qryCalc: TADOQuery;
    pb1: TProgressBar;
    Panel5: TPanel;
    lblMo: TLabel;
    cmbMounthFrom: TComboBox;
    cmbMounthTo: TComboBox;
    lblMoTo: TLabel;
    qryPersonelDecYearID: TIntegerField;
    qryPersonelDecStartYear: TIntegerField;
    qryPersonelDecEndYear: TIntegerField;
    cliDecExtCalOfficeCode: TIntegerField;
    cliDecExtCalOfficeInfoID: TIntegerField;
    qryPersonelDecOfficeCode: TIntegerField;
    qryPersonelDecOfficeInfoID: TIntegerField;
    qryFunctionsSum: TADOQuery;
    Panel7: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cmbMounthCalcFrom: TComboBox;
    cmbMounthCalcTo: TComboBox;
    Panel8: TPanel;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    cliDecExtCal_FunctionDay: TIntegerField;
    qry_initqryFunctionsSum: TADOQuery;
    Panel9: TPanel;
    btnDel: TBitBtn;
    chkSumSickDay: TCheckBox;
    yrcmbxFrom: TYearComboBox;
    yrcmbxTo: TYearComboBox;
    pnldfdsf: TPanel;
    actFilter: TAction;
    BitBtn9: TBitBtn;
    Panel10: TPanel;
    mskPercent: TMaskEdit;
    lblPercent: TLabel;
    medtCo: TMaskEdit;
    mskAidDate2_L1: TMaskEdit;
    mskAidNo2_L1: TMaskEdit;
    mskAidDate1_L1: TMaskEdit;
    mskAidNo1_L1: TMaskEdit;
    mskRound: TMaskEdit;
    lblCo: TLabel;
    lblAidNo2: TLabel;
    lblAidDate2_L1: TLabel;
    lblAidDate1_L1: TLabel;
    lblAidNo1_L1: TLabel;
    lblRound: TLabel;
    lblFilterCation: TLabel;
    Splitter1: TSplitter;
    dbmmo_TxtNum: TDBMemo;
    cliDecExtCal_TxtStr: TStringField;
    cliDecExtCal_TxtNum: TStringField;
    dbmmo_TxtStr: TDBMemo;
    qryPersonelDecNote_L1: TWideStringField;
    qryPersonelDecNote_L2: TWideStringField;
    procedure actCalExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbMounthFromChange(Sender: TObject);
    procedure qryDecExtCalAfterOpen(DataSet: TDataSet);
    procedure actSaveDataExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cliDecExtCalAfterOpen(DataSet: TDataSet);
    procedure _actSortExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbMounthCalcFromChange(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure dbmmo_TxtNumClick(Sender: TObject);
    procedure cliDecExtCalAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    FormType: Byte;
    StandaredDay: Integer;
    OrginSQL: string;
    chkInsertAcc: Boolean;
    TopicKind, DetailKind, CTopicKind, CTopicKind2, CTopicKind3: Integer;
    function Calculator: Boolean;
    function CalculatorBasePrice: Currency;
    procedure initForm;
    procedure SaveData;
    function AddJSON(JCaption, JText: string; AddCuma: string = ','): string;
  public
    { Public declarations }
  end;

var
  DecExtCalculateF: TDecExtCalculateF;

implementation

uses DM, Math, GlobalPro, mmessage, search1, sort, filter_ADO,
  FilterClass_ADO, searchCode_ADO, SalaryFunctions;

{$R *.dfm}

procedure TDecExtCalculateF.actCalExecute(Sender: TObject);
begin
  inherited;
  if Calculator then
    BigMessage('محاسبه شد ', 1)
end;

procedure TDecExtCalculateF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  mskRound.Enabled := (Sender as TRadioGroup).ItemIndex <> 1;
  lblRound.Enabled := mskRound.Enabled;
  pnlCalculateWage.Visible := (Sender as TRadioGroup).ItemIndex = 2;
  if pnlCalculateWage.Visible then
  begin
    qryCalculateWage.Active := False;
    qryCalculateWage.Active := True;
  end;
end;

procedure TDecExtCalculateF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  OrginSQL := qryDecExtCal.SQL.Text;

  cmbMounthTo.Items := cmbMounthFrom.Items;
  cmbMounthCalcFrom.Items := cmbMounthFrom.Items;
  cmbMounthCalcFrom.Items.Insert(0, 'غیر فعال');
  cmbMounthCalcFrom.Items.Add('فرم كاركرد سال جاري');
  cmbMounthCalcTo.Items := cmbMounthCalcFrom.Items;

  cmbMounthFrom.ItemIndex := var_glb_CurrentMonth - 1;
  cmbMounthTo.ItemIndex := var_glb_CurrentMonth - 1;

  initForm;
  cmbMounthTo.Enabled := not(FormType in [23, 43, 58]);
end;

procedure TDecExtCalculateF.cmbMounthCalcFromChange(Sender: TObject);
begin
  inherited;
  if (cmbMounthCalcFrom.ItemIndex < 13) and (cmbMounthCalcTo.ItemIndex < 13)
  then
  begin
    With qryFunctionsSum do
    begin
      Active := False;
      SQL.Text := 'SELECT PersonelNo, SumFunctionDay,SumSickDay';
      SQL.Add('FROM Pay.FunctionsSum(:MounthFROM, :MounthTo , :YearIDFrom , :YearIDTo ) AS FunctionsSum_1');
      Parameters.ParamByName('MounthFROM').Value := cmbMounthCalcFrom.ItemIndex;
      Parameters.ParamByName('MounthTo').Value := cmbMounthCalcTo.ItemIndex;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
      Active := (cmbMounthCalcFrom.ItemIndex > 0) and
        (cmbMounthCalcTo.ItemIndex > 0);
    end;
    StandaredDay := GetStandaredDay(cmbMounthCalcFrom.ItemIndex,
      cmbMounthCalcTo.ItemIndex)

  end
  else
  begin
    StandaredDay := 1;
    with qry_initqryFunctionsSum do
    begin
      Active := False;
      Active := True;
      if FieldByName('forminfoid').IsNull then
        Warn('كاركرد سال جاري در تنظيمات فعال نشده.‏', mtInformation);
    end;
    with qryFunctionsSum do
    begin
      Active := False;
      SQL.Text := 'SELECT PersonelNo, SUM(DayQuntity) AS SumFunctionDay';
      SQL.Add('FROM Pay.PersonelDecExt');
      SQL.Add('WHERE (FirstMounth = 13) AND (EndMounth = 13) ');
      SQL.Add('AND (FormInfoID = :FormInfoID) ');
      SQL.Add('AND (YearID BETWEEN :YearIDFrom AND :YearIDTo) ');
      SQL.Add('AND (StartYear = :StartYear)');
      SQL.Add('GROUP BY PersonelNo');
      Parameters.ParamByName('FormInfoID').Value :=
        qry_initqryFunctionsSum.FieldByName('FormInfoID').AsInteger;
      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
      Parameters.ParamByName('StartYear').Value := APPBank.Year;
      Active := True;
    end;
  end;
  setColumns2(DBGrid1, qryFunctionsSum.Active, '_FunctionDay');
end;

procedure TDecExtCalculateF.cmbMounthFromChange(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := Format('%.2d/%.2d', [APPBank.Year, cmbMounthFrom.ItemIndex + 1]);
  with qryDecExtCal do
  begin
    Active := False;
    SQL.Text := OrginSQL;
    SQL.Text := StringReplace(SQL.Text, ':PersonelStateFrom',
      GetcFrom(myParams.ParamValues['PersonelState'], ftString),
      [rfReplaceAll]);
    Parameters.ParamByName('PersonelNoForm').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('YearMonth').Value := s;

    Parameters.ParamByName('InterTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['InterType'], ftInteger);
    Parameters.ParamByName('InterTypeTo').Value :=
      GetcTo(myParams.ParamValues['InterType'], ftInteger);

    Active := True;
  end; // with
  with qryCalc do
  begin
    GetYearMounth(cmbMounthFrom.ItemIndex + 1);
    Parameters.ParamByName('YearMounth1').Value := optP.YearMounth;
    Parameters.ParamByName('YearMounth2').Value := optP.YearMounth;
  end;
end;

procedure TDecExtCalculateF.qryDecExtCalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliDecExtCal.Active := False;
  cliDecExtCal.Active := True;
end;

function TDecExtCalculateF.Calculator: Boolean;
var
  c: Currency;
  coRud, SumFunctionDay: Integer;
  TxtStr, TxtNum: string;
begin
  Result := False;
  if ((Trim(mskPercent.Text) = '') or (StrToFloat(Trim(mskPercent.Text)) > 100))
    and (RadioGroup1.ItemIndex <> 1) then
  begin
    Warn(lblPercent.Caption + ' وارد نشده است.‏' + #13#10 +
      'یا بزرگتر از 100 است');
    FlashAControl(mskPercent);
    mskPercent.SetFocus;
    exit;
  end; // if
  if (RadioGroup1.ItemIndex <> 1) and (Trim(mskRound.Text) = '') or
    (Trim(mskRound.Text) = '0') then
  begin
    Warn('روند بريال وارد نشده است.‏');
    FlashAControl(mskRound);
    mskRound.SetFocus;
    exit;
  end; // if
  if (qryCalculateWage.State in dsEditModes) then
    qryCalculateWage.Post;
  with cliDecExtCal do
  begin
    pb1.Max := RecordCount;
    pb1.Position := 0;
    try
      First;
      DisableControls;
      while not Eof do
      begin
        c := round((CalculatorBasePrice * IfThen(chkSponsorship.Checked,
          FieldByName('SupPepNumber').AsCurrency, 1)));
        Edit;

        if chkSponsorship.Checked then
        begin
          TxtStr := 'مبلغ پایه* تعداد فرزند';
          TxtNum := Format('(%m) * (%m)', [CalculatorBasePrice,
            IfThen(chkSponsorship.Checked, FieldByName('SupPepNumber')
            .AsCurrency, 1)])

        end
        else
        begin
          TxtStr := 'مبلغ پایه';
          TxtNum := Format('(%m)', [CalculatorBasePrice]);
        end;

        With qryFunctionsSum do
        begin
          if Active then
          begin
            if Locate('PersonelNo', cliDecExtCalPersonelNo.AsInteger, []) then
            begin
              if chkSumSickDay.Checked then
              begin
                SumFunctionDay := FieldByName('SumFunctionDay').AsInteger +
                  FieldByName('SumSickDay').AsInteger;

                TxtStr := TxtStr +
                  ' * (تعداد روز های کارکرد و بیماری/روزهای استاندارد)';
                TxtNum := TxtNum + Format(' * ((%d) +(%d)/(%d))',
                  [FieldByName('SumFunctionDay').AsInteger,
                  FieldByName('SumSickDay').AsInteger, StandaredDay]);
              end
              else
              begin
                SumFunctionDay := FieldByName('SumFunctionDay').AsInteger;
                TxtStr := TxtStr + ' * تعداد روز های کارکرد/روزهای استاندارد)';

                TxtNum := TxtNum + Format(' * (%d)/(%d))',
                  [FieldByName('SumFunctionDay').AsInteger, StandaredDay]);

              end;
              c := RoundTo(c * SumFunctionDay / StandaredDay, 0);
              cliDecExtCal_FunctionDay.AsInteger := SumFunctionDay;
            end;
          end;
        end;

        c := round(c * StrToCurrDef(Trim(mskPercent.Text), 1)) / 100;

        TxtStr := TxtStr + ' * درصد / ريال';
        TxtNum := TxtNum + Format(' *(%s)', [mskPercent.Text]);

        c := round(c * StrToFloat(Trim(medtCo.Text)));

        TxtStr := TxtStr + ' * ضریب ثابت';
        TxtNum := TxtNum + Format(' * (%s)', [medtCo.Text]);

        if (RadioGroup1.ItemIndex <> 1) then
        begin
          coRud := StrToInt(Trim(mskRound.Text));
          c := coRud * floor(c / coRud);
          TxtStr := TxtStr + ' اعمال رند بریال';
          TxtNum := TxtNum + Format('(%s)', [mskRound.Text]);
        end
        else
        begin
          c := RoundTo(StrToCurrDef(Trim(mskPercent.Text), 0), 0);
          TxtStr := ' مبلغ ثابت';
          TxtNum := Format('(%s)', [mskPercent.Text]);

        end;

        cliDecExtCal_TxtStr.AsString := TxtStr;
        cliDecExtCal_TxtNum.AsString := TxtNum;

        cliDecExtCal_Cal.AsCurrency := c;

        Post;
        pb1.StepIt;
        Next;

      end;
      Result := True;
    finally
      First;
      EnableControls;
      actSaveData.Enabled := True;
    end;
  end;
end;

function TDecExtCalculateF.CalculatorBasePrice;
begin
  Result := cliDecExtCal.FieldByName('BasePrice').AsCurrency;
  if (RadioGroup1.ItemIndex <> 2) then
    exit;
  With qryCalc do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value :=
      cliDecExtCal.FieldByName('PersonelNo').AsInteger;
    Active := True;
    Result := FieldByName('Amount').AsCurrency;
  end;
end;

procedure TDecExtCalculateF.SaveData;
var
  DecExtID: Integer;
begin
  with cliDecExtCal do
  begin
    try
      Filter := '_Selected = true';
      Filtered := True;
      if IsEmpty then
      begin
        Warn('ركوردي براي ذخيره انتخاب نشده');
        exit;
      end;
      // if
    finally
      Filtered := False;
    end; // try
  end; // with
  // BigMessageProgBar('در حال ثبت موارد انتخاب شده...',cliDecExtCal.RecordCount);
  pb1.Max := cliDecExtCal.RecordCount;
  pb1.Position := 0;
  with qryPersonelDec do
    try
      Active := False;
      Parameters.ParamByName('Person').Value :=
        cliDecExtCal.FieldByName('PersonelNo').AsInteger;
      Parameters.ParamByName('FormInfo').Value :=
        qryMaster.FieldByName('FormInfoID').AsInteger;
      Parameters.ParamByName('Mounth').Value := cmbMounthFrom.ItemIndex + 1;
      Active := True;
      cliDecExtCal.First;
      cliDecExtCal.DisableControls;
      DecExtID := GetANewCode('','Pay.PersonelDecExt', 'DecExtID');
      while not cliDecExtCal.Eof do
      begin
        if cliDecExtCal_Selected.AsBoolean then
        begin
          Insert;
          FieldByName('DecExtID').AsInteger := DecExtID;

          FieldByName('YearID').AsInteger := APPBank.Year;
          FieldByName('StartYear').AsInteger := yrcmbxFrom.YearID;
          FieldByName('EndYear').AsInteger := yrcmbxTo.YearID;

          FieldByName('FormInfoID').AsInteger :=
            qryMaster.FieldByName('FormInfoID').AsInteger;
          FieldByName('PersonelNo').AsInteger :=
            cliDecExtCal.FieldByName('PersonelNo').AsInteger;
          FieldByName('EmployeeAmount').AsInteger :=
            cliDecExtCal.FieldByName('_Cal').AsInteger;
          FieldByName('FirstMounth').AsInteger := cmbMounthFrom.ItemIndex + 1;
          if cmbMounthTo.Enabled then
            FieldByName('EndMounth').AsInteger := cmbMounthTo.ItemIndex + 1
          else
            FieldByName('EndMounth').AsInteger := cmbMounthFrom.ItemIndex + 1;

          FieldByName('AidNo1').AsInteger :=
            StrToIntDef(Trim(mskAidNo1_L1.Text), 0);
          FieldByName('AidNo2').AsInteger :=
            StrToIntDef(Trim(mskAidNo2_L1.Text), 0);
          FieldByName('AidDate1').AsString := Trim(mskAidDate1_L1.Text);
          FieldByName('AidDate2').AsString := Trim(mskAidDate2_L1.Text);

          FieldByName('OfficeCode').AsInteger :=
            cliDecExtCalOfficeCode.AsInteger;
          FieldByName('OfficeInfoID').AsInteger :=
            cliDecExtCalOfficeInfoID.AsInteger;

          qryPersonelDecNote_L1.AsString := cliDecExtCal_TxtStr.AsString;
          qryPersonelDecNote_L2.AsString := cliDecExtCal_TxtNum.AsString;

          if chkInsertAcc then
          begin
            if (TopicKind = 2) or (TopicKind = 5) then
              FieldByName('AccTopicCode').AsInteger :=
                Calculate_AccCode(1, TopicKind,
                qryMaster.FieldByName('FormInfoID').AsInteger);
            if (DetailKind = 2) or (DetailKind = 5) then
              FieldByName('AccDetailCode').AsInteger :=
                Calculate_AccCode(2, DetailKind,
                qryMaster.FieldByName('FormInfoID').AsInteger);
            if (CTopicKind = 2) or (CTopicKind = 5) then
              FieldByName('AccCTopicCode').AsInteger :=
                Calculate_AccCode(3, CTopicKind,
                qryMaster.FieldByName('FormInfoID').AsInteger);
            if (CTopicKind2 = 2) or (CTopicKind2 = 5) then
              FieldByName('AccCTopicCode2').AsInteger :=
                Calculate_AccCode(4, CTopicKind2,
                qryMaster.FieldByName('FormInfoID').AsInteger);

            if (CTopicKind3 = 2) or (CTopicKind3 = 5) then
              FieldByName('AccCTopicCode3').AsInteger :=
                Calculate_AccCode(5, CTopicKind3,
                qryMaster.FieldByName('FormInfoID').AsInteger);
          end;

          Post;
        end; // if
        // GoProgressBar(IntToStr(RecNo));
        Inc(DecExtID);
        cliDecExtCal.Next;
        pb1.StepIt;
      end; // while
      try
        UpdateBatch;
        BigMessage('ثبت شد', 1);
      except
        on E: Exception do
        begin
          Warn('اشكال در ثبت' + #13#10 + E.Message);
        end;
      end; // try
    finally
      cliDecExtCal.First;
      cliDecExtCal.EnableControls;
      actSaveData.Enabled := True;
      Active := False;
      CloseMessage;
    end;
  // try
end;

procedure TDecExtCalculateF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل', 'كد', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3) ',
        '');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'InterType', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        lblFilterCation.Caption := GetFilterStringCaption;
        cmbMounthFromChange(cmbMounthFrom);
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TDecExtCalculateF.actSaveDataExecute(Sender: TObject);
begin
  inherited;
  SaveData;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TDecExtCalculateF.initForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    // ---------------------------SetLabelAid------------------------------------
    lblAidNo1_L1.Caption := ' شماره ' + FieldByName('AidInfo1Caption').AsString;
    lblAidDate1_L1.Caption := ' تاريخ ' +
      FieldByName('AidInfo1Caption').AsString;
    lblAidNo2.Caption := ' شماره ' + FieldByName('AidInfo2Caption').AsString;
    lblAidDate2_L1.Caption := ' تاريخ  ' +
      FieldByName('AidInfo2Caption').AsString;
    Caption := Caption + '->' + FieldByName('FormCaption_L1').AsString;

    chkInsertAcc := qryInitForm.FieldByName('InsertAccCode').AsBoolean;
    TopicKind := qryInitForm.FieldByName('TopicCodeKind').AsInteger;
    DetailKind := qryInitForm.FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := qryInitForm.FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := qryInitForm.FieldByName('CTopicCode2Kind').AsInteger;

  end;
  // with

  yrcmbxFrom.YearsParam := APPBank.Year;
  yrcmbxFrom.YearID := APPBank.Year;

  yrcmbxTo.YearsParam := 0;
  yrcmbxTo.YearID := APPBank.Year;

  with qryMaster do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
  end;
  // with
  lblYears.Caption := 'سال ' + IntToStr(APPBank.Year);
end;

procedure TDecExtCalculateF.dbmmo_TxtNumClick(Sender: TObject);
begin
  inherited;
  // Memo1.Lines.Clear;
  // Memo1.Lines.Add('{');
  // Memo1.Lines.Add(AddJSON(lblMo.Caption, cmbMounthFrom.Text));
  // Memo1.Lines.Add(AddJSON(lblMoTo.Caption, cmbMounthTo.Text));
  // Memo1.Lines.Add(AddJSON(RadioGroup1.Caption,
  // RadioGroup1.Items[RadioGroup1.ItemIndex]));
  //
  // Memo1.Lines.Add('"ar2": [    "ss",    "sss"  ]');
  // Memo1.Lines.Add(',');
  // Memo1.Lines.Add('"a1": [    "aaa",    "aaa2"  ]');
  // Memo1.Lines.Add('}');
  // if qryCalculateWage.Active then
  // Memo1.Lines.Add(qryCalculateWage.ToJSONArrayF(qryCalculateWage_CaptionName,
  // qryCalculateWageAmount).ToString);

  // JSONTreeView1.ClearAll;
  /// /  JSONDocument1.JsonText := UTF8ToUnicodeString(Memo1.Lines.Text);
  // JSONDocument1.JsonText := UTF8ToString(Memo1.Lines.Text);
  // JSONTreeView1.LoadJson;
end;

function TDecExtCalculateF.AddJSON(JCaption, JText: string;
  AddCuma: string = ','): string;
begin
  Result := '"' + JCaption + '":"' + JText + '"' + AddCuma
end;

procedure TDecExtCalculateF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SaveData;
end;

procedure TDecExtCalculateF.btnDelClick(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف اين عنوان مطمئن هستيد؟') = mrYes then
    qryCalculateWage.Delete
end;

procedure TDecExtCalculateF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliDecExtCal do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_Selected').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with

end;

procedure TDecExtCalculateF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliDecExtCal do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_Selected').AsBoolean := not FieldByName('_Selected')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with

end;

procedure TDecExtCalculateF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliDecExtCal_Selected.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TDecExtCalculateF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with cliDecExtCal do
  begin
    Edit;
    FieldByName('_Selected').AsBoolean := not FieldByName('_Selected')
      .AsBoolean;
    Post;
  end; // with

end;

procedure TDecExtCalculateF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDecExtCalculateF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True, IntToStr(FormType));
end;

procedure TDecExtCalculateF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TDecExtCalculateF.cliDecExtCalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := 'تعداد = ' + IntToStr(DataSet.RecordCount)
end;

procedure TDecExtCalculateF.cliDecExtCalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.Hint := cliDecExtCal_TxtStr.AsString + #13#10 +
    cliDecExtCal_TxtNum.AsString
end;

procedure TDecExtCalculateF._actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliDecExtCal);
end;

procedure TDecExtCalculateF._actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliDecExtCal);
end;

procedure TDecExtCalculateF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, cliDecExtCalPersonelNo);
end;

procedure TDecExtCalculateF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('PersonelState') = nil then
    close;
end;

procedure TDecExtCalculateF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID,InfoName_L1,InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE (FormType = ' +
    IntToStr(qryMaster.Parameters.ParamByName('type').Value) + ') ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' سطح‏هاي قبلي  ', Txt,
    ['', 'كد', 'نام 1', 'نام 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryMaster.Locate('FormInfoID', Results[0], []);
end;

procedure TDecExtCalculateF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  with TADOQuery.Create(DecExtCalculateF) do
    try
      close;
      Connection := DMf.adcSalary;
      SQL.Text := 'INSERT INTO Pay.CalculateWage(SalaryID,Amount)';
      SQL.Add('SELECT DISTINCT InterdictItems.SalaryID, 0 AS Amount');
      SQL.Add('FROM Pay.InterdictItems INNER JOIN');
      SQL.Add('Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID INNER JOIN');
      SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID LEFT OUTER JOIN');
      SQL.Add('CalculateWage ON FormsInfo.FormInfoID = CalculateWage.SalaryID');
      SQL.Add('WHERE (Interdicts.State < 50) AND (CalculateWage.SalaryID IS NULL)');
      ExecSQL;
    finally
      Free;
    end;
  qryCalculateWage.Requery;

end;

end.
