unit PonyList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TPonyListF = class(Ttemplate2MDIF)
    qryPony: TADOQuery;
    srcPony: TDataSource;
    actFilter: TAction;
    qryDebitCredits: TADOQuery;
    qryDebitCreditsPonyNote: TWideStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actSendToExcel: TAction;
    actSort: TAction;
    Dbgrid1: TCedarDbgrid;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
  private
    procedure UpdateFilter;
    procedure Makeqry;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PonyListF: TPonyListF;

implementation

uses
  FilterClass_ADO, filter_ADO, Filter_ADO_Const, DM, GlobalPro, search2, sort2;

{$R *.dfm}

procedure TPonyListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TPersonelNo);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPonyListF.UpdateFilter;
var
  i: Integer;
begin
  with qryDebitCredits do
  begin
    Active := false;
    Active := true;
  end;

  Makeqry;
  with qryPony do
  begin
    Active := false;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Active := true;
    FieldByName('PonyID').DisplayLabel := 'سريال';
    FieldByName('PonyNo').DisplayLabel := 'شماره';
    FieldByName('PonyDate').DisplayLabel := 'تاريخ';
    FieldByName('PersonelNo').DisplayLabel := 'كد پرسنل';
    FieldByName('PrsnName').DisplayLabel := 'نام';
    FieldByName('AdjustDate').DisplayLabel := 'تاريخ تسويه حساب';
    FieldByName('FunctionYearly').DisplayLabel := 'كاركرد سال جاري';
    FieldByName('Months').DisplayLabel := 'ماه';
    FieldByName('CurrentMonthsPay').DisplayLabel := 'حقوق ماه جاري';
    FieldByName('UselessLeave').DisplayLabel := 'مرخصي استفاده نشده';
    FieldByName('UselessLeavePay').DisplayLabel := 'مبلغ مرخصي استفاده نشده';
    FieldByName('AnnuityOldPay').DisplayLabel := 'مبلغ سنوات گذشته';
    FieldByName('Annuity').DisplayLabel := 'سنوات';
    FieldByName('AnnuityPay').DisplayLabel := 'مبلغ سنوات';
    FieldByName('Tide').DisplayLabel := 'عيدي و پاداش';
    FieldByName('TidePay').DisplayLabel := 'مبلغ عيدي و پاداش';
    FieldByName('RemainLoan').DisplayLabel := 'مانده وام';
    FieldByName('DebitCredit').DisplayLabel := 'ساير طلب/بدهي';
    FieldByName('Note').DisplayLabel := 'توضيحات';
    FieldByName('OfficeName').DisplayLabel := 'واحد سازماني';
    FieldByName('fatherName_L1').DisplayLabel := 'نام پدر';
    FieldByName('IDNumber').DisplayLabel := 'شماره شناسنامه';
    FieldByName('employDate').DisplayLabel := 'تاريخ استخدام';
    FieldByName('MarriageName').DisplayLabel := 'وضعيت تاهل';
    FieldByName('Tax').DisplayLabel := 'مالیات';
    FieldByName('Debit').DisplayLabel := 'طلب';
    FieldByName('Credit').DisplayLabel := 'بدهي';
    FieldByName('SalaryNet').DisplayLabel := 'خالص دریافتی  شرکتی';
    FieldByName('SalaryNonNet').DisplayLabel := 'خالص دریافتی غیر شرکتی';
    FieldByName('SalarySum').DisplayLabel := 'جمع حقوق مزایا';
    FieldByName('SalaryPureSum').DisplayLabel := 'جمع خالص دریافتی';
    FieldByName('PArchiveDate').DisplayLabel := 'تاریخ بایگانی';
    FieldByName('PArchiveID').DisplayLabel := 'شماره بایگانی';

  end;
  for i := 1 to qryPony.FieldCount - 1 do
  begin
    qryPony.Fields[i].Tag := 3
  end;

  for i := 0 to Dbgrid1.Columns.Count - 1 do
  begin
    if (Dbgrid1.Columns[i].Field is TBCDField) then
      TBCDField(Dbgrid1.Columns[i].Field).Currency := true;

    Dbgrid1.Columns[i].Title.TitleButton := true;

    if Dbgrid1.Columns[i].Width > 100 then
      Dbgrid1.Columns[i].Width := 100;
  end;
  Dbgrid1.ColorDBGrid;
  Dbgrid1.SetFooter4Sum([]);

end;

procedure TPonyListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPony);
end;

procedure TPonyListF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(Dbgrid1);
end;

procedure TPonyListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPony);
end;

procedure TPonyListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNO') = nil then
      Close;
end;

procedure TPonyListF.Makeqry;
var
  FDebitCredits, s: string;
begin
  with qryPony do
  begin
    SQL.Text := 'SELECT Pony.PonyID, Pony.PonyNo, Pony.PonyDate, ';
    SQL.Add('Pony.PersonelNo,cast(PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 as varchar(40)) AS PrsnName');
    SQL.Add(',cast(PersonelInfo.fatherName_L1 as varchar(15)) as fatherName_L1,PersonelInfo.IDNumber,PersonelInfo.employDate ');
    SQL.Add(',cast(FormsInfo_Marriage.InfoName_L1 as varchar(10)) AS MarriageName');
    SQL.Add(', Pony.AdjustDate, Pony.FunctionYearly,');

    SQL.Add('Pony.Months, Pony.CurrentMonthsPay, Pony.UselessLeave, Pony.UselessLeavePay, Pony.AnnuityOldPay, Pony.Annuity,');
    SQL.Add('Pony.AnnuityPay, Pony.Tide, Pony.TidePay, Pony.RemainLoan, Pony.DebitCredit, Pony.Note, Pony.Tax,');
    SQL.Add('Pony.SalaryNet, Pony.SalaryNonNet, Pony.SalarySum, Pony.SalaryPureSum, Pony.PArchiveDate, Pony.PArchiveID,');
    SQL.Add('FormsInfo_OfficeCode.InfoName_L1 AS OfficeName, SUM(CASE WHEN (DC.Amount > 0) THEN');
    SQL.Add('DC.Amount ELSE 0 END) AS Debit, SUM(CASE WHEN (DC.Amount < 0)');
    SQL.Add('THEN ABS(DC.Amount) ELSE 0 END) AS Credit');
  end;

  with qryDebitCredits do
  begin
    First;
    while not Eof do
    begin
      s := ', SUM(CASE WHEN (DC.PonyNote = ''%s'') THEN ABS(DC.Amount) ELSE 0 END) AS [%s]';
      s := Format(s, [qryDebitCreditsPonyNote.AsString,
        qryDebitCreditsPonyNote.AsString]);
      FDebitCredits := FDebitCredits + s;
      Next;
    end;

  end;

  with qryPony do
  begin
    SQL.Add(FDebitCredits);
    SQL.Add('FROM Pay.Pony INNER JOIN');
    SQL.Add('Pay.Interdicts ON Pony.PersonelNo = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_OfficeCode ON Pay.Interdicts.OfficeCode = FormsInfo_OfficeCode.FormInfoID');
    SQL.Add(' LEFT OUTER JOIN Pay.PonyDebitCredits AS DC ON Pony.PonyID = DC.PonyID');

    SQL.Add('INNER JOIN Pay.PersonelInfo ON Pony.PersonelNo = PersonelInfo.PersonelNo');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Marriage ON PersonelInfo.marriage = FormsInfo_Marriage.FormInfoID');

    SQL.Add('WHERE (Interdicts.State < 50)');
    SQL.Add('AND (Pony.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) ');
    SQL.Add('GROUP BY Pony.PonyID, Pony.PonyNo, Pony.PonyDate, Pony.PersonelNo, Pony.AdjustDate, Pony.FunctionYearly, Pony.Months,');
    SQL.Add('Pony.CurrentMonthsPay, Pony.UselessLeave, Pony.UselessLeavePay, Pony.AnnuityOldPay, Pony.Annuity,');
    SQL.Add('Pony.AnnuityPay, Pony.Tide, Pony.TidePay, Pony.RemainLoan, Pony.DebitCredit, Pony.Note, Pony.Tax,');
    SQL.Add('Pony.SalaryNet, Pony.SalaryNonNet, Pony.SalarySum, Pony.SalaryPureSum, Pony.PArchiveDate, Pony.PArchiveID,');
    SQL.Add('FormsInfo_OfficeCode.InfoName_L1,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1');

    SQL.Add(',PersonelInfo.fatherName_L1,PersonelInfo.IDNumber,PersonelInfo.employDate ');
    SQL.Add(',FormsInfo_Marriage.InfoName_L1');

  end;

end;

end.
