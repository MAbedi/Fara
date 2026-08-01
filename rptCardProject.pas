unit rptCardProject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons,
  Mask, DBCtrls, DB, ADODB, Grids, Vcl.DBGrids, ppParameter, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptCardProjectF = class(Ttemplate2MDIF)
    qryContracts: TADOQuery;
    qryContractsCaseNo: TIntegerField;
    qryContractsYearID: TIntegerField;
    qryContractsCustomerGrpId: TIntegerField;
    qryContractsContractTopic: TWideStringField;
    qryContractsInsertDate: TDateTimeField;
    qryContractsContractRow: TIntegerField;
    qryContractsContractNo: TStringField;
    qryContractsContractDate: TStringField;
    qryContractsEmployerId: TIntegerField;
    qryContractsWorkShopId: TIntegerField;
    qryContractsStartDate: TStringField;
    qryContractsEndDate: TStringField;
    qryContractsExecutionTime: TIntegerField;
    qryContractsActivityStartDate: TStringField;
    qryContractsAnticipateDate: TStringField;
    qryContractsContractBasePrice: TBCDField;
    qryContractsRefInsuranceDate: TStringField;
    qryContractsInsuranceBranch: TWideStringField;
    qryContractsRefAssetsDate: TStringField;
    qryContractsAssetsBranch: TStringField;
    qryContractsContractType: TIntegerField;
    qryContractsUpperCaseNo: TIntegerField;
    qryContractsContractsStatus: TWordField;
    qryContracts_EmployerId: TStringField;
    qryContracts_WorkShopId: TStringField;
    qryContractsRefInsuranceNo: TStringField;
    qryContractsInsuranceWorkShopId: TStringField;
    qryContractsRefAssetsNo: TStringField;
    qryContractsFromType: TIntegerField;
    qryContractsFromDate: TStringField;
    srcContracts: TDataSource;
    qryContractsProperties: TADOQuery;
    qryContractsPropertiesLookUpID: TIntegerField;
    qryContractsProperties_Name: TStringField;
    qryContractsPropertiesPropertiesEntity: TFMTBCDField;
    qryContractsPropertiesPropertiesNote: TStringField;
    srcContractsProperties: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    btnSearchReciptNumber: TSpeedButton;
    edtCaseNo: TDBEdit;
    edtFromDate: TDBEdit;
    qryContractsAidNo: TStringField;
    qryContractsAidDate: TStringField;
    qryContractsNote: TStringField;
    qryContractsTechnicalCode: TStringField;
    qryContractsEconomicNumber: TStringField;
    qryContractsNationalID: TStringField;
    qryContractsAddress: TStringField;
    qryContractsTel: TStringField;
    qryOperations: TADOQuery;
    qryOperationsContractOperationId: TIntegerField;
    qryOperationsOperationId: TLargeintField;
    qryOperations_StuffName: TStringField;
    qryOperations_UnitName: TStringField;
    qryOperations_SellPrice1: TCurrencyField;
    qryOperationsAmount: TBCDField;
    qryOperationsBasePrice: TBCDField;
    qryOperationsOverheadPrice: TBCDField;
    qryOperationsTotalPrice: TBCDField;
    qryOperationsFarmId: TIntegerField;
    qryOperationsPieceId: TIntegerField;
    qryOperationsContractOperationNote: TWideStringField;
    srcOperations: TDataSource;
    qrySalary: TADOQuery;
    srcSalary: TDataSource;
    qrySalaryProjectID: TIntegerField;
    qrySalary‘„«—ÂÅ—”‰·Ì: TIntegerField;
    qrySalary„‘Œ’« Å—”‰·: TStringField;
    qrySalary„«Â: TWordField;
    qrySalaryê—ÊÂ‘€·Ì: TStringField;
    qrySalaryﬂ·ﬂ«—ﬂ—œ: TFloatField;
    qrySalary„»·€ﬂ·: TBCDField;
    srcAccounting: TDataSource;
    qryAccounting: TADOQuery;
    qryAccountingYearID: TIntegerField;
    qryAccountingTopicCode: TLargeintField;
    qryAccountingCTopicCode: TIntegerField;
    qryAccountingMoeenName_L1: TStringField;
    qryAccountingMoeenName_L2: TStringField;
    qryAccountingCTopicName_L1: TStringField;
    qryAccountingCTopicName_L2: TStringField;
    qryAccountingDebt: TFMTBCDField;
    qryAccountingCredit: TFMTBCDField;
    qryAccountingBalanceDebt: TFMTBCDField;
    qryAccountingBalanceCredit: TFMTBCDField;
    qryAccountingbes: TBCDField;
    qryAccountingbed: TBCDField;
    qryAccountingMandehBed: TBCDField;
    qryAccountingMandehbes: TBCDField;
    qryAccounting_row: TLargeintField;
    dbgrdAccounting: TDBGrid;
    pnl2: TPanel;
    dbgrdSalary: TDBGrid;
    dbgrdOperations: TDBGrid;
    actSalaryDBName: TAction;
    lblSalaryBankName: TLabel;
    spl1: TSplitter;
    spl2: TSplitter;
    spl3: TSplitter;
    pnl1: TPanel;
    grp1: TGroupBox;
    dbmmoNote: TDBMemo;
    grp2: TGroupBox;
    dbgrdContractsProperties: TDBGrid;
    pnl3: TPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edtContractTopic: TDBEdit;
    edtContractRow: TDBEdit;
    edtContractNo: TDBEdit;
    edtContractDate: TDBEdit;
    edtEmployerId: TDBEdit;
    edtWorkShopId: TDBEdit;
    edtStartDate: TDBEdit;
    edtEndDate: TDBEdit;
    edtExecutionTime: TDBEdit;
    edtActivityStartDate: TDBEdit;
    lbl14: TLabel;
    edtActivityStartDate1: TDBEdit;
    lbl15: TLabel;
    edtAnticipateDate: TDBEdit;
    lbl16: TLabel;
    edtContractBasePrice: TDBEdit;
    lbl17: TLabel;
    edt_EmployerId: TDBEdit;
    lbl18: TLabel;
    edt_WorkShopId: TDBEdit;
    lbl19: TLabel;
    edtAidNo: TDBEdit;
    lbl20: TLabel;
    edtAidDate: TDBEdit;
    lbl21: TLabel;
    edtTechnicalCode: TDBEdit;
    lbl22: TLabel;
    edtEconomicNumber: TDBEdit;
    lbl23: TLabel;
    edtNationalID: TDBEdit;
    lbl24: TLabel;
    edtAddress: TDBEdit;
    lbl25: TLabel;
    edtTel: TDBEdit;
    btn1: TBitBtn;
    btnBtnPrint: TBitBtn;
    dbnvgr1: TDBNavigator;
    actPrint: TAction;
    plnContracts: TppDBPipeline;
    plnAccounting: TppDBPipeline;
    pfldDBPipeline1ppField1: TppField;
    pfldDBPipeline1ppField2: TppField;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLblShowLimitPlace2: TppLabel;
    ppLblShowLimitPlace1: TppLabel;
    ppLblCurrentDate: TppLabel;
    LblCurrentDate2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    pplblYearId: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalcnum2alphabet: TppDBCalc;
    pdbtxtDBnum2alphabet: TppDBText;
    ppLabel2: TppLabel;
    plblcrossXnameYCrossXNameY: TppLabel;
    pdbtxtCrossXNameY: TppDBText;
    pdbclcCrossXNameY: TppDBCalc;
    pdbclc2CrossXNameY: TppDBCalc;
    ppParameterList1: TppParameterList;
    plnContractsProperties: TppDBPipeline;
    pfld1: TppField;
    pfld2: TppField;
    plnOperations: TppDBPipeline;
    pfld3: TppField;
    pfld4: TppField;
    plnSalary: TppDBPipeline;
    pfld5: TppField;
    pfld6: TppField;
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryContractsAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure actSalaryDBNameExecute(Sender: TObject);
    procedure qrySalaryAfterOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure InitForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCardProjectF: TrptCardProjectF;

implementation

uses FormFunctions, DM, GlobalPro, FaraConsts;

{$R *.dfm}

procedure TrptCardProjectF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryContracts.DisableControls;
    qryContractsProperties.DisableControls;
    qryOperations.DisableControls;
    qrySalary.DisableControls;
    qryAccounting.DisableControls;
    InitReportFile(ppReport1,Self.Name);
  finally
    qryContracts.EnableControls;
    qryContractsProperties.EnableControls;
    qryOperations.EnableControls;
    qrySalary.EnableControls;
    qryAccounting.EnableControls;
  end;
end;

procedure TrptCardProjectF.actSalaryDBNameExecute(Sender: TObject);
begin
  inherited;
  DMf.adcsalary.Connected := False;
  SaveConfig(APPID, 'SalaryBankName', 'Salary_');
  DMf.adcsalary.Connected := True;
  qrySalary.Open;
end;

procedure TrptCardProjectF.btnSearchReciptNumberClick(Sender: TObject);
begin
  inherited;
  btnContractsCaseNo(qryContracts)
end;

procedure TrptCardProjectF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TrptCardProjectF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrdSalary, 1, True);
  SetColSize(dbgrdOperations, 1, True);
  SetColSize(dbgrdAccounting, 1, True);
  SetColSize(dbgrdContractsProperties, 2, True);
end;

procedure TrptCardProjectF.InitForm;
begin
  qryContracts.Active := True
end;

procedure TrptCardProjectF.qryContractsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryOperations do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContractsCaseNo.AsInteger;
    Active := True;
  end;
  with qryContractsProperties do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContracts.FieldByName('CaseNo')
      .AsInteger;
    Active := True;
  end;
  with qrySalary do
    try
      Active := False;
      Parameters.ParamByName('CaseNo').Value :=
        qryContracts.FieldByName('CaseNo').AsInteger;
      Active := True;
    except
    end;

  with qryAccounting do
    try
      Active := False;
      Parameters.ParamByName('CTopicCode2From').Value :=
        qryContractsCaseNo.AsInteger;
      Parameters.ParamByName('CTopicCode2To').Value :=
        qryContractsCaseNo.AsInteger;
      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
      Active := True;
    except
    end;
end;

procedure TrptCardProjectF.qrySalaryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lblSalaryBankName.Caption := 'SalaryBankName = ' +
    ReadConfig(APPID, 'SalaryBankName', '')
end;

end.
