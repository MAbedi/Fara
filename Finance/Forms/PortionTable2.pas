unit PortionTable2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, mmessage, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ToolWin, ComCtrls, Menus,
  math,
  SumDBGrid, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type

  TPortionTable2F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterInfoID: TWordField;
    qryMasterInfoName_L1: TStringField;
    qryMasterFormType: TWordField;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    qryMasterInfoName_L2: TStringField;
    qryMasterFormInfoID: TIntegerField;
    actSend: TAction;
    actSort: TAction;
    actPrint: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppFooterBand1: TppFooterBand;
    ppLine6: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    actGetExcel: TAction;
    actSendToExcel: TAction;
    Panel1: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel_l2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel_l1: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ToolBar1: TToolBar;
    btnNote: TBitBtn;
    actNote: TAction;
    pnlNote: TPanel;
    memComment: TDBMemo;
    qryMasterComment: TStringField;
    qryPortionDoc: TADOQuery;
    qryPortionDocID: TIntegerField;
    qryPortionDocDetailCode: TIntegerField;
    qryPortionDocCTopicCode: TIntegerField;
    qryPortionDocCTopicCode2: TIntegerField;
    qryPortionDocCTopicCode3: TIntegerField;
    qryPortionDocComment: TWideStringField;
    qryPortionDocCofficient: TFloatField;
    grdPortionDoc: TDBGrid;
    srcPortionDoc: TDataSource;
    pnlDetail: TPanel;
    NewPanelDetail: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    okPanelDetail: TPanel;
    BitBtn4: TBitBtn;
    BitBtn13: TBitBtn;
    actSelected: TAction;
    btnSelected: TBitBtn;
    qryPortionDocFormInfoID: TIntegerField;
    qryPortionDocPortionCount: TIntegerField;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    btnGetExcel: TBitBtn;
    qryPortionDocYearID: TIntegerField;
    procedure qryMasterAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSendExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryCtopic1BeforePost(DataSet: TDataSet);
    procedure qryMasterBeforeDelete(DataSet: TDataSet);
    procedure qryMasterAfterPost(DataSet: TDataSet);
    procedure qryMasterAfterDelete(DataSet: TDataSet);
    procedure qryMasterBeforePost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure qryCtopic1BeforeEdit(DataSet: TDataSet);
    procedure qryMasterBeforeCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCtopic1CofficientChange(Sender: TField);
    procedure qryCTopic2CofficientItemChange(Sender: TField);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure _actSearchExecute(Sender: TObject);
    procedure qry_PortionAfterInsert(DataSet: TDataSet);
    procedure actNoteExecute(Sender: TObject);
    procedure qryPortionDocAfterInsert(DataSet: TDataSet);
    procedure srcPortionDocStateChange(Sender: TObject);
    procedure grdPortionDocEditButtonClick(Sender: TObject);
    procedure grdPortionDocKeyPress(Sender: TObject; var Key: Char);
    procedure grdPortionDocEnter(Sender: TObject);
    procedure qryPortionDocBeforePost(DataSet: TDataSet);
    procedure actSelectedExecute(Sender: TObject);
    procedure srcMasterStateChange(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qryPortionDocBeforeDelete(DataSet: TDataSet);
  private
    cloned: TADOQuery;
    counter: integer;
    procedure UpdateQry;
    procedure btnClick(Sender: TObject);
    // function checkCofficient:boolean;
    // procedure checkCofficientItem;
    procedure createToolButton;
    // function CalcSumFileds(FiledName: String;ado_qry:TADOQuery): Currency;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    // function  GetNumberTab:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PortionTable2F: TPortionTable2F;

implementation

uses Dm, Portion_Relation, search2, sort2, Portion_Relation2, GlobalPro,
  sndkey32, GetExcel,
  GeneralDM, DateUtils, searchCode_ADO, SpecialSearchDoc, searchCode_L1_L2,
  selected, filter_ADO, FilterClass_ADO;
{$R *.dfm}

procedure TPortionTable2F.qryMasterAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  DataSet.FieldByName('FormInfoID').AsInteger := GetANewCode('','FormsInfo',
    'FormInfoID',dmf.adcAccounting);
  txt := 'SELECT max(InfoID) FROM acc.FormsInfo WHERE  (FormType = 10)';
  DataSet.FieldByName('InfoID').AsInteger := GetANewCode('',txt, 'InfoID',dmf.adcAccounting);
  DataSet.FieldByName('FormType').AsInteger := 10;
  DBEdit3.SetFocus;
end;

procedure TPortionTable2F.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  // SET default
  // BtnReject.Cancel := False;
  counter := var_glb_CurrentMonth;
  createToolButton;
  qryMaster.Active := true;
end;

procedure TPortionTable2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateQry;

end;

procedure TPortionTable2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMaster.FieldByName('InfoID'));
end;

procedure TPortionTable2F.actSendExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdPortionDoc);
end;

procedure TPortionTable2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TPortionTable2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);
end;

procedure TPortionTable2F.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
  SaveColWidth(grdPortionDoc);
end;

procedure TPortionTable2F.qryCtopic1BeforePost(DataSet: TDataSet);
// var
// i:  Integer;
// aControl: TWinControl;
begin
  // if qryCTopic2.FieldByName('CTopicCode2').AsString<>'' then
  // with qryCTopic2 do begin
  // try
  // DisableControls;
  // if not(qryCTopic2.State = dsedit) then qryCTopic2.Edit;
  /// /   Post;
  /// /   First;
  // with Dmf.qry_Temp do begin
  // Active:=false;
  // SQL.Text:='SELECT  PortionTableItems.CTopicCode2, PortionTableItems.CofficientItem '+
  // ' FROM   PortionTableItems INNER JOIN CenterTopics2 ON PortionTableItems.CTopicCode2 = CenterTopics2.CTopicCode2 '+
  // ' where CofficientItem = 0 and CofficientID='+qryCtopic1CofficientID.AsString;
  // Active:=true;
  // if FieldByName('CTopicCode2').AsString <> '' then begin
  // Warn('„ﬁœ«— ÷—Ì»  ›’Ì·Ì 3  '+FieldByName('CTopicCode2').AsString+' „Ã«“ ‰„Ì »«‘œ ');
  // abort;
  // end;
  // end;
  /// /   UpdateBatch()
  // finally
  // EnableControls;
  // end;//try
  // end;//with

  // with qryCTopic2 do begin
  // Post;
  // First;
  // while not Eof do begin
  // if FieldByName('CofficientItem').AsInteger=0 then begin
  // warn(  ' „ﬁœ«— Ê«—œ ‘œÂ „Ã«“ ‰„Ì »«‘œ');
  // FieldByName('CofficientItem').FocusControl;
  // aControl:=Screen.ActiveControl;
  // if aControl<>nil then FlashAControl(aControl);
  // abort;
  // end;//if
  // Next;
  // end;
  // UpdateBatch()
  // end;
end;

procedure TPortionTable2F.qryMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ  ”ÂÌ„ Â“Ì‰Â „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPortionTable2F.qryMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  // qryCtopic1.UpdateBatch();
  BigMessage('À»‹  ‘œ.', 1);
end;

procedure TPortionTable2F.qryMasterAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TPortionTable2F.qryMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryMaster) then
  begin
    Abort;
    exit;
  end; // if
  with Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT InfoID, FormType, FormInfoID';
    SQL.Add('FROM acc.FormsInfo WHERE (FormType = 10) and InfoID =' +
        qryMasterInfoID.AsString);
    Active := true;
    if (Dmf.qry_Temp.RecordCount <> 0) and
      (FieldByName('FormInfoID').AsInteger <> qryMaster.FieldByName
        ('FormInfoID').AsInteger) then
    begin
      warn('ﬂœ Ê«—œ ‘œÂ  ﬂ—«—Ì «” ');
      Abort;
    end;
  end;
  // checkCofficientItem;
  // checkCofficient;
end;

procedure TPortionTable2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, false);
  SetColSize(grdPortionDoc, 4, false);
end;

procedure TPortionTable2F.qryCtopic1BeforeEdit(DataSet: TDataSet);
begin
  inherited;

end;

// procedure TPortionTableF.checkCofficient;
// var
// aControl: TWinControl;
// begin
// if qryCTopic1.FieldByName('CTopicCode').AsString<>'' then
// with qryCtopic1 do begin
// try
// DisableControls;
// if not(qryCTopic1.State = dsedit) then qryCTopic1.Edit;
// Post;
// First;
// while not Eof do begin
// if FieldByName('Cofficient').AsInteger=0 then begin
// warn(  ' „ﬁœ«— Ê«—œ ‘œÂ „Ã«“ ‰„Ì »«‘œ');
// FieldByName('Cofficient').FocusControl;
/// /             aControl:=Screen.ActiveControl;
/// /             if aControl<>nil then FlashAControl(aControl);
// abort;
// end;//if
// Next;
// end;//while
// UpdateBatch()
// finally
// EnableControls;
// end;//try
// end;//with
//
//
// end;

// procedure TPortionTableF.checkCofficientItem;
// var
// aControl: TWinControl;
// sumCofficient:integer;
// begin
// if qryCTopic2.FieldByName('CTopicCode2').AsString<>'' then
// with qryCtopic2 do begin
// try
// DisableControls;
// sumCofficient:=0;
// if not(qryCTopic2.State = dsedit) then qryCTopic2.Edit;
// Post;
// First;
// while not Eof do begin
// if FieldByName('CofficientItem').AsInteger=0 then begin
// warn(  ' „ﬁœ«— Ê«—œ ‘œÂ „Ã«“ ‰„Ì »«‘œ');
// FieldByName('CofficientItem').FocusControl;
// //         aControl:=Screen.ActiveControl;
// //         if aControl<>nil then FlashAControl(aControl);
// abort;
// end;//if
// sumCofficient:=sumCofficient+ FieldByName('CofficientItem').AsInteger;
// Next;
// end;//while
// if qryCtopic1.FieldByName('Cofficient').AsInteger <> sumCofficient then begin
// warn('„ﬁœ«— Ê«—œ ‘œÂ  „Ã«“ ‰„Ì »«‘œ');
// Abort;
// end;
// UpdateBatch()
// finally
// EnableControls;
// end;//try
// end;//with
// end;

procedure TPortionTable2F.qryMasterBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  // checkCofficientItem;
  // checkCofficient;
end;

procedure TPortionTable2F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // if  checkCofficient then exit;
  // checkCofficientItem;
  // checkCofficient;
end;

procedure TPortionTable2F.qryCtopic1CofficientChange(Sender: TField);
begin
  inherited;
  // if not(qryMaster.State = dsedit) then qryMaster.Edit;
  // LbelCTopic1.Caption:=CurrToStrF(CalcSumFileds('Cofficient',qryCTopic1),ffNumber  ,0)  ;
end;

procedure TPortionTable2F.qryCTopic2CofficientItemChange(Sender: TField);
begin
  inherited;
  // if not(qryMaster.State = dsedit) then qryMaster.Edit;
  // LbelCTopic2.Caption:= CurrToStrF(CalcSumFileds('CofficientItem',qryCTopic2),ffNumber,0)  ;
end;

procedure TPortionTable2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryMaster.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := True;
    ppReport1.Print;
  finally

    qryMaster.EnableControls;
  end;
end;

procedure TPortionTable2F.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPortionTable2F.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPortionTable2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPortionTable2F.createToolButton;
var
  i: integer;
const
  NameButton = 'ToolButton';
begin
  i := 1;
  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text :=
      'SELECT InfoID,InfoName_L1 FROM acc.FormsInfo WHERE (FormType = 14)';
     Open;
    while not Eof do
    begin
      with TToolButton.Create(ToolBar1) do
      begin
        Parent := ToolBar1;
        Caption := FieldByName('InfoName_L1').AsString;
        Name := NameButton + IntToStr(i);
        Tag := FieldByName('InfoID').AsInteger;
        Inc(i);
        OnClick := btnClick;
        Grouped := True;
        Style := tbsCheck;
      end; // with
      Next;
    end; // while
    // SET default
    if i <> 1 then
      TToolButton(ToolBar1.FindComponent('ToolButton' + IntToStr
            (var_glb_CurrentMonth))).down := true;
  end; // with

end;

procedure TPortionTable2F.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryMasterInfoID.AsString + '  ' + qryMasterInfoName_L1.AsString;
end;

procedure TPortionTable2F.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + TToolButton
    (ToolBar1.FindComponent('ToolButton' + IntToStr(counter))).Caption;
end;

procedure TPortionTable2F._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TPortionTable2F.qry_PortionAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CofficientID').AsInteger := GetANewCode('','PortionTable',
    'CofficientID',dmf.adcAccounting);
  DataSet.FieldByName('FormInfoID').AsInteger := qryMaster.FieldByName
    ('formInfoID').AsInteger;
  // ataSet.FieldByName('Cofficient').AsInteger:=0;
  DataSet.FieldByName('PortionCunt').AsInteger := var_glb_CurrentMonth;
end;

procedure TPortionTable2F.actNoteExecute(Sender: TObject);
begin
  inherited;
  pnlNote.Left := btnNote.Left;
  pnlNote.Visible := not pnlNote.Visible;
  if pnlNote.Visible then
    memComment.SetFocus;

end;

procedure TPortionTable2F.qryPortionDocAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormInfoID').AsInteger := qryMaster.FieldByName
    ('FormInfoID').AsInteger;
  DataSet.FieldByName('PortionCount').AsInteger := counter;
  qryPortionDocYearID.AsInteger := APPBank.year;
end;

procedure TPortionTable2F.UpdateQry;
begin
  with qryPortionDoc do
  begin
    Close;
    Parameters.ParamByName('formInfoID').Value := qryMaster.FieldByName
      ('formInfoID').AsInteger;
    Parameters.ParamByName('PortionCount').Value := counter;
    Parameters.ParamByName('YearID').Value := APPBank.year;
    Open;
  end;
end;

procedure TPortionTable2F.btnClick(Sender: TObject);
begin
  inherited;
  // checkCofficient;
  counter := (Sender as TToolButton).Tag;
  UpdateQry;
end;

procedure TPortionTable2F.srcPortionDocStateChange(Sender: TObject);
begin
  inherited;
  okPanelDetail.Visible := qryPortionDoc.State in dsEditModes;
  NewPanelDetail.Visible := not okPanelDetail.Visible;
  // BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'FormsInfo')
end;

procedure TPortionTable2F.grdPortionDocEditButtonClick(Sender: TObject);
var
  i: Byte;
  aDataSet: TDataSet;

  c: String;
  Results: array [0 .. 5] of String;
  TmpChar: Char;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet; (Sender as TDBGrid)
  .SelectedIndex := i;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'ﬂœÂ«Ì  ›’Ì·Ì',
          'SELECT DetailCode, DetailName_L1 FROM acc.Details' +
            ' where  detailcode <>0  and CompanyCode=' + IntToStr
            (opta.DefaultCompany), ['ﬂœ  ›’Ì·Ì', '‰«„ Õ”«»'], alLeft, 1)
          <> '' then
        begin
          aDataSet.FieldByName('DetailCode').AsString := c;
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;

    1:
      begin
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'ﬂœÂ«Ì  ›’Ì·Ì 1',
          'SELECT CTopicCode, CTopicName_L1, CTopicName_L2 FROM acc.CenterTopics  where CTopicCode <>0 ', ['ﬂœ  ›’Ì·Ì 1', '‰«„ Õ”«»', 'name'], Results, [150, 350, 350], alLeft) then
        begin
          aDataSet.FieldByName('CTopicCode').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;
    2:
      begin
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
          'ﬂœÂ«Ì  ›’Ì·Ì 3', 'SELECT CTopicCode2, CTopicName2_L1, CTopicName2_L2 FROM acc.CenterTopics2  where CTopicCode2 <>0 ', ['ﬂœ  ›’Ì·Ì 3', '‰«„ Õ”«»', 'name'], Results, [150, 350, 350], alLeft) then
        begin
          aDataSet.FieldByName('CTopicCode2').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;
    3:
      begin
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
          'ﬂœÂ«Ì  ›’Ì·Ì 4', 'SELECT CTopicCode3, CTopicName3_L1, CTopicName3_L2 FROM  acc.CTopicCode3 WHERE(CTopicCode3<>0)', ['ﬂœ  ›’Ì·Ì 4', '‰«„ Õ”«»', 'name'], Results, [150, 350, 350], alLeft) then
        begin
          aDataSet.FieldByName('CTopicCode3').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;

  end;

end;

procedure TPortionTable2F.grdPortionDocKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  gridkeyenter(Sender, Key);
end;

procedure TPortionTable2F.gridkeyenter(Sender: TObject; var Key: Char);
var
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
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 5;
          5:
            nextIndex := -1;
        end; // case

      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TDBGrid).Columns[nextIndex].Visible) OR
            ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
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
      if aDataSet.State in dsEditModes then
        aDataSet.Cancel;
    #32, #157:
      if curIndex in [0 .. 3] then
      begin
        Key := #0;
        grdPortionDocEditButtonClick(Sender);
      end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < (Sender as TDBGrid).Columns.Count) and
      (not((Sender as TDBGrid).Columns[nextIndex].Visible) OR
        ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false); (Sender as TDBGrid)
          .SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if aDataSet.State in dsEditModes then
            aDataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if aDataSet.State in dsEditModes then
            aDataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
  end; // case

end;

procedure TPortionTable2F.grdPortionDocEnter(Sender: TObject);
begin
  inherited; (Sender as TDBGrid)
  .SelectedIndex := 0;
end;

procedure TPortionTable2F.qryPortionDocBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('DetailCode').AsString = EmptyStr) and
    (DataSet.State = dsInsert) then
  begin
    DataSet.Cancel;
    Abort;
    exit;
  end; // if
end;

procedure TPortionTable2F.actSelectedExecute(Sender: TObject);

begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(Dmf.adcAccounting, 'CTopicCode3', 'ﬂœ Ê ‰«„  ›’Ì·Ì 3',
        '„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode3, CTopicName3_L1 FROM  acc.CTopicCode3',
        'SELECT 0,MAX(CTopicCode3)  FROM  acc.CTopicCode3');

      AddItem(Dmf.adcAccounting, 'CTopicCode2', 'ﬂœ Ê ‰«„  ›’Ì·Ì 3',
        '„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT    CTopicCode2, CTopicName2_L1 FROM    acc.CTopics2ForUse',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CTopics2ForUse');
      AddItem(Dmf.adcAccounting, 'CTopicCode', 'ﬂœ Ê ‰«„ Õ”«»  ›’Ì·Ì 1 ',
        'ﬂœ Õ”«»', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode,CTopicName_L1 FROM acc.CTopicsForUse ',
        'SELECT Min(CTopicCode),  Max(CTopicCode)  FROM acc.Documents');
      AddItem(Dmf.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„ Õ”«»  ›’Ì·Ì ',
        'ﬂœ Õ”«»', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode,DetailName_L1 FROM acc.Details  ',
        'SELECT Min(DetailCode),  Max(DetailCode)  FROM acc.Documents');
      AddItem(Dmf.adcAccounting, 'TopicCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
          +
          ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode ' +
          ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) '
          , 'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN ' + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode ' + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');

      if ShowModal = mrOk then
        with TADOCommand.Create(Self) do
          try
            GetFilterString;
            Connection := Dmf.adcAccounting;
            CommandText :=
              'INSERT INTO acc.PortionDoc (FormInfoID,PortionCount,DetailCode, CTopicCode, CTopicCode2, CTopicCode3)'
              +
              ' SELECT :MasterCode,:Mounth,QDOC.DetailCode, QDOC.CTopicCode, QDOC.CTopicCode2, QDOC.ctopiccode3'
              + ' FROM (SELECT DISTINCT DetailCode, CTopicCode, CTopicCode2, ctopiccode3, DetailCode + CTopicCode + CTopicCode2 +' + ' ctopiccode3 AS code' +
              ' FROM acc.Documents'
              + ' WHERE (TopicCode BETWEEN :AccFrom AND :AccTo) AND (DetailCode BETWEEN :DetailFrom AND :DetailTo) AND' + ' (CTopicCode BETWEEN :Ctopic1From AND :Ctopic1To) AND' + ' (CTopicCode2 BETWEEN :Ctopic2From AND :Ctopic2To) AND (ctopiccode3 BETWEEN :Ctopic3From AND :Ctopic3To)) AS QDOC' + ' LEFT OUTER JOIN' + ' (SELECT DetailCode + CTopicCode + CTopicCode2 + CTopicCode3 AS Code' + ' FROM acc.PortionDoc where PortionCount =:Mounth2 and FormInfoID=:MasterCode2 ) AS portion ON QDOC.code = portion.Code WHERE (portion.Code IS NULL);';

            Parameters.ParamByName('MasterCode').Value := qryMaster.FieldByName
              ('FormInfoID').AsInteger;
            Parameters.ParamByName('MasterCode2').Value := qryMaster.FieldByName
              ('FormInfoID').AsInteger;
            Parameters.ParamByName('Mounth').Value := counter;
            Parameters.ParamByName('Mounth2').Value := counter;
            Parameters.ParamByName('AccFrom').Value := GetcFrom
              (myParams.ParamValues['TopicCode'], ftInteger);
            Parameters.ParamByName('AccTo').Value := GetcTo
              (myParams.ParamValues['TopicCode'], ftInteger);
            Parameters.ParamByName('DetailFrom').Value := GetcFrom
              (myParams.ParamValues['DetailCode'], ftInteger);
            Parameters.ParamByName('DetailTo').Value := GetcTo
              (myParams.ParamValues['DetailCode'], ftInteger);
            Parameters.ParamByName('Ctopic1From').Value := GetcFrom
              (myParams.ParamValues['CTopicCode'], ftInteger);
            Parameters.ParamByName('Ctopic1To').Value := GetcTo
              (myParams.ParamValues['CTopicCode'], ftInteger);
            Parameters.ParamByName('Ctopic2From').Value := GetcFrom
              (myParams.ParamValues['CTopicCode2'], ftInteger);
            Parameters.ParamByName('Ctopic2To').Value := GetcTo
              (myParams.ParamValues['CTopicCode2'], ftInteger);
            Parameters.ParamByName('Ctopic3From').Value := GetcFrom
              (myParams.ParamValues['CTopicCode3'], ftInteger);
            Parameters.ParamByName('Ctopic3To').Value := GetcTo
              (myParams.ParamValues['CTopicCode3'], ftInteger);
            Execute;

          finally
            Free;
          end;
    finally
      qryPortionDoc.Requery;
      Free;
    end; // try

end;

procedure TPortionTable2F.srcMasterStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMaster.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  pnlDetail.Visible := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'FormsInfo')

end;

procedure TPortionTable2F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryPortionDoc);
end;

procedure TPortionTable2F.qryPortionDocBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

end.
