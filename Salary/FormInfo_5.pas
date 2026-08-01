unit FormInfo_5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ComCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppPrnabl, ppCtrls, ppVar, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, frmInsouranceCheck;

type
  TFormInfo_5F = class(Ttemplate2MDIF)
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
    LblInfoName_L2: TLabel;
    DBEdit4: TDBEdit;
    LblAmount: TLabel;
    DBEdit5: TDBEdit;
    LblStandardDays: TLabel;
    edtStandardDays: TDBEdit;
    LblStandardTimes: TLabel;
    edtStandardTimes: TDBEdit;
    qryWage: TADOQuery;
    SrcWage: TDataSource;
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
    qryWageSalaryID: TIntegerField;
    qryWageKind: TWordField;
    ppReport1: TppReport;
    qryFormInfoWordDocuments: TStringField;
    OpenDialog1: TOpenDialog;
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
    edtMaxDay: TDBEdit;
    edtMaxTime: TDBEdit;
    PnlRecalKindClock: TPanel;
    Label17: TLabel;
    CmbRecalKindClock: TDBComboBox;
    qryFormInfoRecalKindClock: TWordField;
    LblAmount2: TLabel;
    edtAmount2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheetWordDocuments: TTabSheet;
    Label20: TLabel;
    MemWordDocuments: TDBMemo;
    TabControl1: TTabControl;
    Panel1: TPanel;
    BitBtn10: TBitBtn;
    Panel4: TPanel;
    SBtnWord: TSpeedButton;
    qryFormInfoCalCulateType: TWordField;
    CmbCalCulateType: TDBComboBox;
    LblCalCulateType: TLabel;
    edtTaxCode: TDBEdit;
    lblTaxCode: TLabel;
    qryFormInfoTaxCode: TWordField;
    qryFormInfoWageCalcKind: TWordField;
    cmbWageCalcKind: TDBComboBox;
    lblWageCalcKind: TLabel;
    lblFirstAmount: TLabel;
    dbedtFirstAmount: TDBEdit;
    qryFormInfoFirstAmount: TBCDField;
    dbchkPayMentActive: TDBCheckBox;
    qryFormInfoPayMentActive: TWordField;
    Panel5: TPanel;
    btnAcc: TBitBtn;
    qryFormInfoAccCTopicCode3: TIntegerField;
    qryFormInfoSalaryIDinDocActive: TWordField;
    dbchkSalaryIDinDocActive: TDBCheckBox;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    pnlWageKind: TPanel;
    cmb_WageKind: TDBLookupComboBox;
    Label11: TLabel;
    qryWageKinds: TADOQuery;
    qryFormInfoWageKind: TWordField;
    qryFormInfo_WageKind: TStringField;
    Panel6: TPanel;
    frInsouranceCheck1: TfrInsouranceCheck;
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
    procedure btnAccClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
    procedure SBtnWordClick(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure BitBtn11Click(Sender: TObject);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure qryFormInfoBeforePost(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
  private
    FormType: Byte;
    procedure InitForm;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfo_5F: TFormInfo_5F;

implementation

uses DM, Math, StrUtils, SalaryFunctions, search2, sort2, GlobalPro,
  mmessage, searchCode_ADO, ChooseItem, AccountP;

{$R *.dfm}

procedure TFormInfo_5F.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormInfo.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);
end;

procedure TFormInfo_5F.qryFormInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('', 'Pay.FormsInfo', 'FormInfoID');

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

procedure TFormInfo_5F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);
end;

procedure TFormInfo_5F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormInfo_5F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_5F.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FormInfoDelete(DataSet.FieldByName('FormInfoID').AsInteger) then
    Abort;

  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TFormInfo_5F.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;

  BigMessage('ثبــت شد', 1);
  CustIDToDetailCode(qryFormInfo, 2);
end;

procedure TFormInfo_5F.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حـذف شــد', 1);
end;

procedure TFormInfo_5F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if FormType = 55 then
  begin
    With Dmf.qryTmpTmpP do
    begin
      SQL.Text := 'DECLARE @PrvInfoID int = ' + qryMaster.FieldByName
        ('FormInfoID').AsString;
      SQL.Add('DECLARE @FormInfoID int');
      SQL.Add('SELECT @FormInfoID=MAX(FormInfoID)From Pay.FormsInfo');
      SQL.Add('if ( SELECT count(*)');
      SQL.Add('FROM Pay.FormsInfo');
      SQL.Add('WHERE (FormsInfo.FormType = 55) AND (FormsInfo.InfoID in(5,6)) )=0');
      SQL.Add('begin');
      SQL.Add('INSERT INTO Pay.FormsInfo');
      SQL.Add('(FormInfoID, FormType, InfoID, InfoName_L1, PrvInfoID)');
      SQL.Add('SELECT @FormInfoID+1 AS FormInfoID, 55 AS FormType, 5 AS InfoID, ''پايه سنواتي مشمول'' AS InfoName_L1, @PrvInfoID');
      SQL.Add('AS PrvInfoID');
      SQL.Add('UNION');
      SQL.Add('SELECT @FormInfoID+2 AS FormInfoID, 55 AS FormType, 6 AS InfoID, ''حق تاهل مشمول'' AS InfoName_L1, @PrvInfoID AS');
      SQL.Add('PrvInfoID');
      SQL.Add('end');
      ExecSQL;

      With frInsouranceCheck1.qryInsouranceCheck do
      begin
        Close;
        Parameters.ParamByName('PrvInfoID').Value :=
          qryMaster.FieldByName('FormInfoID').AsInteger;
        Open;
      end;

    end;

  end;

  with qryFormInfo do
  begin
    Active := False;
    Parameters.ParamByName('PrvInfoID').Value :=
      IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
      qryMaster.FieldByName('FormInfoID').AsInteger);
    Active := True;
  end; // with
end;

procedure TFormInfo_5F.InitForm;
begin
  frInsouranceCheck1.Visible := FormType = 55;
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
    edtStandardDays.Visible := FieldByName('DurationDayActive').AsInteger = 1;
    LblStandardDays.Visible := edtStandardDays.Visible;
    edtStandardTimes.Visible := FieldByName('DurationTimeActive').AsInteger = 1;
    LblStandardTimes.Visible := edtStandardTimes.Visible;
    edtAmount2.Visible := FieldByName('Amount2Active').AsInteger > 0;
    LblAmount2.Visible := edtAmount2.Visible;

    if FieldByName('AmountCaption').AsString <> '' then
      LblAmount.Caption := FieldByName('AmountCaption').AsString;
    if FieldByName('Amount2Caption').AsString <> '' then
      LblAmount2.Caption := FieldByName('Amount2Caption').AsString;
    if FieldByName('StandardDayCaption').AsString <> '' then
      LblStandardDays.Caption := FieldByName('StandardDayCaption').AsString;
    if FieldByName('StandardTimeCaption').AsString <> '' then
      LblStandardTimes.Caption := FieldByName('StandardTimeCaption').AsString;
    // if not DBEdit5.Visible then begin
    // EdtWord.Top:=DBEdit5.Top;
    // LblWord.Top:=Label4.Top;
    // SBtnWord.Top:=DBEdit5.Top;
    // end;
    TabSheetWordDocuments.Visible := FieldByName('WordDocumentsActive')
      .AsInteger = 1;
    // LblWord.Visible:=EdtWord.Visible;
    // SBtnWord.Visible:=EdtWord.Visible;

    // if (FieldByName('TopicCodeKind').AsInteger = 0) and
    // (FieldByName('DetailCodeKind').AsInteger = 0) and
    // (FieldByName('CTopicCodeKind').AsInteger = 0) and
    // (FieldByName('CTopicCode2Kind').AsInteger = 0) then
    // btnAcc.Visible := False;

    PnlRecalKindClock.Visible := FieldByName('RecalKindClock').AsInteger = 1;

    LblCalCulateType.Visible := FieldByName('CalCulateTypeActive')
      .AsInteger = 1;
    CmbCalCulateType.Visible := LblCalCulateType.Visible;

    lblWageCalcKind.Visible := FieldByName('WageCalcKindActive').AsInteger = 1;
    cmbWageCalcKind.Visible := lblWageCalcKind.Visible;

    edtTaxCode.Visible := qryInitForm.FieldByName('TaxCodeShow').AsInteger > 0;
    lblTaxCode.Visible := edtTaxCode.Visible;

    lblFirstAmount.Visible := qryInitForm.FieldByName('FirstAmountActive')
      .AsInteger = 1;
    lblFirstAmount.Caption := qryInitForm.FieldByName
      ('FirstAmountName').AsString;
    dbedtFirstAmount.Visible := lblFirstAmount.Visible;

    qryFormInfoInfoID.ReadOnly := FieldByName('PrefixInfoID').AsInteger = 2;

    dbchkPayMentActive.Visible := qryInitForm.FieldByName('PayMentShow')
      .AsInteger = 1;

    dbchkSalaryIDinDocActive.Visible := qryInitForm.FieldByName
      ('SalaryIDinDocShow').AsInteger = 1;

    pnlWageKind.Visible := qryInitForm.FieldByName('WageKind_Active')
      .AsInteger = 1;

  end; // with        w,vjd
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
  DBGrid2.Columns[2].Visible := optP.LanguageDisplay1;
  DBGrid2.Columns[3].Visible := optP.LanguageDisplay2;
  PnlRecall.Visible := qryInitForm.FieldByName('RecallFormTypes')
    .AsInteger <> 0;
  pnlMaxDayTime.Visible := qryInitForm.FieldByName('MaxDayTimeActive')
    .AsInteger = 1;
end;

procedure TFormInfo_5F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  PageControl1.TabIndex := 1;
  PageControl1.TabIndex := 0;
  InitForm;
end;

procedure TFormInfo_5F.TabControl1Change(Sender: TObject);
begin
  inherited;
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('Kind').Value := TabControl1.TabIndex;
    Active := True;
  end; // with

end;

procedure TFormInfo_5F.btnAccClick(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryFormInfo)
end;

procedure TFormInfo_5F.SpeedButton1Click(Sender: TObject);
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

procedure TFormInfo_5F.BitBtn10Click(Sender: TObject);
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
    Txt3 := ' WHERE (Pay.FormTypes.SalaryKind  in(1,2,3,4,5,6,7,8,13,11,14,15))'
      + ' OR ( (FormsInfo.FormType in(11, 16)) and (FormsInfo.InfoID = 1) )';
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
        next
      end; // while
      if ChooseItemF.SelectChecks(s, 'FormInfoID ',
        IfThen(optP.LanguageDisplay1, Txt1, 'InfoName_L2 '), Txt2, Txt3) then
      begin
        ts := TStringList.Create;
        s := StringReplace(s, ',', #13#10, [rfReplaceAll]);
        ts.Text := s;

        with Dmf.qryTmpTmpP do
        begin
          Active := False;
          SQL.Text := 'DELETE FROM Pay.SalaryRange';
          SQL.Add('WHERE (FormInfoID = ' +
            qryFormInfoFormInfoID.AsString + ')');
          SQL.Add('AND (Kind = ' + IntToStr(TabControl1.TabIndex) + ')');
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
          FieldByName('Kind').AsInteger := TabControl1.TabIndex;
          Post;
        end; // for
      end; // if
    finally
      EnableControls;
      Requery;
      ts.Free;
    end; // try
  end; // with
  With frInsouranceCheck1.qryInsouranceCheck do
  begin
    Close;
    Parameters.ParamByName('PrvInfoID').Value :=
      qryMaster.FieldByName('FormInfoID').AsInteger;
    Open;
  end;

end;

procedure TFormInfo_5F.qryFormInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      DataSet.FieldByName('FormInfoId').AsInteger;
    Parameters.ParamByName('Kind').Value := TabControl1.TabIndex;
    Active := True;
  end; // with
end;

procedure TFormInfo_5F.SBtnWordClick(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryFormInfo.State in dsEditModes) then
      qryFormInfo.Edit;
    MemWordDocuments.Lines.Add(ExtractFileName(OpenDialog1.FileName));
    qryFormInfo.FieldByName('WordDocuments').AsString :=
      Trim(MemWordDocuments.Lines.Text);
  end;
end;

procedure TFormInfo_5F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFormInfo_5F.BitBtn11Click(Sender: TObject);
begin
  inherited;
  SetSendToBackShapeOnPrint(Self);
  ppReport1.Print;
end;

procedure TFormInfo_5F.pplblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'تاريخ چاپ' + var_glb_CurrentDate;
end;

procedure TFormInfo_5F.qryFormInfoBeforePost(DataSet: TDataSet);
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

procedure TFormInfo_5F.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TFormInfo_5F.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

end.
