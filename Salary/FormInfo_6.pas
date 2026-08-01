unit FormInfo_6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, DBCtrls, Mask, ComCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppPrnabl, ppCtrls, ppVar, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions  ;

type
  TFormInfo_6F = class(Ttemplate2MDIF)
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
    SrcMaster: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    LblInfoName_L1: TLabel;
    DBEdit3: TDBEdit;
    LblInfoName_L2: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    btnAcc: TBitBtn;
    qryWage: TADOQuery;
    SrcWage: TDataSource;
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
    EdtWord: TDBEdit;
    LblWord: TLabel;
    qryFormInfoWordDocuments: TStringField;
    SBtnWord: TSpeedButton;
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
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    PnlRecalKindClock: TPanel;
    Label17: TLabel;
    CmbRecalKindClock: TDBComboBox;
    qryFormInfoRecalKindClock: TWordField;
    PageControl1: TPageControl;
    tabShowOperators: TTabSheet;
    TabSheet2: TTabSheet;
    TabControl1: TTabControl;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    BitBtn10: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    DBGrid3: TDBGrid;
    qryOperators: TADOQuery;
    qryOperatorsUserID: TIntegerField;
    qryOperatorsname: TStringField;
    qryOperators_checked: TIntegerField;
    srcOperators: TDataSource;
    edtTaxCode: TDBEdit;
    lblTaxCode: TLabel;
    qryFormInfoTaxCode: TWordField;
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
    procedure btnAccClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
    procedure SBtnWordClick(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure BitBtn11Click(Sender: TObject);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure qryFormInfoBeforePost(DataSet: TDataSet);
    procedure qryFormInfoRecalKindClockGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormInfoRecalKindClockSetText(Sender: TField;
      const Text: String);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryOperatorsAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FormType: Byte;
    procedure InitForm;
    procedure initOperators;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfo_6F: TFormInfo_6F;

implementation

uses DM, Math, StrUtils, SalaryFunctions, search2, sort2, GlobalPro,
  mmessage,  searchCode_ADO, ChooseItem, AccountP;

{$R *.dfm}

procedure TFormInfo_6F.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormInfo.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);
end;

procedure TFormInfo_6F.qryFormInfoAfterInsert(DataSet: TDataSet);
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

procedure TFormInfo_6F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);
end;

procedure TFormInfo_6F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormInfo_6F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_6F.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FormInfoDelete(DataSet.FieldByName('FormInfoID').AsInteger) then
    Abort;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TFormInfo_6F.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»‹‹  ‘œ', 1);
end;

procedure TFormInfo_6F.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ', 1);
end;

procedure TFormInfo_6F.qryMasterAfterScroll(DataSet: TDataSet);
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

procedure TFormInfo_6F.InitForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    lblCaption.Hint := IntToStr(FormType);
    if FieldByName('ShowOperators').AsInteger <> 1 then
      PageControl1.Pages[0].Destroy;
    DBEdit5.Visible := FieldByName('AmountActive').AsInteger in [1, 3];
    Label4.Visible := DBEdit5.Visible;
    DBEdit6.Visible := FieldByName('DurationDayActive').AsInteger = 1;
    Label5.Visible := DBEdit6.Visible;
    DBEdit7.Visible := FieldByName('DurationTimeActive').AsInteger = 1;
    Label6.Visible := DBEdit7.Visible;

    // if not DBEdit5.Visible then begin
    // EdtWord.Top:=DBEdit5.Top;
    // LblWord.Top:=Label4.Top;
    // SBtnWord.Top:=DBEdit5.Top;
    // end;
    EdtWord.Visible := FieldByName('WordDocumentsActive').AsInteger = 1;
    LblWord.Visible := EdtWord.Visible;
    SBtnWord.Visible := EdtWord.Visible;

    // if (FieldByName('TopicCodeKind').AsInteger = 0) and
    // (FieldByName('DetailCodeKind').AsInteger = 0) and
    // (FieldByName('CTopicCodeKind').AsInteger = 0) and
    // (FieldByName('CTopicCode2Kind').AsInteger = 0) then
    // btnAcc.Visible := False;

    PnlRecalKindClock.Visible := FieldByName('RecalKindClock').AsInteger = 1;

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

  Caption := '„⁄—›Ì ' + qryInitForm.FieldByName('FormCaption_L1').AsString;
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

procedure TFormInfo_6F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  InitForm;
  qryOperators.Active := True;
end;

procedure TFormInfo_6F.initOperators;
var
  checkeds: String;
  r: Int64;
begin
  checkeds := qryFormInfo.FieldByName('RecallFormInfoID1').AsString;
  checkeds := RightStr(checkeds, Length(checkeds) - 1);

  while pos(',', checkeds) <> 0 do
  begin
    r := StrToInt64Def(LeftStr(checkeds, pos(',', checkeds) - 1), 0);
    if r = 0 then
      Break;
    if qryOperators.Locate('UserID', r, []) then
      ToggleCheck(False);
    checkeds := copy(checkeds, pos(',', checkeds) + 1, Length(checkeds));
  end; // while
end;

procedure TFormInfo_6F.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryOperators do
  begin
    Edit;
    if FieldByName('_Checked').AsInteger > 0 then
      FieldByName('_Checked').AsInteger := 0
    else
      FieldByName('_Checked').AsInteger := 1;
    Post;
  end; // with
end;

procedure TFormInfo_6F.TabControl1Change(Sender: TObject);
begin
  inherited;
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('Kind').Value := 10 + TabControl1.TabIndex;
    Active := True;
  end; // with

end;

procedure TFormInfo_6F.btnAccClick(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryFormInfo)
end;

procedure TFormInfo_6F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + 'WHERE (FormType = ' + qryInitForm.FieldByName('RecallFormTypes')
    .AsString + ') ';
  s := searchCode_ADOF.SearchCode2(Dmf.adcSalary, ' ”ÿÕ˛Â«Ì ﬁ»·Ì  ', Txt,
    ['', 'ﬂœ', '‰«„ 1', '‰«„ 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryMaster.Locate('FormInfoID', Results[0], []);
end;

procedure TFormInfo_6F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));
end;

procedure TFormInfo_6F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True, IntToStr(FormType));
  SetColSize(DBGrid2, 2, True, IntToStr(FormType));
end;

procedure TFormInfo_6F.BitBtn10Click(Sender: TObject);
var
  s: String;
  i: Integer;
  ts: TStringList;
begin
  inherited;
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
      if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfThen(optP.LanguageDisplay1,
        ' FormsInfo.InfoName_L1 + ''  ('' + FormTypes.FormCaption_L1 + '')''  ',
        'InfoName_L2 '),
        ' Pay.FormsInfo INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType  ',
        ' WHERE (Pay.FormTypes.SalaryKind  in(1,2,3,4,5,6,7,8,13,14))') then
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
          SQL.Add('AND (Kind = ' + IntToStr(10 + TabControl1.TabIndex) + ')');
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
          FieldByName('Kind').AsInteger := 10 + TabControl1.TabIndex;
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

procedure TFormInfo_6F.qryFormInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value := TADOQuery(DataSet)
      .FieldByName('FormInfoId').AsInteger;
    Parameters.ParamByName('Kind').Value := 10 + TabControl1.TabIndex;
    Active := True;
  end; // with
  with qryOperators do
  begin
    Active := False;
    Active := True;
  end; // with
  initOperators;
end;

procedure TFormInfo_6F.SBtnWordClick(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryFormInfo.State in dsEditModes) then
      qryFormInfo.Edit;
    qryFormInfo.FieldByName('WordDocuments').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TFormInfo_6F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFormInfo_6F.BitBtn11Click(Sender: TObject);
begin
  inherited;
  SetSendToBackShapeOnPrint(Self);
  ppReport1.Print;
end;

procedure TFormInfo_6F.pplblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' «—ÌŒ ç«Å' + var_glb_CurrentDate;
end;

procedure TFormInfo_6F.qryFormInfoBeforePost(DataSet: TDataSet);
var
  checkeds: String;
begin
  inherited;
  TrimStringFields(DataSet);
  if not ValidInfoName(DataSet, qryInitForm) then
    Abort;
  with qryOperators do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('_checked').AsInteger > 0 then
        checkeds := checkeds + qryOperatorsUserID.AsString + ',';
      next;
    end; // while
    EnableControls;
  end; // with
  qryFormInfo.FieldByName('RecallFormInfoID1').AsString := ',' + checkeds;

end;

procedure TFormInfo_6F.qryFormInfoRecalKindClockGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := CmbRecalKindClock.Items[Sender.AsInteger];
end;

procedure TFormInfo_6F.qryFormInfoRecalKindClockSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := CmbRecalKindClock.ItemIndex;
end;

procedure TFormInfo_6F.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid3.Canvas.Rectangle(Rect);
    if qryOperators_checked.AsInteger > 0 then
      DBGrid3.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid3.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TFormInfo_6F.qryOperatorsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with qryOperators do
  begin
    while not Eof do
    begin
      Edit;
      FieldByName('_Checked').AsInteger := 0;
      Post;
      next;
    end; // while
  end; // with

end;

procedure TFormInfo_6F.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
  if not(qryFormInfo.State in dsEditModes) then
    qryFormInfo.Edit;
  ToggleCheck;
end;

procedure TFormInfo_6F.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

end.
