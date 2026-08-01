{ -----------------------------------------------------------------------------
  Unit Name: ConversionCo
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit ConversionCo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, DBCtrls, Mask, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TConversionCoF = class(Ttemplate2MDIF)
    qryPrimary: TADOQuery;
    srcPrimary: TDataSource;
    qry_TransForms: TADOQuery;
    qry_TransFormsTransFormID: TIntegerField;
    qry_TransFormsTransFormNo: TIntegerField;
    qry_TransFormsTransFormDate: TStringField;
    qry_TransFormsEntity: TFloatField;
    qry_TransFormsWeight: TFloatField;
    qry_TransFormsNote: TStringField;
    qryPrimaryID: TIntegerField;
    qryPrimaryTransFormID: TIntegerField;
    qryPrimaryEntity: TFloatField;
    qryPrimaryWeight: TFloatField;
    qryPrimaryPortionPercent: TFloatField;
    qryStuff_Unit_TecInf: TADOQuery;
    qryPrimary_StuffName: TStringField;
    qryPrimary_StuffUnit: TStringField;
    qry_TransForms_StuffName: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Src_TransForms: TDataSource;
    DataSetDelete2: TDataSetDelete;
    chkPortionPercent: TCheckBox;
    actSendExcel: TAction;
    qry_TransFormsControlCode: TLargeintField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSysVarPageNo: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    ppDBPipeline2: TppDBPipeline;
    BitBtn9: TBitBtn;
    actSort: TAction;
    qry_TransFormsStuffModel: TIntegerField;
    qry_Lookup: TADOQuery;
    qry_TransForms_StuffModelName: TStringField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel1: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppTitleBand1: TppTitleBand;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel26: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel27: TppLabel;
    ppLabel7: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel31: TppLabel;
    PageControl1: TPageControl;
    TabSheetPrimary: TTabSheet;
    TabSheetOutFit: TTabSheet;
    TabSheetWage: TTabSheet;
    TabSheetSuperadd: TTabSheet;
    TabSheetAccessory: TTabSheet;
    qryPrimaryStanRate: TBCDField;
    qryPrimaryScheduleID: TIntegerField;
    qryPrimaryStuffPersent: TFloatField;
    qryPrimaryStuffPersentRate: TBCDField;
    qryPrimaryInfoType: TWordField;
    qryProcessProduce: TADOQuery;
    qryProcessProduceTransFormID: TIntegerField;
    qryProcessProducePrvCode: TIntegerField;
    srcProcessProduce: TDataSource;
    qrySuperadd: TADOQuery;
    srcSuperadd: TDataSource;
    qryAccessory: TADOQuery;
    srcAccessory: TDataSource;
    qryWage: TADOQuery;
    srcWage: TDataSource;
    qryOutFit: TADOQuery;
    srcOutFit: TDataSource;
    qryAccessoryID: TIntegerField;
    qryAccessoryTransFormID: TIntegerField;
    qryAccessoryEntity: TFloatField;
    qryAccessoryWeight: TFloatField;
    qryAccessoryPortionPercent: TFloatField;
    qryAccessory_StuffName: TStringField;
    qryAccessory_StuffUnit: TStringField;
    qryAccessoryStanRate: TBCDField;
    qryAccessoryScheduleID: TIntegerField;
    qryAccessoryStuffPersent: TFloatField;
    qryAccessoryStuffPersentRate: TBCDField;
    qryAccessoryInfoType: TWordField;
    qryScheduleInfo: TADOQuery;
    qryTransFormInfo: TADOQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    WordField2: TWordField;
    IntegerField8: TIntegerField;
    StringField2: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField4: TStringField;
    qryWageID: TIntegerField;
    qryWageTransFormID: TIntegerField;
    qryWageInfoType: TWordField;
    qryWageCode: TIntegerField;
    qryWage_CodeName: TStringField;
    qryWageAmount1: TFloatField;
    qryWageStanRate: TBCDField;
    qryWage__StanRateAmount: TCurrencyField;
    qryWageAmount2: TFloatField;
    qryOutFitID: TIntegerField;
    qryOutFitTransFormID: TIntegerField;
    qryOutFitInfoType: TWordField;
    qryOutFitCode: TIntegerField;
    qryOutFit_CodeName: TStringField;
    qryOutFitAmount1: TFloatField;
    qryOutFitStanRate: TBCDField;
    qryOutFitPrvCode: TIntegerField;
    qryOutFit__StanRateAmount: TCurrencyField;
    qrySuperaddID: TIntegerField;
    qrySuperaddTransFormID: TIntegerField;
    qrySuperaddInfoType: TWordField;
    qrySuperaddCode: TIntegerField;
    qrySuperadd_CodeName: TStringField;
    qrySuperaddAmount1: TFloatField;
    qrySuperaddStanRate: TBCDField;
    qrySuperadd__StanRateAmount: TCurrencyField;
    actDeleteAll: TAction;
    Label1: TLabel;
    EdtFormNo: TDBEdit;
    Label2: TLabel;
    EdtDate: TDBEdit;
    qry_TransFormsEarthGrpID: TIntegerField;
    qry_TransFormsEarthCost: TFloatField;
    qry_TransFormsCycleMonth: TFloatField;
    qryEarthGroups: TADOQuery;
    qry_TransForms_EarthGrpName: TStringField;
    qry_TransForms_UntilName: TStringField;
    Panel1: TPanel;
    LblEntity: TLabel;
    LblWeight: TLabel;
    Label8: TLabel;
    EdtEntity: TDBEdit;
    EdtWeight: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    qryProcessProduceProcessProduceID: TIntegerField;
    qryProcessProduceProcessID: TIntegerField;
    qryProcessProduceProcessRow: TIntegerField;
    qryProcessProduceCycleMonth: TFloatField;
    qry_ProcessInfo: TADOQuery;
    qryProcessProduce_ProcessName: TStringField;
    qryPrimaryProcessID: TIntegerField;
    qryPrimaryCycleMonth: TFloatField;
    qryWageProcessID: TIntegerField;
    qryWageCycleMonth: TFloatField;
    qrySuperaddCycleMonth: TFloatField;
    qrySuperaddProcessID: TIntegerField;
    qryOutFitCycleMonth: TFloatField;
    qryOutFitProcessID: TIntegerField;
    qryAccessoryCycleMonth: TFloatField;
    qryAccessoryProcessID: TIntegerField;
    PnlAll: TPanel;
    PnlDeleteAll: TPanel;
    SpeedButton16: TSpeedButton;
    Panel4: TPanel;
    pnlProcessProduce: TPanel;
    Panel6: TPanel;
    SpeedButton4: TSpeedButton;
    qry_TransFormsStuffCode: TLargeintField;
    qryPrimaryStuffCode: TLargeintField;
    qryAccessoryStuffCode: TLargeintField;
    qry_TransFormsTransFormState: TWordField;
    dbchkTransFormState: TDBCheckBox;
    pnlEarth: TPanel;
    DBText2: TDBText;
    SpeedButton3: TSpeedButton;
    edtEarthGrpID: TDBEdit;
    Label5: TLabel;
    lblEarthCost: TLabel;
    edtEarthCost: TDBEdit;
    pnl1: TPanel;
    Label20: TLabel;
    SpeedButton1: TSpeedButton;
    DBTextStuffCode: TDBText;
    Label7: TLabel;
    DBText3: TDBText;
    EdtStuffCode: TDBEdit;
    actCopy: TAction;
    BitBtn10: TBitBtn;
    pnlStuffCode: TPanel;
    Label4: TLabel;
    edtStuffModel: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    btnSearchReciptNumber: TSpeedButton;
    SpeedButton5: TSpeedButton;
    actGetExcelPrimary: TAction;
    grdPrimary: TCedarDbgrid;
    grdWage: TCedarDbgrid;
    grdSuperadd: TCedarDbgrid;
    grdOutFit: TCedarDbgrid;
    grdAccessory: TCedarDbgrid;
    grdProcessProduce: TCedarDbgrid;
    procedure qryPrimaryAfterInsert(DataSet: TDataSet);
    procedure qry_TransFormsAfterInsert(DataSet: TDataSet);
    procedure qry_TransFormsAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_TransFormsBeforePost(DataSet: TDataSet);
    procedure grdPrimaryKeyPress(Sender: TObject; var Key: Char);
    procedure grdPrimaryEditButtonClick(Sender: TObject);
    procedure grdPrimaryEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qry_TransFormsAfterScroll(DataSet: TDataSet);
    procedure Src_TransFormsStateChange(Sender: TObject);
    procedure qry_TransFormsBeforeCancel(DataSet: TDataSet);
    procedure qry_TransFormsBeforeDelete(DataSet: TDataSet);
    procedure qryPrimaryBeforeDelete(DataSet: TDataSet);
    procedure EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkPortionPercentClick(Sender: TObject);
    procedure qryPrimaryPortionPercentChange(Sender: TField);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtStuffModelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Allgridkeyenter(Sender: TObject; var Key: Char; GrdHint: Integer);
    procedure grdProcessProduceEditButtonClick(Sender: TObject);
    procedure qryPrimaryBeforePost(DataSet: TDataSet);
    procedure qryAccessoryAfterInsert(DataSet: TDataSet);
    procedure qryProcessProduceAfterInsert(DataSet: TDataSet);
    procedure qryOutFitAfterInsert(DataSet: TDataSet);
    procedure grdOutFitEditButtonClick(Sender: TObject);
    procedure qryOutFitCalcFields(DataSet: TDataSet);
    procedure qryWageAfterInsert(DataSet: TDataSet);
    procedure grdWageEditButtonClick(Sender: TObject);
    procedure qrySuperaddAfterInsert(DataSet: TDataSet);
    procedure grdSuperaddEditButtonClick(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qryProcessProduceAfterScroll(DataSet: TDataSet);
    procedure qryProcessProduceBeforeInsert(DataSet: TDataSet);
    procedure qryPrimaryBeforeInsert(DataSet: TDataSet);
    procedure actCopyExecute(Sender: TObject);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure actGetExcelPrimaryExecute(Sender: TObject);
    procedure qryPrimaryBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    OKUpdateBatch: Boolean;
    procedure initForm;
    function ValidData: Boolean;
    function CHKPriorityTransFormDate(DataSet: TDataSet): String;
    function ValidateDatasetDatesTransForm(DataSet: TDataSet): Boolean;
  public
    { Public declarations }
  end;

var
  ConversionCoF: TConversionCoF;

implementation

uses sndkey32, DM, GlobalPro, mmessage, shamsiDate, searchCode_ADO,
  search2, sort2, FormFunctions, mdiMain, GetExcel, FaraConsts;

{$R *.dfm}

procedure TConversionCoF.qry_TransFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TransFormID').AsInteger :=
    GetANewCode(Self.Name, 'TransForms', 'TransFormID');
  DataSet.FieldByName('TransFormNo').AsInteger :=
    GetANewCode(Self.Name, 'TransForms', 'TransFormNo');
  DataSet.FieldByName('TransFormDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('EarthGrpID').AsInteger := 0;
  DataSet.FieldByName('CycleMonth').AsInteger := 1;
  EdtFormNo.SetFocus;
end;

procedure TConversionCoF.qryPrimaryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.Name, 'TransFormItems', 'ID');
  DataSet.FieldByName('TransFormID').AsInteger :=
    qry_TransForms.FieldByName('TransFormID').AsInteger;
  DataSet.FieldByName('ProcessID').AsInteger := qryProcessProduce.FieldByName
    ('ProcessID').AsInteger;

  grdPrimary.SelectedIndex := 0;
  DataSet.FieldByName('InfoType').AsInteger := 0;
  grdPrimary.SetFocus;
end;

procedure TConversionCoF.qry_TransFormsAfterPost(DataSet: TDataSet);
var
  ridPrimary, ridAccessory, ridOutFit, ridWage: Integer;
  rid, ridProduction: Integer;
begin
  inherited;
  OKUpdateBatch := True;
  ridProduction := qryProcessProduce.FieldByName('ProcessProduceID').AsInteger;
  if qryProcessProduce.State in dsEditModes then
    qryProcessProduce.Post;
  try
    qryProcessProduce.UpdateBatch();
  except
    warn('«‘ﬂ«· œ— À»  ›—„ ›—¬Ì‰œ  Ê·Ìœ');
    OKUpdateBatch := False
  end; // try

  if qryPrimary.Active then
    ridPrimary := qryPrimary.FieldByName('ID').AsInteger;
  if qryPrimary.State in dsEditModes then
    qryPrimary.Post;
  if qryPrimary.Active then
    try
      qryPrimary.UpdateBatch();
    except
      warn('«‘ﬂ«· œ— À»  ›—„ „Ê«œ «Ê·ÌÂ');
      OKUpdateBatch := False;
    end; // try

  if qryAccessory.Active then
  begin
    ridAccessory := qryAccessory.FieldByName('ID').AsInteger;
    if qryAccessory.State in dsEditModes then
      qryAccessory.Post;
    try
      qryAccessory.UpdateBatch();
    except
      warn('«‘ﬂ«· œ— À»  ›—„ „Õ’Ê·«  ›—⁄Ì');
      OKUpdateBatch := False;
    end; // try
  end;

  if qryOutFit.Active then
  begin
    ridOutFit := qryOutFit.FieldByName('ID').AsInteger;
    if qryOutFit.State in dsEditModes then
      qryOutFit.Post;
    try
      qryOutFit.UpdateBatch();
    except
      warn('«‘ﬂ«· œ— À»  ›—„  ÃÂÌ“«  Ê «„ﬂ«‰« ');
      OKUpdateBatch := False;
    end; // try
  end;

  if qryWage.Active then
  begin
    ridWage := qryWage.FieldByName('ID').AsInteger;
    if qryWage.State in dsEditModes then
      qryWage.Post;
    try
      qryWage.UpdateBatch();
    except
      warn('«‘ﬂ«· œ— À»  ›—„ œ” „“œ Ê Å—”‰·Ì');
      OKUpdateBatch := False;
    end; // try
  end;

  if qrySuperadd.Active then
  begin
    if qrySuperadd.State in dsEditModes then
      qrySuperadd.Post;
    try
      qrySuperadd.UpdateBatch();
    except
      warn('«‘ﬂ«· œ— À»  ');
      OKUpdateBatch := False;
    end; // try
  end;

  if qryAccessory.Active then
  begin
    ridAccessory := qryAccessory.FieldByName('ID').AsInteger;
    qryAccessory.Requery;
    qryAccessory.Locate('ID', ridAccessory, []);
  end;

  if qryPrimary.Active then
  begin
    ridPrimary := qryPrimary.FieldByName('ID').AsInteger;
    qryPrimary.Requery;
    qryPrimary.Locate('ID', ridPrimary, []);
  end;

  if qryOutFit.Active then
  begin
    ridOutFit := qryOutFit.FieldByName('ID').AsInteger;
    qryOutFit.Requery;
    qryOutFit.Locate('ID', ridOutFit, []);
  end;

  if qryWage.Active then
  begin
    ridWage := qryWage.FieldByName('ID').AsInteger;
    qryWage.Requery;
    qryWage.Locate('ID', ridWage, []);
  end;

  if qrySuperadd.Active then
  begin
    ridWage := qrySuperadd.FieldByName('ID').AsInteger;
    qrySuperadd.Requery;
    qrySuperadd.Locate('ID', ridWage, []);
  end;

  rid := qry_TransForms.FieldByName('TransFormID').AsInteger;
  qry_TransForms.Requery;
  qry_TransForms.Locate('TransFormID', rid, []);

  if qryProcessProduce.Active then
  begin
    qryProcessProduce.Requery;
    qryProcessProduce.Locate('ProcessProduceID', ridProduction, []);
  end;
  if OKUpdateBatch then
    BigMessage('À»  ‘œ.', 1);

end;

procedure TConversionCoF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
  Entity_Weight(grdPrimary);
  PageControl1.TabIndex := 0;
end;

procedure TConversionCoF.qry_TransFormsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qry_TransForms) then
    Abort;
  if not ValidData then
    Abort;
  if not ValidateDatasetDatesTransForm(DataSet) then
    Abort;
end;

function TConversionCoF.ValidateDatasetDatesTransForm
  (DataSet: TDataSet): Boolean;
var
  StartMaliYear: String;
begin
  StartMaliYear := APPBank.StartYear;
  if opt.CHKPriorityTransDate then
    StartMaliYear := CHKPriorityTransFormDate(DataSet);
  Result := ValidateDatasetDates(DataSet, StartMaliYear, APPBank.endYear);
  if not Result then
    warn('«‘ﬂ«· »Â ⁄·   ﬁœ„ Ê  «ÒŒ—  «—ÌŒ ', mtInformation);
end;

function TConversionCoF.CHKPriorityTransFormDate(DataSet: TDataSet): String;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT MAX(TransFormDate)FROM TransForms WHERE(TransFormID<>' +
      DataSet.FieldByName('TransFormID').AsString + ')';
    Active := True;
    Result := Fields[0].AsString;
    Active := False;
    // DataSet.FieldByName('TransFormDate').ReadOnly := Result >
    // DataSet.FieldByName('TransFormDate').AsString;
  end;

end;

function TConversionCoF.ValidData: Boolean;
var
  s: String;
begin
  Result := False;
  s := qry_TransForms.FieldByName('TransFormDate').AsString;
  if not validate_date(False, APPBank.StartYear, APPBank.endYear, ' «—ÌŒ', s)
  then
  begin
    EdtDate.SetFocus;
    Exit;
  end; // if
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM TransForms WHERE(TransFormNo=' +
      qry_TransForms.FieldByName('TransFormNo').AsString +
      ')AND (TransFormID <> ' + qry_TransForms.FieldByName('TransFormID')
      .AsString + ')';
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      warn('‘„«—Â Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
      EdtFormNo.SetFocus;
      Exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure TConversionCoF.grdPrimaryKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Allgridkeyenter(Sender, Key, StrToInt((Sender as TCedarDbgrid).Hint));
end;

procedure TConversionCoF.grdPrimaryEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    Exit;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      begin
        sqlText := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName' +
          ' FROM StuffCoding INNER JOIN' +
          ' StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID' +
          ' WHERE (StuffGroups.GroupType IN (0,1))';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '·Ì”  ò«·«Â«Ì  ⁄—Ì› ‘œÂ',
          sqlText, ['òœ', '‰«„ ﬂ«·«'], Results, [60, 200], alLeft) then
        begin
          if not((Sender as TCedarDbgrid).DataSource.DataSet.State
            in dsEditModes) then
            (Sender as TCedarDbgrid).DataSource.DataSet.edit;
          (Sender as TCedarDbgrid).DataSource.DataSet['stuffcode'] :=
            Results[0];
        end; // if
      end; // 0
  end; // case
end;

procedure TConversionCoF.grdPrimaryEnter(Sender: TObject);
begin
  inherited;
  (Sender as TCedarDbgrid).SelectedIndex := 0;
end;

procedure TConversionCoF.SpeedButton1Click(Sender: TObject);
var
  Name: string;
begin
  inherited;
  SpeedButtonStuffCoding(qry_TransForms, 'StuffCode', '0,3', Name)
end;

procedure TConversionCoF.qry_TransFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryPrimary.Active := False;
  qryWage.Active := False;
  qrySuperadd.Active := False;
  qryOutFit.Active := False;
  qryAccessory.Active := False;
  With qryProcessProduce do
  begin
    Active := False;
    Parameters.ParamByName('TransFormID').Value :=
      qry_TransForms.FieldByName('TransFormID').AsInteger;
    Active := True;
  end; // with
end;

procedure TConversionCoF.Src_TransFormsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_TransForms.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  // grdPrimary.ReadOnly := not okPanel.Visible;
  DataSetDelete2.Visible := okPanel.Visible;
  actDeleteAll.Visible := okPanel.Visible;
  PnlDeleteAll.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  pnlProcessProduce.Visible := okPanel.Visible;
end;

procedure TConversionCoF.qry_TransFormsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryPrimary.Active then
  BEGIN
    if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mrYes then
      Abort;
    if qryPrimary.State in dsEditModes then
    begin
      qryPrimary.Cancel;
      qryPrimary.CancelBatch;
    end;
  END;
end;

procedure TConversionCoF.qry_TransFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TConversionCoF.qryPrimaryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ —œÌ› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TConversionCoF.qryPrimaryBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;

end;

procedure TConversionCoF.EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TConversionCoF.chkPortionPercentClick(Sender: TObject);
begin
  inherited;
  grdPrimary.Columns[ColumnIndexByFieldName(grdPrimary, 'PortionPercent')
    ].Visible := chkPortionPercent.Checked;
end;

procedure TConversionCoF.qryPrimaryPortionPercentChange(Sender: TField);
begin
  inherited;
  qryPrimary.FieldByName('Entity').Value :=
    (qry_TransForms.FieldByName('Entity').Value * qryPrimary.FieldByName
    ('PortionPercent').Value) / 100;
  if qryPrimary.FieldByName('Entity').IsNull then
    qryPrimary.FieldByName('Entity').Value := 0;
  qryPrimary.FieldByName('Weight').Value :=
    (qry_TransForms.FieldByName('Weight').Value * qryPrimary.FieldByName
    ('PortionPercent').Value) / 100;
  if qryPrimary.FieldByName('Weight').IsNull then
    qryPrimary.FieldByName('Entity').Value := 0;
end;

procedure TConversionCoF.initForm;
// var
// s:String;
begin
  SetLookUpCash(qryPrimary);
  SetLookUpCash(qry_TransForms);
  SetLookUpCash(qryProcessProduce);
  SetLookUpCash(qryAccessory);
  SetLookUpCash(qryWage);
  SetLookUpCash(qrySuperadd);
  SetLookUpCash(qryOutFit);
  LblEntity.Visible := opt.EntityDisplay; // (s='2')OR(s='0');
  grdPrimary.Columns[ColumnIndexByFieldName(grdPrimary, 'Entity')].Visible :=
    LblEntity.Visible;
  EdtEntity.Visible := LblEntity.Visible;

  LblWeight.Visible := opt.WeightDisplay; // (s='2')OR(s='1');
  grdPrimary.Columns[ColumnIndexByFieldName(grdPrimary, 'Weight')].Visible :=
    LblWeight.Visible;
  EdtWeight.Visible := LblWeight.Visible;

  grdPrimary.Columns[ColumnIndexByFieldName(grdPrimary, 'PortionPercent')
    ].Visible := chkPortionPercent.Checked;

  pnlEarth.Visible := SubsysMenu[07].Active;
  // mdimainf.MainFrame.GetActiveIndex <> 10;

  pnlStuffCode.Visible := pnlEarth.Visible;
  qry_TransForms_UntilName.Required := pnlEarth.Visible;

  qry_TransForms.Active := True;
  qry_TransForms.Last
end;

procedure TConversionCoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPrimary);
end;

procedure TConversionCoF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdPrimary);
end;

procedure TConversionCoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryPrimary.DisableControls;
    qry_TransForms.DisableControls;
    InitReportFile(ppReport1, Self.Name);
  finally
    qryPrimary.EnableControls;
    qry_TransForms.EnableControls;
  end;
end;

procedure TConversionCoF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TConversionCoF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TConversionCoF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TConversionCoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPrimary);
end;

procedure TConversionCoF.SpeedButton2Click(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = 15) ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, '„œ·Â«', txt,
    ['òœ', '‰«„ „œ·'], alLeft);
  if s <> '' then
  begin
    if not(qry_TransForms.State in dsEditModes) then
      qry_TransForms.edit;
    qry_TransForms['StuffModel'] := c;
  end; // if
end;

procedure TConversionCoF.edtStuffModelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click

end;

procedure TConversionCoF.Allgridkeyenter;
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case GrdHint of
          1:
            case curIndex of
              0:
                If aDataSet.FieldByName('ProcessID').AsLargeInt = 0 then
                  nextIndex := -2
                else
                  nextIndex := 2;
              1:
                nextIndex := 2;
              2:
                nextIndex := 3;
              3:
                nextIndex := 4;
              4:
                nextIndex := -1;
            end; // case
          2, 6:
            case curIndex of
              0:
                If aDataSet.FieldByName('StuffCode').AsLargeInt = 0 then
                  nextIndex := -2
                else
                  nextIndex := 3;
              1:
                nextIndex := 3;
              2:
                nextIndex := 3;
              3:
                nextIndex := 4;
              4:
                nextIndex := 5;
              5:
                nextIndex := 6;
              6:
                nextIndex := 7;
              7:
                nextIndex := 8;
              8:
                nextIndex := 9;
              9:
                nextIndex := -1;

            end; // case
          3, 5:
            case curIndex of
              0:
                If aDataSet.FieldByName('Code').AsString = '' then
                  nextIndex := -2
                else
                  nextIndex := 2;
              1:
                nextIndex := 2;
              2:
                nextIndex := 3;
              3:
                nextIndex := 4;
              4:
                nextIndex := 5;
              5:
                nextIndex := -1;
              6:
                nextIndex := -1;
            end; // case
          4:
            case curIndex of
              0:
                If aDataSet.FieldByName('Code').AsString = '' then
                  nextIndex := -2
                else
                  nextIndex := 2;
              1:
                nextIndex := 2;
              2:
                nextIndex := 3;
              3:
                nextIndex := 4;
              4:
                nextIndex := 5;
              5:
                nextIndex := 6;
              6:
                nextIndex := -1;
              7:
                nextIndex := -1;
            end; // case
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
          ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: case GrdHint of 1: if curIndex in [0] then
    begin
      Key := #0;
      grdProcessProduceEditButtonClick(Sender);
    end; // if
    2, 6:
      if curIndex in [0 .. 1] then
      begin
        Key := #0;
        grdPrimaryEditButtonClick(Sender);
      end; // if
    3:
      if (curIndex in [0 .. 1]) or ((curIndex in [3 .. 4])) then
      begin
        Key := #0;
        grdOutFitEditButtonClick(Sender);
      end; // if
    4:
      if (curIndex in [0 .. 1]) or ((curIndex in [4 .. 5])) then
      begin
        Key := #0;
        grdWageEditButtonClick(Sender);
      end; // if
    5:
      if (curIndex in [0 .. 1]) or ((curIndex in [3 .. 4])) then
      begin
        Key := #0;
        grdSuperaddEditButtonClick(Sender);
      end; // if
  end; // case
end; // case
if nextIndex >= 0 then
  while (nextIndex < (Sender as TCedarDbgrid).Columns.Count) and
    (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
    ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
    Inc(nextIndex);
if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
  nextIndex := -1;
if (curIndex <> nextIndex) then
  case nextIndex of
    - 1:
      begin
        sendkey(vk_down, [], False);
        (Sender as TCedarDbgrid).SelectedIndex := 0;
      end; // 0
    -2:
      begin
        if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
          (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
        Perform(WM_NEXTDLGCTL, 0, 0);
      end; // -2
    -3:
      begin
        if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
          (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
        Perform(WM_NEXTDLGCTL, 1, 0);
      end; // -3
  else
    (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case
end;

procedure TConversionCoF.btnSearchReciptNumberClick(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 10] of String;
begin
  inherited;
  txt := 'SELECT  DISTINCT TransForms.TransFormID, TransForms.TransFormNo, ' +
    ' TransForms.TransFormDate, TransForms.StuffCode, StuffCoding.c_StuffName '
    + ' FROM  TransForms INNER JOIN StuffCoding ON TransForms.StuffCode = StuffCoding.c_StuffCode';
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'Ã” ÃÊ ﬂœ', txt,
    ['”—Ì«·', '‘„«—Â ›—„', ' «—ÌŒ ›—„', 'òœ ò«·«', '‰«„ ò«·« '], Result,
    [50, 50, 100, 100, 200], alLeft) then
    qry_TransForms.Locate('TransFormID', Result[0], []);
end;

procedure TConversionCoF.grdProcessProduceEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    Exit;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      begin
        sqlText := 'SELECT ProcessID, ProcessName FROM ProcessInfo ';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '·Ì”  ›—¬Ì‰œÂ«Ì  ⁄—Ì› ‘œÂ',
          sqlText, ['òœ', '‰«„ ›—¬Ì‰œ'], Results, [60, 200], alLeft) then
        begin
          if not(qryProcessProduce.State in dsEditModes) then
            qryProcessProduce.edit;
          qryProcessProduce['ProcessID'] := Results[0];
        end; // if
      end; // 0
  end; //
end;

procedure TConversionCoF.qryPrimaryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFieldsFill(DataSet) then
  begin
    DataSet.Delete;
    qry_TransForms.edit;
    Exit;
  end;
  if not CheckRequiredFields(DataSet) then
  begin
    if not(qry_TransForms.State in dsEditModes) then
      qry_TransForms.edit;
    Abort;
  end;
  if qryProcessProduce.FieldByName('CycleMonth').AsInteger >
    qry_TransForms.FieldByName('CycleMonth').AsInteger then
  begin
    warn('„«Â  Õﬁﬁ ‰»«Ìœ «“ ⁄œœ œÊ—Â  Ê·Ìœ »“—ê — ‘Êœ.˛', mtError);
    Abort;
  end;

end;

procedure TConversionCoF.qryAccessoryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.Name, 'TransFormItems', 'ID');
  DataSet.FieldByName('TransFormID').AsInteger :=
    qry_TransForms.FieldByName('TransFormID').AsInteger; // TransFormNo
  grdAccessory.SelectedIndex := 0;
  DataSet.FieldByName('InfoType').AsInteger := 1;
  DataSet.FieldByName('ProcessID').AsInteger := qryProcessProduce.FieldByName
    ('ProcessID').AsInteger;
  grdAccessory.SetFocus;
end;

procedure TConversionCoF.qryProcessProduceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;
  DataSet.FieldByName('ProcessProduceID').AsInteger :=
    GetANewCode(Self.Name, 'ProcessProduce', 'ProcessProduceID');
  DataSet.FieldByName('TransFormID').AsInteger :=
    qry_TransForms.FieldByName('TransFormID').AsInteger; // TransFormNo

  DataSet.FieldByName('PrvCode').AsInteger := 0;
  DataSet.FieldByName('CycleMonth').AsInteger := 1;
  DataSet.FieldByName('ProcessRow').AsInteger := DataSet.RecordCount + 1;;

  grdProcessProduce.SelectedIndex := 0;

  grdProcessProduce.SetFocus;
end;

procedure TConversionCoF.qryOutFitAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.Name, 'TransFormInfo', 'ID');
  DataSet.FieldByName('TransFormID').AsInteger :=
    qry_TransForms.FieldByName('TransFormID').AsInteger; // TransFormNo
  grdOutFit.SelectedIndex := 0;
  DataSet.FieldByName('InfoType').AsInteger := 1;
  DataSet.FieldByName('ProcessID').AsInteger := qryProcessProduce.FieldByName
    ('ProcessID').AsInteger;
  grdOutFit.SetFocus;
end;

procedure TConversionCoF.grdOutFitEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    Exit;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      begin
        sqlText :=
          'SELECT ScheduleId, InfoName FROM ScheduleInfo WHERE (Code = 6)';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '·Ì”  „«‘Ì‰Â«Ì  ⁄—Ì› ‘œÂ',
          sqlText, ['òœ', '‰«„ „«‘Ì‰'], Results, [60, 200], alLeft) then
        begin
          if not(qryOutFit.State in dsEditModes) then
            qryOutFit.edit;
          qryOutFit['Code'] := Results[0];
        end; // if
      end; // 0
  end; // case
end;

procedure TConversionCoF.qryOutFitCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('__StanRateAmount').AsCurrency :=
    DataSet.FieldByName('StanRate').AsFloat * DataSet.FieldByName('Amount1')
    .AsCurrency
end;

procedure TConversionCoF.qryWageAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.Name, 'TransFormInfo', 'ID');
  DataSet.FieldByName('TransFormID').AsInteger :=
    qry_TransForms.FieldByName('TransFormID').AsInteger; // TransFormNo
  grdWage.SelectedIndex := 0;
  DataSet.FieldByName('InfoType').AsInteger := 2;
  DataSet.FieldByName('ProcessID').AsInteger := qryProcessProduce.FieldByName
    ('ProcessID').AsInteger;
  grdWage.SetFocus;
end;

procedure TConversionCoF.grdWageEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    Exit;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      begin
        sqlText :=
          'SELECT ScheduleId, InfoName FROM ScheduleInfo WHERE (Code = 9)';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '·Ì”  Â«Ì  ⁄—Ì› ‘œÂ',
          sqlText, ['òœ', '‰«„ '], Results, [60, 200], alLeft) then
        begin
          if not(qryWage.State in dsEditModes) then
            qryWage.edit;
          qryWage['Code'] := Results[0];
        end; // if
      end; // 0
  end; // case

end;

procedure TConversionCoF.qrySuperaddAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    qry_TransForms.edit;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.Name, 'TransFormInfo', 'ID');
  DataSet.FieldByName('TransFormID').AsInteger :=
    qry_TransForms.FieldByName('TransFormID').AsInteger; // TransFormNo
  grdSuperadd.SelectedIndex := 0;
  DataSet.FieldByName('InfoType').AsInteger := 3;
  DataSet.FieldByName('ProcessID').AsInteger := qryProcessProduce.FieldByName
    ('ProcessID').AsInteger;
  grdSuperadd.SetFocus;
end;

procedure TConversionCoF.grdSuperaddEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  if not(qry_TransForms.State in dsEditModes) then
    Exit;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      begin
        sqlText :=
          'SELECT ScheduleId, InfoName FROM ScheduleInfo WHERE (Code = 5)';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '·Ì”  Â«Ì  ⁄—Ì› ‘œÂ',
          sqlText, ['òœ', '‰«„ „«‘Ì‰'], Results, [60, 200], alLeft) then
        begin
          if not(qrySuperadd.State in dsEditModes) then
            qrySuperadd.edit;
          qrySuperadd['Code'] := Results[0];
        end; // if
      end; // 0
    // 3:  begin
    // sqlText:='SELECT Id, Name FROM     TransFormInfo WHERE     (InfoType = 0) ';
    // if searchCode_ADOF.SearchCode2(DMF.adcBSell,'·Ì”  ›—¬Ì‰œÂ«Ì  ⁄—Ì› ‘œÂ', sqlText,
    // ['òœ','‰«„ ›—¬Ì‰œ'],results,
    // [60,200],alLeft) then begin
    // if not(qrySuperadd.State in dsEditModes) then qrySuperadd.Edit;
    // qrySuperadd['SheetID']:=results[0];
    // end;//if
    // end;//0
  end; // case
end;

procedure TConversionCoF.actCopyExecute(Sender: TObject);
var
  TransFormID, OldTransFormID: Integer;
begin
  inherited;
  if get_response('¬Ì« »—«Ì ﬂÅÌ «Ì‰ ›—„Ê· „ÿ„∆‰ Â” Ìœø˛') <> mrYes then
    Exit;
  OldTransFormID := qry_TransForms.FieldByName('TransFormID').AsInteger;
  With TADOStoredProc.Create(Application) do
    try
      ProcedureName := 'NewTransForms';
      ConnectionString := GetConStr(APPBank.Name);
      Parameters.Refresh;
      Parameters.ParamByName('@TransFormID').Value := 0;
      Parameters.ParamByName('@OldTransFormID').Value := OldTransFormID;
      ExecProc;
      TransFormID := Parameters.ParamByName('@RETURN_VALUE').Value;
      BigMessage('ﬂÅÌ ‘œ.˛', 1);
      qry_TransForms.Requery();
      qry_TransForms.Locate('TransFormID', TransFormID, []);
      qry_TransForms.edit;
      qry_TransForms.Post;
    finally
      Free;
    end;
end;

procedure TConversionCoF.actDeleteAllExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      qryPrimary.Delete;
    1:
      qryWage.Delete;
    2:
      qrySuperadd.Delete;
    3:
      qryOutFit.Delete;
    4:
      qryAccessory.Delete;
  end;
end;

procedure TConversionCoF.actGetExcelPrimaryExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryPrimary);
end;

procedure TConversionCoF.PageControl1Change(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      begin
        PnlAll.Parent := TabSheetPrimary;
      end;
    1:
      begin
        PnlAll.Parent := TabSheetWage;
      end;
    2:
      begin
        PnlAll.Parent := TabSheetSuperadd;
      end;
    3:
      begin
        PnlAll.Parent := TabSheetOutFit;
      end;
    4:
      begin
        PnlAll.Parent := TabSheetAccessory;
      end;
  end;
end;

procedure TConversionCoF.SpeedButton3Click(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT EarthGrpID, EarthGrpName FROM EarthGroups ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, '„‰«ÿﬁ', txt,
    ['òœ', '‰«„ „‰ÿﬁÂ'], alLeft);
  if s <> '' then
  begin
    if not(qry_TransForms.State in dsEditModes) then
      qry_TransForms.edit;
    qry_TransForms['EarthGrpID'] := c;
  end; // if
end;

procedure TConversionCoF.qryProcessProduceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryPrimary do
  begin
    Active := False;
    Parameters.ParamByName('FormID').Value := qryProcessProduce.FieldByName
      ('TransFormID').AsInteger;
    Parameters.ParamByName('ProcessID').Value := qryProcessProduce.FieldByName
      ('ProcessID').AsInteger;
    // Parameters.ParamByName('ServerID').Value:=DataSet.fieldbyname('ServerID').AsInteger;
    Active := True;
  end; // with
  With qryAccessory do
  begin
    Active := False;
    Parameters.ParamByName('FormID').Value := qryProcessProduce.FieldByName
      ('TransFormID').AsInteger;
    Parameters.ParamByName('ProcessID').Value := qryProcessProduce.FieldByName
      ('ProcessID').AsInteger;
    // Parameters.ParamByName('ServerID').Value:=DataSet.fieldbyname('ServerID').AsInteger;
    Active := True;
  end; // with
  With qryOutFit do
  begin
    Active := False;
    Parameters.ParamByName('TransFormID').Value := qryProcessProduce.FieldByName
      ('TransFormID').AsInteger;
    Parameters.ParamByName('ProcessID').Value := qryProcessProduce.FieldByName
      ('ProcessID').AsInteger;
    Active := True;
  end; // with
  With qryWage do
  begin
    Active := False;
    Parameters.ParamByName('TransFormID').Value := qryProcessProduce.FieldByName
      ('TransFormID').AsInteger;
    Parameters.ParamByName('ProcessID').Value := qryProcessProduce.FieldByName
      ('ProcessID').AsInteger;
    Active := True;
  end; // with
  With qrySuperadd do
  begin
    Active := False;
    Parameters.ParamByName('TransFormID').Value := qryProcessProduce.FieldByName
      ('TransFormID').AsInteger;
    Parameters.ParamByName('ProcessID').Value := qryProcessProduce.FieldByName
      ('ProcessID').AsInteger;
    Active := True;
  end;
end;

procedure TConversionCoF.qryProcessProduceBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qry_TransForms) then
    Abort
end;

procedure TConversionCoF.qryPrimaryBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryProcessProduce) then
    Abort
end;

end.
