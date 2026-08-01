unit EmployeeLoan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, ppVar, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppClass, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TEmployeeLoanF = class(Ttemplate2MDIF)
    Panel4: TPanel;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    LblName: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblAidNo1: TLabel;
    lblAidNo2: TLabel;
    Label9: TLabel;
    LblAidDate1: TLabel;
    LblAidDate2: TLabel;
    Panel6: TPanel;
    LblAccTopicCode: TLabel;
    LblAccDetailCode: TLabel;
    LblAccCTopicCode2: TLabel;
    LblAccCTopicCode: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    EdtAidNo1: TDBEdit;
    EdtAidNo2: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    EdtAidDate1: TDBEdit;
    EdtAidDate2: TDBEdit;
    EdtAccTopicCode: TDBEdit;
    EdtAccCTopicCode: TDBEdit;
    EdtAccDetailCode: TDBEdit;
    EdtAccCTopicCode2: TDBEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    qryInitForm: TADOQuery;
    qryMaster: TADOQuery;
    qryMasterPersonelNo: TIntegerField;
    qryMasterPersonName_L1: TStringField;
    qryMasterPersonName_L2: TStringField;
    SrcMaster: TDataSource;
    qryItems: TADOQuery;
    SrcItems: TDataSource;
    actSendToExcel: TAction;
    actSort: TAction;
    CmbLoan: TDBComboBox;
    qryItemsDecExtID: TIntegerField;
    qryItemsFormInfoID: TIntegerField;
    qryItemsPersonelNo: TIntegerField;
    qryItemsEmployeeAmount: TBCDField;
    qryItemsFirstMounth: TWordField;
    qryItemsEndMounth: TWordField;
    qryItemsAidNo1: TStringField;
    qryItemsAidDate1_L1: TStringField;
    qryItemsAidNo2: TStringField;
    qryItemsAidDate2_L1: TStringField;
    qryItemsDayTime: TFloatField;
    qryItemsEmployerAmount: TBCDField;
    qryItemsFormInfoID2: TIntegerField;
    qryItemsAccTopicCode: TIntegerField;
    qryItemsAccDetailCode: TIntegerField;
    qryItemsFormType: TSmallintField;
    qryItemsInfoID: TIntegerField;
    qryItemsInfoName_L1: TStringField;
    qryItemsInfoName_L2: TStringField;
    qryFormsInfo: TADOQuery;
    Bevel1: TBevel;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoFormType: TSmallintField;
    qryFormsInfoInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    i: TStringField;
    qryFormsInfoPrvInfoID: TIntegerField;
    qryFormsInfoAmount: TBCDField;
    qryFormsInfoAmount2: TBCDField;
    qryFormsInfoCoefficient: TFloatField;
    qryFormsInfoStandardDays: TFloatField;
    qryFormsInfoStandardTimes: TFloatField;
    qryFormsInfoAccTopicCode: TIntegerField;
    qryFormsInfoAccDetailCode: TIntegerField;
    qryFormsInfoCalCulateType: TWordField;
    qryFormsInfoRecallFormInfoID1: TStringField;
    qryFormsInfoRecallFormInfoID2: TStringField;
    qryFormsInfoWordDocuments: TStringField;
    qryFormsInfoRecalKindClock: TWordField;
    Bevel2: TBevel;
    qryItemsAccCTopicCode: TIntegerField;
    qryItemsAccCTopicCode2: TIntegerField;
    actRelAcc: TAction;
    qryFormsInfoAccCTopicCode: TIntegerField;
    qryFormsInfoAccCTopicCode2: TIntegerField;
    qryItemsDayQuntity: TFloatField;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    lblColor1: TLabel;
    LblName1: TLabel;
    lblColor2: TLabel;
    LblName2: TLabel;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    SysvarPageNum: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    actPrint: TAction;
    BitBtn11: TBitBtn;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText6: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    BitBtn1: TBitBtn;
    ppDBCalc2: TppDBCalc;
    ppLabel12: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    qryItemsPaymentLoan: TBCDField;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    actDataSetDelete1_: TAction;
    actSearchMASTER: TAction;
    qryMasterCalCol: TIntegerField;
    BitBtn10: TBitBtn;
    GrpNote: TGroupBox;
    DBMmoNote: TDBMemo;
    ChkState: TDBCheckBox;
    qryItemsState: TWordField;
    qryItemsAccCTopicCode3: TIntegerField;
    EdtAccCTopicCode3: TDBEdit;
    LblAccCTopicCode3: TLabel;
    edtSettlement: TDBEdit;
    lbl1: TLabel;
    qryItemsSettlement: TBCDField;
    dbedtStartYear: TDBEdit;
    Label4: TLabel;
    qryItemsYearID: TIntegerField;
    qryItemsStartYear: TIntegerField;
    qryItemsEndYear: TIntegerField;
    SpeedButton1: TSpeedButton;
    qryItemsSettlementDate: TStringField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    qryItemsNote_L1: TWideStringField;
    qryItemsNote_L2: TWideStringField;
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure SrcItemsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryItemsFormInfoIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryItemsFormInfoIDSetText(Sender: TField; const Text: String);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure actRelAccExecute(Sender: TObject);
    procedure CmbLoanEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure SysvarPageNumGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppVariable2GetText(Sender: TObject; var Text: String);
    procedure qryItemsEmployeeAmountChange(Sender: TField);
    procedure actDataSetDelete1_Execute(Sender: TObject);
    procedure actSearchMASTERExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CmbLoanChange(Sender: TObject);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FormType: Byte;
    TopicKind, DetailKind, CTopicKind, CTopicKind2, CTopicKind3: Byte;
    procedure InitForm;
    procedure initDBComboBox;

  public
    { Public declarations }
  end;

var
  EmployeeLoanF: TEmployeeLoanF;

implementation

uses DM, sort2, search2, GlobalPro, mmessage,  SalaryFunctions,
  AccountP;

{$R *.dfm}

procedure TEmployeeLoanF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TEmployeeLoanF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TEmployeeLoanF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TEmployeeLoanF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  qryItems.FieldByName('Settlement').AsCurrency :=
    RemainLoan(qryItems.FieldByName('PersonelNO').AsInteger,
    qryItems.FieldByName('DecExtID').AsInteger);

end;

procedure TEmployeeLoanF.SrcItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryItems.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  // actRelAcc.Visible:=okPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);
end;

procedure TEmployeeLoanF.InitForm;
begin
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
    Caption := FieldByName('FormCaption_L1').AsString;
    EdtAidNo1.Visible := FieldByName('AidInfoNo1Active').AsInteger = 1;
    lblAidNo1.Visible := EdtAidNo1.Visible;
    lblAidNo1.Caption := '‘„«—Â˛' + FieldByName('AidInfo1Caption').AsString;
    EdtAidNo2.Visible := FieldByName('AidInfoNo2Active').AsInteger = 1;
    lblAidNo2.Visible := EdtAidNo2.Visible;
    lblAidNo2.Caption := '‘„«—Â˛' + FieldByName('AidInfo2Caption').AsString;
    EdtAidDate1.Visible := FieldByName('AidInfoDate1Active').AsInteger = 1;
    LblAidDate1.Visible := EdtAidDate1.Visible;
    LblAidDate1.Caption := ' «—ÌŒ˛˛' + FieldByName('AidInfo1Caption').AsString;
    EdtAidDate2.Visible := FieldByName('AidInfoDate2Active').AsInteger = 1;
    LblAidDate2.Visible := EdtAidDate2.Visible;
    LblAidDate2.Caption := ' «—ÌŒ˛˛' + FieldByName('AidInfo2Caption').AsString;
    EdtAccTopicCode.Visible := FieldByName('TopicCodeKind').AsInteger <> 0;
    LblAccTopicCode.Visible := EdtAccTopicCode.Visible;
    EdtAccDetailCode.Visible := FieldByName('DetailCodeKind').AsInteger <> 0;
    LblAccDetailCode.Visible := EdtAccDetailCode.Visible;
    EdtAccCTopicCode.Visible := FieldByName('CTopicCodeKind').AsInteger <> 0;
    LblAccCTopicCode.Visible := EdtAccCTopicCode.Visible;
    EdtAccCTopicCode2.Visible := FieldByName('CTopicCode2Kind').AsInteger <> 0;
    LblAccCTopicCode2.Visible := EdtAccCTopicCode2.Visible;
    EdtAccCTopicCode3.Visible := FieldByName('CTopicCode3Kind').AsInteger <> 0;
    LblAccCTopicCode3.Visible := EdtAccCTopicCode3.Visible;

    TopicKind := FieldByName('TopicCodeKind').AsInteger;
    DetailKind := FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := FieldByName('CTopicCode2Kind').AsInteger;
    CTopicKind3 := FieldByName('CTopicCode3Kind').AsInteger;
    GrpNote.Visible := FieldByName('NoteActive').Value = 1;
    ChkState.Visible := FieldByName('DecExtStateActive').AsInteger = 1;
  end; // with qryInitForm

  if FormType = 25 then
  begin
    LblName.Caption := '⁄‰Ê«‰ „⁄«›Ì ';
    LblName1.Caption := '„⁄«›Ì  œ«—œ';
    LblName2.Caption := '„⁄«›Ì  ‰œ«—œ';
    qryItems.FieldByName('InfoName_L1').DisplayLabel := '⁄‰Ê«‰ „⁄«›Ì ';
    qryItems.FieldByName('InfoName_L2').DisplayLabel := '⁄‰Ê«‰ „⁄«›Ì ';
  end;

end;

procedure TEmployeeLoanF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  qryFormsInfo.Active := true;
  qryMaster.Active := true;
  InitForm;
end;

procedure TEmployeeLoanF.qryItemsAfterPost(DataSet: TDataSet);
var
  rid: Integer;
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
  // with qryItems do begin
  // DisableControls;
  // Active:=false;
  // Active:=true;
  // EnableControls;
  // end;//with
  with qryMaster do
  begin
    DisableControls;
    rid := FieldByName('PersonelNo').AsInteger;
    Active := false;
    Active := true;
    qryMaster.Locate('PersonelNo', rid, []);
    EnableControls;
  end; // with
  DBGrid1.SetFocus;
end;

procedure TEmployeeLoanF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));
end;

procedure TEmployeeLoanF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, false, IntToStr(FormType));
  SetColSize(DBGrid2, 0, true, IntToStr(FormType));
end;

procedure TEmployeeLoanF.FormShow(Sender: TObject);
begin
  inherited;
  qryMasterAfterScroll(qryMaster);
  initDBComboBox;
end;

procedure TEmployeeLoanF.initDBComboBox;
var
  FiledId: Integer;
begin
  CmbLoan.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT FormsInfo.FormInfoID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2';
    SQL.Add('FROM Pay.FormsInfo INNER JOIN');
    SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
    SQL.Add('WHERE (FormTypes.SalaryKind = 9)');
    Active := true;
    while not eof do
    begin
      CmbLoan.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := false;
  end; // with
end;

procedure TEmployeeLoanF.qryItemsFormInfoIDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
    'InfoName_L1'));

end;

procedure TEmployeeLoanF.qryItemsFormInfoIDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(CmbLoan.Items.Objects[CmbLoan.ItemIndex]);

end;

procedure TEmployeeLoanF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    FieldByName('PersonelNo').AsInteger := qryMaster.FieldByName('PersonelNo')
      .AsInteger;
    FieldByName('DecExtID').AsInteger := GetANewCode('','Pay.PersonelDecExt',
      'DecExtID', Dmf.adcSalary);
    FieldByName('YearID').AsInteger := APPBank.Year;

    if (TopicKind = 1) or (TopicKind = 4) or (TopicKind = 6) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        qryMaster.FieldByName('PersonelNo').AsInteger);
    if (DetailKind = 1) or (DetailKind = 4) or (DetailKind = 6) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        qryMaster.FieldByName('PersonelNo').AsInteger);
    if (CTopicKind = 1) or (CTopicKind = 4) or (CTopicKind = 6) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        qryMaster.FieldByName('PersonelNo').AsInteger);
    if (CTopicKind2 = 1) or (CTopicKind2 = 4) or (CTopicKind2 = 6) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, qryMaster.FieldByName('PersonelNo')
        .AsInteger);
    if (CTopicKind3 = 1) or (CTopicKind3 = 4) or (CTopicKind3 = 6) then
      FieldByName('AccCTopicCode3').AsInteger :=
        Calculate_AccCode(5, CTopicKind3, qryMaster.FieldByName('PersonelNo')
        .AsInteger);
  end; // with
  CmbLoan.SetFocus;
end;

procedure TEmployeeLoanF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    DisableControls;
    Active := false;
    Parameters.ParamByName('EmployeeNo').Value :=
      qryMaster.FieldByName('PersonelNo').AsInteger;
    Parameters.ParamByName('Type').Value := FormType;
    Active := true;
    EnableControls;
  end; // with
end;

procedure TEmployeeLoanF.actRelAccExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryItems);
end;

procedure TEmployeeLoanF.CmbLoanEnter(Sender: TObject);
begin
  inherited;
  if qryItems.State in dsEditModes then
    (Sender as TDBComboBox).DroppedDown := true;
end;

procedure TEmployeeLoanF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if (Sender as TDBGrid).DataSource.DataSet.FieldByName('CalCol')
      .AsInteger > 0 then
      DBGrid1.Canvas.Font.Color := lblColor1.Color
    else
      DBGrid1.Canvas.Font.Color := lblColor2.Color;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TEmployeeLoanF.ppVariable1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(qryMaster.FieldByName('PersonelNo').AsInteger) + '   ' +
    qryMaster.FieldByName('PersonName_L1').AsString;
end;

procedure TEmployeeLoanF.SysvarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TEmployeeLoanF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryMaster.DisableControls;
    qryItems.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  Finally
    qryMaster.EnableControls;
    qryItems.EnableControls;
  end; // try
end;

procedure TEmployeeLoanF.ppVariable2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(qryMaster.FieldByName('PersonelNo').AsInteger) + '   ' +
    qryMaster.FieldByName('PersonName_L1').AsString;
end;

procedure TEmployeeLoanF.qryItemsEmployeeAmountChange(Sender: TField);
begin
  inherited;
  If qryItems.FieldByName('EmployeeAmount').AsInteger > 0 then
    If qryItems.FieldByName('EmployerAmount').AsInteger mod qryItems.FieldByName
      ('EmployeeAmount').AsInteger = 0 then
      qryItems.FieldByName('EndMounth').AsInteger :=
        qryItems.FieldByName('EmployerAmount')
        .AsInteger div qryItems.FieldByName('EmployeeAmount').AsInteger
    else
      qryItems.FieldByName('EndMounth').AsInteger :=
        qryItems.FieldByName('EmployerAmount')
        .AsInteger div qryItems.FieldByName('EmployeeAmount').AsInteger + 1
  else
    qryItems.FieldByName('EndMounth').AsInteger := 0;
end;

procedure TEmployeeLoanF.actDataSetDelete1_Execute(Sender: TObject);
var
  rid: Integer;
begin
  inherited;
  if not LoanDelete(qryItems.FieldByName('DecExtID').AsInteger) then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'DELETE FROM Pay.PersonelDecExt  ' + 'WHERE DecExtID=' +
      qryItems.FieldByName('DecExtID').AsString;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
  end; // with
  with qryMaster do
  begin
    rid := FieldByName('PersonelNo').AsInteger;
    DisableControls;
    Active := false;
    Active := true;
    qryMaster.Locate('PersonelNo', rid, []);
    EnableControls;
  end; // with
end;

procedure TEmployeeLoanF.actSearchMASTERExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TEmployeeLoanF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  try
    qryMaster.DisableControls;
    QuickSearch(Key, qryMaster.FieldByName('PersonelNo'));
  finally
    qryMaster.EnableControls;
  end;
end;

procedure TEmployeeLoanF.CmbLoanChange(Sender: TObject);
begin
  inherited;
  if (TopicKind = 2) or (TopicKind = 5) then
    qryItems.FieldByName('AccTopicCode').AsInteger :=
      Calculate_AccCode(1, TopicKind, qryFormsInfo.FieldByName('FormInfoID')
      .AsInteger);
  if (DetailKind = 2) or (DetailKind = 5) then
    qryItems.FieldByName('AccDetailCode').AsInteger :=
      Calculate_AccCode(2, DetailKind, qryFormsInfo.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind = 2) or (CTopicKind = 5) then
    qryItems.FieldByName('AccCTopicCode').AsInteger :=
      Calculate_AccCode(3, CTopicKind, qryFormsInfo.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind2 = 2) or (CTopicKind2 = 5) then
    qryItems.FieldByName('AccCTopicCode2').AsInteger :=
      Calculate_AccCode(4, CTopicKind2, qryFormsInfo.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind3 = 2) or (CTopicKind3 = 5) then
    qryItems.FieldByName('AccCTopicCode3').AsInteger :=
      Calculate_AccCode(5, CTopicKind3, qryFormsInfo.FieldByName('FormInfoID')
      .AsInteger);
end;

procedure TEmployeeLoanF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('FirstMounth').AsInteger <= 0 then
  begin
    Warn('ﬁ«»· ﬂ”— «“ „«Â Ê«—œ ‰‘œÂ.˛');
    Abort;
  end;
  if DataSet.FieldByName('FirstMounth').AsInteger > 13 then
  begin
    Warn('ﬁ«»· ﬂ”— «“ „«Â œ—”  Ê«—œ ‰‘œÂ.˛');
    Abort;
  end;
end;

end.
