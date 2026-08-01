unit Expense;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, DB, Grids, Vcl.DBGrids, ADODB, ComCtrls, myDBGrids,
  StrUtils, math,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppMemo, ppSubRpt, ppModule,
  raCodMod, Menus, ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TExpenseF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qryExpense: TADOQuery;
    DBGrid1: TDBGrid;
    srcExpense: TDataSource;
    GroupBox1: TGroupBox;
    qryExpenseExpID: TAutoIncField;
    qryExpenseFormNo: TIntegerField;
    qryExpenseFormDate: TWideStringField;
    qryExpenseBudgetYear: TSmallintField;
    qryExpenseTopicCode: TIntegerField;
    qryExpenseDetailCode: TIntegerField;
    qryExpenseCTopicCode: TIntegerField;
    qryExpenseCacther: TWideStringField;
    qryExpenseState: TSmallintField;
    qryExpenseKind: TSmallintField;
    qryExpensePreference: TIntegerField;
    qryExpenseComments: TWideStringField;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    edtValue: TEdit;
    qryExpenseItems: TADOQuery;
    qryExpenseItemsID: TAutoIncField;
    qryExpenseItemsExpID: TIntegerField;
    qryExpenseItemsCatcherItem: TWideStringField;
    qryExpenseItemsDesc: TWideStringField;
    qryExpenseItemsBed: TBCDField;
    qryExpenseItemsBes: TBCDField;
    srcExpenseItems: TDataSource;
    Panel4: TPanel;
    qryDetailCodes: TADOQuery;
    qryCTopics: TADOQuery;
    qryExpense_DetailName: TStringField;
    qryExpense_CTopicName: TStringField;
    qryExpensePayerTopicCode: TIntegerField;
    qryExpensePayerDetailCode: TIntegerField;
    qryExpensePayerCTopicCode: TIntegerField;
    qryExpense_PMoeenName: TStringField;
    qryExpense_PDetailName: TStringField;
    qryExpense_PCTopicCode: TStringField;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Panel6: TPanel;
    Bevel1: TBevel;
    Label7: TLabel;
    lblBed: TLabel;
    lblBes: TLabel;
    Label6: TLabel;
    dbedtComments: TDBEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    actCopyArticle: TAction;
    actPasteArticle: TAction;
    DataSetDelete1: TDataSetDelete;
    pnlDocType: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    ppDetail: TppDBPipeline;
    ppMaster: TppDBPipeline;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn6: TBitBtn;
    ppReport2: TppReport;
    Label8: TLabel;
    DBEdit12: TDBEdit;
    SpeedButton10: TSpeedButton;
    DBEdit13: TDBEdit;
    qryExpenseCustDetailId: TIntegerField;
    qryExpense_CustDetailName: TStringField;
    rdoDocState: TDBRadioGroup;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    SBtnSearch: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    qryExpensefirstUser: TWideStringField;
    qryExpenselastUser: TWideStringField;
    qryExpenseItemsItemDetailCode: TIntegerField;
    h1: TMenuItem;
    qryExpenseItemsmandeh: TBCDField;
    popPreDefinedDescs: TPopupMenu;
    N111: TMenuItem;
    qryCategories: TADOQuery;
    strngfldExpense_MoeenName: TStringField;
    intgrfldExpenseYearId: TIntegerField;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine7: TppLine;
    ppDBText11: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppFooterBand2: TppFooterBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppPageStyle2: TppPageStyle;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText12: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel37: TppLabel;
    ppDBText13: TppDBText;
    ppLabel38: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBCalc1: TppDBCalc;
    qryExpenseStateChangeDate: TStringField;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    qryExpenseAidDate: TStringField;
    qryExpenseAidNumber: TStringField;
    actExpenseCopy: TAction;
    SpeedButton11: TSpeedButton;
    qryExpenseChequeDate: TStringField;
    qryExpenseChequeDueDate: TStringField;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryExpenseAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryExpenseItemsAfterPost(DataSet: TDataSet);
    procedure qryExpenseAfterPost(DataSet: TDataSet);
    procedure qryExpenseAfterDelete(DataSet: TDataSet);
    procedure qryExpenseBeforeCancel(DataSet: TDataSet);
    procedure qryExpenseBeforeEdit(DataSet: TDataSet);
    procedure qryExpenseBeforeDelete(DataSet: TDataSet);
    procedure qryExpenseItemsAfterDelete(DataSet: TDataSet);
    procedure qryExpenseAfterInsert(DataSet: TDataSet);
    procedure srcExpenseStateChange(Sender: TObject);
    procedure qryExpenseItemsAfterInsert(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actCopyArticleExecute(Sender: TObject);
    procedure actPasteArticleExecute(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure qryExpenseItemsBeforePost(DataSet: TDataSet);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure SBtnSearchClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure qryExpenseAfterEdit(DataSet: TDataSet);
    procedure qryExpenseBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryExpenseBeforePost(DataSet: TDataSet);
    procedure h1Click(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure qryExpenseBeforeOpen(DataSet: TDataSet);
    procedure actExpenseCopyExecute(Sender: TObject);
  private
    rptMandeh: Currency;
    Cloned: TADOQuery;
    LastArticle: String;
    CopiedArticle: String;
    procedure CalculateSummary;
    procedure GetClickSpb(ID: Byte);
    function GetSearchCode(ID: Byte): integer;
    procedure showBigNum(num: Currency);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InitTemplateDescs;
    procedure AddCurrentDescToTemplates(Sender: TObject);
    procedure CopyTemplateToDesc(Sender: TObject);
    procedure initreportF(ReportName: TppReport; GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExpenseF: TExpenseF;

implementation

uses Dm, searchCode_ADO, GlobalPro, mmessage, sndkey32, sort2, search2,
  FaraConsts, ExpenseCopy;

{$R *.dfm}

procedure TExpenseF.CalculateSummary;
var
  bed, bes: Extended;
begin
  bed := 0;
  bes := 0;
  rptMandeh := 0;
  with Cloned do
  begin
    DisableControls;
    Clone(qryExpenseItems, ltReadOnly);
    while not eof do
    begin
      bed := bed + fieldbyname('bed').AsCurrency;
      bes := bes + fieldbyname('bes').AsCurrency;
      Next;
    end; // while
  end; // with
  rptMandeh := bed - bes;
  lblBed.Caption := CurrToStrF(bed, ffCurrency, 0);
  lblBes.Caption := CurrToStrF(bes, ffCurrency, 0);
  edtValue.Text := CurrToStrF(bed, ffCurrency, 0);
end;

procedure TExpenseF.FormCreate(Sender: TObject);
begin
  inherited;
  Cloned := TADOQuery.Create(Self);
  qryExpense.Active := True;
  InitTemplateDescs;
end;

procedure TExpenseF.FormDestroy(Sender: TObject);
begin
  inherited;
  Cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TExpenseF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TExpenseF.qryExpenseAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryExpenseItems do
  begin
    Active := False;
    Parameters.ParamByName('EID').Value := DataSet.fieldbyname('ExpID')
      .AsInteger;
    Active := True;
  end; // with
  CalculateSummary;

end;

procedure TExpenseF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, False);
end;

function TExpenseF.GetSearchCode(ID: Byte): integer;
var
  Results: array [0 .. 3] of String;
  dbedit: TDBEdit;
  b: Boolean;
  qryname: TDataSet;
  txt: String;
begin
  Result := 0;
  b := True;
  dbedit := TDBEdit(FindComponent('DBEdit' + IntToStr(ID)));
  if dbedit = nil then
  begin
    warn('›Ì·œ „ﬁ’œ ÅÌœ« ‰‘œ.');
    exit;
  end; // if
  qryname := dbedit.DataSource.DataSet;
  case ID of
    10, 2:
      begin
        txt := 'SELECT DetailCode,DetailName_L1 as [note] FROM (SELECT distinct Acc.Details.DetailCode, Acc.Details.DetailName_L1 '
          + 'FROM Acc.DetailRange INNER JOIN Acc.Details ON Acc.DetailRange.DetailCode = Acc.Details.DetailCode '
          + 'WHERE Acc.DetailRange.TopicCode= ' + qryExpense.fieldbyname
          (ifthen(ID = 2, 'TopicCode', 'PayerTopicCode')).AsString + ') as A';
        b := searchCode_ADOF.SearchCode2(Dmf.adcAccounting,
          '·Ì”  ﬂœÂ«Ì  ›’Ì·Ì ”«· „«·Ì ' + IntToStr(APPBank.AccMaliYear), txt,
          ['ﬂœ  ›’Ì·Ì', '‰«„ Õ”«»'], Results, [60, 250], alLeft);
      end;
    3, 11:
      begin
        txt := 'SELECT CTopicCode, CTopicName_L1 AS sharh FROM Acc.CenterTopics';
        b := searchCode_ADOF.SearchCode2(Dmf.adcAccounting,
          '·Ì”  ﬂœÂ«Ì  ›’Ì·Ì 1 ”«· „«·Ì ' + IntToStr(APPBank.AccMaliYear),
          txt, ['ﬂœ  ›’Ì·Ì 1', '‰«„ Õ”«»'], Results, [60, 250], alLeft);
      end;
    1, 9:
      begin
        txt := 'SELECT     CategoriesForUse_1.TopicCode, CategoriesForUse_1.MoeenName_L1'
          + ' FROM Acc.CategoriesForUse RIGHT OUTER JOIN Acc.CategoriesForUse AS CategoriesForUse_1'
          + ' ON Acc.CategoriesForUse.PrvTopicCode = CategoriesForUse_1.TopicCode'
          + ' WHERE     (Acc.CategoriesForUse.PrvLevelID IS NULL)';
        b := searchCode_ADOF.SearchCode2(Dmf.adcAccounting,
          '·Ì”  ﬂœÂ«Ì Õ”«» ”«· „«·Ì ' + IntToStr(APPBank.Year), txt,
          ['ﬂœ Õ”«»', '‰«„ Õ”«»'], Results, [60, 250], alLeft);
      end;
  end; // case
  if b then
  begin
    if not(qryname.State in dseditmodes) then
      qryname.Edit;
    qryname.fieldbyname(dbedit.DataField).Value := Results[0];
    Result := StrToIntDef(Results[0], 0);
    dbedit.SetFocus;
  end; // if
end;

procedure TExpenseF.gridkeyenter(Sender: TObject; var Key: Char);
var
  Result: array [0 .. 1] of String;
  nextIndex: integer;
  curIndex: integer;
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
            begin
              nextIndex := ifthen(aDataSet.fieldbyname('ItemDetailCode')
                .AsString = '', -2, 1);
              if qryExpenseItems.State in dseditmodes then
                with Dmf.qry_Temp do
                begin
                  Active := False;
                  SQL.Text :=
                    'SELECT DetailName_L1 FROM Acc.Details where DetailCode=' +
                    qryExpenseItems.fieldbyname('ItemDetailCode').AsString;
                  Active := True;

                  qryExpenseItems.fieldbyname('CatcherItem').AsString :=
                    fieldbyname('DetailName_L1').AsString;
                end;
            end;
          1:
            nextIndex := ifthen(aDataSet.fieldbyname('CatcherItem')
              .AsString = '', 1, 2);
          2:
            nextIndex := 3;
          3:
            nextIndex := ifthen(aDataSet.fieldbyname('Bed').AsCurrency <>
              0, -1, 4);
          4:
            nextIndex := ifthen(aDataSet.fieldbyname('Bes').AsCurrency <>
              0, -1, 3);

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
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32:
    begin
      if curIndex = 0 then
        DBGrid1EditButtonClick(DBGrid1);
      if curIndex in [] then
        Key := #0;
    end;
    #157:
      if curIndex in [] then
        Key := #0;
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
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 0;
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

procedure TExpenseF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  aBigPanel.Visible := (Sender as TDBGrid).SelectedIndex in [3, 4];
  if aBigPanel.Visible then
  begin
    showBigNum((Sender as TDBGrid).Columns[(Sender as TDBGrid).SelectedIndex]
      .Field.AsCurrency);
    aBigPanel.BringToFront;
  end
  else
    aBigPanel.SendToBack;
  if DBGrid1.SelectedIndex = 2 then
  begin
    DBGrid1.PopupMenu := popPreDefinedDescs;
  end
  else
    DBGrid1.PopupMenu := nil;
end;

procedure TExpenseF.AddCurrentDescToTemplates(Sender: TObject);
var
  aDesc: String;
begin
  aDesc := qryExpenseItemsDesc.AsString;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'Select * from DescTemplates';
    Active := True;
    if not locate('desc', aDesc, []) then
    begin
      Append;
      // FieldByName('TemplateCode').AsInteger:=GetANewCode('DescTemplates','TemplateCode',dmf.adcAccounting);
      fieldbyname('Desc').AsString := aDesc;
      Post;
      BigMessage('À»  ‘œ.', 1);
      InitTemplateDescs;
    end; // if
    Active := False;
  end; // with
end;

procedure TExpenseF.InitTemplateDescs;
var
  anItem: TMenuItem;
  aDesc: String;
begin
  popPreDefinedDescs.Items.Clear;

  anItem := TMenuItem.Create(popPreDefinedDescs);
  popPreDefinedDescs.Items.Add(anItem);

  with Dmf.qry_Temp do
  begin
    close;
    SQL.Text := 'select InfoName_L1 from acc.FormsInfo where FormType=2';
    open;
    while not eof do
    begin
      aDesc := fieldbyname('InfoName_L1').AsString;
      if aDesc <> '' then
      begin
        anItem := TMenuItem.Create(popPreDefinedDescs);
        popPreDefinedDescs.Items.Add(anItem);
        with anItem do
        begin
          Caption := aDesc;
          OnClick := CopyTemplateToDesc;
        end; // with
      end; // if
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TExpenseF.CopyTemplateToDesc(Sender: TObject);
var
  aDesc: String;
begin
  aDesc := (Sender as TMenuItem).Caption;
  if qryExpense.State in dseditmodes then
  begin
    if ActiveControl = dbedtComments then
      qryExpense.fieldbyname('Comments').AsString := aDesc
    else
    begin
      if not(qryExpenseItems.State in dseditmodes) then
        qryExpenseItems.Edit;
      qryExpenseItems.fieldbyname('Desc').AsString := aDesc;
    end;

  end; // if
end;

procedure TExpenseF.showBigNum(num: Currency);
begin
  aBigPanel.Caption := CurrToStrF(num, ffCurrency, 0);
  horoofPanel.Caption := num2alphabet(trunc(num));
end;

procedure TExpenseF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Sender as TDBGrid).SelectedIndex in [3, 4] then
    if DBGrid1.EditorMode then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0));
end;

procedure TExpenseF.qryExpenseItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  LastArticle := DataSet.fieldbyname('Desc').AsString;
  CalculateSummary;

end;

procedure TExpenseF.qryExpenseAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryExpenseItems.UpdateBatch;
  qryExpenseItems.Requery();
  BigMessage('À»  ‘œ.', 1);

end;

procedure TExpenseF.qryExpenseAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TExpenseF.qryExpenseBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if not qryExpense.IsEmpty then
    if get_response('¬Ì« »—«Ì «‰’—«› „ÿ„∆‰ Â” Ìœø') <> mrYes then
      Abort;
  qryExpenseItems.Cancel;
  qryExpenseItems.Requery();
end;

procedure TExpenseF.qryExpenseBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if user.level < 5 then
  begin
    warn('‘„« „Ã«“ »Â Ê—Êœ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
    Abort;
  end;
  if (qryExpenseState.AsInteger > 0) then
  begin
    warn('”‰œ ﬁ«»· ÊÌ—«Ì‘ ‰Ì” .');
    Abort;
  end; // if
end;

procedure TExpenseF.qryExpenseBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if user.level < 7 then
  begin
    warn('‘„« „Ã«“ »Â Ê—Êœ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
    Abort;
  end;
  if DataSet.fieldbyname('State').AsInteger > 0 then
  begin
    warn('”‰œ ﬁ«»· Õ–› ﬂ—œ‰ ‰Ì” .');
    Abort;
  end; // if
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TExpenseF.qryExpenseItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary;

end;

procedure TExpenseF.qryExpenseAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit12.SetFocus;
  DataSet.fieldbyname('ExpID').AsInteger := GetANewCode('','Expense', 'ExpID',dmf.adcAccounting);
  DataSet.fieldbyname('FormNo').AsInteger :=
  // GetANewCode('Expense', 'FormNo',dmf.adcAccounting);
    GetANewCode
    ('',Format('SELECT ISNULL(MAX(FormNo), 0) FROM Acc.Expense WHERE (YearId = %d)',
    [APPBank.Year]), 'FormNo',dmf.adcAccounting);
  DataSet.fieldbyname('FormDate').AsVariant := var_glb_CurrentDate;
  DataSet.fieldbyname('BudgetYear').AsString := Copy(var_glb_CurrentDate, 1, 2);
  DataSet.fieldbyname('State').AsInteger := 0;
  DataSet.fieldbyname('Kind').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode').AsInteger := 0;
  DataSet.fieldbyname('DetailCode').AsInteger := 0;
  DataSet.fieldbyname('TopicCode').AsInteger := 0;
  DataSet.fieldbyname('PayerCTopicCode').AsInteger := 0;
  DataSet.fieldbyname('PayerDetailCode').AsInteger := 0;
  DataSet.fieldbyname('PayerTopicCode').AsInteger := 0;
  DataSet.fieldbyname('Cacther').AsString := APPBank.CompanyName;
  DataSet.fieldbyname('FirstUser').AsString := user.name;
  DataSet.fieldbyname('YearId').AsInteger := APPBank.Year;
end;

procedure TExpenseF.srcExpenseStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryExpense.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  SBtnSearch.Visible := not okPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.Expense');
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.ExpenseItems');

  if qryExpense.State in dseditmodes then
    dbedtComments.PopupMenu := popPreDefinedDescs
  else
    dbedtComments.PopupMenu := nil;

end;

procedure TExpenseF.qryExpenseItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  // DataSet.fieldbyname('ID').AsInteger := GetANewCode('','ExpenseItems', 'ID',dmf.adcAccounting);
  DataSet.fieldbyname('ExpID').AsInteger := qryExpense.fieldbyname('ExpID')
    .AsInteger;
  DataSet.fieldbyname('ItemDetailCode').AsInteger :=
    qryExpense.fieldbyname('CustDetailId').AsInteger;
  DataSet.fieldbyname('bed').AsInteger := 0;
  DataSet.fieldbyname('bes').AsInteger := 0;
end;

procedure TExpenseF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TExpenseF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);

end;

procedure TExpenseF.actCopyArticleExecute(Sender: TObject);
begin
  inherited;
  CopiedArticle := qryExpenseItemsDesc.AsString;
end;

procedure TExpenseF.actExpenseCopyExecute(Sender: TObject);
begin
  inherited;
  if not(qryExpense.State in dseditmodes) then
    qryExpense.Edit;
  qryExpenseItems.Last;
  ExpenseCopyF.copyFromDoc(DBGrid1, qryExpenseExpID.AsInteger,
    qryExpenseItems.Sort);
end;

procedure TExpenseF.actPasteArticleExecute(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    exit;

  if not(qryExpenseItems.State in dseditmodes) then
    qryExpenseItems.Edit;
  if CopiedArticle = '' then
    CopiedArticle := LastArticle;

  qryExpenseItemsDesc.AsString := CopiedArticle;

end;

procedure TExpenseF.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  aBigPanel.Visible := (Sender as TDBGrid).SelectedIndex in [3, 4];
  if aBigPanel.Visible then
  begin
    showBigNum((Sender as TDBGrid).Columns[(Sender as TDBGrid).SelectedIndex]
      .Field.AsCurrency);
    aBigPanel.BringToFront;
  end
  else
    aBigPanel.SendToBack;

end;

procedure TExpenseF.ppSystemVariable1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TExpenseF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := edtValue.Text;
end;

procedure TExpenseF.ppLabel12GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '13' + qryExpense.fieldbyname('BudgetYear').AsString
end;

procedure TExpenseF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryExpense.DisableControls;
    qryExpenseItems.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryExpense.EnableControls;
    qryExpenseItems.EnableControls;
  end; // try
end;

procedure TExpenseF.ppLBCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TExpenseF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryExpenseItems);
end;

procedure TExpenseF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryExpenseItems);
end;

procedure TExpenseF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TExpenseF.GetClickSpb(ID: Byte);
var
  spt: TSpeedButton;
begin
  spt := TSpeedButton(FindComponent('SpeedButton' + IntToStr(ID)));
  spt.Click;
end;

procedure TExpenseF.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  GetClickSpb((Sender as TDBEdit).Tag);
end;

procedure TExpenseF.qryExpenseItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.fieldbyname('CatcherItem').AsString = Null then
    Abort;
end;

procedure TExpenseF.ppSystemVariable2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TExpenseF.SpeedButton10Click(Sender: TObject);
var
  txt, C: String;
  // result:array [0..1] of String;

begin
  inherited;
  if (qryExpense.State in dseditmodes) then
  begin
    txt := 'SELECT DetailCode, DetailName_L1 AS [note] FROM (' +
      ' SELECT DetailCode, DetailName_L1  FROM Acc.Details where DetailCode<>-1 ) AS a';
    if searchCode_ADOF.SearchCode(Dmf.adcAccounting, C, 'œ—ŒÊ«”  ﬂ‰‰œÂ', txt,
      ['ﬂœ ', '⁄‰Ê«‰'], alLeft) <> '' then
    begin
      if not(qryExpense.State in dseditmodes) then
        qryExpense.Edit;
      qryExpense['CustDetailId'] := C;
    end;
  end; // if
END;

procedure TExpenseF.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton10.Click;
end;

procedure TExpenseF.ppLabel18GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := edtValue.Text;
end;

procedure TExpenseF.ppLabel27GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblBes.Caption;

end;

procedure TExpenseF.ppLabel24GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblBed.Caption;

end;

procedure TExpenseF.SBtnSearchClick(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 5] of String;
begin
  inherited;
  txt := Format
    ('SELECT ExpID, FormNo, FormDate, Cacther, Comments, CustDetailId FROM Acc.Expense WHERE (YearId = %d)',
    [APPBank.Year]);
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'œ—ŒÊ«”  ﬂ‰‰œÂ', txt,
    ['', '‘„«—Â ', ' «—ÌŒ', ' Ê”ÿ', '‘—Õ ⁄„Ê„Ì', 'ﬂœ  ›’Ì·Ì'], Result,
    [0, 100, 150, 150, 150, 80], alLeft) then
  begin
    qryExpense.locate('ExpID', Result[0], []);
  end;
end;

procedure TExpenseF.initreportF(ReportName: TppReport; GeneralFileName: string);
begin
  if Pos('.', GeneralFileName) = 0 THEN
    GeneralFileName := GeneralFileName + '.rtm';
  with ReportName do
    try
      Template.FileName := GetReportFileWithPath(GeneralFileName);

      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        warn('›«Ì· ç«ÅÌ ' + GeneralFileName + ' Ì«›  ‰‘œ.!˛');
      PreviewFormSettings.SinglePageOnly := True;
      Print;
    finally
    end; // try
end;

procedure TExpenseF.N12Click(Sender: TObject);
begin
  inherited;
  initreportF(ppReport2, 'RepSanadHazine_Mehdishahr');
end;

procedure TExpenseF.N11Click(Sender: TObject);
begin
  inherited;
  initreportF(ppReport2, 'RptExpenseGarmsar');
end;

procedure TExpenseF.qryExpenseAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('LastUser').AsString := user.name;
end;

procedure TExpenseF.qryExpenseBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if user.level < 2 then
  begin
    warn('‘„« „Ã«“ »Â Ê—Êœ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
    Abort;
  end;
end;

procedure TExpenseF.qryExpenseBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryExpense.Parameters.ParamByName('YearId').Value := APPBank.Year;
end;

procedure TExpenseF.DBGrid1EditButtonClick(Sender: TObject);
var
  i: integer;
  Result: array [0 .. 1] of String;
begin
  inherited;
  i := (Sender as TDBGrid).SelectedIndex;
  case i of
    0:
      if (qryExpense.State in dseditmodes) then
      begin
        if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'œ—ŒÊ«”  ﬂ‰‰œÂ',
          'SELECT DetailCode, DetailName_L1 AS [note] FROM (' +
          ' SELECT DetailCode, DetailName_L1  FROM Acc.Details where DetailCode <> -1 ) AS a',
          ['ﬂœ ', '⁄‰Ê«‰'], Result, [50, 150], alLeft) then
        begin
          if not(qryExpenseItems.State in dseditmodes) then
            qryExpenseItems.Edit;
          qryExpenseItems['ItemDetailCode'] := Result[0];
          qryExpenseItems['CatcherItem'] := Result[1];
        end;
      end; // if
  end;
end;

procedure TExpenseF.qryExpenseBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if CheckRequiredFields(DataSet) then
//    Abort;
  with qryExpenseItems do
  begin
    First;
    while not eof do
    begin
      if ((fieldbyname('bed').AsInteger > 0) and
        (fieldbyname('bes').AsInteger > 0)) then
      begin
        warn('«’· „»·€ Ê ﬂ”Ê—«  Â„“„«‰ Ê«—œ ‘œÂ');
        Abort;
        exit;
      end;
      Next;
    end; // while
  end; // with
end;

procedure TExpenseF.h1Click(Sender: TObject);
begin
  inherited;
  initreportF(ppReport2, 'RepSanadHazine_saveh');
end;

procedure TExpenseF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(qryExpenseItemsBed.AsInteger - qryExpenseItemsBes.AsInteger);
end;

procedure TExpenseF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(StrToInt64(CurrToStr(rptMandeh)));
end;

end.
