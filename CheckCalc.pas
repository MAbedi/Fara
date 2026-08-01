unit CheckCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ActnList, db, DBCtrls, ADODB, DateUtils, Mask, math,
  ComCtrls, ExtCtrls, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.Grids, Vcl.DBGrids;

type

  TCheckCalcF = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    srcSearch: TDataSource;
    btn1: TBitBtn;
    pnl1: TPanel;
    Panel1: TPanel;
    lbl1: TLabel;
    mskReciptDate: TMaskEdit;
    qryForms: TADOQuery;
    srcForms: TDataSource;
    qryFormsFormCaption: TStringField;
    qryFormsYearID: TIntegerField;
    qryFormsServerID: TIntegerField;
    qryFormsReciptID: TIntegerField;
    qryFormsFormID: TIntegerField;
    qryFormsAmount: TBCDField;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    mskCount: TMaskEdit;
    btnAction1: TBitBtn;
    qryCheck: TADOQuery;
    srcCheck: TDataSource;
    DBGrid2: TCedarDbgrid;
    qryFormsReciptDate: TStringField;
    qryCheckCheckNumber: TStringField;
    qryCheckCheckDate: TStringField;
    qryCheckItemAmount: TBCDField;
    qryFormsDefaultDate: TStringField;
    mskDefaultDate: TMaskEdit;
    BitBtn1: TBitBtn;
    qryFormsReciptNumber: TIntegerField;
    procedure Action1Execute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowCalcF(qryMForm, qryFormItem: TADOQuery);
  published
    aQry: TADOQuery;
    { Public declarations }
  end;

var
  CheckCalcF: TCheckCalcF;

implementation

uses GlobalPro, DM, FaraConsts, shamsiDate;

{$R *.DFM}

procedure TCheckCalcF.Action1Execute(Sender: TObject);
var
  iDate, iAmount: Integer;
  DateField: String;
  sumCalc, Amount: Currency;
  C, i, Dayto, StepDay: Integer;
  ReciptDate, DefaultDate, Newday: TDateTime;
  TopCheck: Currency;
begin
  DateField := Trim(mskReciptDate.Text);
  ReciptDate := Shamsi2Miladi(Trim(mskReciptDate.Text));
  DefaultDate := Shamsi2Miladi(Trim(mskDefaultDate.Text));
  Dayto := DaysBetween(ReciptDate, DefaultDate);

  try
    C := strtoint(Trim(mskCount.Text));
    sumCalc := 0;
    qryForms.Last;
    qryCheck.Active := False;
    qryCheck.Active := True;

    StepDay := Dayto div C;
    Newday := IncDay(ReciptDate, StepDay);

    Amount := roundto(qryFormsAmount.AsCurrency / C, 0);
    for i := 1 to C do
      With qryCheck do
      begin
        Insert;
        FieldByName('CheckNumber').AsInteger := Abs(RecordCount) + 1;
        FieldByName('CheckDate').AsString := Date1400Cnv(miladi2Shamsi(Newday));
        Newday := IncDay(Newday, StepDay);

        if i <> C then
          FieldByName('ItemAmount').AsCurrency := Amount
        else
          FieldByName('ItemAmount').AsCurrency :=
            Abs(qryFormsAmount.AsCurrency - sumCalc);
        sumCalc := sumCalc + Amount;
        Post;
      end;
  finally

  end;
  // SaveConfig(APPID, 'CheckCalcFcmbDate', IntToStr(cmbDate.ItemIndex));
end;

procedure TCheckCalcF.ShowCalcF(qryMForm, qryFormItem: TADOQuery);
begin
  CheckCalcF := TCheckCalcF.Create(Application);
  with CheckCalcF do
  begin
    try
      aQry := qryFormItem;
      with qryForms do
      begin
        Active := False;
        Parameters.ParamByName('YearID').Value := qryMForm.FieldByName('YearID')
          .AsInteger;
        Parameters.ParamByName('ServerID').Value :=
          qryMForm.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('ReciptID').Value :=
          qryMForm.FieldByName('ReciptID').AsInteger;
        Active := True;
        mskReciptDate.Text := qryFormsReciptDate.AsString;
        mskDefaultDate.Text := qryFormsDefaultDate.AsString;
      end;
      SetColSize(DBGrid1, 0);
      DBGrid2.SetFooter4Sum([]);
      // cmbDate.ItemIndex :=        strtoint(ReadConfig(APPID, 'CheckCalcFcmbDate', '0'));
      if ShowModal = mrOk then
      begin
        With qryCheck do
        begin
          First;
          while not Eof do
          begin
            qryFormItem.Insert;
            qryFormItem.FieldByName('CheckNumber').AsString :=
              qryCheckCheckNumber.AsString;

            qryFormItem.FieldByName('CheckDate').AsString :=
              qryCheckCheckDate.AsString;

            qryFormItem.FieldByName('ItemAmount').AsString :=
              qryCheckItemAmount.AsString;

            qryFormItem.Post;
            Next;

          end;

        end;

      end;
    finally
      Free;
    end;
  end;
end;

procedure TCheckCalcF.FormDestroy(Sender: TObject);
begin
  SaveColWidth(DBGrid1);
end;

end.
