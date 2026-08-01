unit SalaryList3col;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch,
  ppRegion, ppParameter, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TSalaryList3colF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    qrysalaryPersonelNO: TIntegerField;
    qrysalaryPersonName: TStringField;
    qrysalarySumWage: TBCDField;
    qrysalarySumDec: TBCDField;
    qrysalaryPayableSalary: TBCDField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actFilter: TAction;
    actFish: TAction;
    Button2: TButton;
    actFunctionShow: TAction;
    Button3: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel21: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText9: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel49: TppLabel;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel5: TppLabel;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    CmbArchiveID: TComboBox;
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
    qrysalaryMobile: TStringField;
    actSMS: TAction;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure actFishExecute(Sender: TObject);
    procedure actFunctionShowExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
  private
    MonthNo: Byte;
    procedure Updatefilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList3colF: TSalaryList3colF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  main, ListSalary, FunctionItems, SalaryFunctions, infoSMS, mdiMain;

{$R *.dfm}

procedure TSalaryList3colF.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);

end;

procedure TSalaryList3colF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList3colF.ppLabel45GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList3colF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList3colF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList3colF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile');
end;

procedure TSalaryList3colF.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  try
    qrysalary.DisableControls;
    InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
      ReportFooter);
    InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
      ReportFooter);
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList3colF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList3colF.ppLabel46GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList3colF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList3colF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'PersonelNO', 'äÇã ÑÓäá', 'ÔãÇÑå ÑÓäáí',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     PersonelNo, name_L1 + '' '' + lastName_L1 AS name_l1, name_L2 + '' '' + lastName_L2 AS name_l2 '
        + ' FROM         Pay.PersonelInfo ',
        'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM Pay.FixedCalculated');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSalaryList3colF.Updatefilter;
begin
  with qrysalary do
  begin
    Active := false;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Active := True;
  end; // with
end;

procedure TSalaryList3colF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList3colF.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList3colF.actFishExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  if (mdiMainF.actListSalary.Enabled) and (mdiMainF.actListSalary.Visible) then
  begin
    CreateMDIForm2(TListSalaryF, ListSalaryF, Self);
    ListSalaryF.ToolBar1.Buttons[Month_No].Down := True;
    ListSalaryF.ToolBar1.Buttons[Month_No].Click;
    ListSalaryF.qryPersonels.Locate('PersonelNo',
      qrysalary.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TSalaryList3colF.actFunctionShowExecute(Sender: TObject);
begin
  inherited;
  if (mdiMainF.ActFunctionsF.Enabled) and (mdiMainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qrysalary.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute

end;

procedure TSalaryList3colF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

End.
