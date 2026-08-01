unit Ranking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.Win.ADODB,
  MySplitter, Vcl.Mask, xcalAdvEdit, xcalAdvMEdBtn, xcalPlannerMaskDatePicker,
  xcalClass, xcalPersian;

type
  TRankingF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    actPostbyFormul: TAction;
    actCalcScore: TAction;
    qryFunction: TADOQuery;
    qryRanking: TADOQuery;
    srcRanking: TDataSource;
    rgRateType: TRadioGroup;
    qryRankingID: TAutoIncField;
    qryRankingRankType: TWordField;
    qryRankingRankDate: TStringField;
    qryRankingStuffCode: TLargeintField;
    qryRankingPersonID: TIntegerField;
    qryRankingRankAmount: TFloatField;
    qryRankingProductCodeDiscount: TLargeintField;
    qryRankingDiscountEntity: TFloatField;
    qryRankingGrade: TWideStringField;
    qryRankingNote: TWideStringField;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    MySplitter1: TMySplitter;
    srcFunction: TDataSource;
    qryRankingRate: TFloatField;
    PersianCalendar1: TPersianCalendar;
    XDatePicker: TXCalPlannerMaskDatePicker;
    Label1: TLabel;
    procedure actFilterExecute(Sender: TObject);
    procedure rgRateTypeClick(Sender: TObject);
    procedure actCalcScoreExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure XDatePickerChange(Sender: TObject);
    procedure qryRankingBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    dateFrom, dateTo: string;
    CodeFrom, CodeTo: Integer;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RankingF: TRankingF;

implementation

uses
  DM, filter_ADO, FilterClass_ADO, GlobalPro, CalcBasedFormula2;

{$R *.dfm}

procedure TRankingF.actCalcScoreExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  CalcBasedFormula2F.ShowCalc(qryRanking, rgRateType.ItemIndex, CodeFrom,
    CodeTo, dateFrom, dateTo, XDatePicker.Text);
  qryRanking.Requery;
end;

procedure TRankingF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if rgRateType.ItemIndex = 0 then
        AddItem(DMF.adcBSell, 'Code', 'کالا', 'کد', ftInteger, dvMinMax, '', '',
          ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
          'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding')
      else
        AddItem(DMF.adcBSell, 'Code', 'مشتری', 'کد', ftInteger, dvMinMax, '',
          '', ciLookup, 'select custid, custname from Customers',
          'select min(custid), max(custid) from Customers');

      // AddItem(DMF.adcBSell, 'date', '', 'تاریخ', ftdate, dvMinMax, '',
      // '', ciSimple, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      btnDfualt.Click;
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TRankingF.FormShow(Sender: TObject);
begin
  inherited;
  XDatePicker.Text := var_glb_CurrentDate;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Code') = nil then
    Close;
end;

procedure TRankingF.qryRankingBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.Columns[0].Visible := rgRateType.ItemIndex = 0;
  DBGrid1.Columns[1].Visible := rgRateType.ItemIndex = 1;
end;

procedure TRankingF.rgRateTypeClick(Sender: TObject);
begin
  inherited;
  qryFunction.Close;
  qryRanking.Close;
  actFilter.Execute;
  XDatePickerChange(XDatePicker);
end;

procedure TRankingF.UpdateFilter;
begin
  CodeFrom := GetcFrom(myParams.ParamValues['Code'], ftInteger);
  CodeTo := GetcTo(myParams.ParamValues['Code'], ftInteger);
  // dateFrom := GetcFrom(myParams.ParamValues['date'], ftDate);
  // dateTo := GetcTo(myParams.ParamValues['date'], ftDate);
  with qryFunction do
  begin
    Close;
    sql.Text := 'select * from ';
    case rgRateType.ItemIndex of
      1:
        sql.Add(' Fn_CBF_Customers(:CodeFrom, :CodeTo)');
      0:
        sql.Add(' Fn_CBF_StuffCode(:CodeFrom, :CodeTo)');
    end;
    Parameters.ParamByName('CodeFrom').Value :=
      GetcFrom(myParams.ParamValues['Code'], ftInteger);
    Parameters.ParamByName('CodeTo').Value :=
      GetcTo(myParams.ParamValues['Code'], ftInteger);
    // Parameters.ParamByName('dateFrom').Value :=
    // GetcFrom(myParams.ParamValues['date'], ftDate);
    // Parameters.ParamByName('dateTo').Value :=
    // GetcTo(myParams.ParamValues['date'], ftDate);
    Open;
  end;
end;

procedure TRankingF.XDatePickerChange(Sender: TObject);
begin
  inherited;
  with qryRanking do
  begin
    Close;
    Parameters.ParamByName('RankDate').Value := XDatePicker.Text;
    Parameters.ParamByName('RankType').Value := rgRateType.ItemIndex;
    Open;
  end;
end;

end.
