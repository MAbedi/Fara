unit CalcGETRemainedOffTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, Grids, Vcl.DBGrids, System.Actions;

type
  TCalcGETRemainedOffTimeF = class(TTemplate4F)
    Panel2: TPanel;
    qryGetOffTime_: TADOQuery;
    qryGetOffTime_PersonelNo: TIntegerField;
    qryGetOffTime_Name: TStringField;
    qryGetOffTime_FormInfoID: TIntegerField;
    qryGetOffTime_DayQuntity: TFloatField;
    srcGetOffTime_: TDataSource;
    grdGETRemainedOffTime: TDBGrid;
    btnPersonelDecExt: TBitBtn;
    qryGetOffTime_Day_Quntity: TFloatField;
    BitBtn6: TBitBtn;
    qryDecExt: TADOQuery;
    qryDecExtDecExtID: TIntegerField;
    qryDecExtPersonelNo: TIntegerField;
    qryDecExtDayQuntity: TFloatField;
    qryDecExtFormInfoID: TIntegerField;
    qryDecExtFirstMounth: TIntegerField;
    qryDecExtAidNo1: TStringField;
    qryDecExtAidDate1: TStringField;
    qryDecExtAidDate2: TStringField;
    qryDecExtEndDate: TStringField;
    qry: TADOQuery;
    qryDecExtNote_L1: TWideStringField;
    btnFunctions: TBitBtn;
    Memo1: TMemo;
    procedure btnPersonelDecExtClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnFunctionsClick(Sender: TObject);
  private
    Mounth, Years: Integer;
    { Private declarations }
  public
    function enter(_Mounth, _Years: Integer): string;
    { Public declarations }
  end;

var

  CalcGETRemainedOffTimeF: TCalcGETRemainedOffTimeF;

implementation

uses DM, GlobalPro, SalaryFunctions, MMESSAGE;

{$R *.dfm}

procedure TCalcGETRemainedOffTimeF.btnFunctionsClick(Sender: TObject);
var
  SQL_Where: string;
begin
  inherited;
  if qryGetOffTime_.RecordCount > 0 then
    if get_response('آيا براي محاسبه مرخصی پرسنل ليست شده مطمئن هستيد' + #13#10 +
      'در صورتي كه به ليست محاسبات نياز داريد از ارسال به Excel قبل از محاسبه استفاده كنيد')
      <> mrYes then
      Exit;
  qryGetOffTime_.Requery();
  DMf.adcSalary.BeginTrans; // <<T>>
  With qry do
    try
      qryGetOffTime_.DisableControls;
      qryGetOffTime_.First;
      while not qryGetOffTime_.Eof do
      begin
        /// //////// UPDATE Functions
        SQL_Where :=
          'WHERE(Functions.PersonelNo = %d)AND(Functions.Mounth = %d)AND(Functions.YearID = %d)AND(Functions.Years = %d)';
        SQL_Where := Format(SQL_Where, [qryGetOffTime_PersonelNo.AsInteger,
          Mounth, APPBank.Year, Years]);
        SQL.Text := 'UPDATE Functions SET FunctionDay = FunctionDay - %d';
        SQL.Text := Format(SQL.Text, [Abs(qryGetOffTime_DayQuntity.AsInteger)]);
        SQL.Add(SQL_Where);
        ExecSQL;

        /// /////////////////  INSERT FunctionsItems
        SQL.Text := 'INSERT INTO Pay.FunctionsItems';
        SQL.Add('(FunctionsItemsID, FunctionID, SalaryID, FDaily, FHours)');
        SQL.Add('SELECT FunctionsItems_1.FunctionsItemsID, Functions.FunctionID, FormsInfo.FormInfoID,');
        SQL.Add(Format('case when MaxDay >0 then %d else 0 end AS FDaily,',
          [Abs(qryGetOffTime_DayQuntity.AsInteger)]));
        SQL.Add(Format('case when MaxTime>0 then %d else 0 end AS FHours',
          [Abs(qryGetOffTime_DayQuntity.AsInteger)]));
        SQL.Add('FROM Pay.Functions CROSS JOIN');
        SQL.Add('FormsInfo CROSS JOIN');
        SQL.Add('(SELECT ISNULL(MAX(FunctionsItemsID), 0) + 1 AS FunctionsItemsID');
        SQL.Add('FROM Pay.FunctionsItems AS FunctionsItems_2) AS FunctionsItems_1');
        SQL.Add(SQL_Where);
        SQL.Add('AND (FormsInfo.RecalKindClock = 11) ');
        SQL.Add('AND(FormsInfo.FormType = 31)');
        ExecSQL;
        qryGetOffTime_.Next;
      end;
      qryGetOffTime_.EnableControls;
      DMf.adcSalary.CommitTrans; // <<T>>
      FreeReservedCodes(DMf.adcSalary);
      BigMessage('محاسبه شد', 1);
      qryGetOffTime_.Requery();
    except
      on E: Exception do
      begin
        DMf.adcSalary.RollbackTrans; // <<T>>
        Warn('اشكال در محاسبه' + #13#10 + E.Message);
      end;
    end;

end;

procedure TCalcGETRemainedOffTimeF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdGETRemainedOffTime);
end;

function TCalcGETRemainedOffTimeF.enter(_Mounth, _Years: Integer): string;
begin
  CalcGETRemainedOffTimeF := TCalcGETRemainedOffTimeF.Create(Application);
  try
    with CalcGETRemainedOffTimeF do
    begin
      Mounth := _Mounth;
      Years := _Years;
      with qryGetOffTime_ do
      begin
        Active := False;
        Parameters.ParamByName('YearIDFROM').Value:= Years;
        Parameters.ParamByName('YearIDTo').Value:= Years;
        Active := True;
      end;
      qryDecExt.Active := True;
      ShowModal;
    end;
  finally
    FreeAndNil(CalcGETRemainedOffTimeF);
  end;
end;

procedure TCalcGETRemainedOffTimeF.btnPersonelDecExtClick(Sender: TObject);
var
  SQL_Where: string;
begin
  inherited;
  if qryGetOffTime_.RecordCount > 0 then
    if get_response('آيا براي محاسبه غيبت پرسنل ليست شده مطمئن هستيد' + #13#10 +
      'در صورتي كه به ليست محاسبات نياز داريد از ارسال به Excel قبل از محاسبه استفاده كنيد')
      <> mrYes then
      Exit;
  qryGetOffTime_.Requery();
  DMf.adcSalary.BeginTrans; // <<T>>
  With qry do
    try
      qryGetOffTime_.DisableControls;
      qryGetOffTime_.First;
      while not qryGetOffTime_.Eof do
      begin
        qryDecExt.Insert;
        qryDecExtDecExtID.AsInteger := GetANewCode('','Pay.PersonelDecExt',
          'decExtID');
        qryDecExtPersonelNo.Value := qryGetOffTime_PersonelNo.AsInteger;
        qryDecExtFormInfoID.Value := qryGetOffTime_FormInfoID.AsInteger;
        qryDecExtDayQuntity.Value := qryGetOffTime_DayQuntity.AsInteger;
        qryDecExtFirstMounth.AsInteger := Mounth;
        qryDecExtAidNo1.AsString :=
          Format('%d0%d0%d', [APPBank.Year, Mounth, Abs(qryGetOffTime_.RecNo)]);
        qryDecExtAidDate1.AsString := var_glb_CurrentDate;
        qryDecExtAidDate2.AsString := var_glb_CurrentDate;
        qryDecExtEndDate.AsString := var_glb_CurrentDate;
        qryDecExtNote_L1.AsString := ' ثبت غيبت به علت نداشتن مرخصي ';
        qryDecExt.Post;
        qryGetOffTime_.Next;
      end;
      qryGetOffTime_.EnableControls;
      DMf.adcSalary.CommitTrans; // <<T>>
      FreeReservedCodes(DMf.adcSalary);
      BigMessage('محاسبه شد', 1);
    except
      on E: Exception do
      begin
        DMf.adcSalary.RollbackTrans; // <<T>>
        Warn('اشكال در محاسبه' + #13#10 + E.Message);
      end;
    end;
end;

end.
