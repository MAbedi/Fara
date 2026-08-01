unit BudjectInformation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Vcl.DBGrids, Grids, DB, ADODB, Mask, DBCtrls, MyDBGrids, math,
  ComCtrls, System.ImageList, System.Actions;

type
  TBudjectInformationF = class(Ttemplate2MDIF)
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterBudgetSerial: TIntegerField;
    qryMasterBudgetDate: TStringField;
    qryMasterAccCode: TIntegerField;
    qryMasterDetailCode: TIntegerField;
    qryMasterCTopic1: TIntegerField;
    qryMasterCTopic2: TIntegerField;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    qryItemsBudgetItemID: TIntegerField;
    qryItemsBudgetID: TIntegerField;
    qryItemsItemSerial: TIntegerField;
    qryItemsBudgetTopicID: TIntegerField;
    qryItemsProjectID: TIntegerField;
    qryItemsBed: TBCDField;
    qryItemsEntity: TFloatField;
    qryItemsWeight: TFloatField;
    qryItemsItemNote_L1: TStringField;
    qryItemsItemNote_L2: TStringField;
    qryItemsCustomerID: TIntegerField;
    qryItemsAccCode: TIntegerField;
    qryItemsDetailCode: TIntegerField;
    qryItemsCTopic1: TIntegerField;
    qryItemsCTopic2: TIntegerField;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    okPanel: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    _qryTopic: TADOQuery;
    _qryCtopic: TADOQuery;
    _qryDetail: TADOQuery;
    _qryCTopic2: TADOQuery;
    _qryBudject: TADOQuery;
    qryItems_BudjectName: TStringField;
    qryItems_ProjectName: TStringField;
    PnlCompany: TPanel;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    BitBtn15: TBitBtn;
    DBEdit12: TDBEdit;
    Panel5: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    BitBtn1: TBitBtn;
    qryMasterCompanyCode: TIntegerField;
    qryComponyName: TADOQuery;
    qryMaster_ComponyName: TStringField;
    qryMaster_TopicName: TStringField;
    qryMaster_CTopicName: TStringField;
    qryMaster_CTopic2Name: TStringField;
    qryMaster_DetailName: TStringField;
    qryMasterBudgetID: TIntegerField;
    qryMasterInterfaceID: TIntegerField;
    DBNavigator1: TDBNavigator;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    Panel4: TPanel;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    BitBtn16: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    BitBtn17: TBitBtn;
    actNote: TAction;
    qryMasterNote_L1: TStringField;
    qryMasterNote_L2: TStringField;
    qryItems_accName: TStringField;
    qryItems_ctopicName: TStringField;
    qryItems_ctopic2Name: TStringField;
    qryItems_DetailName: TStringField;
    qryInitForm: TADOQuery;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    pnlBudject: TPanel;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    pnlAcc: TPanel;
    Label11: TLabel;
    DBEdit19: TDBEdit;
    pnlDetail: TPanel;
    Label12: TLabel;
    DBEdit20: TDBEdit;
    pnlCtopicCode1: TPanel;
    Label13: TLabel;
    DBEdit21: TDBEdit;
    pnlCtopicCode2: TPanel;
    DBEdit22: TDBEdit;
    Label1: TLabel;
    qryItemsBes: TBCDField;
    procedure srcMasterStateChange(Sender: TObject);
    procedure qryMasterAfterInsert(DataSet: TDataSet);
    procedure qryMasterAfterPost(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryMasterAfterCancel(DataSet: TDataSet);
    procedure qryMasterBeforeDelete(DataSet: TDataSet);
    procedure qryMasterAfterDelete(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryMasterBeforePost(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure actNoteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure srcItemsDataChange(Sender: TObject; Field: TField);
  private
    formType: byte;
    function ValidateArticle(out ResultMessage: String): Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure showBigNum(num: Currency);
    procedure CalculateSummary;
    procedure InitForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BudjectInformationF: TBudjectInformationF;

implementation

uses Dm, searchCode_L1_L2, GlobalPro, mmessage, search2, sort2, searchCode_ADO,
  sndkey32,
  Note;

{$R *.dfm}

procedure TBudjectInformationF.CalculateSummary;
var
  bed, bes: Extended;

begin
  bed := 0;
  bes := 0;
  // mandeh:=0;
  with TADOQuery.Create(NIL) do
    try
      DisableControls;
      Clone(qryItems, ltReadOnly);
      while not eof do
      begin
        bed := bed + fieldbyname('bed').AsCurrency;
        bes := bes + fieldbyname('bes').AsCurrency;
        Next;
      end; // while
    finally
      // mandeh:=bed - bes;
      StatusBar1.Panels[1].Text := 'بدهكار:‏ ' + CurrToStrF(bed, ffCurrency, 0);
      StatusBar1.Panels[0].Text := 'بستانكار:‏ ' +
        CurrToStrF(bes, ffCurrency, 0);
      Free;
    end
  // StatusBar1.Panels[0].Text:='مانده '+ CurrToStrF(mandeh,ffCurrency,0);

end;

procedure TBudjectInformationF.srcMasterStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMaster.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  // Panel1.Enabled:=okPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'ACC.Budgets');
end;

procedure TBudjectInformationF.qryMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('BudgetID').AsInteger :=
    GetANewCode('','ACC.Budgets', 'BudgetID',dmf.adcAccounting);
  DataSet.fieldbyname('BudgetSerial').AsInteger :=
    GetANewCode('','ACC.Budgets', 'BudgetSerial',dmf.adcAccounting);
  DataSet.fieldbyname('InterfaceID').AsInteger := var_glb_gParam;
  DataSet.fieldbyname('BudgetDate').AsString := var_glb_CurrentDate;
  DataSet.fieldbyname('CompanyCode').AsInteger := opta.DefaultCompany;
  DBEdit5.SetFocus;
end;

procedure TBudjectInformationF.qryMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in [dsedit] then
    qryItems.Post;
  qryItems.UpdateBatch();
  CalculateSummary;
  BigMessage('ثبـت شد.', 1);
end;

procedure TBudjectInformationF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := false;
    Parameters.ParamByName('BudgetID').Value :=
      qryMaster.fieldbyname('BudgetID').AsInteger;
    Active := true;
  end;
end;

procedure TBudjectInformationF.FormCreate(Sender: TObject);

begin
  inherited;
  InitForm;
end;

procedure TBudjectInformationF.BitBtn15Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies ';
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    if not(qryMaster.State in [dsedit]) then
      qryMaster.Edit;
    qryMaster['CompanyCode'] := Results[0];
  end; // if

end;

procedure TBudjectInformationF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('BudgetItemID').AsInteger :=
    GetANewCode('','ACC.BudgetItems', 'BudgetItemID',dmf.adcAccounting);
  DataSet.fieldbyname('BudgetID').AsInteger := qryMasterBudgetID.AsInteger;
  DataSet.fieldbyname('bes').AsInteger := 0;
  DataSet.fieldbyname('bed').AsInteger := 0;

end;

procedure TBudjectInformationF.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT BudgetSerial, BudgetDate FROM acc.Budgets ';
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'فرمها', Txt,
    ['شماره', 'تاريخ'], Results, [30, 200], alLeft);
  if s then
  begin
    qryMaster.Locate('BudgetSerial', Results[0], []);
  end; // if

end;

procedure TBudjectInformationF.qryMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryItems.Requery;
end;

procedure TBudjectInformationF.qryMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد.‏') <> mrYes then
    Abort;
end;

procedure TBudjectInformationF.qryMasterAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TBudjectInformationF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudjectInformationF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TBudjectInformationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TBudjectInformationF.DBGrid1EditButtonClick(Sender: TObject);
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
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText :=
          'SELECT acc.BudgetTopics.BudgetTopicID, acc.BudgetTopics.BudgetCaption_L1, acc.BudgetTopics.BudgetCaption_L2'
          + ' FROM acc.BudgetTopics LEFT OUTER JOIN' +
          ' acc.BudgetTopicsForUse ON acc.BudgetTopics.BudgetTopicID = acc.BudgetTopicsForUse.PrvBudgetTopicID'
          + ' WHERE (acc.BudgetTopicsForUse.PrvBudgetTopicID IS NULL) AND (acc.BudgetTopics.BudgetTopicID <> 0)';

        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'بودجه', sqlText,
          ['كد ', 'شرح', 'Budget Caption'], Results, [80, 350, 350],
          alLeft) then
          qryItems.fieldbyname('BudgetTopicID').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;

    7:
      begin
        if ShiftDown then
        begin
          sqlText :=
            'SELECT Categories.TopicCode, Categories.MoeenName_L1  FROM acc.Categories  WHERE  (LevelID = 3)';
          if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'حسابهاي معین ',
            sqlText, ['كد حساب', 'عنوان معين '], Results, [80, 70, 350],
            alLeft) then
          begin
            aDataSet.fieldbyname('AccCode').AsString := Results[0];
            aDataSet.fieldbyname('DetailCode').AsString := Results[1];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end
        else
        begin
          sqlText :=
            'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1' +
            ' FROM acc.Categories INNER JOIN acc.BudgetRang ON acc.Categories.TopicCode = acc.BudgetRang.TopicCode';

          if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'حسابهاي معین',
            sqlText, ['كد حساب', 'شرح'], Results, [80, 250], alLeft) then
          begin
            aDataSet.fieldbyname('AccCode').AsString := Results[0];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end;
      end;

    8:
      begin
        if (aDataSet.fieldbyname('_accName').AsString = '') or CtrlDown then
        begin
          if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'كدهاي تفصيلي',
            'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1 FROM acc.Details'
            + ' where  detailcode <>0  and CompanyCode=' +
            qryMaster.fieldbyname('CompanyCode').AsString,
            ['كد تفصيلي', 'نام حساب'], alLeft, 1) <> '' then
          begin
            aDataSet.fieldbyname('DetailCode').AsString := c;
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end
        else
        begin
          if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c,
            'كدهاي تفصيلي مرتبط با ' +
            GetMoeenName(aDataSet.fieldbyname('AccCode').AsLargeInt),
            'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1 FROM acc.Details '
            + 'INNER JOIN acc.DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode '
            + 'WHERE acc.DetailRange.TopicCode=' + aDataSet.fieldbyname
            ('AccCode').AsString + ' and  acc.Details.CompanyCode=' +
            qryMaster.fieldbyname('CompanyCode').AsString,
            ['كد تفصيلي', 'نام حساب'], alLeft, 1) <> '' then
          begin
            aDataSet.fieldbyname('DetailCode').AsString := c;
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end; // else
      end; // 2
    9:
      begin
        if (aDataSet.fieldbyname('_accName').AsString = '') or CtrlDown then
        begin
          if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
            'كدهاي تفصيلي 1',
            'SELECT CTopicCode, CTopicName_L1, CTopicName_L2 FROM acc.CenterTopics  where CenterTopics.CTopicCode <>0 ',
            ['كد تفصيلي 1', 'نام حساب', 'name'], Results, [150, 350, 350],
            alLeft) then
          begin
            aDataSet.fieldbyname('CTopic1').AsString := Results[0];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end
        else
        begin
          if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
            'كدهاي تفصيلي 1 مرتبط با ' +
            GetMoeenName(aDataSet.fieldbyname('AccCode').AsLargeInt),
            'SELECT acc.CenterTopics.CTopicCode,acc.CenterTopics.CTopicName_L1,acc.CenterTopics.CTopicName_L2 FROM acc.CenterTopics '
            + 'INNER JOIN acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode '
            + 'WHERE (((acc.CenterTopicRange.TopicCode)=' +
            aDataSet.fieldbyname('AccCode').AsString + '))',
            ['كد تفصيلي 1', 'نام حساب', 'name'], Results, [150, 350, 350],
            alLeft) then
          begin
            aDataSet.fieldbyname('CTopic1').AsString := Results[0];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end; // else
      end; // 2
    10:
      begin
        if (aDataSet.fieldbyname('_ctopicName').AsString = '') or CtrlDown then
        begin
          if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
            'كدهاي تفصيلي 3',
            'SELECT CTopicCode2, CTopicName2_L1, CTopicName2_L2 FROM acc.CenterTopics2  where CTopicCode2 <>0 ',
            ['كد تفصيلي 3', 'نام حساب', 'name'], Results, [150, 350, 350],
            alLeft) then
          begin
            aDataSet.fieldbyname('CTopic2').AsString := Results[0];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end
        else
        begin
          if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
            'كدهاي تفصيلي 3 مرتبط با ' +
            GetCTopicName(aDataSet.fieldbyname('CTopic1').AsInteger),
            'SELECT acc.CenterTopics2.CTopicCode2,acc.CenterTopics2.CTopicName2_L1,acc.CenterTopics2.CTopicName2_L2 FROM acc.CenterTopics2 '
            + 'INNER JOIN acc.CTopicRangeTogether ON acc.CenterTopics2.CTopicCode2 = acc.CTopicRangeTogether.CTopicCode2 '
            + 'WHERE (((acc.CTopicRangeTogether.CTopicCode)=' +
            aDataSet.fieldbyname('CTopic1').AsString + '))',
            ['كد تفصيلي 3', 'نام حساب', 'name'], Results, [150, 350, 350],
            alLeft) then
          begin
            aDataSet.fieldbyname('CTopic2').AsString := Results[0];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end; // if
        end; // else
      end; // 1
  end; // case

end;

procedure TBudjectInformationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TBudjectInformationF.gridkeyenter(Sender: TObject; var Key: Char);
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
        if ShiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := IfThen(aDataSet.fieldbyname('bed').AsCurrency
              <> 0, 7, 6);
          6:
            nextIndex := IfThen(aDataSet.fieldbyname('bes').AsCurrency
              <> 0, 7, 5);
          7:
            nextIndex := IfThen(aDataSet.fieldbyname('_accName')
              .AsString = '', 7, 8);
          8:
            nextIndex := 9;
          9:
            nextIndex := 10;
          10:
            nextIndex := -1;
          0:
            begin
              if (aDataSet.fieldbyname('BudgetTopicID').AsString = '') or
                (aDataSet.fieldbyname('BudgetTopicID').AsCurrency = 0) then
                nextIndex := -2
              else
                nextIndex := 1;
            end; // 5
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0, 7, 8, 9, 10] then
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
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case
end;

function TBudjectInformationF.ValidateArticle(out ResultMessage
  : String): Boolean;
begin
  ResultMessage := '';
  Result := false;
  with qryItems do
  begin
    // if FieldByName('_MoeenName_L1').AsString='' then begin
    // ResultMessage:='كد حساب معتبر نيست.';
    // Exit;
    // end;//if
    IF pnlAcc.Visible then
      if fieldbyname('_accName').AsString = '' then
        with Dmf.qry_Temp do
        begin
          Active := false;
          SQL.Text :=
            'SELECT TopicCode,MoeenName_L1 FROM  acc.Categories where TopicCode='
            + IntToStr(qryItems.fieldbyname('AccCode').AsInteger);
          Active := true;
          if qryItems.fieldbyname('AccCode').AsString = '' then
          begin
            ResultMessage := 'كد حساب معتبر نيست.';
            exit;
          end; // if
        end; // with
    if HasDetail(fieldbyname('AccCode').AsInteger) then
    begin
      if not IsValidDetailForMoeen(fieldbyname('AccCode').AsInteger,
        fieldbyname('DetailCode').AsInteger) then
      begin
        // if GetDetailsOfMoeen(Fieldbyname('TopicCode').AsLargeInt).IndexOf(fieldbyname('DetailCode').AsString)=-1 then begin
        DBGrid1.SelectedIndex := 3;
        ResultMessage := 'كد تفصيلي معتبر نيست.';
        exit;
      end;
    end
    else
    begin
      if fieldbyname('DetailCode').AsInteger <> 0 then
      begin
        ResultMessage := 'كد تفصيلي ' + fieldbyname('DetailCode').AsString +
          'براي كد حساب ' + fieldbyname('AccCode').AsString + ' معتبر نيست.';
        DBGrid1.SelectedIndex := 3;
        exit;
      end;
    end; // else not HasDetail
    //
    // if HasExpenseCode2(fieldbyname('CTopic1').AsInteger) then begin
    // if not IsValidCTopic2ForCTopics(fieldbyname('CTopic2').AsInteger,fieldbyname('CTopic1').AsInteger) then begin
    // ResultMessage:='كد تفصيلي 3 معتبر نيست.';
    // DBGrid1.SelectedIndex:=1;
    // Exit;
    // end;
    // end ;
    //
    // if HasExpenseCode(fieldbyname('AccCode').AsInteger) then begin
    // if not IsValidCTopicForMoeen(fieldbyname('AccCode').AsInteger,fieldbyname('CTopic1').AsInteger) then begin
    // ResultMessage:='كد تفصيلي 1 معتبر نيست.';
    // DBGrid1.SelectedIndex:=2;
    // Exit;
    // end;
    // end else begin
    // if FieldByName('CTopic1').AsInteger<>0 then begin
    // ResultMessage:='كد تفصيلي 1 ' + FieldByName('CTopic1').AsString + 'براي كد حساب '+ FieldByName('AccCode').AsString + ' معتبر نيست.';
    // DBGrid1.SelectedIndex:=2;
    // Exit;
    // end;
    // end;//else not ExpenseCode

  end; // with
  Result := true;

end;

procedure TBudjectInformationF.qryMasterBeforePost(DataSet: TDataSet);
var
  msg: String;
begin
  inherited;
  // if not ValidateDocument then begin
  // ShowGeneralWarning;
  // Abort;
  // end;//if
  if qryItems.State in dsEditModes then
  begin
    if ((qryItemsBed.AsCurrency + qryItemsBes.AsCurrency) = 0) then
      qryItems.Cancel
    else
      qryItems.Post;
  end; // if

  if not CheckRequiredFields(qryMaster) then
  begin
    Abort;
    exit;
  end; // if
  if not ValidateArticle(msg) then
  begin
    Warn(msg);
    Abort;
  end;
end;

procedure TBudjectInformationF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;

  // if qryItemsBed.AsString='' then qryItemsBed.AsString:='0';
  // if qryItemsBes.AsString='' then qryItemsBes.AsString:='0';

  if (DataSet.fieldbyname('CTopic1').isnull) then
    DataSet.fieldbyname('CTopic1').AsCurrency := 0;
  if (DataSet.fieldbyname('CTopic2').isnull) then
    DataSet.fieldbyname('CTopic2').AsCurrency := 0;

  if (DataSet.fieldbyname('bed').isnull) then
    DataSet.fieldbyname('bed').AsCurrency := 0;
  if (DataSet.fieldbyname('bes').isnull) then
    DataSet.fieldbyname('bes').AsCurrency := 0;

  // if (FieldByName('bed').AsCurrency<0) or (FieldByName('bes').AsCurrency<0) then begin
  // ResultMessage:='مبلغ منفي معتبر نيست.';
  // DBGrid1.SelectedIndex:=6;
  // Exit;
  // end;//if
  /// / mary
  /// /    if (FieldByName('Debt').AsCurrency + FieldByName('Credit').AsCurrency)=0 then begin
  /// /      ResultMessage:='مبلغ وارد نشده است.';
  /// /      DBGrid1.SelectedIndex:=6;
  /// /      Exit;
  /// /    end;//if
  /// /
  if (DataSet.fieldbyname('bed').AsCurrency > 0) and
    (DataSet.fieldbyname('bes').AsCurrency > 0) then
  begin
    Warn('مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.');
    // DBGrid1.SelectedIndex:=6;
    Abort;
  end; // if
  //
  // if (FieldByName('bes').AsString = Null) then FieldByName('bes').AsCurrency := 0;

end;

procedure TBudjectInformationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TBudjectInformationF.showBigNum(num: Currency);
begin
  aBigPanel.Caption := CurrToStrF(num, ffCurrency, 0);
  horoofPanel.Caption := num2alphabet(trunc(num));
end;

procedure TBudjectInformationF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  aBigPanel.Visible := (Sender as TDBGrid).SelectedIndex in [5, 6];
  if aBigPanel.Visible then
  begin
    showBigNum((Sender as TDBGrid).Columns[(Sender as TDBGrid).SelectedIndex]
      .Field.AsCurrency);
    aBigPanel.BringToFront;
  end
  else
    aBigPanel.SendToBack;
end;

procedure TBudjectInformationF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  aBigPanel.Visible := DBGrid1.SelectedIndex in [5, 6];
  if aBigPanel.Visible then
  begin
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsCurrency);
    aBigPanel.BringToFront;
  end
  else
    aBigPanel.SendToBack;
end;

procedure TBudjectInformationF.actNoteExecute(Sender: TObject);
begin
  inherited;
  NoteF.enter('acc.Budgets', 'Note_L1', 'Note_L2', 'BudgetID',
    qryMaster.fieldbyname('BudgetID').AsString);
end;

procedure TBudjectInformationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, true, IntToStr(formType));
end;

procedure TBudjectInformationF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Sender as TDBGrid).SelectedIndex in [5, 6] then
    if DBGrid1.EditorMode then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0));
end;

procedure TBudjectInformationF.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;

  CalculateSummary
end;

procedure TBudjectInformationF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TBudjectInformationF.InitForm;
var
  HasAcc: Boolean;
  HasDetail: Boolean;
  HasWeight: Boolean;
  HasEntity: Boolean;
begin
  formType := var_glb_gParam;
  PnlCompany.Visible := gv_MultiCompany;

  with qryInitForm do
  begin
    Close;
    Parameters.ParamByName('FormType').Value := formType;
    Open;
    Self.Caption := fieldbyname('InterfaceCaption_L1').AsString;
    qryItems.fieldbyname('Bed').DisplayLabel :=
      fieldbyname('BedCaption').AsString;
    qryItems.fieldbyname('Bes').DisplayLabel :=
      fieldbyname('BesCaption').AsString;
    HasEntity := fieldbyname('AmountActive').AsInteger = 1;

    HasWeight := fieldbyname('WeightActive').AsInteger = 1;
  end;

  with qryMaster do
  begin
    Close;
    Parameters.ParamByName('FormType').Value := formType;
    Open;
  end;
  HasAcc := StrToBool(Dmf.ReadBankConfigAcc('AccCodeInBudgetActive'));
  HasDetail := StrToInt(Dmf.ReadBankConfigAcc('AccLevel4RelatedTobudget')) = 1;
  setColumns2(DBGrid1, HasWeight, 'Weight');
  setColumns2(DBGrid1, HasEntity, 'Entity');
  setColumns2(DBGrid1, HasAcc, 'AccCode');
  setColumns2(DBGrid1, HasAcc, 'DetailCode');
  if HasAcc then
    setColumns2(DBGrid1, HasDetail, 'DetailCode');
  pnlDetail.Visible := (HasAcc and HasDetail);
  pnlAcc.Visible := HasAcc;
end;

procedure TBudjectInformationF.srcItemsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  CalculateSummary;
end;

end.
