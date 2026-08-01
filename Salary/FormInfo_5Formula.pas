unit FormInfo_5Formula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ComCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppPrnabl, ppCtrls, ppVar, ppStrtch, ppSubRpt, ppParameter,
  GetFaraFields, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TFormInfo_5FormulaF = class(Ttemplate2MDIF)
    qryFormInfo: TADOQuery;
    srcFormInfo: TDataSource;
    qryInitForm: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    qryMaster: TADOQuery;
    qryMasterFormInfoID: TIntegerField;
    qryMasterFormType: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryMasterInfoName_L2: TStringField;
    qryFormInfoFormInfoID: TIntegerField;
    qryFormInfoFormType: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L2: TStringField;
    qryFormInfoPrvInfoID: TIntegerField;
    qryFormInfoAmount: TBCDField;
    qryFormInfoAmount2: TBCDField;
    qryFormInfoCoefficient: TFloatField;
    qryFormInfoStandardDays: TFloatField;
    qryFormInfoStandardTimes: TFloatField;
    qryFormInfoAccTopicCode: TIntegerField;
    qryFormInfoAccDetailCode: TIntegerField;
    qryFormInfoAccCTopicode: TIntegerField;
    qryFormInfoAccCTopicode2: TIntegerField;
    SrcMaster: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    LblInfoName_L1: TLabel;
    DBEdit3: TDBEdit;
    LblAmount: TLabel;
    DBEdit5: TDBEdit;
    LblStandardDays: TLabel;
    DBEdit6: TDBEdit;
    LblStandardTimes: TLabel;
    DBEdit7: TDBEdit;
    qryWageFormula: TADOQuery;
    srcWageFormula: TDataSource;
    qryFormInfoRecallFormInfoID1: TStringField;
    qryFormInfoRecallFormInfoID2: TStringField;
    PnlRecall: TPanel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    LblPerson1: TLabel;
    qryFormInfoInfoName_L1: TStringField;
    ppReport1: TppReport;
    qryFormInfoWordDocuments: TStringField;
    ppLabel1: TppLabel;
    ppLblFromCaption: TppLabel;
    pplblPrintDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBPipeline1: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBPipeline2: TppDBPipeline;
    BitBtn11: TBitBtn;
    ppLabel2: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel8: TppLabel;
    ppLine6: TppLine;
    ppLine5: TppLine;
    qryFormInfoMaxDay: TFloatField;
    qryFormInfoMaxTime: TFloatField;
    pnlMaxDayTime: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    PnlRecalKindClock: TPanel;
    qryFormInfoRecalKindClock: TWordField;
    qryFormInfoCalCulateType: TWordField;
    edtTaxCode: TDBEdit;
    lblTaxCode: TLabel;
    qryFormInfoTaxCode: TWordField;
    qryFormInfoWageCalcKind: TWordField;
    qryFormInfoFirstAmount: TBCDField;
    qryFormInfoPayMentActive: TWordField;
    Panel5: TPanel;
    btnAcc: TBitBtn;
    qryWageFormulaSalaryID: TIntegerField;
    qryWageFormulaMounthFrom: TWordField;
    qryWageFormulaMounthTo: TWordField;
    qryWageFormulaSQLCalc: TWideStringField;
    qryWageFormulaNote: TWideStringField;
    qrySp_WageFormula: TADOQuery;
    Panel4: TPanel;
    srcSp_WageFormula: TDataSource;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    BitBtn9: TBitBtn;
    qryVu_WageFormula: TADOQuery;
    qryWageFormulaWhereSQLCalc: TStringField;
    dbmmoWhereSQLCalc: TDBMemo;
    mmoWhereSQLCalc: TMemo;
    pnl1: TPanel;
    Panel7: TPanel;
    mmoSQLCalc: TMemo;
    dbmmoSQLCalc: TDBMemo;
    edtMYCalc: TEdit;
    BitBtn12: TBitBtn;
    Edit1: TEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    TabSheet1: TTabSheet;
    Panel8: TPanel;
    BitBtn13: TBitBtn;
    qryWage: TADOQuery;
    qryWageFormInfoID: TIntegerField;
    qryWageSalaryID: TIntegerField;
    qryWageKind: TWordField;
    qryWageInfoID: TIntegerField;
    qryWageInfoName_L1: TStringField;
    qryWageInfoName_L2: TStringField;
    SrcWage: TDataSource;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    DBGrid3: TCedarDbgrid;
    grdSp_WageFormula: TCedarDbgrid;
    qryWageFormulaYearFrom: TIntegerField;
    qryWageFormulaYearTo: TIntegerField;
    qryWageFormulaRunOrder: TWordField;
    cmbRunOrder: TDBComboBox;
    Label4: TLabel;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn10: TBitBtn;
    edtMounth: TEdit;
    edtyear: TEdit;
    qryFormInfoAccCTopiccode3: TIntegerField;
    pnlWageKind: TPanel;
    Label11: TLabel;
    cmb_WageKind: TDBLookupComboBox;
    qryFormInfoWageKind: TWordField;
    qryWageKinds: TADOQuery;
    qryFormInfo_WageKind: TStringField;
    procedure srcFormInfoStateChange(Sender: TObject);
    procedure qryFormInfoAfterInsert(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryFormInfoBeforeDelete(DataSet: TDataSet);
    procedure qryFormInfoAfterPost(DataSet: TDataSet);
    procedure qryFormInfoAfterDelete(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnAccClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure BitBtn11Click(Sender: TObject);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure qryFormInfoBeforePost(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure BitBtn9Click(Sender: TObject);
    procedure dbmmoSQLCalcDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbmmoSQLCalcDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure qryWageFormulaBeforeEdit(DataSet: TDataSet);
    procedure qryWageFormulaBeforeInsert(DataSet: TDataSet);
    procedure qryWageFormulaBeforeDelete(DataSet: TDataSet);
    procedure qryWageFormulaAfterInsert(DataSet: TDataSet);
    procedure qrySp_WageFormulaAfterOpen(DataSet: TDataSet);
    procedure qryWageFormulaAfterScroll(DataSet: TDataSet);
    procedure qryWageFormulaSQLCalcChange(Sender: TField);
    procedure mmoSQLCalcDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure mmoSQLCalcChange(Sender: TObject);
    procedure mmoSQLCalcEnter(Sender: TObject);
    procedure mmoSQLCalcExit(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure grdSp_WageFormulaKeyPress(Sender: TObject; var Key: Char);
  private
    FormType: Byte;
    procedure InitForm;
    procedure TranslateSQLCalc;
    procedure DeTranslateSQLCalc;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfo_5FormulaF: TFormInfo_5FormulaF;

implementation

uses DM, Math, StrUtils, SalaryFunctions, search2, sort2, GlobalPro,
  mmessage,  searchCode_ADO, ChooseItem, HelpShow, FaraConsts, AccountP;

{$R *.dfm}

procedure TFormInfo_5FormulaF.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormInfo.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);
end;

procedure TFormInfo_5FormulaF.qryFormInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('','Pay.FormsInfo', 'FormInfoID');

  // PrefixInfoID

  // DataSet.FieldByName('InfoID').AsInteger:=
  GetNewInfoID(qryMaster.FieldByName('FormInfoID').AsInteger, FormType,
    qryFormInfo);
  // GetANewCode('','SELECT MAX(InfoID) FROM Pay.FormsInfo '+
  // ' WHERE(FormType = '+IntToStr(FormType)+')','InfoID');
  DataSet.FieldByName('PrvInfoID').AsInteger :=
    qryMaster.FieldByName('FormInfoID').AsInteger;
  DBEdit2.SetFocus;
end;

procedure TFormInfo_5FormulaF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);
end;

procedure TFormInfo_5FormulaF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormInfo_5FormulaF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_5FormulaF.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FormInfoDelete(DataSet.FieldByName('FormInfoID').AsInteger) then
    Abort;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TFormInfo_5FormulaF.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryWageFormula.State in dsEditModes then
    qryWageFormula.Post;
  qryWageFormula.UpdateBatch();
  BigMessage('ثبــت شد', 1);
end;

procedure TFormInfo_5FormulaF.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حـذف شــد', 1);
end;

procedure TFormInfo_5FormulaF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFormInfo do
  begin
    Active := False;
    Parameters.ParamByName('PrvInfoID').Value :=
      IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
      qryMaster.FieldByName('FormInfoID').AsInteger);
    Active := True;
  end; // with
end;

procedure TFormInfo_5FormulaF.qrySp_WageFormulaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qrySp_WageFormula.FieldByName('Price') <> nil then
    TBCDField(qrySp_WageFormula.FieldByName('Price')).currency := True;

end;

procedure TFormInfo_5FormulaF.qryWageFormulaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('SalaryID').AsInteger :=
    qryFormInfo.FieldByName('FormInfoID').AsInteger;
end;

procedure TFormInfo_5FormulaF.qryWageFormulaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  TranslateSQLCalc
end;

procedure TFormInfo_5FormulaF.qryWageFormulaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف فرمول مطمئن هستيد.') <> mrYes then
    Abort;

end;

procedure TFormInfo_5FormulaF.qryWageFormulaBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryFormInfo.State in dsEditModes) then
    qryFormInfo.Edit
end;

procedure TFormInfo_5FormulaF.qryWageFormulaBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryFormInfo.State in dsEditModes) then
    qryFormInfo.Edit
end;

procedure TFormInfo_5FormulaF.qryWageFormulaSQLCalcChange(Sender: TField);
begin
  inherited;
  TranslateSQLCalc
end;

procedure TFormInfo_5FormulaF.TranslateSQLCalc;
begin
  mmoSQLCalc.Text := qryWageFormulaSQLCalc.AsString;
  With qryVu_WageFormula do
  begin
    Filter := 'kind <> 3';
    Filtered := True;
    First;
    while not Eof do
    begin
      mmoSQLCalc.Text := StringReplace(UpperCase(mmoSQLCalc.Text),
        UpperCase(FieldByName('ID').AsString), FieldByName('Name').AsString,
        [rfReplaceAll]);
      Next;
    end;
  end;

  mmoWhereSQLCalc.Text := qryWageFormulaWhereSQLCalc.AsString;
  With qryVu_WageFormula do
  begin
    Filtered := False;
    First;
    while not Eof do
    begin
      mmoWhereSQLCalc.Text := StringReplace(UpperCase(mmoWhereSQLCalc.Text),
        UpperCase(FieldByName('ID').AsString), FieldByName('Name').AsString,
        [rfReplaceAll]);
      Next;
    end;
  end;

end;

procedure TFormInfo_5FormulaF.DeTranslateSQLCalc;
var
  s: string;
begin
  s := mmoSQLCalc.Text;
  With qryVu_WageFormula do
  begin
    Filter := 'kind <> 3';
    Filtered := True;
    First;
    while not Eof do
    begin
      s := StringReplace((s), (FieldByName('Name').AsString),
        FieldByName('ID').AsString, [rfReplaceAll]);
      Next;
    end;
  end;
  if not(qryWageFormula.State in dsEditModes) then
    qryWageFormula.Edit;
  qryWageFormulaSQLCalc.AsString := s;

  s := mmoWhereSQLCalc.Text;
  With qryVu_WageFormula do
  begin
    Filtered := False;
    First;
    while not Eof do
    begin
      s := StringReplace((s), (FieldByName('Name').AsString),
        FieldByName('ID').AsString, [rfReplaceAll]);
      Next;
    end;
  end;
  qryWageFormulaWhereSQLCalc.AsString := s;

end;

procedure TFormInfo_5FormulaF.InitForm;
begin
  With TADOStoredProc.Create(Self) do
  begin
    Connection :=theMainConnection ;
    ProcedureName := 'Pay.GetPersonelDecExtPrice';
    ExecProc;
    Free;
  end;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItemsParam :MounthFrom , :MounthTo ';
    SQL.Add(',:PersonelNOFrom , :PersonelNOTo  ,:PersonelStateFrom , ');
    SQL.Add(' :PersonelStateTo  ,:ProjectFrom , :ProjectTo ');
    Parameters.ParamByName('MounthFrom').Value := 0;
    Parameters.ParamByName('MounthTo').Value := 12;

//    SQL.Add(' AND (Functions.YearID = :YearID)');
//    Parameters.ParamByName('YearID').Value := APPBank.Year;
//    SQL.Add(' AND (Functions.Years = :Years)');
//    Parameters.ParamByName('Years').Value := optp.Year;


    Parameters.ParamByName('PersonelNOFrom').Value :=-999999999;
    Parameters.ParamByName('PersonelNOTo').Value :=2147483647;

    Parameters.ParamByName('PersonelStateFrom').Value :=-999999999;
    Parameters.ParamByName('PersonelStateTo').Value :=2147483647;
    Parameters.ParamByName('ProjectFrom').Value :=-999999999;
    Parameters.ParamByName('ProjectTo').Value :=2147483647;
    ExecSQL;
    Active := False;
  end;
  edtyear.Text := APPBank.Year.ToString;
  edtMounth.Text := var_glb_CurrentMonth.ToString;
  mmoSQLCalc.OnChange := nil;
  mmoWhereSQLCalc.OnChange := nil;
  qryVu_WageFormula.Open;
  DataSetDelete1_.Visible := (FormType <> 11) and (FormType <> 21);
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    lblCaption.Hint := IntToStr(FormType);
    Panel2.Hint := IntToStr(FormType);
    lblCaption.Caption := IntToStr(FormType);
    lblCaption.Visible := True;
    DBEdit5.Visible := FieldByName('AmountActive').AsInteger in [1, 3];
    LblAmount.Visible := DBEdit5.Visible;
    DBEdit6.Visible := FieldByName('DurationDayActive').AsInteger = 1;
    LblStandardDays.Visible := DBEdit6.Visible;
    DBEdit7.Visible := FieldByName('DurationTimeActive').AsInteger = 1;
    LblStandardTimes.Visible := DBEdit7.Visible;

    if FieldByName('AmountCaption').AsString <> '' then
      LblAmount.Caption := FieldByName('AmountCaption').AsString;
    if FieldByName('StandardDayCaption').AsString <> '' then
      LblStandardDays.Caption := FieldByName('StandardDayCaption').AsString;
    if FieldByName('StandardTimeCaption').AsString <> '' then
      LblStandardTimes.Caption := FieldByName('StandardTimeCaption').AsString;

    PnlRecalKindClock.Visible := FieldByName('RecalKindClock').AsInteger = 1;

    edtTaxCode.Visible := qryInitForm.FieldByName('TaxCodeShow').AsInteger > 0;
    lblTaxCode.Visible := edtTaxCode.Visible;

    pnlWageKind.Visible := FieldByName('WageKind_Active')
      .AsInteger = 1;

  end; // with
  with qryFormInfo do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  with qryMaster do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value :=
      qryInitForm.FieldByName('RecallFormTypes').AsInteger;
    Active := True;
  end; // with

  Caption := qryInitForm.FieldByName('FormCaption_L1').AsString;
  if optP.LanguageDisplay2 then
    Caption := qryInitForm.FieldByName('FormCaption_L2').AsString;
  // LblInfoName_L1.Caption:=qryInitForm.FieldByName('FormCaption_L1').AsString;
  // LblInfoName_L2.Caption:=qryInitForm.FieldByName('FormCaption_L2').AsString;
  // qryFormInfo.FieldByName('InfoName_L1').DisplayLabel:=LblInfoName_L1.Caption;
  // qryFormInfo.FieldByName('InfoName_L2').DisplayLabel:=LblInfoName_L2.Caption;
  DBGrid1.Columns[2].Visible := optP.LanguageDisplay1;
  DBGrid1.Columns[3].Visible := optP.LanguageDisplay2;
  PnlRecall.Visible := qryInitForm.FieldByName('RecallFormTypes')
    .AsInteger <> 0;
  pnlMaxDayTime.Visible := qryInitForm.FieldByName('MaxDayTimeActive')
    .AsInteger = 1;
end;

procedure TFormInfo_5FormulaF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  InitForm;
end;

procedure TFormInfo_5FormulaF.btnAccClick(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryFormInfo)
end;

procedure TFormInfo_5FormulaF.mmoSQLCalcChange(Sender: TObject);
begin
  inherited;
  qryWageFormulaSQLCalc.OnChange := nil;
  qryWageFormulaWhereSQLCalc.OnChange := nil;
  DeTranslateSQLCalc;
  qryWageFormulaSQLCalc.OnChange := qryWageFormulaSQLCalcChange;
  qryWageFormulaWhereSQLCalc.OnChange := qryWageFormulaSQLCalcChange;
end;

procedure TFormInfo_5FormulaF.mmoSQLCalcDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  inherited;
  TGetFaraFieldsF.EditDragDrop(Sender, Source, False, False);
end;

procedure TFormInfo_5FormulaF.mmoSQLCalcEnter(Sender: TObject);
begin
  inherited;
  mmoSQLCalc.OnChange := mmoSQLCalcChange;
  mmoWhereSQLCalc.OnChange := mmoSQLCalcChange
end;

procedure TFormInfo_5FormulaF.mmoSQLCalcExit(Sender: TObject);
begin
  inherited;
  mmoSQLCalc.OnChange := nil;
  mmoWhereSQLCalc.OnChange := nil
end;

procedure TFormInfo_5FormulaF.dbmmoSQLCalcDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  inherited;
  TGetFaraFieldsF.EditDragDrop(Sender, Source, False, True);
end;

procedure TFormInfo_5FormulaF.dbmmoSQLCalcDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  TGetFaraFieldsF.EditDragOver(Sender, Source, X, Y, Accept);
end;

procedure TFormInfo_5FormulaF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + 'WHERE (FormType = ' + qryInitForm.FieldByName('RecallFormTypes')
    .AsString + ') ';
  s := searchCode_ADOF.SearchCode2(Dmf.adcSalary, ' سطح‏هاي قبلي  ', Txt,
    ['', 'كد', 'نام 1', 'نام 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryMaster.Locate('FormInfoID', Results[0], []);
end;

procedure TFormInfo_5FormulaF.grdSp_WageFormulaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySp_WageFormula.FieldByName('PersonelNo'))
end;

procedure TFormInfo_5FormulaF.BitBtn10Click(Sender: TObject);

begin
  inherited;
  if qryFormInfo.State in dsEditModes then
    qryFormInfo.Post;
  with qrySp_WageFormula do
    try
      Active := False;
      Parameters.ParamByName('Mounth').Value := edtMounth.Text;
      Parameters.ParamByName('year').Value := edtyear.Text;
      Parameters.ParamByName('YearMounth').Value := edtyear.Text + '/' +
        RightStr('0' + edtMounth.Text, 2);
      Parameters.ParamByName('PersonelNoFROM').Value := 0;
      Parameters.ParamByName('PersonelNoTo').Value := 2147483647;
      Parameters.ParamByName('SalaryID').Value :=
        qryWageFormulaSalaryID.AsInteger;
      Active := True;
      grdSp_WageFormula.SetFooter4Sum([]);
      grdSp_WageFormula.ColorDBGrid;
    except
      on E: Exception do
      begin
        if User.PowerUser then
        begin
          HelpShowF.enter(E.Message, qrySp_WageFormula.Name);
          ShowQryParam(qrySp_WageFormula);
        end
        else
        begin
          Warn(E.Message);
        end
      end;
    end;

end;

procedure TFormInfo_5FormulaF.qryFormInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryWageFormula do
  begin
    Active := False;
    Parameters.ParamByName('SalaryID').Value :=
      DataSet.FieldByName('FormInfoID').AsInteger;
    Active := True;
  end;

  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      DataSet.FieldByName('FormInfoId').AsInteger;
    Parameters.ParamByName('Kind').Value := 0;
    Active := True;
  end; // with
end;

procedure TFormInfo_5FormulaF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFormInfo_5FormulaF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  SetSendToBackShapeOnPrint(Self);
  ppReport1.Print;
end;

procedure TFormInfo_5FormulaF.BitBtn13Click(Sender: TObject);
var
  s, Txt1, Txt2, Txt3: String;
  i: Integer;
  ts: TStringList;
begin
  inherited;
  if qryInitForm.FieldByName('ContactFormType').AsInteger = 0 then
  begin
    Txt1 := ' FormsInfo.InfoName_L1 + ''  ('' + FormTypes.FormCaption_L1 + '')'' '
      + '+ CASE WHEN FormTypes.SalaryEffectKind = 1 THEN ''اثر مثبت'' ' +
      ' WHEN FormTypes.SalaryEffectKind = 2 THEN ''اثر منفي'' ' +
      ' WHEN FormTypes.SalaryEffectKind = 3 THEN ''اثر مثبت و منفي'' ' +
      ' ELSE ''ندارد'' END';
    Txt2 := ' Pay.FormsInfo INNER JOIN Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType  ';
    Txt3 := ' WHERE (Pay.FormTypes.SalaryKind  in(1,2,3,4,5,6,7,8,13,11,14,15))';
  end
  else
  begin
    Txt1 := ' FormsInfo.InfoName_L1 ';
    Txt2 := ' Pay.FormsInfo INNER JOIN Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType  ';
    Txt3 := ' WHERE (Pay.FormTypes.FormType  in(' + qryInitForm.FieldByName
      ('ContactFormType').AsString + '))';

  end;

  with qryWage do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        s := s + FieldByName('SalaryID').AsString + ',';
        Next
      end; // while
      if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfThen(optP.LanguageDisplay1,
        Txt1, 'InfoName_L2 '), Txt2, Txt3) then
      begin
        ts := TStringList.Create;
        s := StringReplace(s, ',', #13#10, [rfReplaceAll]);
        ts.Text := s;

        with DMF.qryTmpTmpp do
        begin
          Active := False;
          SQL.Text := 'DELETE FROM Pay.SalaryRange';
          SQL.Add('WHERE (FormInfoID = ' +
            qryFormInfoFormInfoID.AsString + ')');
          SQL.Add('AND (Kind = 0)');
          ExecSQL;
        end; // with
        if qryFormInfo.State in dsEditModes then
          qryFormInfo.Post;
        for i := 0 to ts.Count - 1 do
        begin
          if Trim(ts[i]) = '' then
            Break;
          Insert;
          FieldByName('FormInfoID').AsInteger :=
            qryFormInfoFormInfoID.AsInteger;
          FieldByName('SalaryID').AsString := Trim(ts[i]);
          FieldByName('Kind').AsInteger := 0;
          Post;
        end; // for
      end; // if
    finally
      EnableControls;
      Requery;
      ts.Free;
    end; // try
  end; // with

end;

procedure TFormInfo_5FormulaF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  TGetFaraFieldsF.Execute(dbmmoSQLCalc, BitBtn9.ClientOrigin.X + BitBtn9.Width,
    BitBtn9.ClientOrigin.Y);
end;

procedure TFormInfo_5FormulaF.pplblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'تاريخ چاپ' + var_glb_CurrentDate;
end;

procedure TFormInfo_5FormulaF.qryFormInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not ValidInfoName(DataSet, qryInitForm) then
    Abort;

  if qryFormInfoWageCalcKind.AsInteger = 2 then
    if (qryFormInfoMaxDay.AsInteger + qryFormInfoMaxTime.AsInteger <> 0) then
    begin
      Warn('حداكثر  روز و حداكثر  ساعت هردو  باید صفر باشند.');
      Abort;
    end;

end;

procedure TFormInfo_5FormulaF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TFormInfo_5FormulaF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

end.
