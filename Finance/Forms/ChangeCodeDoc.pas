unit ChangeCodeDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DB, ADODB, DBClient, Provider, frYears,
  ComCtrls, CheckLst, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TChangeCodeDocF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    actFilter: TAction;
    pnlAccCodeOld: TPanel;
    Label1: TLabel;
    mskAccOld: TMaskEdit;
    spdAccOld: TSpeedButton;
    edtAccOld: TEdit;
    pnlDetailOld: TPanel;
    Label2: TLabel;
    spdDetailOld: TSpeedButton;
    mskDetailOld: TMaskEdit;
    edtDetailOld: TEdit;
    pnlCenterAccOld: TPanel;
    Label3: TLabel;
    spdCenterAccOLd: TSpeedButton;
    mskCenterAccOLd: TMaskEdit;
    edtCenterAccOLd: TEdit;
    pnlCenterAccOld2: TPanel;
    Label4: TLabel;
    spdCenterAccOLd2: TSpeedButton;
    mskCenterAccOLd2: TMaskEdit;
    edtCenterAccOLd2: TEdit;
    pnlAccNew: TPanel;
    Label5: TLabel;
    spdAccNew: TSpeedButton;
    mskAccNew: TMaskEdit;
    edtAccNew: TEdit;
    pnlDetailNew: TPanel;
    Label6: TLabel;
    spdDetailNew: TSpeedButton;
    mskDetailNew: TMaskEdit;
    edtDetailNew: TEdit;
    pnlCenterAccNew: TPanel;
    Label7: TLabel;
    spdCenterAcc: TSpeedButton;
    mskCenterAcc: TMaskEdit;
    edtCenterAcc: TEdit;
    pnlCenterAcc2: TPanel;
    Label8: TLabel;
    spdCenterAcc2: TSpeedButton;
    mskCenterAcc2: TMaskEdit;
    edtCenterAcc2: TEdit;
    qryChange: TADOQuery;
    srcChange: TDataSource;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    actChangeCode: TAction;
    BitBtn2: TBitBtn;
    actChangeNote: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    BitBtn6: TBitBtn;
    actShowDoc: TAction;
    BitBtn7: TBitBtn;
    Image3: TImage;
    Image2: TImage;
    RadioGroup1: TRadioGroup;
    prvChange: TDataSetProvider;
    cliChange: TClientDataSet;
    cliChangeID: TIntegerField;
    cliChangeSerial: TIntegerField;
    cliChangeTopicCode: TLargeintField;
    cliChangeDetailCode: TIntegerField;
    cliChangeCTopicCode: TIntegerField;
    cliChangeCTopicCode2: TIntegerField;
    cliChangeComment_L1: TStringField;
    cliChangeComment_L2: TStringField;
    cliChangeRow: TIntegerField;
    cliChangeAidDocdate: TStringField;
    cliChangeAidAmount: TFloatField;
    cliChangeBudgetTopicID: TIntegerField;
    cliChangeBudgetID: TIntegerField;
    cliChangeReferenceNo: TIntegerField;
    cliChangeReferenceTxt: TStringField;
    cliChangeReferenceDate: TStringField;
    cliChangeProjectID: TIntegerField;
    cliChangeReferenceCheck: TWordField;
    cliChangeCompanyCode: TIntegerField;
    cliChangeSecondaryDocNo: TIntegerField;
    cliChangePrimaryDocNo: TIntegerField;
    cliChangeDocDate: TStringField;
    cliChangeStatus: TWordField;
    cliChange_Selected: TBooleanField;
    qry_Doc: TADOQuery;
    actCheckAll: TAction;
    actSlelectInverse: TAction;
    qryCategories: TADOQuery;
    qryDetails: TADOQuery;
    qryCTopics: TADOQuery;
    qryCTopics2: TADOQuery;
    cliChangeAuditDoPrint: TSmallintField;
    cliChangectopiccode3: TIntegerField;
    cliChangeYearID: TIntegerField;
    cliChangeRelatedID: TIntegerField;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    mskDateFrom: TMaskEdit;
    mskDateTo: TMaskEdit;
    pnlCenterAccOld3: TPanel;
    lblTafsil4: TLabel;
    spdCenterAccOLd3: TSpeedButton;
    mskCenterAccOLd3: TMaskEdit;
    edtCenterAccOLd3: TEdit;
    pnlCenterAcc3: TPanel;
    Label14: TLabel;
    spdCenterAcc3: TSpeedButton;
    mskCenterAcc3: TMaskEdit;
    edtCenterAcc3: TEdit;
    cliChangeAidDocNo: TFMTBCDField;
    pnlCompany: TPanel;
    cmbCompany: TComboBox;
    Label15: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edtNoteNew: TEdit;
    Label10: TLabel;
    edtNoteOld: TEdit;
    Label9: TLabel;
    EdtNewComment: TEdit;
    Label16: TLabel;
    CheckBoxAllCompany: TCheckBox;
    sCheckListBox1: TCheckListBox;
    pnlBudgetIDOld: TPanel;
    lbl1: TLabel;
    spdBudgetIDOld: TSpeedButton;
    MskBudgetIDOld: TMaskEdit;
    edtBudgetIDOld: TEdit;
    pnlBudgetID: TPanel;
    lbl2: TLabel;
    spdBudgetID: TSpeedButton;
    MskBudgetID: TMaskEdit;
    edtBudgetID: TEdit;
    pnlBudgetTopicIDOld: TPanel;
    lbl3: TLabel;
    spdBudgetTopicIDOld: TSpeedButton;
    MskBudgetTopicIDOld: TMaskEdit;
    edtBudgetTopicIDOld: TEdit;
    pnlBudgetTopicID: TPanel;
    lbl4: TLabel;
    spdBudgetTopicID: TSpeedButton;
    MskBudgetTopicID: TMaskEdit;
    edtBudgetTopicID: TEdit;
    Panel5: TPanel;
    Label17: TLabel;
    Panel6: TPanel;
    Label18: TLabel;
    Panel7: TPanel;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    Panel8: TPanel;
    CheckBoxAllYear: TCheckBox;
    frYear1: TfrYear;
    pnlCurrencyTypeOld: TPanel;
    Label13: TLabel;
    spdCurrencyTypeOld: TSpeedButton;
    MskCurrencyTypeOld: TMaskEdit;
    edtCurrencyTypeOld: TEdit;
    pnlCurrencyType: TPanel;
    Label19: TLabel;
    spdCurrencyType: TSpeedButton;
    MskCurrencyType: TMaskEdit;
    edtCurrencyType: TEdit;
    pnlProjectIDOld: TPanel;
    Label20: TLabel;
    spdProjectIDOld: TSpeedButton;
    MskProjectIDOld: TMaskEdit;
    edtProjectIDOld: TEdit;
    pnlProjectID: TPanel;
    Label21: TLabel;
    spdProjectID: TSpeedButton;
    MskProjectID: TMaskEdit;
    edtProjectID: TEdit;
    qryProjects: TADOQuery;
    qryCurrencies: TADOQuery;
    qryBudgetTopics: TADOQuery;
    cliChangeCurrencyDebit: TFMTBCDField;
    cliChangeCurrencyCredit: TFMTBCDField;
    cliChangeCurrencyRate: TFMTBCDField;
    cliChangeDebt: TFMTBCDField;
    cliChangeCredit: TFMTBCDField;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure spdAccOldClick(Sender: TObject);
    procedure actChangeCodeExecute(Sender: TObject);
    procedure actChangeNoteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cliChangeStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actShowDocExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryChangeAfterOpen(DataSet: TDataSet);
    procedure actCheckAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure mskAccOldKeyPress(Sender: TObject; var Key: Char);
    procedure mskDetailOldKeyPress(Sender: TObject; var Key: Char);
    procedure mskCenterAccOLdKeyPress(Sender: TObject; var Key: Char);
    procedure mskCenterAccOLd2KeyPress(Sender: TObject; var Key: Char);
    procedure mskAccNewKeyPress(Sender: TObject; var Key: Char);
    procedure mskDetailNewKeyPress(Sender: TObject; var Key: Char);
    procedure mskCenterAccKeyPress(Sender: TObject; var Key: Char);
    procedure mskCenterAcc2KeyPress(Sender: TObject; var Key: Char);
    procedure mskAccOldExit(Sender: TObject);
    procedure mskDetailOldExit(Sender: TObject);
    procedure mskCenterAccOLdExit(Sender: TObject);
    procedure mskCenterAccOLd2Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sCheckListBox1ClickCheck(Sender: TObject);
    procedure CheckBoxAllYearClick(Sender: TObject);
    procedure CheckBoxAllCompanyClick(Sender: TObject);
    procedure MskBudgetIDOldExit(Sender: TObject);
    procedure MskBudgetTopicIDOldExit(Sender: TObject);
    procedure MskBudgetIDExit(Sender: TObject);
    procedure MskBudgetIDKeyPress(Sender: TObject; var Key: Char);
    procedure MskBudgetTopicIDExit(Sender: TObject);
    procedure MskBudgetTopicIDKeyPress(Sender: TObject; var Key: Char);
    procedure MskBudgetIDOldKeyPress(Sender: TObject; var Key: Char);
    procedure MskBudgetTopicIDOldKeyPress(Sender: TObject; var Key: Char);
    procedure MskProjectIDExit(Sender: TObject);
    procedure MskCurrencyTypeExit(Sender: TObject);
    procedure MskProjectIDOldExit(Sender: TObject);
    procedure MskCurrencyTypeOldExit(Sender: TObject);
    procedure MskProjectIDOldKeyPress(Sender: TObject; var Key: Char);
    procedure MskCurrencyTypeOldKeyPress(Sender: TObject; var Key: Char);
    procedure MskProjectIDKeyPress(Sender: TObject; var Key: Char);
    procedure MskCurrencyTypeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    FfilterString: String;
    FAccCodeold: string;
    FAccCodeNew: String;
    FCenterTopicOld: string;
    FCenterTopicNew: string;
    FCenterTopicOld2: string;
    FCenterTopicNew2: string;

    FBudgetIDOld: string;
    FBudgetIDNew: string;
    FBudgetTopicIDOld: string;
    FBudgetTopicIDNew: string;

    procedure ToggleCheck;
    procedure InitRadioGroup;
    // function ActionForDocStatus2_3: Boolean;
    procedure InitcmbCompany;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeCodeDocF: TChangeCodeDocF;

implementation

uses Dm, GlobalPro, searchCode_L1_L2, StrUtils,
  Document, mmessage, StdConvs, search1, sort;

{$R *.dfm}

procedure TChangeCodeDocF.ToggleCheck;
begin
  pnlAccNew.Enabled := True;
  with cliChange do
  begin
    Edit;
    FieldByName('_Selected').AsBoolean := not FieldByName('_Selected')
      .AsBoolean;
    Post;
  end; // with

  // 90/12/09 ////if cliChange_Selected.AsBoolean then
  // ActionForDocStatus2_3;

end;

procedure TChangeCodeDocF.actFilterExecute(Sender: TObject);
const
  SqlTxt = 'SELECT acc.Documents.*, acc.DocGroups.SecondaryDocNo,' +
    ' acc.DocGroups.PrimaryDocNo,' + ' acc.DocGroups.DocDate,' +
    ' acc.DocGroups.Status FROM Acc.DocGroups INNER JOIN ' +
    ' Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial ' +
    ' AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode AND ' +
    ' Acc.DocGroups.YearID = Acc.Documents.YearID %s';
begin
  inherited;
  {
    در این قسمت کد حساب انتخاب شده فیلتر شده و در گرید نمایش داده میشود
  }
  FfilterString := '';
  if frYear1.Enabled then
    Add2Filter(FfilterString, 'Acc.Documents.YearID =' +
      IntToStr(frYear1.YearID));

  if gv_MultiCompany then
    if not(CheckBoxAllCompany.Checked) then
      Add2Filter(FfilterString, Format(' Acc.Documents.CompanyCode = %d ',
        [Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])]));

  if (pnlAccCodeOld.Visible) and (Trim(mskAccOld.Text) <> EmptyStr) then
    Add2Filter(FfilterString, 'acc.Documents.TopicCode = ' +
      Trim(mskAccOld.Text));

  if (pnlDetailOld.Visible) and (Trim(mskDetailOld.Text) <> EmptyStr) then
    Add2Filter(FfilterString, 'acc.Documents.DetailCode = ' +
      Trim(mskDetailOld.Text));

  if (pnlCenterAccOld.Visible) and (Trim(mskCenterAccOLd.Text) <> EmptyStr) then
    Add2Filter(FfilterString, 'acc.Documents.CTopicCode =  ' +
      Trim(mskCenterAccOLd.Text));

  if (pnlCenterAccOld2.Visible) and (Trim(mskCenterAccOLd2.Text) <> EmptyStr)
  then
    Add2Filter(FfilterString, 'acc.Documents.CTopicCode2 =  ' +
      Trim(mskCenterAccOLd2.Text));

  if (pnlCenterAccOld3.Visible) and (Trim(mskCenterAccOLd3.Text) <> EmptyStr)
  then
    Add2Filter(FfilterString, 'acc.Documents.CTopicCode3 =  ' +
      Trim(mskCenterAccOLd3.Text));

  if (pnlBudgetID.Visible) and (Trim(MskBudgetIDOld.Text) <> EmptyStr) then
    Add2Filter(FfilterString, 'acc.Documents.BudgetID =  ' +
      Trim(MskBudgetIDOld.Text));

  if (pnlBudgetTopicID.Visible) and (Trim(MskBudgetTopicIDOld.Text) <> EmptyStr)
  then
    Add2Filter(FfilterString, 'acc.Documents.BudgetTopicID =  ' +
      Trim(MskBudgetTopicIDOld.Text));

  if (Trim(MskProjectIDOld.Text) <> EmptyStr) then
    Add2Filter(FfilterString, 'acc.Documents.ProjectID =  ' +
      Trim(MskProjectIDOld.Text));

  if (Trim(MskCurrencyTypeOld.Text) <> EmptyStr) then
    Add2Filter(FfilterString, 'acc.Documents.CurrencyType =  ' +
      Trim(MskCurrencyTypeOld.Text));

  with qry_Doc do
  begin
    Close;
    SQL.Text := 'select * from acc.Documents';
    SQL.Add(FfilterString);
    Open;
  end;

  Add2Filter(FfilterString, 'acc.DocGroups.DocDate between ' +
    QuotedStr(Trim(mskDateFrom.Text)) + ' AND ' +
    QuotedStr(Trim(mskDateTo.Text)));
  with qryChange do
  begin
    Close;
    SQL.Text := Format(SqlTxt, [FfilterString]);
    SQL.Add('ORDER BY acc.DocGroups.DocDate, acc.DocGroups.SecondaryDocNo, acc.DocGroups.Serial');
    try
      Open;
      actChangeCode.Enabled := True;
    except
      on E: Exception do
      begin
        Warn(' اشکال در نمايش سند ' + E.Message);
        Warn2(E.Message);
      end;
    end;
  end;

end;

procedure TChangeCodeDocF.sCheckListBox1ClickCheck(Sender: TObject);
begin
  inherited;
  // sCheckListBox1.Repaint;
  // sCheckListBox1.Refresh;
  if sCheckListBox1.Items.Count > 0 then
  begin
    pnlAccCodeOld.Visible := sCheckListBox1.Checked[0];
    pnlAccNew.Visible := sCheckListBox1.Checked[0];
  end;

  if sCheckListBox1.Items.Count > 1 then
  begin
    pnlDetailOld.Visible := sCheckListBox1.Checked[1];
    pnlDetailNew.Visible := sCheckListBox1.Checked[1];
  end;

  if sCheckListBox1.Items.Count > 2 then
  begin
    pnlCenterAccOld.Visible := sCheckListBox1.Checked[2];
    pnlCenterAccNew.Visible := sCheckListBox1.Checked[2];
  end;
  if sCheckListBox1.Items.Count > 3 then
  begin
    pnlCenterAccOld2.Visible := sCheckListBox1.Checked[3];
    pnlCenterAcc2.Visible := sCheckListBox1.Checked[3];
  end;
  if sCheckListBox1.Items.Count > 4 then
  begin
    pnlCenterAccOld3.Visible := sCheckListBox1.Checked[4];
    pnlCenterAcc3.Visible := sCheckListBox1.Checked[4];
  end;
  if sCheckListBox1.Items.Count > 5 then
  begin
    pnlBudgetIDOld.Visible := sCheckListBox1.Checked[5];
    pnlBudgetID.Visible := sCheckListBox1.Checked[5];
  end;
  if sCheckListBox1.Items.Count > 6 then
  begin
    pnlBudgetTopicIDOld.Visible := sCheckListBox1.Checked[6];
    pnlBudgetTopicID.Visible := sCheckListBox1.Checked[6];
  end;
  if sCheckListBox1.Items.Count > 6 then
  begin
    pnlProjectIDOld.Visible := sCheckListBox1.Checked[7];
    pnlProjectID.Visible := sCheckListBox1.Checked[7];
  end;
  if sCheckListBox1.Items.Count > 6 then
  begin
    pnlCurrencyTypeOld.Visible := sCheckListBox1.Checked[8];
    pnlCurrencyType.Visible := sCheckListBox1.Checked[8];
  end;

end;

procedure TChangeCodeDocF.spdAccOldClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  Txt: String;
  CnName: String;
  AccCode: string;
  CenterCode: string;
begin
  inherited;
  AccCode := EmptyStr;
  CenterCode := EmptyStr;
  if (Sender as TSpeedButton).Hint = 'old' then
  begin
    AccCode := Trim(FAccCodeold);
    CenterCode := Trim(FCenterTopicOld);
  end
  else
  begin
    AccCode := Trim(FAccCodeNew);
    CenterCode := Trim(FCenterTopicNew);
  end;

  if (AccCode = EmptyStr) and ((Sender as TSpeedButton).Tag <> 1) and
    ((Sender as TSpeedButton).Tag <> 6) then
  begin
    Warn('اول يك كد حساب را انتخاب كنيد');
    Exit;
  end;
  case (Sender as TSpeedButton).Tag of
    1:
      Txt := ' SELECT distinct acc.Documents.TopicCode, acc.Categories.MoeenName_l1, acc.Categories.MoeenName_l2'
        + ' FROM acc.Documents inner join acc.Categories ' +
        ' on acc.Documents.TopicCode = acc.Categories.TopicCode';

    2:
      Txt := 'SELECT Details.DetailCode, Details.DetailName_L1 FROM acc.Details  as Details '
        + 'INNER JOIN acc.DetailRange as DetailRange ON Details.DetailCode = DetailRange.DetailCode '
        + 'WHERE DetailRange.TopicCode=' + AccCode;
    3:
      Txt := 'SELECT acc.CenterTopics.CTopicCode,acc.CenterTopics.CTopicName_L1,acc.CenterTopics.CTopicName_L2 FROM acc.CenterTopics '
        + 'INNER JOIN acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode '
        + 'WHERE (((acc.CenterTopicRange.TopicCode)=' + AccCode + '))';
    4:
      Txt := dmf.sqlSetText(opta.CtoipcRelatedKind + 3) +
        IfThen(opta.CtoipcRelatedKind = 0, CenterCode, AccCode) + '))';

    5:
      Txt := dmf.sqlSetText(20);

    6:
      // Txt := ' SELECT Acc.Budgets.BudgetID, Acc.Interfaces.InterfaceCaption_L1, '
      // + ' Acc.Budgets.CompanyCode,' +
      // ' CASE WHEN Acc.Budgets.Status = 3 THEN ''تاييد شده'' END AS Status ' +
      // ' FROM Acc.Budgets INNER JOIN' +
      // ' Acc.Interfaces ON Acc.Budgets.InterfaceID = Acc.Interfaces.InterfaceID '
      // + ' WHERE (Acc.Interfaces.BudgetEffect = 2) AND (Acc.Budgets.Status = 3) ';

      Txt := 'SELECT BudgetTopicID, BudgetCaption_L1 FROM Acc.BudgetTopics WHERE  (BudgetTopicID <> 0)';

    7:
      // Txt := 'SELECT BudgetTopicID, BudgetCaption_L1 FROM  acc.BudgetTopicsForUse';
      Txt := 'SELECT BudgetTopicID, BudgetCaption_L1 FROM Acc.BudgetTopics WHERE  (BudgetTopicID <> 0)';
    8:
      Txt := 'SELECT ProjectID, ProjectCaption_L1 FROM Acc.Projects';
    9:
      Txt := 'SELECT CurrenciesID, CurrenciesName FROM Acc.Currencies';
  end;

  searchCode_L1_L2F.SearchCode2(dmf.adcAccounting, 'جستجو ', Txt,
    ['كد', 'شرح', 'شرح'], Results, [50, 100, 100], alLeft);
  CnName := (Sender as TSpeedButton).Name;
  CnName := RightStr(CnName, length(CnName) - 3);
  if FindComponent('msk' + CnName) is TMaskEdit then
    (FindComponent('msk' + CnName) as TMaskEdit).Text := Results[0];
  if FindComponent('edt' + CnName) is TEdit then
  begin
    (FindComponent('edt' + CnName) as TEdit).Text := Results[1];
    (FindComponent('edt' + CnName) as TEdit).Font.Color := clBlack;
  end;

  if ((Sender as TSpeedButton).Tag = 1) then
    if ((FindComponent('msk' + CnName) as TMaskEdit).Name = 'mskAccOld') then
      FAccCodeold := (FindComponent('msk' + CnName) as TMaskEdit).Text
    else
      FAccCodeNew := (FindComponent('msk' + CnName) as TMaskEdit).Text;

  if ((Sender as TSpeedButton).Tag = 3) then
    if ((FindComponent('msk' + CnName) as TMaskEdit).Name = 'mskCenterAccOLd')
    then
      FCenterTopicOld := (FindComponent('msk' + CnName) as TMaskEdit).Text
    else
      FCenterTopicNew := (FindComponent('msk' + CnName) as TMaskEdit).Text

end;

procedure TChangeCodeDocF.actChangeCodeExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to ComponentCount - 1 do

    if Components[i].Tag = 6 then
      if (TEdit(Components[i]).Font.Color = clRed) then
      begin
        Warn('كدهاي انتخاب شده معتبر نمي باشد ');
        Exit;
      end;

  with cliChange do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        if cliChange_Selected.AsBoolean then
          if qry_Doc.Locate('ID', cliChangeID.AsVariant, []) then
          begin
            qry_Doc.Edit;
            if pnlAccNew.Visible then
              // if FieldByName('Status').AsInteger in [0, 1] then
              qry_Doc.FieldByName('TopicCode').AsString := Trim(mskAccNew.Text);
            if pnlDetailNew.Visible then
              qry_Doc.FieldByName('DetailCode').AsString :=
                Trim(mskDetailNew.Text);
            if pnlCenterAccNew.Visible then
              qry_Doc.FieldByName('CTopicCode').AsString :=
                Trim(mskCenterAcc.Text);
            if pnlCenterAcc2.Visible then
              qry_Doc.FieldByName('CTopicCode2').AsString :=
                Trim(mskCenterAcc2.Text);

            if pnlCenterAcc3.Visible then
              qry_Doc.FieldByName('CTopicCode3').AsString :=
                Trim(mskCenterAcc3.Text);

            if pnlBudgetID.Visible then
              qry_Doc.FieldByName('BudgetID').AsString :=
                Trim(MskBudgetID.Text);

            if pnlBudgetTopicID.Visible then
              qry_Doc.FieldByName('BudgetTopicID').AsString :=
                Trim(MskBudgetTopicID.Text);

            if pnlProjectID.Visible then
              qry_Doc.FieldByName('ProjectID').AsString :=
                Trim(MskProjectID.Text);

            if pnlCurrencyType.Visible then
              qry_Doc.FieldByName('CurrencyType').AsString :=
                Trim(MskCurrencyType.Text);

            if edtNoteNew.Text <> '' then
              qry_Doc.FieldByName('Comment_L1').AsString :=
                StringReplace(cliChangeComment_L1.AsString, edtNoteOld.Text,
                edtNoteNew.Text, [rfReplaceAll]);

            qry_Doc.Post;
          end;
        Next;
      end;
      BigMessage('با موفقيت منتقل شد', 1);
    finally
      actChangeCode.Enabled := False;
      EnableControls;
      First;
      qryChange.Close;
      qryChange.Open;
    end;
end;

procedure TChangeCodeDocF.actChangeNoteExecute(Sender: TObject);
begin
  inherited;
  with cliChange do
    try
      DisableControls;
      First;

      if PageControl1.TabIndex = 1 then
        if get_response('آیا از تغییر متن اسناد انتخاب شده به:' + #13 +
          IfThen(Trim(EdtNewComment.Text) <> EmptyStr, EdtNewComment.Text, '""')
          + #13 + 'اطمینان دارید؟') <> mrYes then
          Exit;

      while not Eof do
      begin
        if cliChange_Selected.AsBoolean then
          if qry_Doc.Locate('ID', cliChangeID.AsVariant, []) then
          begin

            qry_Doc.Edit;

            if PageControl1.TabIndex = 0 then
              qry_Doc.FieldByName('Comment_L1').AsString :=
                StringReplace(FieldByName('Comment_L1').AsString,
                edtNoteOld.Text, edtNoteNew.Text, [rfReplaceAll])

            else if PageControl1.TabIndex = 1 then
              qry_Doc.FieldByName('Comment_L1').AsString := EdtNewComment.Text;

            qry_Doc.Post;

            Edit;
            if PageControl1.TabIndex = 0 then
              FieldByName('Comment_L1').AsString :=
                StringReplace(FieldByName('Comment_L1').AsString,
                edtNoteOld.Text, edtNoteNew.Text, [rfReplaceAll])
            else if PageControl1.TabIndex = 1 then
              FieldByName('Comment_L1').AsString := EdtNewComment.Text;
            Post;
          end;
        Next;
      end;
      BigMessage('با موفقيت اصلاح شد', 1);
    finally
      // actChangeCode.Enabled := False;
      EnableControls;
      First;
    end;

end;

procedure TChangeCodeDocF.FormResize(Sender: TObject);
begin
  inherited;

  sCheckListBox1.Width := 500;
  if sCheckListBox1.Count > 3 then
    sCheckListBox1.Columns := 2;

  if sCheckListBox1.Count > 4 then
    sCheckListBox1.Columns := 4;
  // if RadioGroup1.Items.Count <= 3 then
  // begin
  // RadioGroup1.Width := 250;
  // RadioGroup1.Columns := 3;
  // end;

end;

procedure TChangeCodeDocF.InitRadioGroup;
begin

  // if dmf.ReadBankConfigAcc('BudgetActive') = '1' then
  // begin
  sCheckListBox1.AddItem('تفصیلی', TObject(1));
  sCheckListBox1.AddItem('تفصیلی 2', TObject(2));
  sCheckListBox1.AddItem('تفصیلی 3', TObject(3));
  sCheckListBox1.AddItem('تفصیلی 4', TObject(4));
  sCheckListBox1.AddItem('فرم بودجه', TObject(5));
  sCheckListBox1.AddItem('بودجه', TObject(6));
  sCheckListBox1.AddItem('طرح بودجه ای', TObject(7));
  sCheckListBox1.AddItem('واحد پولی', TObject(8));

  RadioGroup1.Items.Add('تفصیلی');
  RadioGroup1.Items.Add('تفصیلی 2');
  RadioGroup1.Items.Add('تفصیلی 3');
  RadioGroup1.Items.Add('تفصیلی 4');
  RadioGroup1.Items.Add('فرم بودجه');
  RadioGroup1.Items.Add('بودجه');
  RadioGroup1.Items.Add('طرح بودجه ای');
  RadioGroup1.Items.Add('واحد پولی');
  // Exit;
  // end;

  // if dmf.ReadBankConfigAcc('CTopicCode3Active') = '1' then
  // begin
  // sCheckListBox1.AddItem('تفصیلی', TObject(1));
  // sCheckListBox1.AddItem('تفصیلی 2', TObject(2));
  // sCheckListBox1.AddItem('تفصیلی 3', TObject(3));
  // sCheckListBox1.AddItem('تفصیلی 4', TObject(4));
  //
  // RadioGroup1.Items.Add('تفصیلی');
  // RadioGroup1.Items.Add('تفصیلی 2');
  // RadioGroup1.Items.Add('تفصیلی 3');
  // RadioGroup1.Items.Add('تفصیلی 4');
  // Exit;
  // end;
  //
  // if dmf.ReadBankConfigAcc('CTopicCode2Active') = '1' then
  // begin
  // sCheckListBox1.AddItem('تفصیلی', TObject(1));
  // sCheckListBox1.AddItem('تفصیلی 2', TObject(2));
  // sCheckListBox1.AddItem('تفصیلی 3', TObject(3));
  //
  // RadioGroup1.Items.Add('تفصیلی');
  // RadioGroup1.Items.Add('تفصیلی 2');
  // RadioGroup1.Items.Add('تفصیلی 3');
  // Exit;
  // end;
  //
  // if dmf.ReadBankConfigAcc('CTopicCode1Active') = '1' then
  // begin
  // sCheckListBox1.AddItem('تفصیلی', TObject(1));
  // sCheckListBox1.AddItem('تفصیلی 2', TObject(2));
  //
  // RadioGroup1.Items.Add('تفصیلی');
  // RadioGroup1.Items.Add('تفصیلی 2');
  // Exit;
  // end;
  //
  // if dmf.ReadBankConfigAcc('DetailCodeActive') = '1' then
  // begin
  // sCheckListBox1.AddItem('تفصیلی', TObject(1));
  //
  // RadioGroup1.Items.Add('تفصیلی');
  // Exit;
  // end;

end;

procedure TChangeCodeDocF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliChange);
end;

procedure TChangeCodeDocF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliChange);
end;

procedure TChangeCodeDocF.CheckBoxAllCompanyClick(Sender: TObject);
begin
  inherited;
  cmbCompany.Enabled := not(CheckBoxAllCompany.Checked);
end;

procedure TChangeCodeDocF.CheckBoxAllYearClick(Sender: TObject);
begin
  inherited;
  frYear1.Enabled := not(CheckBoxAllYear.Checked);
end;

procedure TChangeCodeDocF.FormCreate(Sender: TObject);
begin
  inherited;
  // RadioGroup1Click(RadioGroup1);
  sCheckListBox1.Checked[0] := True;
  sCheckListBox1ClickCheck(sCheckListBox1);
  frYear1.YearID := APPBank.Year;
  qryCategories.Open;
  qryDetails.Open;
  qryCTopics.Open;
  qryCTopics2.Open;
  qryProjects.Open;
  qryCurrencies.Open;
  qryBudgetTopics.Open;
  InitRadioGroup;
  pnlCompany.Visible := gv_MultiCompany;
  if gv_MultiCompany then
    InitcmbCompany;

  PageControl1.ActivePageIndex := 0;

end;

procedure TChangeCodeDocF.InitcmbCompany;
begin
  cmbCompany.Clear;
  with dmf.qry_Temp do
    try
      Connection := dmf.adcAccounting;
      SQL.Text := 'SELECT CompanyCode, CompanyName_L1 FROM Acc.Companies';
      Open;
      while not Eof do
      begin
        cmbCompany.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Close;
      cmbCompany.ItemIndex := cmbCompany.Items.IndexOfObject
        (TObject(opta.DefaultCompany));
    end;

end;

procedure TChangeCodeDocF.cliChangeStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'پيش نويس';
    1:
      Text := 'موقت';
    2:
      Text := 'قطعي';
    3:
      Text := 'دائم';
  end;
end;

procedure TChangeCodeDocF.actShowDocExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(cliChangeSerial.AsInteger, cliChangeYearID.AsInteger,
    cliChangeCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qryChange.FieldByName('id')
    .AsInteger, []);

end;

procedure TChangeCodeDocF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TChangeCodeDocF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  // actShowDoc.Execute;
  ToggleCheck;

end;

procedure TChangeCodeDocF.qryChangeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliChange.Close;
  cliChange.Open;
end;

procedure TChangeCodeDocF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliChange_Selected.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TChangeCodeDocF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck;
end;

procedure TChangeCodeDocF.actCheckAllExecute(Sender: TObject);
begin
  inherited;
  with cliChange do
  begin
    DisableControls;
    First;
    // 90/12/09 // while (not Eof) and not(ActionForDocStatus2_3) do
    while (not Eof) do
    begin
      Edit;
      FieldByName('_Selected').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with

end;

procedure TChangeCodeDocF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliChange do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_Selected').AsBoolean := not FieldByName('_Selected')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TChangeCodeDocF.mskAccOldKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdAccOld.Click
end;

procedure TChangeCodeDocF.MskBudgetIDExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryBudgetTopics.Locate('BudgetID', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryBudgetTopics.FieldByName('BudgetCaption_L1').AsString;
    if (Sender as TMaskEdit).Tag = 4 then
      if (Sender as TMaskEdit).Hint = 'old' then
        FBudgetIDOld := (Sender as TMaskEdit).Text
      else
        FBudgetIDNew := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskBudgetIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdBudgetID.Click
end;

procedure TChangeCodeDocF.MskBudgetIDOldExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryBudgetTopics.Locate('BudgetID', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryBudgetTopics.FieldByName('BudgetCaption_L1').AsString;
    if (Sender as TMaskEdit).Tag = 4 then
      if (Sender as TMaskEdit).Hint = 'old' then
        FBudgetIDOld := (Sender as TMaskEdit).Text
      else
        FBudgetIDNew := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskBudgetIDOldKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdBudgetIDOld.Click

end;

procedure TChangeCodeDocF.MskBudgetTopicIDExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryBudgetTopics.Locate('BudgetTopicID', (Sender as TMaskEdit).Text, [])
  then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryBudgetTopics.FieldByName('BudgetCaption_L1').AsString;
    if (Sender as TMaskEdit).Tag = 4 then
      if (Sender as TMaskEdit).Hint = 'old' then
        FCenterTopicOld2 := (Sender as TMaskEdit).Text
      else
        FCenterTopicNew2 := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskBudgetTopicIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdBudgetTopicID.Click

end;

procedure TChangeCodeDocF.MskBudgetTopicIDOldExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryBudgetTopics.Locate('BudgetTopicID', (Sender as TMaskEdit).Text, [])
  then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryBudgetTopics.FieldByName('BudgetCaption_L1').AsString;
    if (Sender as TMaskEdit).Tag = 4 then
      if (Sender as TMaskEdit).Hint = 'old' then
        FBudgetTopicIDOld := (Sender as TMaskEdit).Text
      else
        FBudgetTopicIDNew := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskBudgetTopicIDOldKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdBudgetTopicIDOld.Click
end;

procedure TChangeCodeDocF.mskDetailOldKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdDetailOld.Click
end;

procedure TChangeCodeDocF.MskProjectIDExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  // 'SELECT ProjectID, ProjectCaption_L1 FROM acc.ProjectsForUse';
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryProjects.Locate('ProjectID', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryProjects.FieldByName('ProjectCaption_L1').AsString;
    // if (Sender as TMaskEdit).Tag = 4 then
    // if (Sender as TMaskEdit).Hint = 'old' then
    // FCenterTopicOld2 := (Sender as TMaskEdit).Text
    // else
    // FCenterTopicNew2 := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskProjectIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdProjectID.Click

end;

procedure TChangeCodeDocF.MskProjectIDOldExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  // 'SELECT ProjectID, ProjectCaption_L1 FROM acc.ProjectsForUse';
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryProjects.Locate('ProjectID', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryProjects.FieldByName('ProjectCaption_L1').AsString;
    // if (Sender as TMaskEdit).Tag = 4 then
    // if (Sender as TMaskEdit).Hint = 'old' then
    // FBudgetIDOld := (Sender as TMaskEdit).Text
    // else
    // FBudgetIDNew := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskProjectIDOldKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdProjectIDOld.Click
end;

procedure TChangeCodeDocF.mskCenterAccOLdKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdCenterAccOLd.Click
end;

procedure TChangeCodeDocF.MskCurrencyTypeExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  // 'SELECT CurrenciesID, CurrenciesName FROM Acc.Currencies';
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryCurrencies.Locate('CurrenciesID', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryCurrencies.FieldByName('CurrenciesName').AsString;
    // if (Sender as TMaskEdit).Tag = 4 then
    // if (Sender as TMaskEdit).Hint = 'old' then
    // FCenterTopicOld2 := (Sender as TMaskEdit).Text
    // else
    // FCenterTopicNew2 := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskCurrencyTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdCurrencyType.Click
end;

procedure TChangeCodeDocF.MskCurrencyTypeOldExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  // 'SELECT CurrenciesID, CurrenciesName FROM Acc.Currencies';
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryCurrencies.Locate('CurrenciesID', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryCurrencies.FieldByName('CurrenciesName').AsString;
    // if (Sender as TMaskEdit).Tag = 4 then
    // if (Sender as TMaskEdit).Hint = 'old' then
    // FBudgetIDOld := (Sender as TMaskEdit).Text
    // else
    // FBudgetIDNew := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.MskCurrencyTypeOldKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdCurrencyTypeOld.Click

end;

procedure TChangeCodeDocF.mskCenterAccOLd2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdCenterAccOLd2.Click
end;

procedure TChangeCodeDocF.mskAccNewKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdAccNew.Click
end;

procedure TChangeCodeDocF.mskDetailNewKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdDetailNew.Click
end;

procedure TChangeCodeDocF.mskCenterAccKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdCenterAcc.Click
end;

procedure TChangeCodeDocF.mskCenterAcc2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdCenterAcc2.Click
end;

procedure TChangeCodeDocF.mskAccOldExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryCategories.Locate('topicCode', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryCategories.FieldByName('MoeenName_L1').AsString;
    if (Sender as TMaskEdit).Hint = 'old' then
      FAccCodeold := (Sender as TMaskEdit).Text
    else
      FAccCodeNew := (Sender as TMaskEdit).Text;

  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.mskDetailOldExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryDetails.Locate('DetailCode', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryDetails.FieldByName('DetailName_l1').AsString
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;

end;

procedure TChangeCodeDocF.mskCenterAccOLdExit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryCTopics.Locate('CTopicCode', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryCTopics.FieldByName('CTopicName_l1').AsString;
    if (Sender as TMaskEdit).Hint = 'old' then
      FCenterTopicOld := (Sender as TMaskEdit).Text
    else
      FCenterTopicNew := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;
end;

procedure TChangeCodeDocF.mskCenterAccOLd2Exit(Sender: TObject);
var
  edt: TEdit;
begin
  inherited;
  edt := (FindComponent('edt' + Copy((Sender as TMaskEdit).Name, 4,
    length((Sender as TMaskEdit).Name))) as TEdit);
  if Trim((Sender as TMaskEdit).Text) = EmptyStr then
    Exit;
  if qryCTopics2.Locate('CTopicCode2', (Sender as TMaskEdit).Text, []) then
  begin
    edt.Font.Color := clBlack;
    edt.Text := qryCTopics2.FieldByName('CTopicName2_l1').AsString;
    if (Sender as TMaskEdit).Tag = 4 then
      if (Sender as TMaskEdit).Hint = 'old' then
        FCenterTopicOld2 := (Sender as TMaskEdit).Text
      else
        FCenterTopicNew2 := (Sender as TMaskEdit).Text;
  end
  else if (Trim((Sender as TMaskEdit).Text) <> '0') then
  begin
    edt.Font.Color := clRed;
    edt.Text := 'كد معتبر نمي باشد ';
  end;
end;

// function TChangeCodeDocF.ActionForDocStatus2_3: Boolean;
// var
// intStatus: Integer;
// begin
// intStatus := cliChange.FieldByName('Status').AsInteger;
// Result := intStatus in [2, 3];
// if Result then
// begin
// Warn(Format
// ('به دلیل %s بودن سند انتخابی امکان انتقال در سطح حساب وجود ندارد.',
// [IfThen(intStatus = 2, 'قطعی', 'دائم')]));
// mskAccNew.Text := mskAccOld.Text;
// edtAccNew.Text := edtAccOld.Text;
// pnlAccNew.Enabled := False;
// RadioGroup1.ItemIndex := 1;
// end;
//
// end;

end.
