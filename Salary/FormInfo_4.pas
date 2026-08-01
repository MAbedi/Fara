unit FormInfo_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, DBCtrls, Mask, ComCtrls, ppDB,
  ppBands, ppClass, ppModule, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDBPipe,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TFormInfo_4F = class(Ttemplate2MDIF)
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
    DBGrid1: TDBGrid;
    TabControl1: TTabControl;
    DBGrid2: TDBGrid;
    SrcMaster: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    LblInfoName_L1: TLabel;
    DBEdit3: TDBEdit;
    LblInfoName_L2: TLabel;
    DBEdit4: TDBEdit;
    lblAmount: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    qryWage: TADOQuery;
    SrcWage: TDataSource;
    Panel1: TPanel;
    BitBtn10: TBitBtn;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    WordField1: TWordField;
    qryWageFormInfoID: TIntegerField;
    qryWageInfoID: TIntegerField;
    qryWageInfoName_L1: TStringField;
    qryWageInfoName_L2: TStringField;
    qryFormInfoRecallFormInfoID1: TStringField;
    qryFormInfoRecallFormInfoID2: TStringField;
    PnlRecall: TPanel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    LblPerson1: TLabel;
    qryFormInfoInfoName_L1: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppLine12: TppLine;
    ppLine9: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLine13: TppLine;
    ppLine11: TppLine;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBPipeline2: TppDBPipeline;
    pnlMaxDayTime: TPanel;
    qryFormInfoMaxDay: TFloatField;
    qryFormInfoMaxTime: TFloatField;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    lblTaxCode: TLabel;
    edtTaxCode: TDBEdit;
    qryFormInfoTaxCode: TWordField;
    Panel4: TPanel;
    BitBtn9: TBitBtn;
    qryFormInfoSalaryIDinDocActive: TWordField;
    dbchkSalaryIDinDocActive: TDBCheckBox;
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
    procedure TabControl1Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
    procedure qryFormInfoBeforePost(DataSet: TDataSet);
  private
    FormType: Byte;
    procedure InitForm;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfo_4F: TFormInfo_4F;

implementation

uses DM, Math, StrUtils, SalaryFunctions, search2, sort2, GlobalPro,
  mmessage, searchCode_ADO, ChooseItem, AccountP;

{$R *.dfm}

procedure TFormInfo_4F.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormInfo.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);
end;

procedure TFormInfo_4F.qryFormInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('','Pay.FormsInfo', 'FormInfoID');

  GetNewInfoID(qryMaster.FieldByName('FormInfoID').AsInteger, FormType,
    qryFormInfo);

  // DataSet.FieldByName('InfoID').AsInteger:=GetANewCode('','SELECT MAX(InfoID) FROM Pay.FormsInfo '+
  // ' WHERE(FormType = '+IntToStr(FormType)+')','InfoID');
  DataSet.FieldByName('PrvInfoID').AsInteger :=
    qryMaster.FieldByName('FormInfoID').AsInteger;
  DBEdit2.SetFocus;
end;

procedure TFormInfo_4F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);
end;

procedure TFormInfo_4F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormInfo_4F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_4F.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FormInfoDelete(DataSet.FieldByName('FormInfoID').AsInteger) then
    Abort;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TFormInfo_4F.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»‹‹  ‘œ', 1);
end;

procedure TFormInfo_4F.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ', 1);
end;

procedure TFormInfo_4F.qryMasterAfterScroll(DataSet: TDataSet);
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

procedure TFormInfo_4F.InitForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    DBEdit5.Visible := FieldByName('AmountActive').AsInteger in [1, 3];
    lblAmount.Visible := DBEdit5.Visible;

    if FieldByName('AmountCaption').AsString <> '' then
      lblAmount.Caption := FieldByName('AmountCaption').AsString;

    DBEdit6.Visible := FieldByName('DurationDayActive').AsInteger = 1;
    Label5.Visible := DBEdit6.Visible;
    DBEdit7.Visible := FieldByName('DurationTimeActive').AsInteger = 1;
    Label6.Visible := DBEdit7.Visible;
    if (FieldByName('TopicCodeKind').AsInteger = 0) and
      (FieldByName('DetailCodeKind').AsInteger = 0) and
      (FieldByName('CTopicCodeKind').AsInteger = 0) and
      (FieldByName('CTopicCode2Kind').AsInteger = 0) then
      BitBtn9.Visible := False;
    edtTaxCode.Visible := qryInitForm.FieldByName('TaxCodeShow').AsInteger > 0;
    lblTaxCode.Visible := edtTaxCode.Visible;

    qryFormInfoInfoID.ReadOnly := FieldByName('PrefixInfoID').AsInteger = 2;

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
  LblInfoName_L1.Caption := qryInitForm.FieldByName('FormCaption_L1').AsString;
  LblInfoName_L2.Caption := qryInitForm.FieldByName('FormCaption_L2').AsString;
  qryFormInfo.FieldByName('InfoName_L1').DisplayLabel := LblInfoName_L1.Caption;
  qryFormInfo.FieldByName('InfoName_L2').DisplayLabel := LblInfoName_L2.Caption;
  DBGrid1.Columns[1].Visible := optP.LanguageDisplay1;
  DBGrid1.Columns[2].Visible := optP.LanguageDisplay2;
  DBGrid2.Columns[2].Visible := optP.LanguageDisplay1;
  DBGrid2.Columns[3].Visible := optP.LanguageDisplay2;
  PnlRecall.Visible := qryInitForm.FieldByName('RecallFormTypes')
    .AsInteger <> 0;
  pnlMaxDayTime.Visible := qryInitForm.FieldByName('MaxDayTimeActive')
    .AsInteger <> 1;

end;

procedure TFormInfo_4F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  InitForm;
end;

procedure TFormInfo_4F.TabControl1Change(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryFormInfo.FieldByName('RecallFormInfoID' +
    IntToStr(TabControl1.TabIndex + 1)).AsString;
  // if TabControl1.TabIndex = 1 then  s:=qryFormInfo.fieldbyName('RecallFormInfoID2').AsString;
  if s = '' then
    s := '0';
  with qryWage do
  begin
    Active := False;
    SQL.Text :=
      'SELECT  Pay.FormsInfo.FormInfoID, Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2 '
      + 'FROM Pay.FormsInfo ' + 'WHERE   Pay.FormsInfo.FormInfoID in(' + s + ')';
    Active := True;
  end; // with
end;

procedure TFormInfo_4F.BitBtn9Click(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryFormInfo)
end;

procedure TFormInfo_4F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT     FormInfoID,InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo ' + 'WHERE (FormType = ' + qryInitForm.FieldByName
    ('RecallFormTypes').AsString + ') ';
  s := searchCode_ADOF.SearchCode2(Dmf.adcSalary, ' ”ÿÕ˛Â«Ì ﬁ»·Ì  ', Txt,
    ['', 'ﬂœ', '‰«„ 1', '‰«„ 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryMaster.Locate('FormInfoID', Results[0], []);
end;

procedure TFormInfo_4F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));
end;

procedure TFormInfo_4F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(FormType));
  SetColSize(DBGrid2, 2, True, IntToStr(FormType));
end;

procedure TFormInfo_4F.BitBtn10Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryFormInfo.FieldByName('RecallFormInfoID' +
    IntToStr(TabControl1.TabIndex + 1)).AsString;
  if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfThen(optP.LanguageDisplay1,
    ' FormsInfo.InfoName_L1 + ''  ('' + FormTypes.FormCaption_L1 + '')''  ',
    'InfoName_L2 '),
    ' Pay.FormsInfo INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType  ',
    ' WHERE     (Pay.FormTypes.SalaryKind BETWEEN 1 AND 4)') then
  begin
    with qryFormInfo do
    begin
      Edit;
      FieldByName('RecallFormInfoID' + IntToStr(TabControl1.TabIndex + 1)).Value
        := LeftStr(s, length(s) - 1);
    end; // with
    qryFormInfo.Requery();
  end; // if
end;

procedure TFormInfo_4F.qryFormInfoAfterScroll(DataSet: TDataSet);
var
  s: String;
begin
  inherited;
  s := qryFormInfo.FieldByName('RecallFormInfoID' +
    IntToStr(TabControl1.TabIndex + 1)).AsString;
  if s = '' then
    s := '0';
  with qryWage do
  begin
    Active := False;
    SQL.Text :=
      'SELECT  Pay.FormsInfo.FormInfoID, Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2 '
      + 'FROM Pay.FormsInfo ' + 'WHERE   Pay.FormsInfo.FormInfoID in(' + s + ')';
    Active := True;
  end; // with
end;

procedure TFormInfo_4F.qryFormInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not ValidInfoName(DataSet, qryInitForm) then
    Abort;

end;

end.
