{ -----------------------------------------------------------------------------
  Unit Name: ChangeWage
  Author:    M_O_S_T_A_F_A
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit ChangeWage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, StrUtils, System.ImageList,
  System.Actions, Filter_ADO_Const,
  Vcl.DBCtrls, Vcl.Mask;

type
  TChangeWageF = class(Ttemplate2MDIF)
    actReCall: TAction;
    BitBtn1: TBitBtn;
    actCal: TAction;
    BitBtn2: TBitBtn;
    actvjPrint: TAction;
    actSendToExcelI: TAction;
    qryChangeWage: TADOQuery;
    srcChangeWage: TDataSource;
    qryChangeWageSalaryID: TIntegerField;
    qryChangeWageCalculatedKind: TWordField;
    qryChangeWageAmount: TFloatField;
    qryLookUp: TADOQuery;
    qryChangeWage_CaptionName: TStringField;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    ADOStoredProc1: TADOStoredProc;
    qryInterdictList: TADOQuery;
    qryInterdictListInterdictNo: TStringField;
    qryInterdictListInterdictDate: TStringField;
    qryInterdictListInterdicStartDate: TStringField;
    qryInterdictListInterdicEndDate: TStringField;
    qryInterdictListPersonelNo: TIntegerField;
    srcInterdictList: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    qryInterdictListHasRetard: TWordField;
    qryInterdictListAmount: TBCDField;
    qryInterdictListSalaryID: TIntegerField;
    qryInterdictListGroupID: TIntegerField;
    qryInterdictListEmployType: TIntegerField;
    qryInterdictListGrade: TIntegerField;
    qryInterdictListchildNumber: TIntegerField;
    qryInterdictListSex: TIntegerField;
    qryInterdictListPersonelState: TIntegerField;
    qryInterdictListFullName: TStringField;
    qryInterdictListSalaryName: TStringField;
    qryInterdictListFirstdate: TStringField;
    qryInterdictListEnddate: TStringField;
    Splitter1: TSplitter;
    qryChangeWageFirstdate: TStringField;
    qryChangeWageEnddate: TStringField;
    actShowForm: TAction;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    actSendToExcel: TAction;
    actSort: TAction;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    BitBtn4: TBitBtn;
    qryChangeWageColumnsCalc: TWideStringField;
    qryInterdictListInterdictItemsID: TIntegerField;
    actCalcFormula: TAction;
    BitBtn9: TBitBtn;
    qryChangeWageSalaryIDFormula: TStringField;
    qry_Change_Wage: TADOQuery;
    qryChangeWage_ColumnsCalc: TStringField;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    actAddItem4All: TAction;
    qryItems: TADOQuery;
    qryInterdictListInterdictID: TIntegerField;
    BitBtn10: TBitBtn;
    qry_Interdict: TADOQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Src_Interdict: TDataSource;
    edtTaxMounth: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtTaxDays: TDBEdit;
    actChangeInterdict: TAction;
    BitBtn11: TBitBtn;
    qryInterdictListTaxMounth: TWordField;
    qryInterdictListTaxDays: TSmallintField;
    qry_InterdictInterdictID: TIntegerField;
    qry_InterdictInterdictNo: TStringField;
    qry_InterdictInterdictDate: TStringField;
    qry_InterdictsubcompanyCode: TIntegerField;
    qry_InterdictPersonelNo: TIntegerField;
    qry_InterdictOfficeCode: TIntegerField;
    qry_InterdictjobCode: TIntegerField;
    qry_Interdictgrade: TIntegerField;
    qry_InterdictjobCity: TIntegerField;
    qry_InterdictInterdicType: TIntegerField;
    qry_InterdictEmployTypeID: TIntegerField;
    qry_InterdictInterdicStartDate: TStringField;
    qry_InterdictemployDaytime: TWordField;
    qry_InterdictAccTopicCode: TIntegerField;
    qry_InterdictAccDetailCode: TIntegerField;
    qry_InterdictAccCTopicCode: TIntegerField;
    qry_InterdictAccCTopicCode2: TIntegerField;
    qry_InterdictKargozinyNote_L1: TMemoField;
    qry_InterdictKargozinyNote_L2: TMemoField;
    qry_InterdictState: TWordField;
    qry_InterdictUserID: TIntegerField;
    qry_InterdictTotalYearsWork: TWordField;
    qry_InterdictInterdicEndDate: TStringField;
    qry_InterdictComment: TMemoField;
    qry_InterdictInterdicStartDateM: TDateTimeField;
    qry_InterdictTaxCalculationType: TIntegerField;
    qry_InterdictinsuranceID: TWordField;
    qry_InterdictProjectID: TIntegerField;
    qry_InterdictStandardEmployAmount: TBCDField;
    qry_InterdictManegePercent: TFloatField;
    qry_InterdictOfficeManegePercent: TFloatField;
    qry_InterdictGroupID: TIntegerField;
    qry_InterdictPayehNo: TIntegerField;
    qry_InterdictGrpExpense: TIntegerField;
    qry_InterdictSubFunctionID: TIntegerField;
    qry_InterdictSubInterdictID: TIntegerField;
    qry_InterdictLastInterdictID: TIntegerField;
    qry_InterdictAccCTopicCode3: TIntegerField;
    qry_InterdictGradeDate: TStringField;
    qry_InterdictHasRetard: TWordField;
    qry_InterdictInsuranceStartDate: TStringField;
    qry_InterdictInsuranceEndDate: TStringField;
    qry_InterdictjobsGroup: TIntegerField;
    qry_InterdictTaxMounth: TWordField;
    qry_InterdictTaxDays: TSmallintField;
    qry_InterdictLastUser: TWideStringField;
    qry_InterdictFirstUser: TWideStringField;
    qry_InterdictAidNo1: TStringField;
    qry_InterdictAidDate1: TStringField;
    qry_InterdictTypeOfContract: TIntegerField;
    qry_InterdictStandardClock: TBCDField;
    ActSeparationBaseSeniority: TAction;
    btnSeparationBaseSeniority: TBitBtn;
    BitBtn12: TBitBtn;
    actInserttem: TAction;
    qryInterdictListTotalYearsWork: TWordField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryChangeWageCalculatedKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryChangeWageCalculatedKindSetText(Sender: TField;
      const Text: String);
    procedure actSendToExcelIExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCalExecute(Sender: TObject);
    procedure actvjPrintExecute(Sender: TObject);
    procedure actReCallExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryInterdictListHasRetardGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actCalcFormulaExecute(Sender: TObject);
    procedure qryChangeWageCalcFields(DataSet: TDataSet);
    procedure actAddItem4AllExecute(Sender: TObject);
    procedure actChangeInterdictExecute(Sender: TObject);
    procedure ActSeparationBaseSeniorityExecute(Sender: TObject);
    procedure actInserttemExecute(Sender: TObject);
  private
    CalculatedKindID: Integer;
    procedure UpdateList;
    procedure Formula;
    procedure addParametr(Qry4Add: TADOQuery);
    procedure UpdateListSalaryID(SalaryID1, SalaryID2: Integer;
      BimehType: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeWageF: TChangeWageF;

implementation

uses DM, GlobalPro, DBGrid2Print, mmessage, filter_ADO, FilterClass_ADO,
  Interdicts, mdimain, search2, sort2, searchCode_ADO, FaraConsts;

{$R *.dfm}

procedure TChangeWageF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TChangeWageF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TChangeWageF.qryChangeWageCalcFields(DataSet: TDataSet);
var
  ColumnsCalc: string;
begin
  inherited;
  ColumnsCalc := UpperCase(qryChangeWageColumnsCalc.AsString);
  With qry_Change_Wage do
  begin
    First;
    while not Eof do
    begin
      ColumnsCalc := StringReplace(ColumnsCalc, FieldByName('SalaryIDFormula')
        .AsString, Format('%s', [FieldByName('CaptionName').AsString]), []);
      Next;
    end;
  end;
 ColumnsCalc := StringReplace(ColumnsCalc, 'TOTALYEARSWORK','سنوات',[]);
  qryChangeWage_ColumnsCalc.AsString := ColumnsCalc;

end;

procedure TChangeWageF.qryChangeWageCalculatedKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := DBGrid1.Columns[CalculatedKindID].PickList[Sender.AsInteger]
end;

procedure TChangeWageF.qryChangeWageCalculatedKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := DBGrid1.Columns[CalculatedKindID].PickList.IndexOf(Text);
end;

procedure TChangeWageF.qryInterdictListHasRetardGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := ifthen(Sender.AsInteger = 1, 'دارد', 'ندارد')
end;

procedure TChangeWageF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  Search2F.ShowSearch(qryInterdictList);
end;

procedure TChangeWageF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TChangeWageF.actSendToExcelIExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TChangeWageF.ActSeparationBaseSeniorityExecute(Sender: TObject);
var
  SalaryID1, SalaryID2: Integer;
  BimehType: string;
begin
  inherited;
  With TfilterF.Create2(Self, myParams2) do
  begin
    try
      AddItem(DMf.adcSalary, 'BimehType', 'نوع بيمه', 'كد', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        // 'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
        '');

      AddItem(DMf.adcSalary, 'SalaryID2', 'برای محاسبه وارد کنید', 'سریال2',
        ftInteger, dvMinMax, '', '', ciSingleLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 22)',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'SalaryID1', 'برای محاسبه وارد کنید', 'سریال1',
        ftInteger, dvMinMax, '', '', ciSingleLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 22)',
        'SELECT 0,999999999');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        SalaryID1 := GetcFrom(myParams2.ParamValues['SalaryID1'], ftInteger);
        SalaryID2 := GetcFrom(myParams2.ParamValues['SalaryID2'], ftInteger);
        BimehType := GetcFrom(myParams2.ParamValues['BimehType'], ftString);
        if get_response('آیا از انتخاب کد ' + SalaryID1.ToString + '  و ' +
          SalaryID2.ToString + '  مطمئن هستید؟') <> mrYes then
          Exit;

        UpdateListSalaryID(SalaryID1, SalaryID2, BimehType);
      end; // if
    finally
      Free;
    end; // try
  end; // end

end;

procedure TChangeWageF.UpdateListSalaryID(SalaryID1, SalaryID2: Integer;
  BimehType: string);
begin
  With DMf.qryTmpTmpP do
  begin
    Active := False;
    SQL.Text := 'DECLARE @SalaryID1 int = ' + SalaryID1.ToString;
    SQL.Add('DECLARE @SalaryID2 int = ' + SalaryID2.ToString);

    SQL.Add('if not exists (select * from dbo.sysobjects where id = object_id(N''Pay.InterdictItems_Temp_PayeSanavati'') and');
    SQL.Add('OBJECTPROPERTY(id, N''IsUserTable'') = 1)');
    SQL.Add('begin');
    SQL.Add('SELECT InterdictItemsID, InterdictID, SalaryID, Amount, FirstMounth, EndMounth, AccTopicCode, AccDetailCode,');
    SQL.Add('AccCTopicCode, AccCTopicCode2, ExpenseType, UserID, ItemNote_L1, ItemNote_L2, RetardDate, Firstdate, Enddate,');
    SQL.Add('JobScore');
    SQL.Add('INTO Pay.InterdictItems_Temp_PayeSanavati');
    SQL.Add('FROM Pay.InterdictItems');
    SQL.Add('end');

    SQL.Add('-- Part 1 ');
    SQL.Add(';with');
    SQL.Add('salaryCalc as');
    SQL.Add('(');
    SQL.Add('SELECT Pay.InterdictItems.InterdictID,');
    SQL.Add('sum(case when Pay.InterdictItems.SalaryID = @SalaryID1 then Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('SalaryID_Salry,');
    SQL.Add('sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('SalaryID_Wage,');
    SQL.Add('max(ps.Price * 30) as new_Wage,');
    SQL.Add('case when max(ps.Price * 30) > sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then');
    SQL.Add('Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('then max(ps.Price * 30)');
    SQL.Add('else sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then Pay.InterdictItems.Amount else');
    SQL.Add('0 end)');
    SQL.Add('end Final_Wage ,');
    SQL.Add('sum(case when Pay.InterdictItems.SalaryID = @SalaryID1 then Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('+ sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then Pay.InterdictItems.Amount else 0');
    SQL.Add('end)');
    SQL.Add('- case when max(ps.Price * 30) > sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then');
    SQL.Add('Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('then max(ps.Price * 30)');
    SQL.Add('else sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then');
    SQL.Add('Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('end Final_Salry,');
    SQL.Add('DATEDIFF(year, Pay.ShamsiToMiladi(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi');
    SQL.Add('(pay.Interdicts.InterdicStartDate) ) dddd,');
    SQL.Add('1403-DATEDIFF(year, Pay.ShamsiToMiladi(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi');
    SQL.Add('(pay.Interdicts.InterdicStartDate) ) WorkYear,');
    SQL.Add('left (Pay.Interdicts.InsuranceStartDate,4) EmploeeYear');
    SQL.Add('FROM	Pay.InterdictItems INNER JOIN');
    SQL.Add('Pay.Interdicts ON Pay.InterdictItems.InterdictID = Pay.Interdicts.InterdictID INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.InterdictItems.SalaryID = Pay.FormsInfo.FormInfoID');
    SQL.Add('left join Pay.PayeSanavati PS on 1403-DATEDIFF(year, Pay.ShamsiToMiladi');
    SQL.Add('(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi(pay.Interdicts.InterdicStartDate) ) = ps.Year');
    SQL.Add('WHERE (Pay.InterdictItems.SalaryID IN (@SalaryID1, @SalaryID2)) AND (''1403/09/01'' BETWEEN');
    SQL.Add('Pay.Interdicts.InterdicStartDate AND Pay.Interdicts.InterdicEndDate)');

    SQL.Add('and Pay.Interdicts.insuranceID in(' + BimehType + ')');

    SQL.Add('group by Pay.InterdictItems.InterdictID ,');
    SQL.Add('Pay.Interdicts.InsuranceStartDate,');
    SQL.Add('left (Pay.Interdicts.InsuranceStartDate,4),DATEDIFF(year, Pay.ShamsiToMiladi');
    SQL.Add('(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi(pay.Interdicts.InterdicStartDate) )');
    SQL.Add(')');
    SQL.Add('Insert into Pay.InterdictItems');
    SQL.Add('(InterdictItemsID , InterdictID,SalaryID,Amount,ExpenseType,ItemNote_L2)');
    SQL.Add('Select');
    SQL.Add('(Select max(InterdictItemsID) From Pay.InterdictItems ) + ROW_NUMBER ( ) OVER (order by');
    SQL.Add('InterdictItemsID) InterdictItemsID ,');
    SQL.Add('sc.InterdictID,@SalaryID2 as SalaryID,sc.Final_Wage,0 ExpenseType,''INSERT BY FARA FOR');
    SQL.Add('INSOURANC 140310''--,26 UserID');
    SQL.Add('FROM salaryCalc AS SC');
    SQL.Add('Left join Pay.InterdictItems ON Pay.InterdictItems.InterdictID = SC.InterdictID and');
    SQL.Add('Pay.InterdictItems.SalaryID =@SalaryID2');
    SQL.Add('WHERE Pay.InterdictItems.SalaryID is null');
    SQL.Add('AND sc.Final_Wage <> 0');
    SQL.Add('');
    SQL.Add('-- part 2 ');
    SQL.Add('UPDATE Pay.InterdictItems');
    SQL.Add('SET Amount = Pay.InterdictItems.Amount - ii.Amount');
    SQL.Add('FROM Pay.InterdictItems INNER JOIN');
    SQL.Add('Pay.InterdictItems AS ii ON ii.ItemNote_L2 = ''INSERT BY FARA FOR INSOURANC 140310'' AND');
    SQL.Add('Pay.InterdictItems.InterdictID = ii.InterdictID');
    SQL.Add('WHERE (Pay.InterdictItems.SalaryID = @SalaryID1)');
    SQL.Add('');
    SQL.Add('-- Part 3 ');
    SQL.Add(';with salaryCalc as');
    SQL.Add('(');
    SQL.Add('SELECT Pay.InterdictItems.InterdictID,');
    SQL.Add('sum(case when Pay.InterdictItems.SalaryID = @SalaryID1 then Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('SalaryID_Salry,');
    SQL.Add('sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('SalaryID_Wage,');
    SQL.Add('max(ps.Price * 30) as new_Wage,');
    SQL.Add('case when max(ps.Price * 30) > sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then');
    SQL.Add('Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('then max(ps.Price * 30)');
    SQL.Add('else sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then Pay.InterdictItems.Amount else');
    SQL.Add('0 end)');
    SQL.Add('end Final_Wage ,');
    SQL.Add('sum(case when Pay.InterdictItems.SalaryID = @SalaryID1 then Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('+ sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then Pay.InterdictItems.Amount else 0');
    SQL.Add('end)');
    SQL.Add('- case when max(ps.Price * 30) > sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then');
    SQL.Add('Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('then max(ps.Price * 30)');
    SQL.Add('else sum(case when Pay.InterdictItems.SalaryID = @SalaryID2 then');
    SQL.Add('Pay.InterdictItems.Amount else 0 end)');
    SQL.Add('end Final_Salry,');
    SQL.Add('DATEDIFF(year, Pay.ShamsiToMiladi(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi');
    SQL.Add('(pay.Interdicts.InterdicStartDate) ) dddd,');
    SQL.Add('1403-DATEDIFF(year, Pay.ShamsiToMiladi(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi');
    SQL.Add('(pay.Interdicts.InterdicStartDate) ) WorkYear,');
    SQL.Add('left (Pay.Interdicts.InsuranceStartDate,4) EmploeeYear');
    SQL.Add('FROM	Pay.InterdictItems INNER JOIN');
    SQL.Add('Pay.Interdicts ON Pay.InterdictItems.InterdictID = Pay.Interdicts.InterdictID INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.InterdictItems.SalaryID = Pay.FormsInfo.FormInfoID');
    SQL.Add('left join Pay.PayeSanavati PS on 1403-DATEDIFF(year, Pay.ShamsiToMiladi');
    SQL.Add('(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi(pay.Interdicts.InterdicStartDate) ) = ps.Year');
    SQL.Add('WHERE (Pay.InterdictItems.SalaryID IN (@SalaryID1, @SalaryID2)) AND (''1403/09/01'' BETWEEN');
    SQL.Add('Pay.Interdicts.InterdicStartDate AND Pay.Interdicts.InterdicEndDate)');

    SQL.Add('and Pay.Interdicts.insuranceID in(' + BimehType + ')');

    SQL.Add('group by Pay.InterdictItems.InterdictID ,');
    SQL.Add('Pay.Interdicts.InsuranceStartDate,');
    SQL.Add('left (Pay.Interdicts.InsuranceStartDate,4),DATEDIFF(year, Pay.ShamsiToMiladi');
    SQL.Add('(Pay.Interdicts.InsuranceStartDate), Pay.ShamsiToMiladi(pay.Interdicts.InterdicStartDate) )');
    SQL.Add(')');
    SQL.Add('UPDATE Pay.InterdictItems');
    SQL.Add('SET Amount = case when Pay.InterdictItems.SalaryID = @SalaryID1 then SC.Final_Salry else SC.Final_Wage end');
    SQL.Add('FROM Pay.InterdictItems INNER JOIN');
    SQL.Add('salaryCalc AS SC ON Pay.InterdictItems.InterdictID = SC.InterdictID');
    SQL.Add('WHERE (Pay.InterdictItems.SalaryID in( @SalaryID1,@SalaryID2))');
    SQL.Add('');
    try
      if ExecSQL > 0 then
        BigMessage(' محاسبه شد', 1);
      qryInterdictList.Requery();
    except
      on e: Exception do
      begin
        Warn('اشكال در محاسبه' + #13#10 + e.Message);
        add2log(e.Message);
      end;
    end;
    Active := False;

  end;
end;

procedure TChangeWageF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if mdimainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryInterdictList.FieldByName('PersonelNo').AsVariant, [])
end;

procedure TChangeWageF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdictList);
end;

procedure TChangeWageF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  With qryChangeWage do
    if Active then
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        qryChangeWageAmount.AsInteger := 0;
        qryChangeWageCalculatedKind.AsInteger := 0;
        Post;
        Next;
      end;
    end;
end;

procedure TChangeWageF.FormCreate(Sender: TObject);
begin
  inherited;
  CalculatedKindID := ColumnIndexByFieldName(DBGrid1, 'CalculatedKind');
  qry_Change_Wage.Open;
  qryChangeWage.Open;
  qry_Interdict.Open;
  ActSeparationBaseSeniority.Visible := var_glb_CurrentDate < '1403/11/11';
end;

procedure TChangeWageF.actAddItem4AllExecute(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  SalaryID, InterdictItemsID, InterdictID: Integer;
  Amount: Currency;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary,
    'انتخاب عنوان برای اضافه کردن به همه احکام محدوده',
    'SELECT FormInfoID,InfoID,InfoName_L1 FROM Pay.FormsInfo ' +
    'INNER JOIN Pay.FormTypes ON FormsInfo.FormType=FormTypes.FormType  ' +
    ' WHERE (FormTypes.SalaryKind BETWEEN 1 AND 4)', ['', 'كد ', 'عنوان'],
    Results, [0, 100, 100], alLeft);
  if s then
  begin
    SalaryID := Results[0].ToInteger;
    Amount := Get_Box('', 'لطفاً مبلغ مورد نظر را وارد كنيد', '0').ToInteger;
    if get_response
      ('در صورت انجام عمليات تمام حكم‏هاي كارگزيني محدوده دارای عنوان ' +
      Results[2] + ' با مبلغ ' + CurrToStrF(Amount, ffCurrency, 0) + ' می شوند'
      + #13#10 + 'آیا مطمئن هستید؟') <> mrYes then
      Exit;
    qryInterdictList.Sort := 'InterdictID';
    qryInterdictList.First;
    InterdictID := 0;
    qryItems.Open;
    while not qryInterdictList.Eof do
      if InterdictID <> qryInterdictListInterdictID.AsInteger then
      begin
        InterdictID := qryInterdictListInterdictID.AsInteger;
        with qryItems do
        begin
          Insert;
          InterdictItemsID := GetANewCode('', 'Pay.InterdictItems',
            'InterdictItemsID');
          FieldByName('InterdictItemsID').AsInteger := InterdictItemsID;
          FieldByName('SalaryID').Value := SalaryID;
          FieldByName('Amount').Value := Amount;
          FieldByName('Userid').Value := User.id;
          FieldByName('InterdictID').Value := InterdictID;
          FieldByName('ExpenseType').Value := 1;
          Post;
          FreeReservedCodes(DMf.adcSalary, 'Pay.InterdictItems');
          qryInterdictList.Next;
        end;
      end
      else
        qryInterdictList.Next;
    qryInterdictList.Requery([]);
  end;
end;

procedure TChangeWageF.actCalcFormulaExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('در صورت انجام عمليات تمام حكم‏هاي كارگزيني فعال تغيير مي‏يابند') <> mrYes
  then
    Exit;
  With qryChangeWage do
    try
      DisableControls;
      Filter := 'CalculatedKind = 3 AND ColumnsCalc <> ''''';
      Filtered := true;
      First;
      while not Eof do
      begin
        Formula;
        Next;
      end;
      qryInterdictList.Requery();
      Warn('انجام شد.', mtInformation);

    finally
      Filtered := False;
      EnableControls;
    end;

end;

procedure TChangeWageF.Formula;
var
  s, ColumnsCalc: string;
begin
  ColumnsCalc := UpperCase(qryChangeWageColumnsCalc.AsString);
  With qry_Change_Wage do
  begin
    First;
    while not Eof do
    begin
      ColumnsCalc := StringReplace(ColumnsCalc, FieldByName('SalaryIDFormula')
        .AsString, Format('Pay.GetInterdictSalaryAmount(%d, I.InterdictID)',
        [FieldByName('SalaryID').AsInteger]), []);
      Next;
    end;
  end;

  With qryInterdictList do
  begin
    DisableControls;
    Filter := Format('SalaryID = %d ', [qryChangeWageSalaryID.AsInteger]);
    Filtered := true;
    First;
    while not Eof do
    begin
      s := Format('UPDATE Ii SET Amount = ROUND( %s, 0) ' +
        ' FROM Pay.InterdictItems AS Ii INNER JOIN ' +
        ' Pay.Interdicts AS I ON Ii.InterdictID = I.InterdictID ',
        [ColumnsCalc]);

      s := s + Format(' WHERE(Ii.InterdictItemsID = %d ) ',
        [qryInterdictListInterdictItemsID.AsInteger]);
      DMf.adcSalary.Execute(s);
      Next;
    end;
    EnableControls;
    Filtered := False;
  end;

end;

procedure TChangeWageF.actCalExecute(Sender: TObject);

begin
  inherited;
  if get_response
    ('در صورت انجام عمليات تمام حكم‏هاي كارگزيني فعال تغيير مي‏يابند') <> mrYes
  then
    Exit;
  With TADOStoredProc.Create(nil) do
    try
      Connection := DMf.adcSalary;
      ProcedureName := 'Pay.CalChangeWage;1';
      Parameters.Refresh;
      Parameters.ParamByName('@PersonelNoFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('@PersonelNoTo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('@GroupIDFrom').Value :=
        GetcFrom(myParams.ParamValues['FormInfoID'], ftInteger);
      Parameters.ParamByName('@GroupIDTo').Value :=
        GetcTo(myParams.ParamValues['FormInfoID'], ftInteger);
      Parameters.ParamByName('@EmployTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['EmployType'], ftInteger);
      Parameters.ParamByName('@EmployTypeTo').Value :=
        GetcTo(myParams.ParamValues['EmployType'], ftInteger);
      Parameters.ParamByName('@GradeFrom').Value :=
        GetcFrom(myParams.ParamValues['Grade'], ftInteger);
      Parameters.ParamByName('@GradeTo').Value :=
        GetcTo(myParams.ParamValues['Grade'], ftInteger);

      Parameters.ParamByName('@SexFrom').Value :=
        GetcFrom(myParams.ParamValues['Sex'], ftInteger);
      Parameters.ParamByName('@SexTo').Value :=
        GetcTo(myParams.ParamValues['Sex'], ftInteger);

      Parameters.ParamByName('@MarriageFrom').Value :=
        GetcFrom(myParams.ParamValues['Marriage'], ftInteger);
      Parameters.ParamByName('@MarriageTo').Value :=
        GetcTo(myParams.ParamValues['Marriage'], ftInteger);

      Parameters.ParamByName('@childNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['childNumber'], ftInteger);
      Parameters.ParamByName('@childNumberTo').Value :=
        GetcTo(myParams.ParamValues['childNumber'], ftInteger);

      Parameters.ParamByName('@PersonelStateFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('@PersonelStateTo').Value :=
        GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

      Parameters.ParamByName('@ProjectIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ProjectID']);
      Parameters.ParamByName('@ProjectIDTo').Value :=
        GetcTo(myParams.ParamValues['ProjectID']);

      Parameters.ParamByName('@jobCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
      Parameters.ParamByName('@jobCodeTo').Value :=
        GetcTo(myParams.ParamValues['jobCode'], ftInteger);

      Parameters.ParamByName('@OfficeCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
      Parameters.ParamByName('@OfficeCodeTo').Value :=
        GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

      try
        ExecProc;
        BigMessage(VarToStr(Parameters.ParamByName('@RETURN_VALUE').Value) +
          ' مورد با موفقيت محاسبه شد', 1);
        qryInterdictList.Requery();
      except
        on e: Exception do
        begin
          Warn('اشكال در محاسبه' + #13#10 + e.Message);
          add2log(e.Message);
        end;

      end;
    finally
      Free;

    end;
end;

procedure TChangeWageF.actChangeInterdictExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if get_response
    ('در صورت انجام عمليات تمام حكم‏هاي كارگزيني فعال تغيير مي‏يابند') <> mrYes
  then
    Exit;
  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := theMainConnection;
      SQL.Text := 'UpDate QryChangeWage';
      SQL.Add('set LastUser=' + QuotedStr(User.Name));
      if qry_InterdictTaxMounth.AsString.Trim <> EmptyStr then
        SQL.Add(', TaxMounth=' + qry_InterdictTaxMounth.AsString);
      if qry_InterdictTaxDays.AsString.Trim <> EmptyStr then
        SQL.Add(', TaxDays=' + qry_InterdictTaxDays.AsString);
      addParametr(qry);
      Parameters := qryInterdictList.Parameters;
      try
        if ExecSQL > 0 then
          BigMessage(' محاسبه شد', 1);
        qryInterdictList.Requery();
      except
        on e: Exception do
        begin
          Warn('اشكال در محاسبه' + #13#10 + e.Message);
          add2log(e.Message);
        end;

      end;
    finally
      Free;
    end;
end;

procedure TChangeWageF.actvjPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TChangeWageF.actReCallExecute(Sender: TObject);
begin
  inherited;
  with TADOQuery.Create(nil) do
    try
      Close;
      Connection := DMf.adcSalary;
      SQL.Text := 'INSERT INTO Pay.ChangeWage(SalaryID,Amount)';
      SQL.Add('SELECT DISTINCT InterdictItems.SalaryID, 0 AS Amount');
      SQL.Add('FROM Pay.InterdictItems INNER JOIN');
      SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID INNER JOIN');
      SQL.Add('Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID LEFT OUTER JOIN');
      SQL.Add('Pay.ChangeWage ON FormsInfo.FormInfoID = ChangeWage.SalaryID');
      SQL.Add('WHERE (Interdicts.InterdicType = 0) AND (Interdicts.State < 50)');
      SQL.Add('AND (ChangeWage.SalaryID IS NULL)');
      ExecSQL;
    finally
      Free;
    end;
  qryChangeWage.Requery;
end;

procedure TChangeWageF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TChangeWageF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'jobCode', 'پست سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12) ',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'ProjectID', 'كد پروژه/ م.هزينه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE FormType =   ' +
        optP.FormInfo4Function.ToString, 'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'Sex', 'جنسیت', 'كد', ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 4)',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'Marriage', 'وضعيت تاهل', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 5)',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'childNumber', 'تعداد فرزند', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 6)',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'Grade', 'رتبه شغلي', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 27)',
        'SELECT 0,999999999');

      AddItem(DMf.adcSalary, 'EmployType', 'نوع حكم ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT 0,999999999');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'FormInfoID', 'گروهها ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 68)',
        'SELECT 0,999999999');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // end
end;

procedure TChangeWageF.actInserttemExecute(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  SalaryID, InterdictItemsID, InterdictID, c: Integer;
  Amount: Currency;
  qry: TADOQuery;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary,
    'انتخاب عنوان برای اضافه کردن به همه احکام محدوده',
    'SELECT FormInfoID,InfoID,InfoName_L1 FROM Pay.FormsInfo ' +
    'INNER JOIN Pay.FormTypes ON FormsInfo.FormType=FormTypes.FormType  ' +
    ' WHERE (FormTypes.SalaryKind BETWEEN 1 AND 4)', ['', 'كد ', 'عنوان'],
    Results, [0, 100, 100], alLeft);
  if s then
  begin
    SalaryID := Results[0].ToInteger;
    Amount := Get_Box('', 'لطفاً مبلغ مورد نظر را وارد كنيد', '0').ToInteger;
    if get_response
      ('با اجرای این عملیات، برای تمامی افرادی که حکم ثبت‌شده دارند اما فاقد جزئیات حکم هستند دارای عنوان '
      + Results[2] + ' با مبلغ ' + CurrToStrF(Amount, ffCurrency, 0) +
      ' می شوند' + #13#10 + 'آیا مطمئن هستید؟') <> mrYes then
      Exit;

    qry := TADOQuery.Create(nil);
    with qry do
    begin
      Connection := DMf.adcSalary;
      SQL.Text := 'SELECT Pay.Interdicts.InterdictID';
      SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
      SQL.Add('Pay.InterdictItems ON Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID');
      SQL.Add('WHERE (Pay.InterdictItems.InterdictItemsID IS NULL)');
      Open;
      c := RecordCount;
    end;
    qryItems.Open;
    while not qry.Eof do
    begin
      InterdictID := qry.FieldByName('InterdictID').AsInteger;
      with qryItems do
      begin
        Insert;
        InterdictItemsID := GetANewCode('', 'Pay.InterdictItems',
          'InterdictItemsID');
        FieldByName('InterdictItemsID').AsInteger := InterdictItemsID;
        FieldByName('SalaryID').Value := SalaryID;
        FieldByName('Amount').Value := Amount;
        FieldByName('Userid').Value := User.id;
        FieldByName('InterdictID').Value := InterdictID;
        FieldByName('ExpenseType').Value := 1;
        Post;
        FreeReservedCodes(DMf.adcSalary, 'Pay.InterdictItems');
        qry.Next;
      end;
    end;
    qry.Free;
    qryInterdictList.Requery([]);
    Warn(c.ToString + ' مورد انجام شد.', mtInformation);
  end;
end;

procedure TChangeWageF.UpdateList;
begin
  With qryInterdictList do
  begin
    Active := False;
    if Parameters.FindParam('PersonelNoFrom') = nil then
    begin
      addParametr(qryInterdictList);
      SQL.Add('ORDER BY PersonelNo');
    end;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['FormInfoID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['FormInfoID'], ftInteger);
    Parameters.ParamByName('EmployTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployType'], ftInteger);
    Parameters.ParamByName('EmployTypeTo').Value :=
      GetcTo(myParams.ParamValues['EmployType'], ftInteger);
    Parameters.ParamByName('GradeFrom').Value :=
      GetcFrom(myParams.ParamValues['Grade'], ftInteger);
    Parameters.ParamByName('GradeTo').Value :=
      GetcTo(myParams.ParamValues['Grade'], ftInteger);

    Parameters.ParamByName('SexFrom').Value :=
      GetcFrom(myParams.ParamValues['Sex'], ftInteger);
    Parameters.ParamByName('SexTo').Value := GetcTo(myParams.ParamValues['Sex'],
      ftInteger);

    Parameters.ParamByName('MarriageFrom').Value :=
      GetcFrom(myParams.ParamValues['Marriage'], ftInteger);
    Parameters.ParamByName('MarriageTo').Value :=
      GetcTo(myParams.ParamValues['Marriage'], ftInteger);

    Parameters.ParamByName('childNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['childNumber'], ftInteger);
    Parameters.ParamByName('childNumberTo').Value :=
      GetcTo(myParams.ParamValues['childNumber'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID']);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID']);

    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['jobCode'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Active := true;
  end;

  LblShowLimitPlace1.Caption := 'ش.پرسنل:از ' +
    VarToStr(GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger)) + ' تا ' +
    VarToStr(GetcTo(myParams.ParamValues['PersonelNo'], ftInteger));
  LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + ' گروه:از ' +
    VarToStr(GetcFrom(myParams.ParamValues['FormInfoID'], ftInteger)) + ' تا ' +
    VarToStr(GetcTo(myParams.ParamValues['FormInfoID'], ftInteger));

  LblShowLimitPlace2.Caption := 'نوع حكم:از ' +
    VarToStr(GetcFrom(myParams.ParamValues['EmployType'], ftInteger)) + ' تا ' +
    VarToStr(GetcTo(myParams.ParamValues['EmployType'], ftInteger));
  LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption + ' رتبه:از ' +
    VarToStr(GetcFrom(myParams.ParamValues['Grade'], ftInteger)) + ' تا ' +
    VarToStr(GetcTo(myParams.ParamValues['Grade'], ftInteger));
  LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption + ' وضعيت:از ' +
    VarToStr(GetcFrom(myParams.ParamValues['PersonelState'], ftInteger)) +
    ' تا ' + VarToStr(GetcTo(myParams.ParamValues['PersonelState'], ftInteger));
end;

procedure TChangeWageF.addParametr(Qry4Add: TADOQuery);
begin
  inherited;
  with Qry4Add do
  begin
    SQL.Add('WHERE ((GroupID BETWEEN :GroupIDFROM AND :GroupIDTo) OR (GroupID = 0))');
    SQL.Add('AND (PersonelNo BETWEEN :PersonelNoFROM AND :PersonelNoTo)');
    SQL.Add('AND (EmployType BETWEEN :EmployTypeFROM AND :EmployTypeTo)');
    SQL.Add('AND (Grade BETWEEN :GradeFROM AND :GradeTo)');
    SQL.Add('AND (childNumber BETWEEN :childNumberFROM AND :childNumberTo)');
    SQL.Add('AND (Sex BETWEEN :SexFROM AND :SexTo)');
    SQL.Add('AND (Marriage BETWEEN :MarriageFROM AND :MarriageTo)');

    SQL.Add('AND (PersonelState BETWEEN :PersonelStateFROM AND :PersonelStateTo)');
    SQL.Add('AND ( ( ProjectID BETWEEN :ProjectIDFrom AND :ProjectIDTo) OR ProjectID =0)');
    SQL.Add('');
    SQL.Add('AND ( jobCode BETWEEN :jobCodeFrom AND :jobCodeTo )');
    SQL.Add('AND ( OfficeCode between :OfficeCodeFrom and :OfficeCodeTo)');

  end;

end;

procedure TChangeWageF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

end.
