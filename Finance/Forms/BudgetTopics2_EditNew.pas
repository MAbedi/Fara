unit BudgetTopics2_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, Mask, DBCtrls, DBActns, ActnList, Buttons,
  ExtCtrls, Grids, DBGrids, DB, ADODB, Math, System.Actions;

type
  TBudgetTopics2_EditNewF = class(TTemplate4F)
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    actRelation: TAction;
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
    qryBudgetRange: TADOQuery;
    srcBudgetRange: TDataSource;
    qryBudgetRangeTopicCode: TLargeintField;
    qryBudgetRangeDetailCode: TIntegerField;
    qryBudgetRangeBudgetCode: TIntegerField;
    qryBudgetRangeCoefficient: TFloatField;
    qryBudgetRange_TopicName: TStringField;
    qryBudgetRange_DetailName: TStringField;
    pnlEssence: TPanel;
    Label5: TLabel;
    CmbEssence: TDBComboBox;
    PnlNextYear: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    CmbNextYearCalType: TDBComboBox;
    PnlPercent: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    pnlGroupOnTopics: TPanel;
    Label4: TLabel;
    CmbGroupTopic: TDBComboBox;
    DBGrid1: TDBGrid;
    qryBudgetRangeCompanyCode: TIntegerField;
    qryBudgetRangeCTopicCode: TIntegerField;
    qryCtopicCode: TADOQuery;
    qryBudgetRange_CtopicName: TStringField;
    actInsertGroup: TAction;
    btnInsertGroup: TBitBtn;
    qryBudgetList: TADOQuery;
    srcBudgetList: TDataSource;
    DBGrid2: TDBGrid;
    qryBudgetListBudgetTopicID: TIntegerField;
    strngfldBudgetListBudgetCaption_L1: TStringField;
    strngfldBudgetListPrvBudgetTopicID: TStringField;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryProjectsRangeBeforeDelete(DataSet: TDataSet);
    procedure SrcBudgetTopicsDataChange(Sender: TObject; Field: TField);
    procedure qryBudgetTopicsBeforeEdit(DataSet: TDataSet);
    procedure actNoteExecute(Sender: TObject);
    procedure CmbGroupTopicDropDown(Sender: TObject);
    procedure qryBudgetTopicsGroupTopicGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBudgetTopicsGroupTopicSetText(Sender: TField;
      const Text: String);
    procedure qryBudgetTopicsBudgetTopicIDChange(Sender: TField);
    procedure qryBudgetRangeAfterInsert(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actInsertGroupExecute(Sender: TObject);
    procedure qryBudgetTopicsAfterScroll(DataSet: TDataSet);
  private
    FormType: byte;
    BeforeEditBudgect: Integer;
    flag: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
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
  BudgetTopicsRelation, NoteBudject, searchCode_L1_L2, sndkey32,
  searchCode_ADO, selected;
{$R *.dfm}

procedure TBudgetTopics2_EditNewF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin

  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := ifThen(aDataSet.FieldByName('_TopicName')
              .AsString = EmptyStr, 0, 2);
          2:
            nextIndex := ifThen(aDataSet.FieldByName('_DetailName')
              .AsString = EmptyStr, 2, 4);
          4:
            nextIndex := 6;
          6:
            if (aDataSet.FieldByName('TopicCode').AsString = '') or
              (aDataSet.FieldByName('TopicCode').AsCurrency = 0) then
              nextIndex := -2
            else
              nextIndex := -1;
        end; // case

      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0 .. 4] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 5;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TBudgetTopics2_EditNewF.SetDefaltdate;
var
  PrvBudget: string;
begin
  qryBudgetTopics.FieldByName('LevelID').AsVariant :=
    qryInit.Parameters.ParamByName('IdLev').Value;
  // qryBudgetTopics.FieldByName('Essence').AsInteger:=2;

  PrvBudget := BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsString;
  if PrvBudget <> '' then
  begin
    with qryPrDefalt do
    begin
      Active := false;
      Parameters.ParamByName('prvTopId').Value := PrvBudget;
      Parameters.ParamByName('prvLeveId').Value :=
        qryInit.FieldByName('prvLevelID').asinteger;
      Active := true;
    end; // with
    if qryInit.FieldByName('prvLevelID').asinteger <> 0 then
    begin
      if qryInit.FieldByName('EssenseSelectable').asinteger = 2 then
        qryBudgetTopicsEssence.asinteger := qryPrDefaltEssence.asinteger;

      if qryInit.FieldByName('AccRelationType').asinteger = 2 then
      begin
        qryBudgetTopicsAccCode.asinteger := qryPrDefaltAccCode.asinteger;
        qryBudgetTopicsDetailCode.asinteger := qryPrDefaltDetailCode.asinteger;
        qryBudgetTopicsCTopic1.asinteger := qryPrDefaltCTopic1.asinteger;
      end;

      if qryInit.FieldByName('NextYearSelectType').asinteger = 2 then
      begin
        qryBudgetTopicsNextYearCalType.asinteger :=
          qryPrDefaltNextYearCalType.asinteger;
        qryBudgetTopicsDecExtPerecent.asinteger :=
          qryPrDefaltDecExtPerecent.asinteger;
      end;

      if qryInit.FieldByName('SelectPercentType').asinteger = 2 then
      begin
        qryBudgetTopicsPortionPerecentReclamation.asinteger :=
          qryPrDefaltPortionPerecentReclamation.asinteger;
        qryBudgetTopicsPortionPerecentExp.asinteger :=
          qryPrDefaltPortionPerecentExp.asinteger;
      end;
    end;
  end;
end;

procedure TBudgetTopics2_EditNewF.enter(fType: byte);
var
  idLev: Integer;
begin
  // Application.CreateForm(TBudgetTopics2_EditNewF,BudgetTopics2_EditNewF);
  with TBudgetTopics2_EditNewF.Create(Application) do
    try
      FormType := fType;
      case FormType of
        1:
          begin
            with qryInit do
            begin
              Close;
              if BudgetTopics2F.qryBudgetTopics.FieldByName('LevelID')
                .asinteger <> 0 then
                idLev := BudgetTopics2F.qryBudgetTopics.FieldByName('LevelID')
                  .asinteger
              else
                with dmf.qry_Temp do
                begin
                  Close;
                  SQL.Text :=
                    'select top(1)LevelID  from acc.BudgetTopicLevels order by LevelID asc';
                  Open;
                  idLev := Fields[0].asinteger;
                  Close;
                end;
              Parameters.ParamByName('IdLev').Value := idLev;
              Open;
            end; // with

            with qryPrvBudgetId do
            begin
              Close;
              Parameters.ParamByName('BuToId').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName('BudgetTopicID')
                .asinteger;
              Open;
            end;

            with qryBudgetTopics do
            begin
              Close;
              Parameters.ParamByName('BUTOPID').Value := 0;
              Open;
              Insert;
              FieldByName('LevelID').asinteger := idLev;
            end;
          end; // 1
        2:
          begin

            with qryBudgetTopics do
            begin
              Close;
              Parameters.ParamByName('BUTOPID').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName('BudgetTopicID')
                .asinteger;
              Open;
              Edit;
              // FieldByName('LevelID').AsInteger:=BudgetTopics2F.qryBudgetTopics.fieldbyname('LevelID').AsInteger;
            end;

            with qryInit do
            begin
              Close;
              Parameters.ParamByName('IdLev').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName('LevelID').asinteger;
              Open;
            end; // with

          end; // 2
        3:
          begin
            with qryPrvBudgetId do
            begin
              Close;
              // SQL.Text :=
              // 'SELECT acc.BudgetTopics.BudgetTopicID as prvBudgetTopicID, acc.BudgetTopics.BudgetCaption_L1, acc.BudgetTopics.BudgetCaption_L2';
              // SQL.Add('FROM acc.BudgetTopics INNER JOIN');
              // SQL.Add('acc.BudgetTopicsForUse ON acc.BudgetTopics.BudgetTopicID = acc.BudgetTopicsForUse.PrvBudgetTopicID');
              // SQL.Add('WHERE (acc.BudgetTopics.BudgetTopicID = :BuToId)');
              SQL.Text :=
                'select BudgetTopicID as PrvBudgetTopicID, BudgetCaption_L1, BudgetCaption_L2, LevelID FROM Acc.BudgetTopics'
                + ' where BudgetTopicID=:BuToId';
              Parameters.ParamByName('BuToId').Value :=
                BudgetTopics2F.qryBudgetTopics.FieldByName
                ('BudgetTopicID').AsString;
              Open;
            end; // with

            with dmf.qry_Temp do
            begin
              Close;
              SQL.Text :=
                'SELECT LevelID, prvLevelID  FROM  acc.BudgetTopicLevels WHERE (prvLevelID = '
                + IntToStr(BudgetTopics2F.qryBudgetTopicsLevelID.
                asinteger) + ')';
              Open;
              if dmf.qry_Temp.FieldByName('LevelID').asinteger = 0 then
              begin
                dmf.qry_Temp.Close;
                Warn('سرفصل انتخاب شده فاقد زیرسطح می باشد');
                exit;
              end;
              with qryInit do
              begin
                Close;
                Parameters.ParamByName('IdLev').Value :=
                  dmf.qry_Temp.FieldByName('LevelID').asinteger;
                Open;
              end; // with

              with qryBudgetTopics do
              begin
                Close;
                Parameters.ParamByName('BUTOPID').Value := 0;
                Open;
                Insert;
                // FieldByName('LevelID').AsInteger:=

                // BudgetTopics2F.qryBudgetTopics.fieldbyname('LevelID').AsInteger;
              end;
            end; // With
            // DBEdit1.Text:=BudgetTopics2F.qryBudgetTopicsBudgetTopicID.AsString;
            // DBEdit2.Text:=BudgetTopics2F.qryBudgetTopicsBudgetCaption.AsString;
          end; // 3
      end; // case

      if DBEdit1.Text = '' then
      begin
        Panel7.Visible := false;
        PnlprvLevel_L1.Visible := false;
        PnlprvLevel_L2.Visible := false;
      end;
      with qryBudgetList do
      begin
        Close;
        if Panel7.Visible = true then
        begin
          SQL.Add(' and FORUse.PrvBudgetTopicID=:Prv');
          Parameters.ParamByName('Prv').Value :=
            qryPrvBudgetId.FieldByName('PrvBudgetTopicID').asinteger;
        end;
        Parameters.ParamByName('Level').Value :=
          qryBudgetTopicsLevelID.asinteger;
        Open;
      end;
      Initform;
      ShowModal;
    finally
      Free;
    end; // try

end;

function TBudgetTopics2_EditNewF.CheckTopicId: byte;
var
  PrvBudgetTopic: String;
  Res: byte;
begin
  Res := 0;
  PrvBudgetTopic := LeftStr(qryBudgetTopics.FieldByName('BudgetTopicID')
    .AsString, qryInit.FieldByName('PrvCodeLength').asinteger);
  if qryBudgetTopics.FieldByName('BudgetTopicID').AsString = EmptyStr then
    Res := 1
  else if Length(qryBudgetTopics.FieldByName('BudgetTopicID').AsString) <>
    qryInit.FieldByName('CodeLength').asinteger then
    Res := 2
  else if PrvBudgetTopic <> EmptyStr then
  begin
    with qryPrDefalt do
    begin
      Close;
      Parameters.ParamByName('prvTopId').Value := PrvBudgetTopic;
      Parameters.ParamByName('prvLeveId').Value :=
        qryInit.FieldByName('prvLevelID').asinteger;
      Open;
    end; // with
    if qryPrDefalt.IsEmpty then
      Res := 3;
  end;
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
  if qryInit.FieldByName('EssenseSelectable').asinteger = 0 then
    pnlEssence.Visible := false;
  if qryInit.FieldByName('SelectPercentType').asinteger = 0 then
    PnlPercent.Visible := false;
  // if qryInit.FieldByName('HasRelateOnProjects').AsInteger=0 then  PnlGrid.Visible:=false;
  if qryInit.FieldByName('NextYearSelectType').asinteger = 0 then
    PnlNextYear.Visible := false;
  // if  qryInit.FieldByName('AccRelationType').AsInteger=0 then  PnlAccCode.Visible:=false;
  if qryInit.FieldByName('GroupOnTopicsVisible').asinteger = 0 then
    pnlGroupOnTopics.Visible := false;
  // pnlEssence.Visible := FormType <>2;
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsNextYearCalTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.asinteger <= 0 then
    exit;
  if opta.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.asinteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.asinteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsNextYearCalTypeSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.asinteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TBudgetTopics2_EditNewF.FormCreate(Sender: TObject);

// hasDetail:Integer;
begin
  inherited;
  flag := true;
  DBGrid1.Columns[2].Visible :=
    StrToInt(dmf.ReadBankConfigAcc('AccLevel4RelatedTobudget')) = 1;
  DBGrid1.Columns[3].Visible := DBGrid1.Columns[2].Visible;
  qryFormsInfo.Open;
  lblTopic0.Caption := 'معرفي سر فصل هاي بودجه';
  lblTopic1.Caption := '';
end;

procedure TBudgetTopics2_EditNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TBudgetTopics2_EditNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TBudgetTopics2_EditNewF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsAfterPost(DataSet: TDataSet);
var
  LastCode: Integer;
begin
  inherited;
  try

    if flag then
      Close;
    LastCode := qryBudgetTopics.FieldByName('BudgetTopicID').asinteger;
    BudgetTopics2F.qryBudgetTopics.Requery();
    BudgetTopics2F.DBGrid1.SetFocus;
    BudgetTopics2F.qryBudgetTopics.Locate('BudgetTopicID', LastCode, []);
    if qryBudgetRange.State in dseditmodes then
      qryBudgetRange.Post;
    BigMessage('ثبت شد', 1);
  except
    on e: exception do
    begin
      add2log(e.Message);
      raise exception.Create('اشكال در ثبت');
    end;
  end;
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
  s, txt: string;
  BudgetTopicID: Integer;
begin
  inherited;
  if FormType = 1 then
  begin
    s := qryPrvBudgetId.FieldByName('PrvBudgetTopicID').AsString;
    if s = '' then
      txt := 'SELECT max(BudgetTopicID) FROM acc.BudgetTopics WHERE LevelID=' +
        IntToStr(qryInit.FieldByName('LevelID').asinteger)
    else
      txt := 'SELECT max(BudgetTopicID) FROM acc.BudgetTopics WHERE LevelID=' +
        IntToStr(qryInit.FieldByName('LevelID').asinteger) +
        ' and left(BudgetTopicID,' + qryInit.FieldByName('PrvCodeLength')
        .AsString + ')= ' + s;
  end;
  if FormType = 3 then
  begin
    s := IntToStr(BudgetTopics2F.qryBudgetTopicsBudgetTopicID.asinteger);
    txt := 'SELECT max(BudgetTopicID) FROM acc.BudgetTopics WHERE LevelID=' +
      IntToStr(qryInit.FieldByName('LevelID').asinteger) +
      ' and left(BudgetTopicID,' + IntToStr(qryInit.FieldByName('PrvCodeLength')
      .asinteger) + ')= ' + s;
  end;
  BudgetTopicID := GetANewCode('',txt, 'BudgetTopicID',dmf.adcAccounting);
  If BudgetTopicID = 1 then
    DataSet.FieldByName('BudgetTopicID').asinteger :=
      StrToInt(LeftStr(trim(s + '00000000000000'),
      qryInit.FieldByName('CodeLength').asinteger)) + 1
  else
    DataSet.FieldByName('BudgetTopicID').asinteger := BudgetTopicID;

  if s <> LeftStr(IntToStr(DataSet.FieldByName('BudgetTopicID').asinteger),
    qryInit.FieldByName('PrvCodeLength').asinteger) then
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
    exit;
  end; // if
  if qryInit.FieldByName('SelectPercentType').asinteger <> 0 then
    if qryBudgetTopicsPortionPerecentReclamation.asinteger +
      qryBudgetTopicsPortionPerecentExp.asinteger <> 100 then
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
  initDBComboBox((Sender as TDBComboBox), 5);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsEssenceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.asinteger <= 0 then
    exit;
  if opta.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.asinteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.asinteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsEssenceSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.asinteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TBudgetTopics2_EditNewF.CmbNextYearCalTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBox((Sender as TDBComboBox), 9);
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
    IntToStr(qryBudgetTopicsDetailCode.asinteger) + ')';
  if searchCode_L1_L2F.SearchCode2(dmf.adcAccounting, 'مراكز هزينه', txt,
    ['کد', 'نام حساب', 'Caption'], Result, [50, 150, 150], alLeft) then
  begin
    if not(qryBudgetTopics.State in dseditmodes) then
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

procedure TBudgetTopics2_EditNewF.SrcBudgetTopicsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FreeReservedCodes(dmf.adcAccounting, 'acc.BudgetTopics');
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  BeforeEditBudgect := qryBudgetTopicsBudgetTopicID.asinteger;
end;

procedure TBudgetTopics2_EditNewF.actNoteExecute(Sender: TObject);
begin
  inherited;
  NoteBudjectF.enter(qryBudgetTopics.FieldByName('BudgetTopicID').AsString);
end;

procedure TBudgetTopics2_EditNewF.CmbGroupTopicDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBox((Sender as TDBComboBox), 8);
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsGroupTopicGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.asinteger <= 0 then
    exit;
  if opta.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.asinteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.asinteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsGroupTopicSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.asinteger :=
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

procedure TBudgetTopics2_EditNewF.qryBudgetRangeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('BudgetCode').asinteger :=
    qryBudgetTopics.FieldByName('BudgetTopicID').asinteger;
  DataSet.FieldByName('DetailCode').asinteger := 0;
  DataSet.FieldByName('CompanyCode').asinteger := opta.DefaultCompany;
end;

procedure TBudgetTopics2_EditNewF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TBudgetTopics2_EditNewF.DBGrid1EditButtonClick(Sender: TObject);
var
  c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 5] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      Begin
        sqlText :=
          'SELECT Categories.TopicCode, Categories.MoeenName_L1 FROM acc.Categories  Categories LEFT OUTER JOIN'
          + ' acc.CategoriesForUse CategoriesForUse ON Categories.TopicCode = CategoriesForUse.PrvTopicCode'
          + ' WHERE (CategoriesForUse.PrvTopicCode IS NULL) AND (NOT (Categories.TopicCode IN'
          + ' (SELECT TopicCode FROM acc.BudgetRang WHERE (CTopicCode = 0))))';

        if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'حسابهاي حساب',
          sqlText, ['كد حساب', 'شرح'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('TopicCode').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;
    2:
      begin

        if searchCode_ADOF.SearchCode(dmf.adcAccounting, c,
          'كدهاي تفصيلي مرتبط با ' +
          GetMoeenName(aDataSet.FieldByName('TopicCode').asinteger),
          'SELECT Details.DetailCode, Details.DetailName_L1 FROM acc.Details Details '
          + 'INNER JOIN acc.DetailRange DetailRange ON Details.DetailCode = DetailRange.DetailCode '
          + 'WHERE DetailRange.TopicCode=' + aDataSet.FieldByName('TopicCode')
          .AsString, ['كد تفصيلي', 'نام حساب'], alLeft, 1) <> '' then
        begin
          aDataSet.FieldByName('DetailCode').AsString := c;
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;
    4:
      begin

        if searchCode_ADOF.SearchCode(dmf.adcAccounting, c, 'كدهاي تفصیلی 1 ',
          'SELECT  CTopicCode, CTopicName_L1 FROM   acc.CenterTopics where levelID=61',
          ['كد ', 'عنوان'], alLeft, 1) <> '' then
        begin
          aDataSet.FieldByName('CTopicCode').AsString := c;
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if

      end; // 2
  end; // case

end;

procedure TBudgetTopics2_EditNewF.actInsertGroupExecute(Sender: TObject);
var
  sqlTxt: String;
  s: String;
  Sl: TStringList;
  i: Integer;
begin
  inherited;
  flag := false;
  if (qryBudgetTopics.State in dseditmodes) then
    qryBudgetTopics.Post;

  sqlTxt := 'SELECT cast(acc.Categories.TopicCode as int), acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN'
    + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode'
    + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) AND (NOT (acc.Categories.TopicCode IN'
    + ' (SELECT TopicCode FROM acc.BudgetRang WHERE (CTopicCode = 0)))) ';
  Sl := TStringList.Create;
  try

    s := selectedF.ShowSelect(dmf.adcAccounting, '', sqlTxt,
      ['كد ', ' عنوان معین'], alLeft, [23, 350]);
    if trim(s) = EmptyStr then
      exit;
    Sl.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
    for i := 0 to Sl.Count - 1 do
      with qryBudgetRange do
      begin
        Insert;
        FieldByName('TopicCode').AsString := Sl[i];
        Post;
      end;
  finally
    FreeAndNil(Sl);
  end;
end;

procedure TBudgetTopics2_EditNewF.qryBudgetTopicsAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  with qryBudgetRange do
//  begin
//    Close;
//    Parameters.ParamByName('BgCode').Value :=
//      DataSet.FieldByName('BudgetTopicID').asinteger;
//    Open;
//  end;

  // with qryPrvBudgetId do
  // begin
  // Close;
  // Parameters.ParamByName('BuToId').Value :=
  // DataSet.FieldByName('BudgetTopicID').asinteger;
  // Open;
  // end;
end;

end.
