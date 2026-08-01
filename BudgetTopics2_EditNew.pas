unit BudgetTopics2_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, Mask, DBCtrls, DBActns, ActnList, Buttons,
  ExtCtrls, Grids, Vcl.DBGrids, DB, ADODB, System.Actions;

type
  TBudgetTopics2_EditNewF = class(TTemplate4F)
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    actRelation: TAction;
    qryProjectsRange: TADOQuery;
    qryProjectsRangeProjectID: TIntegerField;
    qryProjectsRangeBudgetTopicID: TIntegerField;
    qryProjectsRange_ProjectName: TStringField;
    SrcProjectRange: TDataSource;
    qrySelectTopicId: TADOQuery;
    qrySelectTopicIdProjectID: TIntegerField;
    qrySelectTopicIdProjectCaption: TStringField;
    qryBudgetTopics: TADOQuery;
    qryBudgetTopicsBudgetTopicID: TIntegerField;
    qryBudgetTopicsAccCode: TIntegerField;
    qryBudgetTopicsDetailCode: TIntegerField;
    qryBudgetTopicsCTopic1: TIntegerField;
    qryBudgetTopicsLevelID: TIntegerField;
    qryBudgetTopicsNote: TStringField;
    qryBudgetTopicsNextYearCalType: TWordField;
    qryBudgetTopicsEssence: TWordField;
    qryBudgetTopicsDecExtPerecent: TIntegerField;
    qryBudgetTopicsGroupTopic: TIntegerField;
    qryBudgetTopicsPortionPerecentReclamation: TIntegerField;
    qryBudgetTopicsPortionPerecentExp: TIntegerField;
    SrcBudgetTopics: TDataSource;
    qryPrvBudgetId: TADOQuery;
    SrcPrvBudgetId: TDataSource;
    qryInit: TADOQuery;
    qryInitLevelID: TIntegerField;
    qryInitLevelCaption: TStringField;
    qryInitprvLevelID: TIntegerField;
    qryInitCodeLength: TWordField;
    qryInitEssenseSelectable: TWordField;
    qryInitAccRelationType: TWordField;
    qryInitTopicType: TWordField;
    qryInitAssignedForm: TIntegerField;
    qryInitReportFileName: TStringField;
    qryInitNextYearSelectType: TWordField;
    qryInitGroupOnTopicsVisible: TWordField;
    qryInitSelectPercentType: TWordField;
    qryInitHasRelateOnProjects: TWordField;
    qryInitPrvCodeLength: TWordField;
    qryPrDefalt: TADOQuery;
    qryPrDefaltBudgetTopicID: TIntegerField;
    qryPrDefaltBudgetCaption: TStringField;
    qryPrDefaltAccCode: TIntegerField;
    qryPrDefaltDetailCode: TIntegerField;
    qryPrDefaltCTopic1: TIntegerField;
    qryPrDefaltLevelID: TIntegerField;
    qryPrDefaltNote: TStringField;
    qryPrDefaltNextYearCalType: TWordField;
    qryPrDefaltEssence: TWordField;
    qryPrDefaltDecExtPerecent: TIntegerField;
    qryPrDefaltGroupTopic: TIntegerField;
    qryPrDefaltPortionPerecentReclamation: TIntegerField;
    qryPrDefaltPortionPerecentExp: TIntegerField;
    qryBudgetTopicsBudgetCaption_L2: TStringField;
    qryBudgetTopicsNote_L2: TStringField;
    qryPrDefaltBudgetCaption_L2: TStringField;
    qryPrDefaltNote_L2: TStringField;
    qryInitLevelCaption_L2: TStringField;
    qrySelectTopicIdProjectCaption_L2: TStringField;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoInfoID: TWordField;
    qryCategories: TADOQuery;
    qryCategoriesTopicCode: TLargeintField;
    qryCategoriesMoeenName: TStringField;
    qryCategoriesMoeenName_L2: TStringField;
    qryDetails: TADOQuery;
    qryCenterTopics: TADOQuery;
    qryBudgetTopics_AccName: TStringField;
    qryBudgetTopics_DetailCode: TStringField;
    qryBudgetTopics_CtopicCode: TStringField;
    DataSetDelete1: TDataSetDelete;
    qryBudgetTopicsBudgetCaption_L1: TStringField;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    actNote: TAction;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PnlprvLevel_L1: TPanel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    PnlprvLevel_L2: TPanel;
    Label14: TLabel;
    Panel8: TPanel;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Pnllevel_L1: TPanel;
    Label3: TLabel;
    DBEdit11: TDBEdit;
    Pnllevel_L2: TPanel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Panel3: TPanel;
    PnlGrid: TPanel;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    buttonProject: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    PnlAccCode: TPanel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    pnlEssence: TPanel;
    Label5: TLabel;
    CmbEssence: TDBComboBox;
    PnlPercent: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    PnlNextYear: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    CmbNextYearCalType: TDBComboBox;
    pnlGroupOnTopics: TPanel;
    Label4: TLabel;
    CmbGroupTopic: TDBComboBox;
    procedure SetDefaltdate;
    procedure Initform;
    procedure qryBudgetTopicsNextYearCalTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryBudgetTopicsNextYearCalTypeSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryBudgetTopicsAfterPost(DataSet: TDataSet);
    procedure qryBudgetTopicsBeforeCancel(DataSet: TDataSet);
    procedure qryBudgetTopicsAfterInsert(DataSet: TDataSet);
    procedure qryBudgetTopicsBeforePost(DataSet: TDataSet);
    procedure actRelationExecute(Sender: TObject);
    procedure CmbEssenceDropDown(Sender: TObject);
    procedure qryBudgetTopicsEssenceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBudgetTopicsEssenceSetText(Sender: TField; const Text: String);
    procedure CmbNextYearCalTypeDropDown(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryProjectsRangeBeforeDelete(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure SrcBudgetTopicsDataChange(Sender: TObject; Field: TField);
    procedure qryBudgetTopicsBeforeEdit(DataSet: TDataSet);
    procedure actNoteExecute(Sender: TObject);
    procedure CmbGroupTopicDropDown(Sender: TObject);
    procedure qryBudgetTopicsGroupTopicGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBudgetTopicsGroupTopicSetText(Sender: TField;
      const Text: String);
    procedure qryBudgetTopicsBudgetTopicIDChange(Sender: TField);
  private
    FormType: byte;
    BeforeEditBudgect: Integer;
    flag: Boolean;
    // procedure checkBudget(Bud:string);
    { Private declarations }
  public
    procedure enter(fType: byte);
    Function CheckTopicId: byte;
  end;

var
  BudgetTopics2_EditNewF: TBudgetTopics2_EditNewF;

implementation

uses BudgetTopics2, GlobalPro, mmessage, dm, StrUtils,
  BudgetTopicsRelation, NoteBudject, searchCode_L1_L2;

{$R *.dfm}

procedure TBudgetTopics2_EditNewF.SetDefaltdate;
var
  PrvBudget: string;
begin
  qryBudgetTopics.FieldByName('LevelID').AsInteger :=
    qryBudgetTopics.FieldByName('LevelID').AsInteger;
  // qryBudgetTopics.FieldByName('Essence').AsInteger:=2;

  PrvBudget := BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsString;
  if PrvBudget <> '' then
  begin
    with qryPrDefalt do
    begin
      Active := false;
      Parameters.ParamByName('prvTopId').Value := PrvBudget;
      Parameters.ParamByName('prvLeveId').Value :=
        qryInit.FieldByName('prvLevelID').AsInteger;
      Active := true;
    end; // with
    if qryInitprvLevelID.AsInteger <> 0 then
    begin
      if qryInitEssenseSelectable.AsInteger = 2 then
        qryBudgetTopicsEssence.AsInteger := qryPrDefaltEssence.AsInteger;

      if qryInitAccRelationType.AsInteger = 2 then
      begin
        qryBudgetTopicsAccCode.AsInteger := qryPrDefaltAccCode.AsInteger;
        qryBudgetTopicsDetailCode.AsInteger := qryPrDefaltDetailCode.AsInteger;
        qryBudgetTopicsCTopic1.AsInteger := qryPrDefaltCTopic1.AsInteger;
      end;

      if qryInitNextYearSelectType.AsInteger = 2 then
      begin
        qryBudgetTopicsNextYearCalType.AsInteger :=
          qryPrDefaltNextYearCalType.AsInteger;
        qryBudgetTopicsDecExtPerecent.AsInteger :=
          qryPrDefaltDecExtPerecent.AsInteger;
      end;

      if qryInitSelectPercentType.AsInteger = 2 then
      begin
        qryBudgetTopicsPortionPerecentReclamation.AsInteger :=
          qryPrDefaltPortionPerecentReclamation.AsInteger;
        qryBudgetTopicsPortionPerecentExp.AsInteger :=
          qryPrDefaltPortionPerecentExp.AsInteger;
      end;
    end;
  end;
end;

procedure TBudgetTopics2_EditNewF.enter(fType: byte);
begin
  Application.CreateForm(TBudgetTopics2_EditNewF, BudgetTopics2_EditNewF);
  with BudgetTopics2_EditNewF do
  begin
    try
      FormType := fType;
      case fType of
        1:
          begin
            with qryInit do
            begin
              Active := false;
              Parameters.ParamByName('IdLev').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName('LevelID').AsInteger;
              Active := true;
            end; // with
            with qryPrvBudgetId do
            begin
              Active := false;
              Parameters.ParamByName('BuToId').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName('BudgetTopicID')
                .AsInteger;
              Active := true;
            end;
            qryBudgetTopics.Insert;
            qryBudgetTopics.FieldByName('LevelID').AsInteger :=
              BudgetTopics2F.qryBudgetTopics.FieldByName('LevelID').AsInteger;
          end; // 1
        2:
          begin
            with qryProjectsRange do
            begin
              Active := false;
              Parameters.ParamByName('BudTo').Value :=
                BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsInteger;
              Active := true;
            end;
            qryBudgetTopics.Locate('BudgetTopicID',
              BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsInteger,
              [loPartialKey]);
            qryBudgetTopics.Edit;
            with qryInit do
            begin
              Active := false;
              Parameters.ParamByName('IdLev').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName('LevelID').AsInteger;
              Active := true;
            end; // with
          end; // 2
        3:
          begin
            with qryPrvBudgetId do
            begin
              Active := false;
              SQL.Text :=
                'SELECT acc.BudgetTopics.BudgetTopicID as prvBudgetTopicID, acc.BudgetTopics.BudgetCaption_L1, acc.BudgetTopics.BudgetCaption_L2';
              SQL.Add('FROM acc.BudgetTopics INNER JOIN');
              SQL.Add('acc.BudgetTopicsForUse ON acc.BudgetTopics.BudgetTopicID = acc.BudgetTopicsForUse.PrvBudgetTopicID');
              SQL.Add('WHERE (acc.BudgetTopics.BudgetTopicID = :BuToId)');
              Parameters.ParamByName('BuToId').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName
                ('BudgetTopicID').AsString;
              Active := true;
            end; // with
            with Dmf.qryTmpTmp do
            begin
              Active := false;
              SQL.Text :=
                'SELECT LevelID, prvLevelID  FROM  acc.BudgetTopicLevels WHERE (prvLevelID = '
                + IntToStr(BudgetTopics2F.qryBudgetTopicsLevelID.
                AsInteger) + ')';
              Active := true;
              with qryInit do
              begin
                Active := false;
                Parameters.ParamByName('IdLev').Value :=
                  Dmf.qryTmpTmp.FieldByName('LevelID').AsInteger;
                Active := true;
              end; // with
              qryBudgetTopics.Insert;
              qryBudgetTopics.FieldByName('LevelID').AsInteger :=
                Dmf.qryTmpTmp.FieldByName('LevelID').AsInteger;
            end; // With
            DBEdit1.Text :=
              BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsString;
            DBEdit2.Text :=
              BudgetTopics2F.qryBudgetTopicsBudgetCaption.AsString;
          end; // 3
      end; // case

      if DBEdit1.Text = '' then
      begin
        Panel7.Visible := false;
        PnlprvLevel_L1.Visible := false;
        PnlprvLevel_L2.Visible := false;
      end;
      Initform;
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

function TBudgetTopics2_EditNewF.CheckTopicId: byte;
var
  PrvBudgetTopic: String;
  Res: byte;
begin
  Res := 0;
  PrvBudgetTopic := LeftStr(qryBudgetTopics.FieldByName('BudgetTopicID')
    .AsString, qryInit.FieldByName('PrvCodeLength').AsInteger);
  if qryBudgetTopics.FieldByName('BudgetTopicID').AsString = '' then
    Res := 1
  else if Length(qryBudgetTopics.FieldByName('BudgetTopicID').AsString) <>
    qryInit.FieldByName('CodeLength').AsInteger then
    Res := 2
  else if PrvBudgetTopic <> '' then
  begin
    with qryPrDefalt do
    begin
      Active := false;
      Parameters.ParamByName('prvTopId').Value := PrvBudgetTopic;
      Parameters.ParamByName('prvLeveId').Value :=
        qryInit.FieldByName('prvLevelID').AsInteger;
      Active := true;
    end; // with
    if qryPrDefalt.IsEmpty then
      Res := 3;
    // else  begin
    // with Dmf.qryTmpTmp do begin
    // Active:=false;
    // SQL.Text:='SELECT  BudgetTopicID FROM  BudgetItems WHERE (BudgetTopicID = '+PrvBudgetTopic+')';
    // Active:=true;
    // if Not IsEmpty then
    // Res:=4
    // else
    // Active:=false;
    // SQL.Text:='SELECT  BudgetTopicID FROM    ProjectsRange WHERE (BudgetTopicID = '+PrvBudgetTopic+')';
    // Active:=true;
    // if Not IsEmpty then
    // Res:=4;
    // end;
    // end;
  end;

  // if (qryBudgetTopics.State in [dsinsert]) or (BeforeEditBudgect<>qryBudgetTopicsBudgetTopicID.AsInteger) then
  // with Dmf.qry_Temp do begin
  // Active:=false;
  // SQL.Text:='SELECT BudgetTopicID FROM acc.BudgetTopics'+
  // ' WHERE LevelID='+qryInitLevelID.AsString+' AND BudgetTopicID = '+qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString;
  // Active:=true;
  // if FieldByName('BudgetTopicID').AsString<>'' then
  // Res:=5;
  // end ;
  case Res Of
    1:
      Warn('كد بودجه را وارد نمائيد.‏');
    2:
      Warn('طول كد بودجه معتبر نمي باشد.‏');
    3:
      Warn('كد تعريف شده ' + PrvBudgetTopic + 'معتبر نمي باشد.‏');
    // 4:Warn('به علت استفاده از كد  '+PrvBudgetTopic+'در اطلاعات بودجه شما مجاز به ايجاد زير سطح براي آن نمي باشيد.‏‏');
    // 5:warn('كد بودجه تكراري است');
  end; // case
  Result := Res;
  if Res <> 0 then
    DBEdit3.SetFocus;
end;

procedure TBudgetTopics2_EditNewF.Initform;
begin
  if qryInit.FieldByName('EssenseSelectable').AsInteger = 0 then
    pnlEssence.Visible := false;
  if qryInit.FieldByName('SelectPercentType').AsInteger = 0 then
    PnlPercent.Visible := false;
  if qryInit.FieldByName('HasRelateOnProjects').AsInteger = 0 then
    PnlGrid.Visible := false;
  if qryInit.FieldByName('NextYearSelectType').AsInteger = 0 then
    PnlNextYear.Visible := false;
  if qryInit.FieldByName('AccRelationType').AsInteger = 0 then
    PnlAccCode.Visible := false;
  if qryInit.FieldByName('GroupOnTopicsVisible').AsInteger = 0 then
    pnlGroupOnTopics.Visible := false;
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsNextYearCalTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsNextYearCalTypeSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TBudgetTopics2_EditNewF.FormCreate(Sender: TObject);
begin
  inherited;
  flag := true;
  qryFormsInfo.Active := true;
  qryBudgetTopics.Active := true;
  // if FormType<>1 then
  lblTopic0.Caption := 'معرفي سر فصل هاي بودجه';
  lblTopic1.Caption := '';
  with qryPrvBudgetId do
  begin
    Active := false;
    Parameters.ParamByName('BuToId').Value :=
      BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsInteger;
    Active := true;
  end;
end;

procedure TBudgetTopics2_EditNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
end;

procedure TBudgetTopics2_EditNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 1);
end;

procedure TBudgetTopics2_EditNewF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid2.DataSource.DataSet.RecNo) then
      DBGrid2.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد', 1);
  if flag then
    Close;
  BudgetTopics2F.qryBudgetTopics.Requery();
  BudgetTopics2F.DBGrid1.SetFocus;
  // BudgetTopics2F.qryBudgetTopics.Active:=false;
  // BudgetTopics2F.qryBudgetTopics.Active:=true;
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsBeforeCancel
  (DataSet: TDataSet);
begin
  inherited;
  Close;
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsAfterInsert(DataSet: TDataSet);
var
  s, txt, LevelID: string;
  BudgetTopicID: Integer;
begin
  inherited;
  LevelID := trim(qryInit.FieldByName('LevelID').AsString);
  if LevelID = EmptyStr then
    LevelID := '0';
  if FormType = 1 then
  begin
    s := qryPrvBudgetId.FieldByName('PrvBudgetTopicID').AsString;
    if s = '' then
      txt := 'SELECT max(BudgetTopicID) FROM acc.BudgetTopics WHERE LevelID='
        + LevelID
    else
      txt := 'SELECT max(BudgetTopicID) FROM acc.BudgetTopics WHERE LevelID=' +
        LevelID + ' and left(BudgetTopicID,' +Length(s).ToString  + ')= ' + s;

        ///  qryInit.FieldByName     ('PrvCodeLength').AsString  >>>>>>   Length(s).ToString
  end;
  if FormType = 3 then
  begin
    s := BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsString;
    txt := 'SELECT max(BudgetTopicID) FROM acc.BudgetTopics WHERE LevelID=' +
      LevelID + ' and left(BudgetTopicID,' +  Length(s).ToString + ')= ' + s;

      //    qryInit.FieldByName      ('PrvCodeLength').AsString      >>>     Length(s).ToString
  end;
  BudgetTopicID := GetANewCode(Self.Name, txt, 'BudgetTopicID',
    Dmf.adcAccounting);
  If (BudgetTopicID = 1) and (qryInit.FieldByName('CodeLength').AsInteger
    > 0) then
    DataSet.FieldByName('BudgetTopicID').AsInteger :=
      StrToInt(LeftStr(s + '00000000000000', qryInit.FieldByName('CodeLength')
      .AsInteger)) + 1
  else
    DataSet.FieldByName('BudgetTopicID').AsInteger := BudgetTopicID;

  if s <> LeftStr(IntToStr(DataSet.FieldByName('BudgetTopicID').AsInteger),
    qryInitPrvCodeLength.AsInteger) then
  begin
    Warn(' ظرفيت كد بالا سطح ' + qryPrvBudgetId.FieldByName('PrvBudgetTopicID')
      .AsString + ' تكميل شده است ');
    Abort;
  end;
  SetDefaltdate;
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CheckTopicId <> 0 then
    Abort;
  if not CheckRequiredFields(qryBudgetTopics) then
  begin
    Abort;
    Exit;
  end; // if
  if qryInitSelectPercentType.AsInteger <> 0 then
    if qryBudgetTopicsPortionPerecentReclamation.AsInteger +
      qryBudgetTopicsPortionPerecentExp.AsInteger <> 100 then
    begin
      Warn('مجموع مقدار درصد سهم عمراني و جاري همواره 100 مي باشد');
      Abort;
    end;
end;

procedure TBudgetTopics2_EditNewF.actRelationExecute(Sender: TObject);
begin
  inherited;
  if qryBudgetTopics.State in [dsinsert] then
    if get_response('براي ارتباط با طرح و برنامه تغييرات ذخيره شوند ؟‏') <>
      mrYes then
      Abort
    else
    begin
      flag := false;
      qryBudgetTopics.Post;
    end;
  BudgetTopicsRelationF.enter(2);
end;

procedure TBudgetTopics2_EditNewF.CmbEssenceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 5);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsEssenceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsEssenceSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TBudgetTopics2_EditNewF.CmbNextYearCalTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 9);
end;

procedure TBudgetTopics2_EditNewF.SpeedButton3Click(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1, acc.Categories.MoeenName_L2 '
    + ' FROM acc.Categories LEFT OUTER JOIN acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
    + 'WHERE  (acc.CategoriesForUse.PrvTopicCode IS NULL)';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'حسابهاي معین', txt,
    ['کد', 'نام حساب', 'Caption'], Result, [50, 150, 150], alLeft) then
  begin
    if not(qryBudgetTopics.State in dsEditModes) then
      qryBudgetTopics.Edit;
    qryBudgetTopics['AccCode'] := Result[0];
  end;
end;

procedure TBudgetTopics2_EditNewF.SpeedButton1Click(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT  acc.DetailRange.DetailCode, acc.Details.DetailName_L1, acc.Details.DetailName_L2'
    + ' FROM  acc.DetailRange INNER JOIN   acc.Details ON acc.DetailRange.DetailCode = acc.Details.DetailCode WHERE (acc.DetailRange.TopicCode ='
    + IntToStr(qryBudgetTopicsAccCode.AsInteger) + ')';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'حسابهاي تفصيلي', txt,
    ['کد', 'نام حساب', 'Caption'], Result, [50, 150, 150], alLeft) then
  begin
    if not(qryBudgetTopics.State in dsEditModes) then
      qryBudgetTopics.Edit;
    qryBudgetTopics['DetailCode'] := Result[0];
  end;

end;

procedure TBudgetTopics2_EditNewF.SpeedButton2Click(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT acc.CenterTopicRange.CTopicCode, acc.CenterTopics.CTopicName_L1, acc.CenterTopics.CTopicName_L2 '
    + ' FROM  acc.CenterTopicRange LEFT OUTER JOIN  acc.CenterTopics ON acc.CenterTopicRange.CTopicCode = acc.CenterTopics.CTopicCode '
    + ' WHERE (acc.CenterTopicRange.TopicCode =' +
    IntToStr(qryBudgetTopicsDetailCode.AsInteger) + ')';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'مراكز هزينه', txt,
    ['کد', 'نام حساب', 'Caption'], Result, [50, 150, 150], alLeft) then
  begin
    if not(qryBudgetTopics.State in dsEditModes) then
      qryBudgetTopics.Edit;
    qryBudgetTopics['CTopic1'] := Result[0];
  end;

end;

procedure TBudgetTopics2_EditNewF.qryProjectsRangeBeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  If get_response('آيا براي حذف اين ارتباط مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TBudgetTopics2_EditNewF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryProjectsRange.FieldByName('ProjectID'));
end;

procedure TBudgetTopics2_EditNewF.SrcBudgetTopicsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FreeReservedCodes(Dmf.adcAccounting, '', '', Self.Name);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  BeforeEditBudgect := qryBudgetTopicsBudgetTopicID.AsInteger;
end;

procedure TBudgetTopics2_EditNewF.actNoteExecute(Sender: TObject);
begin
  inherited;
  NoteBudjectF.enter(qryBudgetTopics.FieldByName('BudgetTopicID').AsString);
end;

procedure TBudgetTopics2_EditNewF.CmbGroupTopicDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 8);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsGroupTopicGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsGroupTopicSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

// procedure TBudgetTopics2_EditNewF.checkBudget(Bud:string);
/// /var
/// / bud:string;
// begin
/// /  bud:=BudgetTopics2F.qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString;
// with Dmf.qry_Temp do begin
// Active:=false;
// SQL.Text:='SELECT  BudgetTopicID FROM  BudgetItems WHERE (BudgetTopicID = '+bud+')';
// Active:=true;
// if Not IsEmpty then  begin
// Warn('به علت استفاده از كد  '+bud+'در اطلاعات بودجه شما مجاز به ايجاد زير سطح براي آن نمي باشيد.‏‏');
// abort;
// end
// else begin
// Active:=false;
// SQL.Text:='SELECT  BudgetTopicID FROM    ProjectsRange WHERE (BudgetTopicID = '+bud+')';
// Active:=true;
// if Not IsEmpty then begin
// Warn('به علت استفاده از كد  '+bud+'در اطلاعات طرح و پروژه شما مجاز به ايجاد زير سطح براي آن نمي باشيد.‏‏');
// Abort;
// end;
// end;
// end;
// end;
procedure TBudgetTopics2_EditNewF.qryBudgetTopicsBudgetTopicIDChange
  (Sender: TField);
begin
  inherited;
  // if FormType=3 then
  // checkBudget(qryBudgetTopics.Fieldbyname('prvBudgetTopicID').AsString);

end;

end.
