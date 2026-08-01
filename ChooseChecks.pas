unit ChooseChecks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, Menus, ppParameter, Math, ppDesignLayer,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TChooseChecksF = class(TTemplate5F)
    qryChecks: TADOQuery;
    srcChecks: TDataSource;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    qryInsert: TADOQuery;
    CheckBox1: TCheckBox;
    chkNote: TCheckBox;
    actFilter: TAction;
    btnFilter: TBitBtn;
    qryChecksFormItemID: TIntegerField;
    qryChecksCheckNumber: TStringField;
    qryChecksCheckDate: TStringField;
    qryChecksBankName: TStringField;
    qryChecksAccountNumber: TStringField;
    qryChecksItemAmount: TBCDField;
    qryChecksItemNote: TStringField;
    qryChecksFormNumber: TIntegerField;
    qryChecksFormDate: TStringField;
    qryChecksCustName: TStringField;
    qryChecksCustomerID2: TIntegerField;
    qryChecksCustName2: TStringField;
    qryChecksFormType: TSmallintField;
    qryChecksFormCaption: TStringField;
    qryChecksAccountNumberNew: TStringField;
    qryChecksCustomerID1: TIntegerField;
    qryCheckspreFormItemID: TIntegerField;
    qryChecksBudgetCode: TIntegerField;
    qryChecksAmountArz: TFloatField;
    qryChecksCashWage: TBCDField;
    qryChecksPayTypes: TIntegerField;
    qryChecksTopicTypes: TIntegerField;
    qryChecksTopicTypesI: TIntegerField;
    qryChecks_checked: TBCDField;
    qryChecks_RowID: TBCDField;
    qryChecksAmountDelayOzviyat: TBCDField;
    qryChecksDayDelay2: TIntegerField;
    qryChecksItemAmount_CashWage: TBCDField;
    qryChecksServerID: TIntegerField;
    qryChecksAmountDelay: TBCDField;
    qryChecksDayDelay: TIntegerField;
    qryChecksAmountDelay2: TBCDField;
    qryChecksFormID: TIntegerField;
    qryChecksCheckCounter: TIntegerField;
    qryChecksYearID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryChecksMTopicCode: TLargeintField;
    qryChecksMDetailCode: TStringField;
    qryChecksMCTopicCode: TStringField;
    qryChecksMCTopicCode2: TStringField;
    qryChecksMCTopicCode3: TStringField;
    qryChecksTopicCode: TLargeintField;
    qryChecksDetailCode: TStringField;
    qryChecksCTopicCode: TStringField;
    qryChecksCTopicCode2: TStringField;
    qryChecksCTopicCode3: TStringField;
    qryChecksCustName1: TStringField;
    chkSumActive: TCheckBox;
    qryChecksAidInfoNo: TStringField;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
  private
    qrySum: TADOQuery;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked: Integer;
    OrgSQL: String;
    _RowID: Integer;
    FormTypes: string;
    LoanActive_: Boolean;
    CopyAccOnRecall: Largeint;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure CalculateSumChecks;
    procedure UpdateList;
    function setTStringField(f: TStringField): string;
    { Private declarations }
  public
    function SelectChecks(qryInitQry: TADOQuery; SqlFilter: String;
      qryForms, qryItmes: TADOQuery; LoanActive: Boolean = false): Boolean;
    { Public declarations }
  end;

var

  ChooseChecksF: TChooseChecksF;

implementation

uses StrUtils, DM, GlobalPro, search2, sort2, GetCheck, FormFunctions,
  filter_ADO, FilterClass_ADO, mmessage, FaraConsts, shamsiDate;

{$R *.dfm}

function TChooseChecksF.SelectChecks(qryInitQry: TADOQuery; SqlFilter: String;
  qryForms, qryItmes: TADOQuery; LoanActive: Boolean = false): Boolean;
var
  NewRow, i, NewFormID, NewFormItemID: Integer;
  dSetEven: TDataSetNotifyEvent;
  CallableStates, test: string;
begin
  Result := false;
  i := 0;
  ChooseChecksF := TChooseChecksF.Create(Application);
  with ChooseChecksF do
    try
      CopyAccOnRecall := qryInitQry.fieldbyname('CopyAccOnRecall').AsLargeInt;
      LoanActive_ := LoanActive;
      FreeReservedCodes(DMf.adcBSell, '', '', 'SelectChecks');
      setColumns2(DBGrid1, LoanActive, 'CashWage');
      setColumns2(DBGrid1, LoanActive, 'ItemAmount_CashWage');
      setColumns2(DBGrid1, LoanActive, 'AmountDelay');
      setColumns2(DBGrid1, LoanActive, 'DayDelay');

      setColumns2(DBGrid1, LoanActive, 'CustomerID1');
      setColumns2(DBGrid1, LoanActive, 'CustName1');

      setColumns2(DBGrid1, not LoanActive, 'BankName');
      setColumns2(DBGrid1, not LoanActive, 'CustomerID2');
      setColumns2(DBGrid1, not LoanActive, 'CustName');
      setColumns2(DBGrid1, not LoanActive, 'AccountNumber');
      NewRow := qryItmes.RecordCount;
      with qryChecks Do
      begin
        Active := false;

        SQL.Text := EmptyStr;
        if LoanActive_ then
        begin
          SQL.Add('DECLARE @CurrentDateMiladi DateTime');
          SQL.Add('SET @CurrentDateMiladi= dbo.shamsitomiladi( :CurrentDate1 )');
        end;

        SQL.Add('SELECT YearID,FormID, FormItemID, CheckNumber, CheckDate');
        SQL.Add(',BankName, AccountNumber, ItemAmount, ItemNote,FormNumber,');
        SQL.Add('FormDate, CustomerID2,CustName, FormType, FormCaption, CustomerID1, CustName1, preFormItemID,');
        SQL.Add('BudgetCode, AccountNumberNew, AmountArz , CashWage, PayTypes, TopicTypes , TopicTypesI, CustName2');

        if LoanActive_ then
        begin
          SQL.Add(',DBO.GetAmountDelay(DATEDIFF(DAY, CheckDateMiladi , @CurrentDateMiladi ) ,ItemAmount) AS AmountDelay');
          SQL.Add(',AmountDelayOzviyat');
          SQL.Add(',DATEDIFF(DAY, CheckDateMiladi, @CurrentDateMiladi ) AS DayDelay');
        end
        else
        begin
          SQL.Add(', 0.0 AS AmountDelay, 0.0 AS AmountDelayOzviyat, 0 AS DayDelay');
        end;

        SQL.Add(', ItemAmount_CashWage,ServerID, AmountDelay2');
        SQL.Add(', DayDelay2,CheckCounter, MTopicCode, MDetailCode, MCTopicCode, CTopicCode2 AS MCTopicCode2, MCTopicCode3,');
        SQL.Add('A1.TopicCode, A1.DetailCode,');
        SQL.Add('CTopicCode,CTopicCode2, CTopicCode3, Fitful.FitfulID AS _RowID, Fitful.FitfulID AS _checked');
        SQL.Add(',AidInfoNo');
        SQL.Add('FROM (');

        SQL.Add('SELECT FI.YearID,');
        if LoanActive_ then
        begin
          // SQL.Add(' dbo.shamsitomiladi(FI.CheckDate) AS CheckDateMiladi');
          SQL.Add(' Miladi.Miladi AS CheckDateMiladi');
          // SQL.Add(',dbo.shamsitomiladi( :CurrentDate1 ) AS  CurrentDateMiladi ');
          SQL.Add(',DBO.GetAmountDelay(RIGHT(FI.CheckDate, 2) , FI.ItemAmount) AS AmountDelayOzviyat,');

        end;

        SQL.Add('FI.FormID, FI.FormItemID, FI.CheckNumber, FI.CheckDate,');
        SQL.Add('FI.BankName, FI.AccountNumber,FI.ItemAmount-isnull(FI_1.ItemAmount,0)as ItemAmount, FI.ItemNote, F.FormNumber,');
        SQL.Add('F.FormDate, FI.CustomerID2,Customers.CustName, F.FormType, FormTypes.FormCaption, F.CustomerID1,CM1.CustName AS CustName1, FI_1.preFormItemID,');
        SQL.Add('FI.BudgetCode, FI.AccountNumberNew, FI.AmountArz , FI.CashWage-isnull(FI_1.CashWage,0)as CashWage');
        SQL.Add(', F.PayTypes, F.TopicTypes , FI.TopicTypesI, Customers_2.CustName AS CustName2');

        SQL.Add(', FI.ItemAmount + FI.CashWage AS ItemAmount_CashWage,FI.ServerID,FI.AmountDelay AS AmountDelay2');
        SQL.Add(',FI.DayDelay AS DayDelay2,FI.CheckCounter');

        SQL.Add(', F.TopicCode AS MTopicCode, F.DetailCode AS MDetailCode, F.CTopicCode AS MCTopicCode, ');
        SQL.Add('F.CTopicCode2 AS MCTopicCode2, F.CTopicCode3 AS MCTopicCode3, FI.TopicCode, FI.DetailCode, ');
        SQL.Add('FI.CTopicCode,FI.CTopicCode2, FI.CTopicCode3,FI.AidInfoNo');

        SQL.Add('FROM FormItems FI INNER JOIN');
        SQL.Add('Forms AS F ON FI.YearID = F.YearID AND FI.ServerID = F.ServerID AND FI.FormID =');
        SQL.Add('F.FormID INNER JOIN');
        SQL.Add('FormTypes ON F.FormType = FormTypes.FormType LEFT OUTER JOIN');
        SQL.Add('Customers ON FI.CustomerID2 = Customers.CustID LEFT OUTER JOIN');
        SQL.Add('FormItems FI_1 ON FI.FormItemID = FI_1.preFormItemID');

        // SQL.Add('and FI.YearID = FI_1.YearID ');
        SQL.Add('and FI.YearID = ISNULL( FI_1.prvYearID,FI_1.YearID)');

        SQL.Add('and FI.ServerID = FI_1.PerServerID');

        SQL.Add('AND FI.CheckNumber = FI_1.CheckNumber');
        SQL.Add('LEFT OUTER JOIN Customers AS Customers_2 ON F.CustomerID2 = Customers_2.CustID');

        SQL.Add('INNER JOIN Customers AS CM1 ON F.CustomerID1 = CM1.CustID');

        if LoanActive_ then
          SQL.Add('LEFT OUTER JOIN Miladi_Shamsi AS Miladi ON FI.CheckDate = Miladi.ShamsiSlash');

        SQL.Add('WHERE (F.FormState < 10)');

        if qryInitQry.fieldbyname('FilterYearIDActive').AsInteger = 1 then
        begin
          SQL.Add('AND (F.YearID = :YearID )');
          Parameters.ParamByName('YearID').Value :=
            qryForms.fieldbyname('YearID').AsInteger;
        end;

        SQL.Add(SqlFilter);
        FormTypes := Format('(F.FormType IN (%s))',
          [Trim(qryInitQry.fieldbyname('RecallFormTypes').AsString)]);
        SQL.Add('AND ' + FormTypes);

        CallableStates := Trim(qryInitQry.fieldbyname('CallableStates')
          .AsString);
        If Length(CallableStates) > 0 Then
          SQL.Add(Format('AND(F.FormState IN (%s))', [CallableStates]));

        If ((CopyAccOnRecall and Integer(ChkRecallSyadSystem)) <> 0) Then
          SQL.Add('AND (FI.SyadSystem = 1)');

        if opt.FilterOnServerID = 1 then
          SQL.Add(Format('AND (F.ServerID = %d )',
            [qryForms.fieldbyname('ServerID').AsInteger]));
        // AND (FI.PerServerID IS NULL)

        // if LoanActive then
        // SQL.Add('AND((FI_1.preFormItemID IS NULL)OR((FI.ItemAmount<>FI_1.ItemAmount)OR(FI.CashWage<>FI_1.CashWage) ))')
        // else
        SQL.Add('AND (FI_1.preFormItemID IS NULL)');

        if qryInitQry.fieldbyname('NotSelcetCheckType1InRecall').AsInteger = 1
        then
          SQL.Add('AND (FI.CheckType <> 1)');

        if qryInitQry.fieldbyname('FormDateBiggerCheckDate').AsInteger = 1 then
          SQL.Add(Format('AND(FI.CheckDate <= ''%s'')',
            [Date1400Cnv(qryForms.fieldbyname('FormDate').AsString)]));

        SQL.Add('AND (LEN(LTRIM(FI.CheckDate))<8 OR (FI.CheckDate BETWEEN :CheckDateFrom AND :CheckDateTo )) ');

        if LoanActive_ then
        begin
          SQL.Add('AND (    (ISNULL(F.CustomerID2, 0)  BETWEEN :CustomerID2From AND :CustomerID2To )  ');
          SQL.Add('OR (ISNULL(FI.CustomerID2, 0)  BETWEEN :CustomerID22From AND :CustomerID22To ) )  ');
        end
        else
        begin
          SQL.Add('AND (ISNULL(FI.CustomerID2, 0)  BETWEEN :CustomerID2From AND :CustomerID2To ) ');
          SQL.Add('AND (FI.CheckNumber BETWEEN :CheckNumberFrom AND :CheckNumberTo ) ');

        end;

        SQL.Add(')A1 CROSS JOIN Fitful');

        OrgSQL := SQL.Text;



        // --iff( isnull,0,FI.BudgetCode)
        // --BudgetCode=case FI.BudgetCode when is null then 0 else FI.BudgetCode end
        // -- sum( CASE FormTypes.BudgetEffect  WHEN  1  THEN ( case FormTypes.DisplayFormType when 0 then  F.Amount else FI.ItemAmount end )  ELSE 0  END) as Bed,

        if LoanActive then
        begin
          Parameters.ParamByName('CurrentDate1').Value :=
            qryForms.fieldbyname('FormDate').AsString;

          // Parameters.ParamByName('CurrentDate2').Value :=
          // qryForms.fieldbyname('FormDate').AsString;

          actFilter.Execute;
          DBGrid1.FieldColumns['CustName2'].Index := 3;
          DBGrid1.FieldColumns['FormDate'].Index := 4;
          // qryChecksFormNumber.DisplayLabel := '‘„«—Â Ê«„';
          qryChecksCheckNumber.DisplayLabel := '‘„«—Â ﬁ”ÿ';
          qryChecksCustName2.DisplayLabel := 'œ—Ì«›  ﬂ‰‰œÂ';
        end
        else
        begin
          // Active := True;
          actFilter.Execute;
        end;

      end;
      if ShowModal = mrOk then
      begin
        with qryChecks do
        begin
          if qryChecks.State in dsEditModes then
            qryChecks.Post;
          DisableControls;
          qryChecks.Sort := '_RowID';
          // Filter:='_checked = True';
          // Filtered:=True;
          first;
          If not chkNote.Checked Then
            qryInsert.SQL.Text := StringReplace(qryInsert.SQL.Text,
              'ISNULL( ItemNote ,'') + :ItemNote', '', [rfReplaceAll]);

          qryInsert.Parameters.ParamByName('YearID').Value :=
            qryForms.fieldbyname('YearID').AsInteger;

          // qryInsert.Parameters.ParamByName('ServerID').Value :=
          // qryForms.fieldbyname('ServerID').AsInteger;

          while not eof do
          begin
            if qryChecks_checked.AsInteger = 1 then
              with qryInsert do
              begin
                Inc(NewRow);

                qryInsert.Parameters.ParamByName('YearID2').Value :=
                  qryChecks.fieldbyname('YearID').AsInteger;

                qryInsert.Parameters.ParamByName('PrvYearID').Value :=
                  qryChecks.fieldbyname('YearID').AsInteger;

                NewFormID := qryForms.fieldbyname('FormID').AsInteger;
                Parameters.ParamByName('NewFormID').Value := NewFormID;

                NewFormItemID := GetANewID(nil, 'SelectChecks', 'FormItems',
                  'FormItemID', qryForms, 1);
                Parameters.ParamByName('NewFormItemID').Value := NewFormItemID;

                Parameters.ParamByName('NewRow').Value := NewRow;

                Parameters.ParamByName('NewBudgetCode').Value :=
                  qryChecks.fieldbyname('BudgetCode').AsInteger;
                Parameters.ParamByName('OldFormItemID').Value :=
                  qryChecks.fieldbyname('FormItemID').AsInteger;
                Parameters.ParamByName('OldFormItemID1').Value :=
                  qryChecks.fieldbyname('FormItemID').AsInteger;
                Parameters.ParamByName('AccountNumberNew').Value :=
                  qryChecks.fieldbyname('AccountNumberNew').AsString;
                Parameters.ParamByName('AmountArz').Value :=
                  qryChecks.fieldbyname('AmountArz').AsFloat;
                Parameters.ParamByName('CashWage').Value :=
                  qryChecks.fieldbyname('CashWage').AsCurrency;

                Parameters.ParamByName('TopicTypesI').Value :=
                  qryChecks.fieldbyname('TopicTypesI').AsInteger;

                Parameters.ParamByName('FirstUser').Value :=
                  QuotedStr(User.name);

                Parameters.ParamByName('DayDelay').Value :=
                  IfThen(qryInitQry.fieldbyname('FormType').AsInteger = 113,
                  qryChecks.fieldbyname('DayDelay2').AsFloat,
                  qryChecks.fieldbyname('DayDelay').AsFloat);

                Parameters.ParamByName('AmountDelay').Value :=
                  IfThen(qryInitQry.fieldbyname('FormType').AsInteger = 113,
                  qryChecks.fieldbyname('AmountDelay2').AsFloat,
                  qryChecks.fieldbyname('AmountDelay').AsFloat);

                if (qryChecks.fieldbyname('FormType').AsInteger = 103) and
                  (qryInitQry.fieldbyname('FormType').AsInteger = 113) then
                  Parameters.ParamByName('AmountDelay').Value :=
                    qryChecks.fieldbyname('AmountDelayOzviyat').AsFloat;

                Parameters.ParamByName('ItemNote').Value :=
                  IfThen(qryInitQry.fieldbyname('FormType').AsInteger = 113,
                  qryChecks.fieldbyname('FormCaption').AsString, '');

                // case when :LoanActive =1 then :PayDate else CheckDate end  as CheckDate
                Parameters.ParamByName('PayDate').Value :=
                  IfThen(LoanActive,
                  IfThen(Trim(qryChecks.fieldbyname('CheckDate').AsString) <>
                  '', qryChecks.fieldbyname('CheckDate').AsString,
                  miladi2Shamsi(Date())),
                  Date1400Cnv(qryForms.fieldbyname('FormDate').AsString));

                Parameters.ParamByName('LoanActive').Value :=
                  IfThen(LoanActive, 1, 0);

                // Parameters.ParamByName('CustomerID2').Value:=GetCheckF.qryMaster_F.fieldbyname('CustomerID2').AsInteger ;

                Parameters.ParamByName('ServerID').Value :=
                  qryForms.fieldbyname('ServerID').AsInteger;

                Parameters.ParamByName('PerServerID').Value :=
                  qryChecks.fieldbyname('ServerID').AsInteger;

                qryInsert.Parameters.ParamByName('ServerID2').Value :=
                  qryChecks.fieldbyname('ServerID').AsInteger;

                qryInsert.Parameters.ParamByName('FormID').Value :=
                  qryChecks.fieldbyname('FormID').AsInteger;

                qryInsert.Parameters.ParamByName('CheckCounter').Value :=
                  qryChecks.fieldbyname('CheckCounter').AsInteger;

                Parameters.ParamByName('CheckNumber').Value :=
                  IfThen(qryInitQry.fieldbyname('HasRecall').AsInteger = 3,
                  qryChecks.fieldbyname('CheckNumber').AsString,
                  qryChecks.fieldbyname('AidInfoNo').AsString);

                if Trim(qryChecks.fieldbyname('CheckDate').AsString) <> '' then
                begin
                  Parameters.ParamByName('validDate').Value := 1;
                  Parameters.ParamByName('CheckType').Value := 1;
                end
                else
                begin
                  Parameters.ParamByName('validDate').Value := 2;
                  Parameters.ParamByName('CheckType').Value := 2;
                end;

                // Parameters.ParamByName('AidInfoDate').Value :=
                // (miladi2Shamsi(Date())); // Date1400Cnv

                Parameters.ParamByName('AidInfoDate').Value :=
                  IfThen(qryInitQry.fieldbyname('HasRecall').AsInteger = 3,
                  Date1400Cnv(qryChecks.fieldbyname('CheckDate').AsString), '');

                Parameters.ParamByName('CheckType2').Value := 0;

                Parameters.ParamByName('CheckFor').Value :=
                  IfThen(qryInitQry.fieldbyname('HasRecall').AsInteger = 3,
                  qryChecks.fieldbyname('ItemNote').AsString, '');

                If ((CopyAccOnRecall and Integer(CHkCopyAccDetails)) <> 0) Then
                begin
                  Parameters.ParamByName('TopicCode').Value :=
                    qryChecks.fieldbyname('TopicCode').AsLargeInt;

                  Parameters.ParamByName('DetailCode').Value :=
                    setTStringField(qryChecksDetailCode);
                  Parameters.ParamByName('CTopicCode').Value :=
                    setTStringField(qryChecksCTopicCode);
                  Parameters.ParamByName('CTopicCode2').Value :=
                    setTStringField(qryChecksCTopicCode2);
                  Parameters.ParamByName('CTopicCode3').Value :=
                    setTStringField(qryChecksCTopicCode3);

                  // Parameters.ParamByName('DetailCode').Value :=
                  // qryChecks.fieldbyname('DetailCode').AsInteger;
                  // Parameters.ParamByName('CTopicCode').Value :=
                  // qryChecks.fieldbyname('CTopicCode').AsInteger;
                  // Parameters.ParamByName('CTopicCode2').Value :=
                  // qryChecks.fieldbyname('CTopicCode2').AsInteger;
                  // Parameters.ParamByName('CTopicCode3').Value :=
                  // qryChecks.fieldbyname('CTopicCode3').AsInteger;
                end
                else
                begin
                  Parameters.ParamByName('TopicCode').Value := 0;
                  Parameters.ParamByName('DetailCode').Value := 0;
                  Parameters.ParamByName('CTopicCode').Value := 0;
                  Parameters.ParamByName('CTopicCode2').Value := 0;
                  Parameters.ParamByName('CTopicCode3').Value := 0;
                end;

                If ((CopyAccOnRecall and Integer(CHkCopyAccMaster)) <> 0) Then
                begin
                  Parameters.ParamByName('TopicCode').Value :=
                    qryChecks.fieldbyname('MTopicCode').AsLargeInt;
                  Parameters.ParamByName('DetailCode').Value :=
                    setTStringField(qryChecksMDetailCode);
                  Parameters.ParamByName('CTopicCode').Value :=
                    setTStringField(qryChecksMCTopicCode);
                  Parameters.ParamByName('CTopicCode2').Value :=
                    setTStringField(qryChecksMCTopicCode2);
                  Parameters.ParamByName('CTopicCode3').Value :=
                    setTStringField(qryChecksMCTopicCode3);
                end;

                If ((CopyAccOnRecall and Integer(CHkCopyAcc1Master2Details))
                  <> 0) Then
                begin
                  if qryChecks.fieldbyname('MTopicCode').AsLargeInt <> 0 then
                    Parameters.ParamByName('TopicCode').Value :=
                      qryChecks.fieldbyname('MTopicCode').AsLargeInt
                  else
                    Parameters.ParamByName('TopicCode').Value :=
                      qryChecks.fieldbyname('TopicCode').AsLargeInt;

                  if setTStringField(qryChecksMDetailCode) <> '0' then
                    Parameters.ParamByName('DetailCode').Value :=
                      setTStringField(qryChecksMDetailCode)
                  else
                    Parameters.ParamByName('DetailCode').Value :=
                      setTStringField(qryChecksDetailCode);

                  if setTStringField(qryChecksMCTopicCode) <> '0' then
                    Parameters.ParamByName('CTopicCode').Value :=
                      setTStringField(qryChecksMCTopicCode)
                  else
                    Parameters.ParamByName('CTopicCode').Value :=
                      setTStringField(qryChecksCTopicCode);

                  if setTStringField(qryChecksMCTopicCode2) <> '0' then
                    Parameters.ParamByName('CTopicCode2').Value :=
                      setTStringField(qryChecksMCTopicCode2)
                  else
                    Parameters.ParamByName('CTopicCode2').Value :=
                      setTStringField(qryChecksCTopicCode2);

                  if setTStringField(qryChecksMCTopicCode3) <> '0' then
                    Parameters.ParamByName('CTopicCode3').Value :=
                      setTStringField(qryChecksMCTopicCode3)
                  else
                    Parameters.ParamByName('CTopicCode3').Value :=
                      setTStringField(qryChecksCTopicCode3)

                end;


                // ShowQryParam(qryInsert);

                i := i + ExecSQL;

                // if qryInitQry.fieldbyname('InsertSeverableOnRecall').AsInteger = 1
                // then
                if (qryInitQry.fieldbyname('InsertSeverableOnRecall')
                  .AsInteger and Integer(CHkInsertSeverableOnRecall) <> 0) then
                  InsertSeverable(qryChecks, NewFormItemID, NewFormID);

              end;
            // with qryinsert
            next;
          end; // while
        end; // with
        Result := True;
        qryItmes.Requery;
        With qryForms do
          try
            dSetEven := qryForms.BeforeEdit;
            qryForms.BeforeEdit := nil;
            Edit;
            if qryInitQry.fieldbyname('Pay_Topic_Active').AsInteger > 0 then
            begin
              // if FieldByName('PayTypes').AsInteger = 0 then
              if FindField('PayTypes') <> nil then
                fieldbyname('PayTypes').AsInteger :=
                  qryChecks.fieldbyname('PayTypes').AsInteger;
              // if FieldByName('TopicTypes').AsInteger = 0 then
              if FindField('TopicTypes') <> nil then
                fieldbyname('TopicTypes').AsInteger :=
                  qryChecks.fieldbyname('TopicTypes').AsInteger;
            end;

            Post;
          finally
            qryForms.BeforeEdit := dSetEven;
          end;
        begin
        end;
      end;
      // if
      // end;//with
    finally
      FreeReservedCodes(DMf.adcBSell, '', '', 'SelectChecks');
      ChooseChecksF.Free;
      if i > 0 then
        BigMessage(IntToStr(i) + '„Ê—œ À»  ‘œ', 1);
    end; // try
end;

function TChooseChecksF.setTStringField(f: TStringField): string;
begin
  Result := f.AsString.Trim;
  if Result = EmptyStr then
    Result := '0';
end;

procedure TChooseChecksF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TChooseChecksF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryChecks do
  begin
    Edit;

    fieldbyname('_Checked').AsInteger :=
      IfThen(fieldbyname('_Checked').AsInteger = 1, 0, 1);

    if fieldbyname('_Checked').AsInteger = 1 then
    begin
      Inc(_RowID);
      fieldbyname('_RowID').AsInteger := _RowID;
    end
    else
      fieldbyname('_RowID').AsInteger := 0;

    Post;
  end; // with
  if CalculateSummary then
    CalculateSumChecks;
end;

procedure TChooseChecksF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  if Column.FieldName = '_checked' then
    ToggleCheck
end;

procedure TChooseChecksF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseChecksF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryChecks.fieldbyname('CheckNumber'));
end;

procedure TChooseChecksF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryChecks);
end;

procedure TChooseChecksF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryChecks);
end;

procedure TChooseChecksF.FormCreate(Sender: TObject);
begin
  inherited;
  qrySum := TADOQuery.Create(Self);
  chkNote.Checked := StrToBool(ReadConfig(APPID, Self.name + 'chkNote',
    'True'));
  _RowID := 0;
end;

procedure TChooseChecksF.FormDestroy(Sender: TObject);
begin
  inherited;
  qrySum.Free;
  SaveConfig(APPID, Self.name + 'chkNote', BoolToStr(chkNote.Checked));
end;

procedure TChooseChecksF.CalculateSumChecks;
begin
  if chkSumActive.Checked then
    with qrySum do
    begin
      Clone(qryChecks);
      first;
      sumChecked := 0;
      sumUnchecked := 0;
      countChecked := 0;
      countUnchecked := 0;
      while not eof do
      begin
        if fieldbyname('_checked').AsInteger = 1 then
        begin
          Inc(countChecked);
          sumChecked := sumChecked + fieldbyname('ItemAmount').AsCurrency;
        end
        else
        begin
          Inc(countUnchecked);
          sumUnchecked := sumUnchecked + fieldbyname('ItemAmount').AsCurrency;
        end; // else
        next;
      end; // while
      Close;
    end; // with

  StatusBar1.Panels[1].Text := ' ⁄œ«œ ”ÿ—Â«Ì «‰ Œ«» ‘œÂ = ' +
    IntToStr(countChecked);
  StatusBar1.Panels[0].Text := 'Ã„⁄ „»·€ ”ÿ—Â«Ì «‰ Œ«» ‘œÂ = ' +
    CurrToStrF(sumChecked, ffCurrency, 0);
  StatusBar2.Panels[1].Text := ' ⁄œ«œ ”ÿ—Â«Ì »«ﬁÌ„«‰œÂ     = ' +
    IntToStr(countUnchecked);
  StatusBar2.Panels[0].Text := 'Ã„⁄ „»·€ ”ÿ—Â«Ì »«ﬁÌ„«‰œÂ     = ' +
    CurrToStrF(sumUnchecked, ffCurrency, 0);
  lblSumChecks.Caption := num2alphabet(round(sumChecked));
end;

procedure TChooseChecksF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TChooseChecksF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TChooseChecksF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qryChecks.DisableControls;
  try
    ppReport1.Print;
  finally
    qryChecks.EnableControls;
  end; // try
end;

procedure TChooseChecksF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryChecks do
  begin
    DisableControls;
    first;
    while not eof do
    begin
      Edit;
      fieldbyname('_checked').AsInteger := 1;
      Post;
      next;
    end;
    // while
    first;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TChooseChecksF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qryChecks do
  begin
    DisableControls;
    first;
    while not eof do
    begin
      Edit;
      fieldbyname('_checked').AsInteger :=
        IfThen(fieldbyname('_Checked').AsInteger = 1, 0, 1);;
      Post;
      next;
    end;
    // while
    first;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TChooseChecksF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TChooseChecksF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  qryChecks.Filter := ' _checked = 1 ';
  qryChecks.Filtered := CheckBox1.Checked;
end;

procedure TChooseChecksF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBSell, 'CheckDate', '”——”Ìœ ', '‘„«—Â', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(CheckDate),max(CheckDate) from FormItems', false, '',
        '', True);
      if not LoanActive_ then
        AddItem(DMf.adcBSell, 'CheckNumber', '‘„«—Â ', '‘„«—Â', ftLargeint,
          dvMinMax, '', '', ciSimple, '',
          'Select Min(CheckNumber),max(CheckNumber) from FormItems');

      AddItem(DMf.adcBSell, 'CustomerID2', '„‘ —Ì 2', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        ' SELECT DISTINCT ISNULL(FI.CustomerID2, 0) AS CustomerID2, Customers.CustName'
        + ' FROM FormItems AS FI INNER JOIN' +
        ' Forms AS F ON FI.FormID = F.FormID' +
        ' AND FI.ServerID = F.ServerID AND FI.YearID = F.YearID LEFT OUTER JOIN'
        + ' Customers ON ISNULL(FI.CustomerID2, 0) = Customers.CustID' +
        ' WHERE ' + FormTypes,
        ' SELECT MIN(FI.CustomerID2), MAX(FI.CustomerID2) ' +
        ' FROM FormItems AS FI INNER JOIN ' +
        ' Forms AS F ON FI.FormID = F.FormID AND ' +
        ' FI.ServerID = F.ServerID ' + ' AND FI.YearID = F.YearID INNER JOIN ' +
        ' FormTypes ON F.FormType = FormTypes.FormType WHERE ' + FormTypes);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end;
      // if
    finally
      Free;
    end; // try
end;

procedure TChooseChecksF.UpdateList;
begin
  with qryChecks do
  begin
    Active := false;
    SQL.Text := OrgSQL;
    // SQL.Add('AND (FI.CheckDate BETWEEN :CheckDateFrom AND :CheckDateTo ) ');

    if LoanActive_ then
    begin
      // SQL.Add('AND (    (ISNULL(F.CustomerID2, 0)  BETWEEN :CustomerID2From AND :CustomerID2To )  ');
      // SQL.Add('OR (ISNULL(FI.CustomerID2, 0)  BETWEEN :CustomerID22From AND :CustomerID22To ) )  ');
      Parameters.ParamByName('CustomerID22From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
      Parameters.ParamByName('CustomerID22To').Value :=
        GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);
    end
    else
    begin
      // SQL.Add('AND (ISNULL(FI.CustomerID2, 0)  BETWEEN :CustomerID2From AND :CustomerID2To ) ');
      // SQL.Add('AND (FI.CheckNumber BETWEEN :CheckNumberFrom AND :CheckNumberTo ) ');
      Parameters.ParamByName('CheckNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['CheckNumber'], ftLargeint);

      if Parameters.ParamByName('CheckNumberFrom').Value = '' then
        Parameters.ParamByName('CheckNumberFrom').Value := 0;

      Parameters.ParamByName('CheckNumberTo').Value :=
        GetcTo(myParams.ParamValues['CheckNumber'], ftLargeint);
    end;

    Parameters.ParamByName('CheckDateFrom').Value :=
      GetcFrom(myParams.ParamValues['CheckDate'], ftString);
    Parameters.ParamByName('CheckDateTo').Value :=
      GetcTo(myParams.ParamValues['CheckDate'], ftString);

    Parameters.ParamByName('CustomerID2From').Value :=
      GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
    Parameters.ParamByName('CustomerID2To').Value :=
      GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);
    // ShowQryParam(qryChecks);

    try
      Active := True;
    except
      Active := True;
    end;

  end;
end;

end.
