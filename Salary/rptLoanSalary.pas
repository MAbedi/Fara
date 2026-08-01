unit rptLoanSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ComCtrls, ToolWin, ppBands, SalaryFunctions,
  ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppVar, ppPrnabl, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptLoanSalaryF = class(Ttemplate2MDIF)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    qryLoanSalary: TADOQuery;
    srcLoanSalary: TDataSource;
    qryLoanSalaryPersonelNO: TIntegerField;
    qryLoanSalaryPrice: TBCDField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppLine14: TppLine;
    ppLine18: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    StatusBar1: TStatusBar;
    qryLoanSalaryPersoneName_L1: TStringField;
    qryLoanSalaryPersoneName_L2: TStringField;
    qryLoanSalarySalaryName_L1: TStringField;
    qryLoanSalarySalaryName_L2: TStringField;
    ppDBText3: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    qryLoanSalaryAidNo2: TStringField;
    qryLoanSalaryAidDate2: TStringField;
    PopList4Print: TPopupMenu;
    NameHint1: TMenuItem;
    AllClick: TMenuItem;
    ppLabel6: TppLabel;
    DBGrid1: TCedarDbgrid;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure AllClickClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
  private
    MonthNo: Byte;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptLoanSalaryF: TrptLoanSalaryF;

implementation

uses DM, search2, sort2, GlobalPro, Mymostafa, FilterClass_ADO, filter_ADO;

{$R *.dfm}

procedure TrptLoanSalaryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryLoanSalary);
end;

procedure TrptLoanSalaryF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptLoanSalaryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryLoanSalary);
end;

procedure TrptLoanSalaryF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateList;
end;

procedure TrptLoanSalaryF.UpdateList;
begin
  with qryLoanSalary do
  begin
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FormInfoIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LoanID'], ftInteger);
    Parameters.ParamByName('FormInfoIDTo').Value :=
      GetcTo(myParams.ParamValues['LoanID'], ftInteger);

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optp.Year;
//    Parameters.ParamByName('YearID2').Value := APPBank.Year;

    Active := true;
  end; // with
  DisbelLabel(Self);

end;

procedure TrptLoanSalaryF.FormShow(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
  DisbelLabel(Self);
end;

procedure TrptLoanSalaryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary,'ArchiveID',' ÔãÇÑå ÈÇíÇäí','ÔãÇÑå',ftInteger,dvDefaults,'0','',ciSingle,'','');
      AddItem(DMf.adcSalary, 'PersonelNo', 'ãÔÎÕÇÊ ÑÓäáí', 'ßÏ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo ,  Name_L1+'' ''+lastName_L1 AS Name_L1 FROM Pay.PersonelInfo ',
        'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM Pay.PersonelInfo');
      AddItem(DMf.adcSalary, 'LoanID', 'æÇãþåÇ ', 'ßÏ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo INNER JOIN '
        + 'Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType WHERE (FormTypes.SalaryKind IN (9, 14))',
        'SELECT MIN(FormsInfo.InfoID), MAX(FormsInfo.InfoID) FROM Pay.FormsInfo INNER JOIN '
        + 'Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType WHERE (FormTypes.SalaryKind IN (9, 14))');
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

procedure TrptLoanSalaryF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptLoanSalaryF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptLoanSalaryF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptLoanSalaryF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryLoanSalaryPersonelNO);
end;

procedure TrptLoanSalaryF.AllClickClick(Sender: TObject);
begin
  inherited;
  try
    qryLoanSalary.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
  finally
    qryLoanSalary.EnableControls;
  end; // try
end;

procedure TrptLoanSalaryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptLoanSalaryF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ToolBar1.Buttons[MonthNo - 1].Caption;
end;

end.
