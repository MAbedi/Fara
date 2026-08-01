unit EditNewFormInfo_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, Mask, DBCtrls, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, System.Actions;

type
  TEditNewFormInfo_2F = class(TTemplate4F)
    pnlTop: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    PnlAmount_Coefficient: TPanel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    lblAmount: TLabel;
    edtAmount: TDBEdit;
    pnl5: TPanel;
    lbl1: TLabel;
    edtRecallFormInfoID1: TDBEdit;
    lbl2: TLabel;
    edtRecallFormInfoID2: TDBEdit;
    LblCalCulateType: TLabel;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    SpeedButton2: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    qryInitForm: TADOQuery;
    CmbCalCulateType: TDBComboBox;
    OpenDialog1: TOpenDialog;
    dbedtFirstAmount: TDBEdit;
    lblFirstAmount: TLabel;
    Panel7: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    edtMaxDay: TDBEdit;
    edtMaxTime: TDBEdit;
    PnlRecalKindClock: TPanel;
    CmbRecalKindClock: TDBComboBox;
    Label17: TLabel;
    pnlMuliplyInDay: TPanel;
    DBCheckBox8: TDBCheckBox;
    PnlPayMentShow: TPanel;
    chkPayMentActive: TDBCheckBox;
    lblTaxCode: TLabel;
    edtTaxCode: TDBEdit;
    pnlFormInfoID2: TPanel;
    Label1: TLabel;
    cmbFormInfoID2: TDBComboBox;
    dbmmoInfoName_L1: TDBMemo;
    grpNote: TGroupBox;
    dbmmoNote: TDBMemo;
    Panel4: TPanel;
    dbchkChecking4AllPersonnel: TDBCheckBox;
    dbchkEmployerAmountActive: TDBCheckBox;
    SrcItem: TDataSource;
    pnlSalaryIDinDocActive: TPanel;
    dbchkSalaryIDinDocActive: TDBCheckBox;
    pnlWageKind: TPanel;
    Label11: TLabel;
    cmb_WageKind: TDBLookupComboBox;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure dbmmoInfoName_L1Enter(Sender: TObject);

  private
    { Private declarations }
    FormType: Integer;
    procedure InitForm;
    procedure Choose(Re: Integer);

  public
    { Public declarations }
    procedure Enter(_FormType:Integer);
  end;

var
  EditNewFormInfo_2F: TEditNewFormInfo_2F;

implementation

uses DM, GlobalPro, ChooseItem, Math, StrUtils, FormInfo_2,  AccountP;

{$R *.dfm}
{ TEditNewFormInfo_2F }

procedure TEditNewFormInfo_2F.InitForm;
begin
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
  end; // with qryInitForm
  if optP.primaryLanguage <> 0 then
  begin
    dbmmoInfoName_L1.Visible := false;
    Label3.Visible := false;
  end
  else
  begin
    DBEdit5.Visible := false;
    Label4.Visible := false;
  end; // if
  { with qryMaster do
    begin
    Active:=false;
    Parameters.ParamByName('RecallFormTypes').Value:=qryInitForm.Fieldbyname('RecallFormTypes').AsInteger;
    Active:=true;
    end;//with qryMaster }
  Label7.Visible := qryInitForm.FieldByName('ExemptPersonActive').AsInteger = 1;
  DBEdit8.Visible := Label7.Visible;
  // qryInitForm.FieldByName('ExemptPersonActive').AsInteger=1;
  if (qryInitForm.FieldByName('TopicCodeKind').AsInteger = 0) and
    (qryInitForm.FieldByName('DetailCodeKind').AsInteger = 0) and
    (qryInitForm.FieldByName('CTopicCodeKind').AsInteger = 0) and
    (qryInitForm.FieldByName('CTopicCode2Kind').AsInteger = 0) then
    BitBtn1.Visible := false;
  // Label10.Visible:=qryInitForm.FieldByName('RecallFormInfoID1').AsInteger=1;
  // DBEdit11.Visible:=qryInitForm.FieldByName('RecallFormInfoID1').AsInteger=1;
  // SpeedButton3.Visible:=qryInitForm.FieldByName('RecallFormInfoID1').AsInteger=1;
  // Label11.Visible:=qryInitForm.FieldByName('RecallFormInfoID2').AsInteger=1;
  // DBEdit12.Visible:=qryInitForm.FieldByName('RecallFormInfoID2').AsInteger=1;
  // SpeedButton4.Visible:=qryInitForm.FieldByName('RecallFormInfoID2').AsInteger=1;
  // DBCmbCalcu.Visible:=qryInitForm.FieldByName('CalCulateType').AsInteger=1;
  // Label12.Visible:=qryInitForm.FieldByName('CalCulateType').AsInteger=1;
  Label13.Visible := qryInitForm.FieldByName('WordDocumentsActive')
    .AsInteger = 1;
  DBEdit14.Visible := Label13.Visible;
  // qryInitForm.FieldByName('WordDocumentsActive').AsInteger=1;
  SpeedButton2.Visible := Label13.Visible;
  // qryInitForm.FieldByName('WordDocumentsActive').AsInteger=1;
  if (BitBtn1.Visible = false) and
    (qryInitForm.FieldByName('WordDocumentsActive').AsInteger = 0) then
    Panel6.Visible := false;

  if qryInitForm.FieldByName('AmountCaption').AsString <> '' then
  begin
    lblAmount.Caption := qryInitForm.FieldByName('AmountCaption').AsString;
  end;
  lblAmount.Visible := qryInitForm.FieldByName('AmountActive').AsInteger
    in [1, 3];

  edtAmount.Visible := lblAmount.Visible;
  // qryInitForm.FieldByName('AmountActive').AsInteger=1;
  Label8.Visible := qryInitForm.FieldByName('CoefficientActive').AsInteger = 1;
  DBEdit9.Visible := Label8.Visible;
  // qryInitForm.FieldByName('CoefficientActive').AsInteger=1;
  Label7.Visible := qryInitForm.FieldByName('Amount2Active').AsInteger = 1;
  DBEdit8.Visible := Label7.Visible;
  lblFirstAmount.Visible := qryInitForm.FieldByName('FirstAmountActive')
    .AsInteger = 1;
  lblFirstAmount.Caption := qryInitForm.FieldByName('FirstAmountName').AsString;
  dbedtFirstAmount.Visible := lblFirstAmount.Visible;
  if (DBEdit6.Visible = false) and (DBEdit7.Visible = false) and
    (DBEdit8.Visible = false) and (dbedtFirstAmount.Visible = false) then
    Panel3.Visible := false;
  Label5.Visible := qryInitForm.FieldByName('DurationDayActive').AsInteger = 1;
  DBEdit6.Visible := Label5.Visible;
  // qryInitForm.FieldByName('DurationDayActive').AsInteger=1;
  Label6.Visible := qryInitForm.FieldByName('DurationTimeActive').AsInteger = 1;
  DBEdit7.Visible := Label6.Visible;
  // qryInitForm.FieldByName('DurationTimeActive').AsInteger=1;
  LblCalCulateType.Visible := qryInitForm.FieldByName('CalCulateTypeActive')
    .AsInteger = 1;
  CmbCalCulateType.Visible := LblCalCulateType.Visible;
  // qryInitForm.FieldByName('CalCulateTypeActive').AsInteger=1;

  PnlAmount_Coefficient.Visible :=
    (qryInitForm.FieldByName('AmountActive').AsInteger in [1, 3]) or
    (qryInitForm.FieldByName('CoefficientActive').AsInteger = 1);

  if (qryInitForm.FieldByName('DurationDayActive').AsInteger = null) and
    (qryInitForm.FieldByName('DurationTimeActive').AsInteger = null) and
    (qryInitForm.FieldByName('ExemptPersonActive').AsInteger = null) then
    Panel3.Visible := false;
  if (qryInitForm.FieldByName('TopicCodeKind').AsInteger = 0) and
    (qryInitForm.FieldByName('DetailCodeKind').AsInteger = 0) and
    (qryInitForm.FieldByName('CTopicCodeKind').AsInteger = 0) and
    (qryInitForm.FieldByName('CTopicCode2Kind').AsInteger = 0) then
    BitBtn1.Visible := false;

  Panel7.Visible := (qryInitForm.FieldByName('FunctionShow').AsInteger = 1) or
    (qryInitForm.FieldByName('MaxDayTimeActive').AsInteger = 1);

  PnlRecalKindClock.Visible := qryInitForm.FieldByName('RecalKindClock')
    .AsInteger = 1;
  pnlMuliplyInDay.Visible := qryInitForm.FieldByName('MuliplyInDayActive')
    .AsInteger = 1;
  PnlPayMentShow.Visible := qryInitForm.FieldByName('PayMentShow')
    .AsInteger = 1;

  pnlSalaryIDinDocActive.Visible := qryInitForm.FieldByName('SalaryIDinDocShow')
    .AsInteger = 1;

  edtTaxCode.Visible := qryInitForm.FieldByName('TaxCodeShow').AsInteger > 0;
  lblTaxCode.Visible := edtTaxCode.Visible;

  dbchkChecking4AllPersonnel.Visible := qryInitForm.FieldByName('Checking4AllPersonnelShow')
    .AsInteger > 0;
  dbchkEmployerAmountActive.Visible := qryInitForm.FieldByName('EmployerAmountActiveShow')
    .AsInteger > 0;


  pnlFormInfoID2.Visible := qryInitForm.FieldByName('MasterFormType')
    .AsInteger > 0;
  if pnlFormInfoID2.Visible then
    initDBComboBoxpay(cmbFormInfoID2, qryInitForm.FieldByName('MasterFormType')
      .AsInteger);

  grpNote.Visible := qryInitForm.FieldByName('NoteActive').AsInteger = 1;
  if grpNote.Visible then
  begin
    grpNote.Align := alClient;
    grpNote.Top := pnlTop.Top;
    pnlDown.Align := alBottom;
    pnl5.Visible := false;
  end;

  pnlWageKind.Visible := qryInitForm.FieldByName('WageKind_Active').AsInteger = 1;

end;

procedure TEditNewFormInfo_2F.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TEditNewFormInfo_2F.Choose(Re: Integer);
var
  s: String;
begin
  inherited;
  s := FormInfo_2F.qryItem.FieldByName('RecallFormInfoID' + IntToStr(Re)
    ).AsString;
  if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfTHEN(optP.LanguageDisplay1,
    'InfoName_L1 ', 'InfoName_L2 '),
    ' Pay.FormsInfo INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType  ',
    ' WHERE     (Pay.FormTypes.SalaryKind BETWEEN 1 AND 9)') then
  begin
    with FormInfo_2F.qryItem do
    begin
      FieldByName('RecallFormInfoID' + IntToStr(Re)).Value :=
        LeftStr(s, length(s) - 1);
    end; // with }
  end; // if
end;

procedure TEditNewFormInfo_2F.dbmmoInfoName_L1Enter(Sender: TObject);
begin
  inherited;
  dbmmoInfoName_L1.Hint := dbmmoInfoName_L1.Text;
end;

procedure TEditNewFormInfo_2F.Enter(_FormType:Integer);
begin
  EditNewFormInfo_2F := TEditNewFormInfo_2F.Create(Application);
  with EditNewFormInfo_2F do
  begin
    try
      FormType := _FormType;
      InitForm;
      SrcItem.DataSet:=FormInfo_2F.qryItem;
      FormInfo_2F.qryItemFormInfoID2.OnSetText := ALLSetText;
      cmbFormInfoID2.ItemIndex := cmbFormInfoID2.Items.IndexOfObject
        (TObject(FormInfo_2F.qryItemFormInfoID2.AsInteger));
      if ShowModal = mrOk then
        FormInfo_2F.qryItemFormInfoID2.OnGetText := nil;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TEditNewFormInfo_2F.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Choose(1);
end;

procedure TEditNewFormInfo_2F.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Choose(2);
end;

procedure TEditNewFormInfo_2F.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(FormInfo_2F.qryItem.State in dseditmodes) then
      FormInfo_2F.qryItem.Edit;
    FormInfo_2F.qryItem.FieldByName('WordDocuments').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TEditNewFormInfo_2F.BitBtn1Click(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(FormInfo_2F.qryItem);
end;

procedure TEditNewFormInfo_2F.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if FormInfo_2F.qryItem.State in dseditmodes then
    if get_response('ÂíÇ ÇØáÇÚÇÊ ÐÎíÑå ÔæÏ.þ') = mryes then
      DataSetPost1.Execute
    else
      DataSetCancel1.Execute;
end;

end.
