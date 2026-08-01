unit ListSalaryKaroon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ToolWin, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, Grids, Vcl.DBGrids, ADODB, Mask, DBCtrls,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppModule, Math, ppParameter, jpeg,
  ppSubRpt, Menus, ppTypes, ppDesignLayer, System.ImageList, System.Actions;

type
  TListSalaryKaroonF = class(Ttemplate2MDIF)
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
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    srcPersonels: TDataSource;
    actFilter: TAction;
    qryFunctionsItem: TADOQuery;
    Panel4: TPanel;
    srcFunctionsItem: TDataSource;
    srcWages: TDataSource;
    srcDecs: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    btnPrint: TBitBtn;
    Panel5: TPanel;
    grdFunctionItems: TDBGrid;
    qryWages: TADOQuery;
    qryWagesSalaryID: TIntegerField;
    qryWagesInfoName_L1: TStringField;
    qryWagesSumPrice: TBCDField;
    qryWages_radif: TIntegerField;
    qryDecs: TADOQuery;
    qryDecsSalaryID: TIntegerField;
    qryDecsInfoName_L1: TStringField;
    qryDecsSumPrice: TBCDField;
    qryDecs_radif: TIntegerField;
    qryPersonels: TADOQuery;
    qryPersonelsPersonelNo: TIntegerField;
    qryPersonelsPersonel_L1: TStringField;
    qryPersonelsPersonel_L2: TStringField;
    qryPersonelsHasFunction: TIntegerField;
    Panel6: TPanel;
    lblColor2: TLabel;
    lblColor1: TLabel;
    lblNotHasFunction: TLabel;
    lblHasFunction: TLabel;
    qryFunctionsItemSalaryID: TIntegerField;
    qryFunctionsItemInfoName_L1: TStringField;
    qryFunctionsItemInfoName_L2: TStringField;
    qryPayable_Delete: TADOQuery;
    srcPayable_Delete: TDataSource;
    qryPayable_DeletePrice: TBCDField;
    qryLoan: TADOQuery;
    BitBtn5: TBitBtn;
    actShowFunctionItemsF: TAction;
    BitBtn6: TBitBtn;
    actSort: TAction;
    qryPersonelsAccountNumber: TStringField;
    qryPersonelsInsuranceNumber: TStringField;
    PopMnuPrint: TPopupMenu;
    N3: TMenuItem;
    qryWages2: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    srcWages2: TDataSource;
    qryDecsLoanRemain: TBCDField;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    qryPersonelsOfficeName_l1: TStringField;
    N9: TMenuItem;
    ChkHasFunction: TCheckBox;
    CmbArchiveID: TComboBox;
    qryDecsFunctionID: TIntegerField;
    qryDecs_LoanRemain: TCurrencyField;
    qryFunctionsItemFHours: TFloatField;
    qryinit: TADOQuery;
    qryWagesInfoName_L2: TStringField;
    qryWages2InfoName_L2: TStringField;
    qryDecsInfoName_L2: TStringField;
    qryPersonelsStateName: TStringField;
    qryPersonelsOfficeCodeID: TIntegerField;
    qryPersonelsEmployTypeName: TStringField;
    qryPersonelsfatherName_L1: TStringField;
    qryPersonelsMarriageName: TStringField;
    qryPersonelschildNumber: TStringField;
    qryFunctionsItemFDaily: TFloatField;
    qryPersonelsCreditCardNo: TStringField;
    qryPersonelsInterdictItems2Amount: TBCDField;
    btnOtherMenu: TBitBtn;
    PopMnuOthers: TPopupMenu;
    ActShowInterdict: TAction;
    ActShowInterdict1: TMenuItem;
    ActPersonelInfoF: TAction;
    N1: TMenuItem;
    qryPersonelsInterdicEndDate: TStringField;
    ChkEndDate: TCheckBox;
    Label7: TLabel;
    LblEndDate: TLabel;
    qryPersonelsSpecialStateName: TStringField;
    qryPersonelsPersonelgrade: TStringField;
    qryPersonelsInterdictID: TIntegerField;
    qryPersonelsjobName: TStringField;
    Panel7: TPanel;
    Label12: TLabel;
    grdWages: TDBGrid;
    Panel8: TPanel;
    Splitter1: TSplitter;
    Panel9: TPanel;
    txtTotalDecs: TEdit;
    Label16: TLabel;
    EdtPayable: TEdit;
    qryDecscalculatekind: TWordField;
    qryPersonelsOfficeName_l2: TStringField;
    qryPersonelsProjectName: TStringField;
    qryFunctionsItemRemainDayDec: TStringField;
    NAllRecords: TMenuItem;
    pmOtherPrint: TPopupMenu;
    MenuItem5: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    All_Print: TMenuItem;
    ppRemainVacation: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    qryFunctionsItemFHoursT: TStringField;
    qryPersonelsNationalID: TStringField;
    qryPersonelsIDNumber: TStringField;
    actEmail: TAction;
    BitBtn3: TBitBtn;
    popEmail: TPopupMenu;
    mnuEmail: TMenuItem;
    MenuItem3: TMenuItem;
    PNG1: TMenuItem;
    JPEG1: TMenuItem;
    PDF1: TMenuItem;
    BMP1: TMenuItem;
    GIF1: TMenuItem;
    RTF1: TMenuItem;
    DOC1: TMenuItem;
    extFile1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    qryPersonelsEmail: TWideStringField;
    edtEmail: TDBEdit;
    qryWagesSum: TADOQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    BCDField2: TBCDField;
    StringField3: TStringField;
    srcWagesSum: TDataSource;
    SpeedButton1: TSpeedButton;
    qryWagescalculatekind: TIntegerField;
    qryWagesSalaryIDMounthRetard: TLargeintField;
    rdgrpEmail: TRadioGroup;
    srcLoan: TDataSource;
    qryLoan2: TADOQuery;
    qryPersonelsjobCode: TIntegerField;
    qryLoan2LoanRemain: TFMTBCDField;
    qryLoan2InfoName_L1: TStringField;
    qryOtherDecWage: TADOQuery;
    srcOtherDecWage: TDataSource;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    Print: TMenuItem;
    Label11: TLabel;
    pnlDecs: TPanel;
    grdDecs: TDBGrid;
    Label14: TLabel;
    Label2: TLabel;
    grdLoan: TDBGrid;
    txtTotalWage: TEdit;
    pnlDebitCredit: TPanel;
    grdDebitCredit: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edtBes: TEdit;
    edtBed: TEdit;
    edtPureBed: TEdit;
    Label9: TLabel;
    qryOtherDecWageSalaryID: TIntegerField;
    qryOtherDecWageInfoName_L2: TStringField;
    qryOtherDecWagecalculatekind: TIntegerField;
    qryOtherDecWageSalaryIDMounthRetard: TLargeintField;
    qryOtherDecWageColumnsName: TStringField;
    qryOtherDecWageBes: TBCDField;
    qryOtherDecWageBed: TBCDField;
    qryRemainVacation: TADOQuery;
    edtVacation: TDBEdit;
    srcRemainVacation: TDataSource;
    qryRemainVacationRemainDay: TFloatField;
    lblAlphabet: TLabel;
    qryPersonelsAccountInfo: TStringField;
    edtBankAccount: TDBEdit;
    ppLoan: TppDBPipeline;
    ppOtherDecExt: TppDBPipeline;
    ppReportNew: TppReport;
    ppParameterList4: TppParameterList;
    ppDBPipeline5: TppDBPipeline;
    ppDBPipeline5ppField1: TppField;
    ppDBPipeline5ppField2: TppField;
    ppDBPipeline5ppField3: TppField;
    ppDBPipeline5ppField4: TppField;
    ppDBPipeline5ppField5: TppField;
    ppDecs: TppDBPipeline;
    ppWages2: TppDBPipeline;
    ppFunctionItem: TppDBPipeline;
    ppFunctionItemppField1: TppField;
    ppFunctionItemppField2: TppField;
    ppFunctionItemppField3: TppField;
    ppFunctionItemppField4: TppField;
    ppFunctionItemppField5: TppField;
    ppFunction: TppDBPipeline;
    ppFunctionppField1: TppField;
    ppFunctionppField2: TppField;
    ppFunctionppField3: TppField;
    ppPersonels: TppDBPipeline;
    ppWages: TppDBPipeline;
    ppWagesppField1: TppField;
    ppWagesppField2: TppField;
    ppWagesppField3: TppField;
    ppWagesppField4: TppField;
    ppWagesppField5: TppField;
    ppWagesppField6: TppField;
    ppWagesppField7: TppField;
    ppVacationType: TppDBPipeline;
    ppItemsSum: TppDBPipeline;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    pdbplnWagesSum: TppDBPipeline;
    pdbplnWagesSumppField1: TppField;
    pdbplnWagesSumppField2: TppField;
    pdbplnWagesSumppField3: TppField;
    pdbplnWagesSumppField4: TppField;
    pdbplnWagesSumppField5: TppField;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape4: TppShape;
    ppDBText1: TppDBText;
    ppShape5: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppLine1: TppLine;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppDetailBandWage1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppDetailBand9: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppShape6: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSubReport9: TppSubReport;
    ppChildReport9: TppChildReport;
    ppDetailBand10: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppShape7: TppShape;
    ppLabel19: TppLabel;
    ppDBText42: TppDBText;
    ppLine2: TppLine;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSubReport10: TppSubReport;
    ppChildReport10: TppChildReport;
    ppDetailBand11: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppLabel25: TppLabel;
    txtSumBes: TppLabel;
    txtSumBed: TppLabel;
    ppLabel1: TppLabel;
    qryItemsSum: TADOQuery;
    qryItemsSumAmount1: TBCDField;
    qryItemsSumAmount2: TBCDField;
    qryItemsSumAmountSum: TBCDField;
    qryItemsSumAmountIn30: TBCDField;
    qryItemsAmountSumAnd30: TBCDField;
    srcItemsSum: TDataSource;
    procedure ToolButton12Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryPersonelsAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure qryWagesCalcFields(DataSet: TDataSet);
    procedure qryPersonelsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryWagesAfterOpen(DataSet: TDataSet);
    procedure qryDecsCalcFields(DataSet: TDataSet);
    procedure qryDecsAfterOpen(DataSet: TDataSet);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2AfterGenerate(Sender: TObject);
    procedure vrbFooterGetText(Sender: TObject; var Text: String);
    procedure ppdlGetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure lblColor1Click(Sender: TObject);
    procedure actShowFunctionItemsFExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    // procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ChkHasFunctionClick(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure pplblNum2AlphaGetText(Sender: TObject; var Text: String);
    procedure ppLbTotalWageGetText(Sender: TObject; var Text: String);
    procedure ppLblTotalDecsGetText(Sender: TObject; var Text: String);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure ActShowInterdictExecute(Sender: TObject);
    procedure ActPersonelInfoFExecute(Sender: TObject);
    procedure ChkEndDateClick(Sender: TObject);
    procedure qryFunctionsItemAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure plblKhalesBhorofGetText(Sender: TObject; var Text: string);
    procedure NAllRecordsClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure mnuEmailClick(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryDecsAfterScroll(DataSet: TDataSet);
    procedure qryWagesAfterScroll(DataSet: TDataSet);
    procedure rdgrpEmailClick(Sender: TObject);
    procedure txtSumBesGetText(Sender: TObject; var Text: string);
    procedure txtSumBedGetText(Sender: TObject; var Text: string);
    procedure All_PrintClick(Sender: TObject);
    procedure grdWagesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryOtherDecWageAfterOpen(DataSet: TDataSet);
    procedure ppLabel28GetText(Sender: TObject; var Text: string);
  private
    MonthNo: Byte;
    TaxInvolved: Currency;
    InterdictItemSumSalary: Boolean;
    InsInvolved: Currency;
    PersonelTotalWage: Currency;
    PersonelTotalDecs: Currency;
    FishMsg, OrginalSQL: String;
    ClintShare23: Boolean;
    CurrentDate: String;
    FormInfoID: Integer;
    Standard_Days, Standard_Times: Real48;
    procedure UpdateList;
    procedure HasUse(n: Byte);
    procedure InitClintShare23;
    procedure HideSalaryID4ListSalaryinqry(qry: TADOQuery);
    procedure HideSalaryID4ListSalaryOnPrint(qry: TADOQuery);
    function GetFileName(RepNumber: Integer = 1): string;

  public
    { Public declarations }
  end;

var
  ListSalaryKaroonF: TListSalaryKaroonF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Main,
  SalaryFunctions, StrUtils, FunctionItems, search2,
  sort2, Interdicts, PersonelInfo, FaraConsts, MMESSAGE, mdiMain;

{$R *.dfm}

procedure TListSalaryKaroonF.ToolButton12Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  UpdateList;
end;

procedure TListSalaryKaroonF.txtSumBedGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := edtBed.Text;
end;

procedure TListSalaryKaroonF.txtSumBesGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := edtBes.Text;
end;

procedure TListSalaryKaroonF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    // if odd(DBGrid1.DataSource.DataSet.RecNo) then
    // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
    if qryPersonels.FieldByName('HasFunction').AsInteger <> 0 then
      DBGrid1.Canvas.Font.Color := lblColor1.Color
    else
      DBGrid1.Canvas.Font.Color := lblColor2.Color;
    if (Sender as TDBGrid).DataSource.DataSet.FieldByName('InterdicEndDate')
      .AsString < CurrentDate then
      DBGrid1.Canvas.Font.Color := LblEndDate.Color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TListSalaryKaroonF.UpdateList;
var
  CurPid, pState: String;
  ArchiveID: Integer;
begin
  ArchiveID := Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
  GetYearMounth(MonthNo);
  StandardDays(MonthNo, CurrentDate);
  if qryPersonels.Active then
    CurPid := qryPersonels.FieldByName('PersonelNo').AsString;
  with qryLoan do
  begin
    Active := False;
    Parameters.ParamByName('Month').Value := MonthNo + 1;
    Parameters.ParamByName('Month2').Value := MonthNo;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

  end; // with

  with qryLoan2 do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
  end;
  with qryRemainVacation do
  begin
    Active := False;
    Parameters.ParamByName('Month').Value := MonthNo;
  end; // with
  with qryWages do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('Month4').Value := MonthNo;

    if ClintShare23 then
    begin
      Parameters.ParamByName('Mounth2').Value := MonthNo;
      Parameters.ParamByName('ArchiveID2').Value := ArchiveID;
    end;
  end; // with

  with qryOtherDecWage do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('MonthNo1').Value := MonthNo;
    Parameters.ParamByName('ArchiveID1').Value := ArchiveID;
  end;

  with qryWages2 do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    if ClintShare23 then
    begin
      Parameters.ParamByName('Mounth2').Value := MonthNo;
      Parameters.ParamByName('ArchiveID2').Value := ArchiveID;
    end;
  end; // with

  if InterdictItemSumSalary then
  begin
    with qryWagesSum do
    begin
      Active := False;
      Parameters.ParamByName('Mounth1').Value := MonthNo;
      Parameters.ParamByName('Mounth2').Value := MonthNo;
      Parameters.ParamByName('Mounth3').Value := MonthNo;
      Parameters.ParamByName('ArchiveID1').Value := ArchiveID;
      Parameters.ParamByName('ArchiveID2').Value := ArchiveID;
      Parameters.ParamByName('ArchiveID3').Value := ArchiveID;
    end; // with

  end;

  with qryDecs do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    if ClintShare23 then
    begin
      Parameters.ParamByName('Mounth2').Value := MonthNo;
      Parameters.ParamByName('ArchiveID2').Value := ArchiveID;
    end;
  end; // with

  with qryFunctionsItem do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('MonthNo1').Value := MonthNo;
    Parameters.ParamByName('MonthNo2').Value := MonthNo;
    Parameters.ParamByName('InfoIDFrom').Value := 0;
    Parameters.ParamByName('InfoIDTo').Value := 999;
  end; // with

  with qryPersonels do
  begin
    Active := False;
    pState := GetcFrom(myParams.ParamValues['PersonelState'], ftString);
    if pState <> '' then
      SQL.Text := StringReplace(OrginalSQL, ':PersonelState',
        ' (FormsInfo.InfoID in(' + pState + '))AND', [rfReplaceAll])
    else
      SQL.Text := StringReplace(OrginalSQL, ':PersonelState', '',
        [rfReplaceAll]);

    case rdgrpEmail.ItemIndex of
      0:
        SQL.Text := StringReplace(SQL.Text, ':Email', EmptyStr, [rfReplaceAll]);
      1:
        SQL.Text := StringReplace(SQL.Text, ':Email',
          ' (LEN(PersonelInfo.Email) > 4)AND', [rfReplaceAll]);
    else
      SQL.Text := StringReplace(SQL.Text, ':Email',
        '(LEN(PersonelInfo.Email) <= 4)AND', [rfReplaceAll]);
    end;

    Parameters.ParamByName('MonthNo').Value := MonthNo;
    GetYearMounth(MonthNo);
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('YearMounth1').Value :=
      Parameters.ParamByName('YearMounth').Value;

    Parameters.ParamByName('pidFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pidTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode']);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode']);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID']);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID']);

    Active := True;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT ISNULL(FunctionUsed.PersonelNo, 0)';
    SQL.Add('FROM Pay.PersonelInfo INNER JOIN Pay.Interdicts ON Pay.PersonelInfo.PersonelNo =');
    SQL.Add('Pay.Interdicts.PersonelNo LEFT OUTER JOIN(SELECT PersonelNo FROM Pay.Functions');
    SQL.Add('WHERE (Mounth = :MonthNo)');
    SQL.Add('GROUP BY PersonelNo) FunctionUsed ON Pay.PersonelInfo.PersonelNo = FunctionUsed.PersonelNo');
    SQL.Add('WHERE (Pay.PersonelInfo.PersonelNo BETWEEN :pidTo AND :pidTo) AND (ISNULL(FunctionUsed.PersonelNo, 0) <> 0)');
    Parameters[0].Value := MonthNo;
    Parameters[1].Value := GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters[2].Value := GetcTo(myParams.ParamValues['c_PersonelNo']);
    Active := True;
    lblHasFunction.Caption := 'Å—”‰· »« ﬂ«—ﬂ—œ = ' + IntToStr(RecordCount);
    lblNotHasFunction.Caption := 'Å—”‰· »œÊ‰ ﬂ«—ﬂ—œ = ' +
      IntToStr(qryPersonels.RecordCount - RecordCount);
    Active := False;
  end; // with
  if CurPid <> '' then
    qryPersonels.Locate('PersonelNo', CurPid, []);
end;

procedure TListSalaryKaroonF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('c_PersonelNo') = nil then
    close
  else
    CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
      ftInteger);

end;

procedure TListSalaryKaroonF.actEmailExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 1;
  UpdateList;
  popEmail.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryKaroonF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'ProjectID', 'ﬂœ Å—ÊéÂ/ „.Â“Ì‰Â', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE FormType =   ' +
        optP.FormInfo4Function.ToString,
        'SELECT 0,MAX(ProjectID) FROM Pay.Interdicts ');

      AddItem(DMF.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo INNER JOIN '
        + ' Pay.PersonelInfo ON FormsInfo.FormInfoID = PersonelInfo.PersonelState WHERE (FormsInfo.FormType = 3)'
        + 'GROUP BY FormsInfo.InfoID, FormsInfo.InfoName_L1', '');
      AddItem(DMF.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  ' + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT 0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');
      AddItem(DMF.adcSalary, 'c_PersonelNo', '„‘Œ’«  Å—”‰·Ì', '‘„«—Â',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo,name_L1 + ''  '' + lastName_L1 AS Personel FROM Pay.PersonelInfo ',
        'SELECT MIN(PersonelNo), MAX(PersonelNo) FROM Pay.PersonelInfo');
      AddItem(DMF.adcSalary, 'ArchiveID', ' ‘„«—Â »«Ìê«‰Ì', '‘„«—Â', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TListSalaryKaroonF.FormCreate(Sender: TObject);
var
  SqlFItems: string;
begin
  inherited;
  OrginalSQL := qryPersonels.SQL.Text;
  InterdictItemSumSalary := optP.InterdictItemSumSalary1 <> EmptyStr;
  if InterdictItemSumSalary then
  begin

    With qryWagesSum do
    begin
      SQL.Text := EmptyStr;
      if optP.InterdictItemSumSalary1 <> EmptyStr then
      begin
        SQL.Add('SELECT 0 AS SalaryID, ''Ã„⁄ „“œ „»‰«'' + CASE WHEN Mounth <> isnull(MounthRetard,0)');
        SQL.Add('THEN isnull(''('' + ''„⁄ÊﬁÂ „«Â '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE');
        SQL.Add(''''' END AS InfoName_L1 ,');
        SQL.Add('SUM(Pay.FixedCalculated.Price) AS SumPrice,'''' AS InfoName_L2,0 as calculatekind');
        SQL.Add(', 10000 *  cast( isnull(FixedCalculated.MounthRetard,0) AS bigint) AS SalaryIDMounthRetard');
        SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID');
        SQL.Add('WHERE (Pay.FixedCalculated.Mounth = :Mounth1 )');
        SQL.Add('AND (Pay.FixedCalculated.ShowListKind = 1)');
        SQL.Add('AND (Pay.FixedCalculated.PersonelNO = :PersonelNO1 )');
        SQL.Add('AND (Pay.FixedCalculated.ArchiveID = :ArchiveID1)');
        if (CompanyFilterinLogin) and (not User.PowerAdmin) then
        begin
          SQL.Add('AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN :companyCode1From AND :companyCode1To ))');
          Parameters.ParamByName('companyCode1From').Value := FcompanyCodeLogin;
          Parameters.ParamByName('companyCode1To').Value := FcompanyCodeLogin;
        end;
        SQL.Add('AND (FixedCalculated.SalaryID IN (' +
          optP.InterdictItemSumSalary1 + '))');
        SQL.Add('GROUP BY FixedCalculated.MounthRetard,Mounth');
        SQL.Add('');
        SQL.Add('UNION ALL');
      end;
      if optP.InterdictItemSumSalary2 <> EmptyStr then
      begin
        SQL.Add('');
        SQL.Add('SELECT 0 AS SalaryID, ''Ã„⁄ „“«Ì«'' + CASE WHEN Mounth <> isnull(MounthRetard,0)');
        SQL.Add('THEN isnull(''('' + ''„⁄ÊﬁÂ „«Â '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE');
        SQL.Add(''''' END AS InfoName_L1 ,');
        SQL.Add('SUM(Pay.FixedCalculated.Price) AS SumPrice,'''' AS InfoName_L2,0 as calculatekind');
        SQL.Add(', 10000 * cast( isnull(FixedCalculated.MounthRetard,0)  AS bigint) AS SalaryIDMounthRetard');
        SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID');
        SQL.Add('WHERE (Pay.FixedCalculated.Mounth = :Mounth2)');
        SQL.Add('AND (Pay.FixedCalculated.ShowListKind = 1)');
        SQL.Add('AND (Pay.FixedCalculated.PersonelNO = :PersonelNO2)');
        SQL.Add('AND (Pay.FixedCalculated.ArchiveID = :ArchiveID2)');
        if (CompanyFilterinLogin) and (not User.PowerAdmin) then
        begin
          SQL.Add('AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN :companyCode2From AND :companyCode2To ))');
          Parameters.ParamByName('companyCode2From').Value := FcompanyCodeLogin;
          Parameters.ParamByName('companyCode2To').Value := FcompanyCodeLogin;
        end;
        SQL.Add('AND (FixedCalculated.SalaryID IN (' +
          optP.InterdictItemSumSalary2 + '))');
        SQL.Add('GROUP BY FixedCalculated.MounthRetard,Mounth');
        SQL.Add('UNION ALL');

      end;

      SQL.Add('SELECT Pay.FixedCalculated.SalaryID, FormsInfo.InfoName_L1 + CASE WHEN Mounth <> isnull(MounthRetard,0)');
      SQL.Add('THEN isnull(''('' + ''„⁄ÊﬁÂ „«Â '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE');
      SQL.Add('');
      SQL.Add(''''' END AS InfoName_L1 ,');
      SQL.Add('SUM(Pay.FixedCalculated.Price) AS SumPrice, Pay.FormsInfo.InfoName_L2,0 as calculatekind');
      SQL.Add(',cast( FixedCalculated.SalaryID AS bigint)  + 10000 * cast(isnull(FixedCalculated.MounthRetard,0)  AS bigint) AS SalaryIDMounthRetard');
      SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID');
      SQL.Add('WHERE (Pay.FixedCalculated.Mounth = :Mounth3)');
      SQL.Add('AND (Pay.FixedCalculated.ShowListKind = 1)');
      SQL.Add('AND (Pay.FixedCalculated.PersonelNO = :PersonelNO3 )');
      SQL.Add('AND (Pay.FixedCalculated.ArchiveID = :ArchiveID3)');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      begin
        SQL.Add('AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN :companyCode3From AND :companyCode3To ))');
        Parameters.ParamByName('companyCode3From').Value := FcompanyCodeLogin;
        Parameters.ParamByName('companyCode3To').Value := FcompanyCodeLogin;
      end;
      SQL.Add('AND(FixedCalculated.SalaryID NOT IN (' +
        optP.InterdictItemSumSalary1 + '))');
      SQL.Add('AND(FixedCalculated.SalaryID NOT IN (' +
        optP.InterdictItemSumSalary2 + '))');
      SQL.Add('GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1');
      SQL.Add(', Pay.FormsInfo.InfoName_L2, FixedCalculated.MounthRetard,Mounth');
    end;
  end;
  // with

  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  qryinit.Active := True;
  ClintShare23 := qryinit.FieldByName('LimitMounthActive').AsInteger = 1;

  HideSalaryID4ListSalaryinqry(qryWages);
  HideSalaryID4ListSalaryinqry(qryWages2);
  HideSalaryID4ListSalaryinqry(qryDecs);

  if ClintShare23 then
    InitClintShare23
  else
  begin
    qryWages.SQL.Text := StringReplace(qryWages.SQL.Text, '@InitClintShare23',
      '', [rfReplaceAll]);
    qryDecs.SQL.Text := StringReplace(qryDecs.SQL.Text, '@InitClintShare23', '',
      [rfReplaceAll]);
  end;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FormsInfo.FormInfoID, FormsInfo.StandardDays ,StandardTimes FROM Pay.FormTypes INNER JOIN Pay.FormsInfo ON FormTypes.FormType = FormsInfo.FormType';
    SQL.Add('WHERE (FormTypes.FormType = 16) AND (FormsInfo.InfoID = 1)');
    Active := True;
    FormInfoID := FieldByName('FormInfoID').AsInteger;
    Standard_Days := FieldByName('StandardDays').AsFloat;
    Standard_Times := FieldByName('StandardTimes').AsFloat;
    Active := False;
  end;
  if optP.InterdictItem4ListSalary <> EmptyStr then
  begin
    SqlFItems := ' UNION ALL SELECT InterdictItems.SalaryID, ' +
      'FormsInfo.InfoName_L2, InterdictItems.Amount, 0 AS FHours';
    SqlFItems := SqlFItems + ','' '' AS  RemainDayDec ,'''' AS FHoursT';
    SqlFItems := SqlFItems +
      ' FROM Pay.InterdictItems INNER JOIN Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID';
    SqlFItems := SqlFItems +
      ' WHERE(InterdictItems.InterdictID = :InterdictID )';
    SqlFItems := SqlFItems + ' AND (InterdictItems.SalaryID IN (' +
      optP.InterdictItem4ListSalary + '))';

    qryFunctionsItem.SQL.Text := StringReplace(qryFunctionsItem.SQL.Text,
      '@InterdictItem4ListSalary', SqlFItems, [rfReplaceAll]);
  end
  else
    qryFunctionsItem.SQL.Text := StringReplace(qryFunctionsItem.SQL.Text,
      '@InterdictItem4ListSalary', '', [rfReplaceAll]);

  HideSalaryID4ListSalaryinqry(qryFunctionsItem);
  MakeMenuItem(49, All_PrintClick, pmOtherPrint);
end;

procedure TListSalaryKaroonF.HideSalaryID4ListSalaryinqry;
begin
  if optP.ChkHideSalaryID4ListSalary = 1 then
    With qry do
    begin
      SQL.Text := 'SELECT * FROM (' + SQL.Text + ')abcd';
      SQL.Add('WHERE SalaryID NOT IN (0,' + optP.HideSalaryID4ListSalary + ')');
      SQL.Add('ORDER BY SalaryID');
      SQL.Text := StringReplace(SQL.Text,
        'ORDER BY Pay.FixedCalculated.SalaryID;', '', [rfReplaceAll]);

    end;
end;

procedure TListSalaryKaroonF.HideSalaryID4ListSalaryOnPrint(qry: TADOQuery);
var
  S: String;
begin
  if optP.ChkHideSalaryID4ListSalary = 2 then
    if Pos('SalaryID', qry.Filter) = 0 then
      With qry do
      begin
        S := 'SalaryID <> ';
        S := S + StringReplace(optP.HideSalaryID4ListSalary, ',',
          ' AND SalaryID <> ', [rfReplaceAll]);
        if Filter <> EmptyStr then
          Filter := Filter + ' AND ' + S
        else
          Filter := S;
        Filtered := True;
      end;
end;

procedure TListSalaryKaroonF.InitClintShare23;
var
  S: String;
begin
  S := 'union all' +
    ' SELECT 2147483647 as SalaryID , sum(Price) AS SumPrice,''Insurance'' as InfoName_L2 '
    + ' ,0 as SalaryIDMounthRetard,0 as calculatekind ' +
    ' FROM Pay.FixedCalculated' +
    ' WHERE (ArchiveID = :ArchiveID2 and ShowListKind in(4,14)) AND (Mounth = :Mounth2)';

  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    S := S + ' AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN '
      + FcompanyCodeLogin.ToString + ' AND ' +
      FcompanyCodeLogin.ToString + ' ))';
  end;

  S := S + ' AND (PersonelNO = :PersonelNO2)' + ' GROUP BY PersonelNO';
  qryWages.SQL.Text := StringReplace(qryWages.SQL.Text, '@InitClintShare23', S,
    [rfReplaceAll]);

  S := 'union all' +
    ' SELECT 2147483647 as SalaryID ,''23˛% Õﬁ »Ì„Â ﬂ«—›—„«'' as InfoName_L1, sum(Price) AS SumPrice'
    + ',''Insurance'' as InfoName_L2 ,0 as calculatekind,0 as SalaryIDMounthRetard '
    + ' FROM Pay.FixedCalculated' +
    ' WHERE (ArchiveID = :ArchiveID2 and ShowListKind  in(4,14)) AND (Mounth = :Mounth2)';

  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    S := S + ' AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN '
      + FcompanyCodeLogin.ToString + ' AND ' +
      FcompanyCodeLogin.ToString + ' ))';
  end;

  S := S + ' AND (PersonelNO = :PersonelNO2)' + ' GROUP BY PersonelNO';
  qryWages2.SQL.Text := StringReplace(qryWages2.SQL.Text, 'ORDER BY SalaryID',
    S, [rfReplaceAll]);
  qryWages2.SQL.Text := StringReplace(qryWages2.SQL.Text,
    'ORDER BY Pay.FixedCalculated.SalaryID;', S, [rfReplaceAll]);

  S := 'union all' + ' SELECT 0 as FunctionID ,2147483647 as SalaryID ' +
    ' , sum(Price) AS SumPrice,0 asLoanRemain' +
    ',''Insurance'' as InfoName_L2 ,0 as calculatekind,0 as SalaryIDMounthRetard '
    + ' FROM Pay.FixedCalculated' +
    ' WHERE (ArchiveID = :ArchiveID2 and ShowListKind in(4,14)) AND (Mounth = :Mounth2)';

  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    S := S + ' AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN '
      + FcompanyCodeLogin.ToString + ' AND ' +
      FcompanyCodeLogin.ToString + ' ))';
  end;

  S := S + ' AND (PersonelNO = :PersonelNO2)' + ' GROUP BY PersonelNO';
  qryDecs.SQL.Text := StringReplace(qryDecs.SQL.Text, '@InitClintShare23', S,
    [rfReplaceAll]);

end;

procedure TListSalaryKaroonF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(grdFunctionItems);
  SaveColWidth(grdWages);
  SaveColWidth(grdDecs);
  SaveColWidth(grdLoan);
  SaveColWidth(grdDebitCredit);
end;

procedure TListSalaryKaroonF.qryPersonelsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := ' ⁄œ«œ Å—”‰· = ' +
    IntToStr(qryPersonels.RecordCount);

end;

procedure TListSalaryKaroonF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(grdFunctionItems, 1, True);
  SetColSize(grdWages, 1);
  SetColSize(grdDecs, 0);
  SetColSize(grdLoan, 0, True);
  SetColSize(grdDebitCredit, 0, True);
  grdWages.Height := (Panel7.Height * 2) div 5;
end;

procedure TListSalaryKaroonF.qryWagesCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TListSalaryKaroonF.rdgrpEmailClick(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TListSalaryKaroonF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdFunctionItems);
end;

procedure TListSalaryKaroonF.qryPersonelsAfterScroll(DataSet: TDataSet);
var
  pid: String;
begin
  inherited;
  pid := DataSet.FieldByName('PersonelNo').AsString;
  if InterdictItemSumSalary then
  begin
    with qryWagesSum do
    begin
      Active := False;
      Parameters.ParamByName('PersonelNO1').Value := pid;
      Parameters.ParamByName('PersonelNO2').Value := pid;
      Parameters.ParamByName('PersonelNO3').Value := pid;
      Active := True;
    end;
    // with
  end;
  with qryLoan2 do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    Active := True;
  end;
  // with

  with qryRemainVacation do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value := pid;
    Active := True;
  end;
  // with

  with qryFunctionsItem do
  begin
    close;
    Parameters.ParamByName('PersonelNo').Value := pid;
    Parameters.ParamByName('PersonelNo2').Value := pid;
    Parameters.ParamByName('PersonelNo3').Value := pid;
    Parameters.ParamByName('PersonelNo1').Value := pid;
    if optP.InterdictItem4ListSalary <> EmptyStr then
      Parameters.ParamByName('InterdictID').Value :=
        qryPersonelsInterdictID.AsInteger;
    Open;
  end; // with

  with qryWages do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    Parameters.ParamByName('c_PersonelNo4').Value := pid;
    Parameters.ParamByName('InterdictID4').Value :=
      qryPersonelsInterdictID.AsInteger;
    if ClintShare23 then
      Parameters.ParamByName('PersonelNo2').Value := pid;
    Active := True;
  end; // with

  with qryOtherDecWage do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    Parameters.ParamByName('c_PersonelNo1').Value := pid;
    Active := True;
  end;
  // with

  with qryDecs do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    if ClintShare23 then
      Parameters.ParamByName('PersonelNo2').Value := pid;
    Active := True;
  end; // with
  InsInvolved := 0;
  TaxInvolved := 0;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(Price) AS SumTax FROM Pay.FixedCalculated';
    SQL.Add('Where (Mounth = :Mounth) AND (PersonelNO = :Pid)');
    SQL.Add(' AND (ShowListKind = :Type)');
    SQL.Add('AND (bedbes = 0)  AND (CalCulateKind = 12) ');
    SQL.Add('AND (ArchiveID = :ArchiveID )');
    SQL.Add('GROUP BY Mounth, PersonelNO, ShowListKind');
    Parameters[0].Value := MonthNo;
    Parameters[1].Value := DataSet['PersonelNo'];
    Parameters[2].Value := 11;
    Parameters[3].Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Active := True;
    TaxInvolved := Fields[0].AsCurrency;
    Active := False;
    SQL.Text := 'SELECT SUM(Price) AS SumTax FROM Pay.FixedCalculated';
    SQL.Add('Where (Mounth = :Mounth) AND (PersonelNO = :Pid)');
    SQL.Add(' AND (ShowListKind = :Type)');
    SQL.Add('AND (ArchiveID = :ArchiveID )');
    SQL.Add('GROUP BY Mounth, PersonelNO, ShowListKind');
    Parameters[0].Value := MonthNo;
    Parameters[1].Value := DataSet['PersonelNo'];
    Parameters[2].Value := 3;
    Parameters[3].Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Active := True;
    InsInvolved := Fields[0].AsCurrency;
    Active := False;
  end; // with

  StatusBar1.Panels[0].Text := '„‘„Ê· »Ì„Â = ' + CurrToStrF(InsInvolved,
    ffCurrency, 0);
  StatusBar1.Panels[1].Text := '„‘„Ê· „«·Ì«  = ' + CurrToStrF(TaxInvolved,
    ffCurrency, 0);
end;

procedure TListSalaryKaroonF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonels.FieldByName('PersonelNo'));
end;

procedure TListSalaryKaroonF.qryWagesAfterOpen(DataSet: TDataSet);
// var
// SalaryId4qryWages2: Largeint;
begin
  inherited;
  // SalaryId4qryWages2 := 9223372036854775807;
  with DataSet do
  begin
    DisableControls;
    PersonelTotalWage := 0;
    while not eof do
    begin
      PersonelTotalWage := PersonelTotalWage + DataSet.FieldByName('SumPrice')
        .AsCurrency;
      // if RecNo = ppDetailBandWage1.PrintCount then
      // SalaryId4qryWages2 := DataSet.FieldByName('SalaryIDMounthRetard')
      // .AsLargeInt;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  txtTotalWage.Text := CurrToStrF(PersonelTotalWage, ffCurrency, 0);

  // with qryWages2 do
  // begin
  // Active := False;
  // Parameters.ParamByName('c_PersonelNo').Value :=
  // qryPersonels.FieldByName('PersonelNo').AsString;
  // Parameters.ParamByName('SalaryIDMounthRetard').Value := SalaryId4qryWages2;
  // if ClintShare23 then
  // Parameters.ParamByName('PersonelNo2').Value :=
  // qryPersonels.FieldByName('PersonelNo').AsString;
  // Active := True;
  // Filter := 'InfoName_L1 <>''23˛% Õﬁ »Ì„Â ﬂ«—›—„«''';
  // Filtered := DataSet.RecordCount <= ppDetailBandWage1.PrintCount;
  // end; // with
end;

procedure TListSalaryKaroonF.qryWagesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  grdWages.Hint := 'ﬂœ=' + DataSet.FieldByName('SalaryID').AsString;
end;

procedure TListSalaryKaroonF.qryDecsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TListSalaryKaroonF.qryDecsAfterOpen(DataSet: TDataSet);
// var
// IntegrateLoanRemain: Boolean;
begin
  inherited;
  // IntegrateLoanRemain := DMf.ReadBankConfigPay('IntegrateLoanRemain', '0') = '1';
  with DataSet do
  begin
    DisableControls;
    PersonelTotalDecs := 0;
    while not eof do
    begin
      PersonelTotalDecs := PersonelTotalDecs + DataSet.FieldByName('SumPrice')
        .AsCurrency;
      Next;
    end;
    First;
    EnableControls;
  end; // With
  txtTotalDecs.Text := CurrToStrF(PersonelTotalDecs, ffCurrency, 0);
  EdtPayable.Text := CurrToStrF(PersonelTotalWage - PersonelTotalDecs,
    ffCurrency, 0);
  lblAlphabet.Caption := num2alphabet(StrToInt64(RemoveComma(EdtPayable.Text)))
    + ' —Ì«·';
end;

procedure TListSalaryKaroonF.qryDecsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  grdDecs.Hint := 'ﬂœ=' + DataSet.FieldByName('SalaryID').AsString;
end;

procedure TListSalaryKaroonF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := txtTotalWage.Text;
end;

procedure TListSalaryKaroonF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := txtTotalDecs.Text;
end;

procedure TListSalaryKaroonF.ppLabel23GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StatusBar1.Panels[0].Text;
end;

procedure TListSalaryKaroonF.ppLabel28GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := edtPureBed.Text;
end;

procedure TListSalaryKaroonF.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StatusBar1.Panels[1].Text;
end;

procedure TListSalaryKaroonF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TListSalaryKaroonF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '›Ì‘ ÕﬁÊﬁ ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' „«Â ' +
    optP.Year;
end;

procedure TListSalaryKaroonF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '’›ÕÂ ' + StringReplace(Text, 'of', '«“', []);
end;

procedure TListSalaryKaroonF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' «—ÌŒ ç«Å: ' + var_glb_CurrentDate;
end;

procedure TListSalaryKaroonF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TListSalaryKaroonF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '·Ì”  ÕﬁÊﬁ ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' „«Â ' +
    optP.Year;
end;

procedure TListSalaryKaroonF.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  // PrintTotals;
end;

procedure TListSalaryKaroonF.plblKhalesBhorofGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := num2alphabet(StrToInt64(RemoveComma(EdtPayable.Text))) + ' —Ì«·';
end;

procedure TListSalaryKaroonF.ppDetailBand2AfterGenerate(Sender: TObject);
begin
  inherited;
  // PrintPersonelSalaryInList;
end;

procedure TListSalaryKaroonF.vrbFooterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := FishMsg;
end;

procedure TListSalaryKaroonF.ppdlGetText(Sender: TObject; var Text: String);
begin
  inherited;
  // with qryDecs do
  // begin
  // DisableControls;
  // First;
  // Text:='';
  // ppdv.Text:='';
  // ppdr.Text:='';
  // while not eof do
  // begin
  // Text:=Text + fieldbyname('InfoName_L1').AsString + #254#10;
  // ppdv.Text:=ppdv.Text + CurrToStrF(fieldbyname('SumPrice').AsCurrency,ffCurrency,0) + #10 ;
  // ppdr.Text:=ppdr.Text + CurrToStrF(fieldbyname('_LoanRemain').AsCurrency,ffCurrency,0) + #10;
  // Next;
  // end;//while
  // EnableControls;
  // end;//with

end;

procedure TListSalaryKaroonF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := EdtPayable.Text
end;

procedure TListSalaryKaroonF.lblColor1Click(Sender: TObject);
begin
  inherited;
  HasUse((Sender as TLabel).tag);
end;

procedure TListSalaryKaroonF.HasUse(n: Byte);
begin
  with qryPersonels do
  begin
    if (Filter <> '') then
    begin
      if (n = 1) and (Pos('=', Filter) <> 0) then
      begin
        Filter := '';
        Filter := 'HasFunction <> 0';
        FindFirst;
        Exit;
      end
      else if (Filter <> '') and (Pos('<>', Filter) <> 0) then
        if not FindNext then
          Filter := '';
      if (n = 2) and (Pos('<>', Filter) <> 0) then
      begin
        Filter := '';
        Filter := 'HasFunction = 0';
        FindFirst;
        Exit;
      end
      else if (Filter <> '') and (Pos('=', Filter) <> 0) then
        if not FindNext then
          Filter := '';
    end
    else
    begin
      case n of
        1:
          Filter := 'HasFunction <> 0';
        2:
          Filter := 'HasFunction = 0';
      end; // case
      FindFirst;
    end; // else
  end; // with
end;

procedure TListSalaryKaroonF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    HideSalaryID4ListSalaryOnPrint(qryWages2);
    HideSalaryID4ListSalaryOnPrint(qryDecs);
    HideSalaryID4ListSalaryOnPrint(qryWages);
    FishMsg := ReadConfig(APPID, 'FishMessage', '');
    PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TListSalaryKaroonF.actShowFunctionItemsFExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
  FunctionItemsF.ToolBar1.Buttons[Month_No].Down := True;
  FunctionItemsF.ToolBar1.Buttons[Month_No].Click;
  FunctionItemsF.qryPersonel.Locate('PersonelNo',
    qryPersonels.FieldByName('PersonelNo').AsVariant, [])

end;

procedure TListSalaryKaroonF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonels);
end;

procedure TListSalaryKaroonF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonels);
end;

procedure TListSalaryKaroonF.All_PrintClick(Sender: TObject);
begin
  inherited;
  if NAllRecords.Checked then
  begin
    ppPersonels.RangeBegin := rbFirstRecord;
    ppPersonels.RangeEnd := reLastRecord;
  end
  else
  begin
    ppPersonels.RangeBegin := rbCurrentRecord;
    ppPersonels.RangeEnd := reCurrentRecord;
  end;
  InitReportFile(ppReportNew, (Sender as TMenuItem).Hint);
end;

procedure TListSalaryKaroonF.N2Click(Sender: TObject);
begin
  inherited;
  FishMsg := ReadConfig(APPID, 'FishMessage', '');
  FishMsg := Get_Box('', '·ÿ›« „ ‰ ÅÌ«„ “Ì— ›Ì‘ —« Ê«—œ ﬂ‰Ìœ', FishMsg);
  SaveConfig(APPID, 'FishMessage', FishMsg);

end;

procedure TListSalaryKaroonF.N5Click(Sender: TObject);
begin
  inherited;
  pmOtherPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

function TListSalaryKaroonF.GetFileName(RepNumber: Integer): string;
var
  RepFileName: string;
begin
  Result := 'payfishNew';
  RepFileName := 'ReportFileName' + IntToStr(RepNumber);
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := Format('SELECT %s FROM Pay.FormTypes ' + ' where FormType=122 ',
      [RepFileName]);
    Active := True;
    if FieldByName(RepFileName).AsString <> '' then
      Result := FieldByName(RepFileName).AsString;
  end;
end;

procedure TListSalaryKaroonF.grdWagesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  grd: TDBGrid;
begin
  inherited;
  grd := (Sender as TDBGrid);
  if not(gdSelected in State) then
  begin
    if odd(grd.DataSource.DataSet.RecNo) then
      grd.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  grd.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TListSalaryKaroonF.N7Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).tag of
    1:
      begin
        ppPersonels.RangeBegin := rbCurrentRecord;
        ppPersonels.RangeEnd := reCurrentRecord;
      end; // 1
    2:
      begin
        with qryPersonels do
        begin
          Active := False;
          Parameters.ParamByName('FunctionUsed').Value := 0;
          Active := True;
        end;
        ppPersonels.RangeBegin := rbFirstRecord;
        ppPersonels.RangeEnd := reLastRecord;
      end; // 2
  end; // case

  try
    qryFunctionsItem.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;
    qryOtherDecWage.DisableControls;
    InitReportFile(ppReportNew, GetFileName);
  finally
    qryFunctionsItem.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    qryOtherDecWage.EnableControls;
  end; // try

end;

procedure TListSalaryKaroonF.mnuEmailClick(Sender: TObject);
  procedure setEmail;
  begin
    ppReportNew.EmailSettings.Recipients.Text :=
      qryPersonels.FieldByName('Email').AsWideString;
    ppReportNew.EmailSettings.Subject := SYSCAPTION + ' > ›Ì‘ ÕﬁÊﬁ > ' +
      qryPersonels.FieldByName('Personel_L1').AsWideString;
    ppReportNew.PDFSettings.FontEncoding := feUnicode;
  end;

begin
  inherited;
  ppReportNew.DeviceType := TMenuItem(Sender).Hint;
  ppReportNew.EmailSettings.ReportFormat := TMenuItem(Sender).Hint;
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;
  try
    BigMessage('·ÿ›« ﬂ„Ì ’»— ﬂ‰Ìœ....', 0);
    qryFunctionsItem.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;
    case (Sender as TMenuItem).tag of
      1:
        begin
          setEmail;
          InitReportFile(ppReportNew, GetFileName, False, True);
        end;
      2:
        With qryPersonels do
        begin
          First;
          while not eof do
          begin
            setEmail;
            InitReportFile(ppReportNew, GetFileName, False, True);
            Next;
          end;
        end;
    end;

  finally
    qryFunctionsItem.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TListSalaryKaroonF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  NAllRecords.Checked := not NAllRecords.Checked;
end;

procedure TListSalaryKaroonF.ChkHasFunctionClick(Sender: TObject);
var
  i: Smallint;
begin
  inherited;
  i := -1;
  if (Sender as TCheckBox).Checked then
    i := 0;
  with qryPersonels do
  begin
    Active := False;
    Parameters.ParamByName('FunctionUsed').Value := i;
    Active := True;
  end;
  // with
end;

procedure TListSalaryKaroonF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TListSalaryKaroonF.pplblNum2AlphaGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Trim(EdtPayable.Text);
  if Text = '0' then
    Exit;
  Text := num2alphabet(StrToInt64(RemoveComma(Text))) + ' —Ì«·';
end;

procedure TListSalaryKaroonF.ppLbTotalWageGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := txtTotalWage.Text;
end;

procedure TListSalaryKaroonF.ppLblTotalDecsGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := txtTotalDecs.Text;
end;

procedure TListSalaryKaroonF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryKaroonF.ActShowInterdictExecute(Sender: TObject);
begin
  inherited;
  if mdimainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryPersonels.FieldByName('PersonelNo').AsVariant, [])
end;

procedure TListSalaryKaroonF.ActPersonelInfoFExecute(Sender: TObject);
begin
  inherited;
  if mdimainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryPersonels.FieldByName('PersonelNo').AsInteger, [])
end;

procedure TListSalaryKaroonF.ChkEndDateClick(Sender: TObject);
begin
  inherited;
  With qryPersonels do
  begin
    Filter := 'InterdicEndDate>=' + CurrentDate;
    Filtered := ChkEndDate.Checked;
  end;
end;

procedure TListSalaryKaroonF.qryFunctionsItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  grdFunctionItems.Hint := 'ﬂœ=' + DataSet.FieldByName('SalaryID').AsString;
  grdFunctionItems.Hint := grdFunctionItems.Hint + #13#10 +
    DataSet.FieldByName('InfoName_L1').AsString + #13#10 +
    DataSet.FieldByName('RemainDayDec').AsString + #13#10;
end;

procedure TListSalaryKaroonF.qryOtherDecWageAfterOpen(DataSet: TDataSet);
var
  bed, bes: Currency;
begin
  inherited;
  bed := 0;
  bes := 0;
  with DataSet do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      bed := qryOtherDecWageBed.AsCurrency;
      bes := qryOtherDecWageBes.AsCurrency;
      Next;
    end;
    First;
    EnableControls;
    edtBes.Text := CurrToStrF(bes, ffCurrency, 0);
    edtBed.Text := CurrToStrF(bed, ffCurrency, 0);
  end;
end;

end.
