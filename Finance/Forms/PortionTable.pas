unit PortionTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, mmessage, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ToolWin, ComCtrls, Menus,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type

  TPortionTableF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryCtopic1: TADOQuery;
    qryCTopic2: TADOQuery;
    srcCTopic1: TDataSource;
    srcCTopic2: TDataSource;
    qryMasterInfoID: TWordField;
    qryMasterInfoName_L1: TStringField;
    qryMasterFormType: TWordField;
    qryCTopic2CTopicCode2: TIntegerField;
    qryCTopic2CofficientItem: TFloatField;
    qryCTopic2CTopicName2_L1: TStringField;
    qryCTopic2CTopicName2_L2: TStringField;
    qryCtopic1CTopicName_L1: TStringField;
    qryCtopic1CTopicName_L2: TStringField;
    qryCtopic1CofficientID: TIntegerField;
    qryCtopic1FormInfoID: TIntegerField;
    qryCtopic1CTopicCode: TIntegerField;
    qryCtopic1Cofficient: TFloatField;
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
    qryCTopic2ID: TAutoIncField;
    qryCTopic2CofficientID: TIntegerField;
    qryCtopic1PortionCunt: TIntegerField;
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
    qry_Portion: TADOQuery;
    qry_PortionCTopicCode: TIntegerField;
    qry_PortionFormInfoID: TIntegerField;
    qry_PortionCofficientID: TIntegerField;
    qry_PortionCofficient: TFloatField;
    qry_PortionPortionCunt: TIntegerField;
    Action1: TAction;
    actGetExcel2: TAction;
    qry_Portion2: TADOQuery;
    qry_PortionID: TAutoIncField;
    IntegerField1: TIntegerField;
    qry_PortionCTopicCode2: TIntegerField;
    qry_PortionCofficientItem: TFloatField;
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
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    del: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn13: TBitBtn;
    StatusBar1: TStatusBar;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    BitBtn17: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    StatusBar2: TStatusBar;
    btnNote: TBitBtn;
    actNote: TAction;
    pnlNote: TPanel;
    memComment: TDBMemo;
    qryMasterComment: TStringField;
    DBGrid2: TDBGrid;
    qryCtopic1YearID: TIntegerField;
    pm1: TPopupMenu;
    N1: TMenuItem;
    actRecal: TAction;
    N2: TMenuItem;
    qry_PortionYearID: TIntegerField;
    procedure BitBtn3Click(Sender: TObject);
    procedure qryMasterAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcMasterDataChange(Sender: TObject; Field: TField);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure actSendExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryCtopic1AfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure delClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryCtopic1AfterPost(DataSet: TDataSet);
    procedure qryCTopic2AfterPost(DataSet: TDataSet);
    procedure qryMasterBeforeDelete(DataSet: TDataSet);
    procedure qryMasterAfterPost(DataSet: TDataSet);
    procedure qryMasterAfterDelete(DataSet: TDataSet);
    procedure qryMasterBeforePost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure qryMasterBeforeEdit(DataSet: TDataSet);
    procedure qryCtopic1BeforeEdit(DataSet: TDataSet);
    procedure qryMasterBeforeCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCtopic1CofficientChange(Sender: TField);
    procedure qryCTopic2CofficientItemChange(Sender: TField);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure ToolBar1CustomDrawButton(Sender: TToolBar; Button: TToolButton;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure qryMasterBeforeScroll(DataSet: TDataSet);
    procedure _actSearchExecute(Sender: TObject);
    procedure qry_PortionAfterInsert(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qry_Portion2AfterInsert(DataSet: TDataSet);
    procedure actGetExcel2Execute(Sender: TObject);
    procedure actNoteExecute(Sender: TObject);
    procedure qryCtopic1AfterInsert(DataSet: TDataSet);
    procedure btnNoteClick(Sender: TObject);
    procedure actRecalExecute(Sender: TObject);
    procedure qryCtopic1BeforePost(DataSet: TDataSet);
  private
    cloned: TADOQuery;
    counter: integer;
    procedure updateQry;
    function checkCofficient: Boolean;
    // procedure checkCofficientItem;
    procedure createToolButton;
    function CalcSumFileds(FiledName: String; ado_qry: TADOQuery): Currency;
    // function  GetNumberTab:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PortionTableF: TPortionTableF;

implementation

uses Dm, Portion_Relation, search2, sort2, Portion_Relation2, GlobalPro,
  sndkey32, GetExcel;

{$R *.dfm}

procedure TPortionTableF.BitBtn3Click(Sender: TObject);

begin
  inherited;
  if qryMaster.State in dseditmodes then
    qryMaster.Post;
  if Portion_RelationF.ShowChooseDetail(qryMaster.FieldByName('formInfoID')
    .AsInteger, counter) then
  begin
    qryCtopic1.Requery;
    qryCtopic1.Last;
    // if not(qryMaster.State in dseditmodes) then  qryMaster.Edit;
  end;
  // checkCofficient;

  // EnabelCtopic2;
end;

procedure TPortionTableF.qryMasterAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('','FormsInfo', 'FormInfoID',dmf.adcAccounting);
  txt := 'SELECT max(InfoID) FROM acc.FormsInfo WHERE  (FormType = 10)';
  DataSet.FieldByName('InfoID').AsInteger := GetANewCode('',txt, 'InfoID',dmf.adcAccounting);
  DataSet.FieldByName('FormType').AsInteger := 10;
  DBEdit3.SetFocus;
end;

procedure TPortionTableF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  // SET default
  // BtnReject.Cancel := False;
  counter := var_glb_CurrentMonth;
  createToolButton;
  qryMaster.Active := true;
end;

procedure TPortionTableF.srcMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  okPanel.Visible := qryMaster.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  // BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'FormsInfo')
end;

procedure TPortionTableF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  updateQry;

end;

function TPortionTableF.CalcSumFileds(FiledName: String; ado_qry: TADOQuery)
  : Currency;
begin
  Result := 0;
  try
    with cloned do
    begin
      Clone(ado_qry, ltReadOnly);
      First;
      while not eof do
      begin
        Result := Result + FieldByName(FiledName).AsCurrency;
        Next;
      end; // while
    end; // with
  except
  end; // try
end;

procedure TPortionTableF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMaster.FieldByName('InfoID'));
end;

procedure TPortionTableF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    sendkey(vk_down, [], false);
    (Sender as TDBGrid).selectedindex := 3;
  end
  ELSE if DBGrid2.selectedindex <> 3 then
    QuickSearch(Key, qryCtopic1.FieldByName('CTopicCode'));
end;

procedure TPortionTableF.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    sendkey(vk_down, [], false);
    (Sender as TDBGrid).selectedindex := 3;
  end
  ELSE if DBGrid3.selectedindex <> 3 then
    QuickSearch(Key, qryCTopic2.FieldByName('CTopicCode2'));
end;

procedure TPortionTableF.actSendExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPortionTableF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TPortionTableF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);
end;

procedure TPortionTableF.qryCtopic1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCTopic2 do
  begin
    Active := false;
    Parameters.ParamByName('CofficientID').Value :=
      qryCtopic1.FieldByName('CofficientID').AsInteger;
    Active := true;
  end;
  StatusBar2.Panels[0].Text := ' Ã„⁄ ÷—«Ì»:˛' +
    CurrToStrF(CalcSumFileds('CofficientItem', qryCTopic2), ffNumber, 0);
end;

procedure TPortionTableF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qryMaster.State in dseditmodes then
    qryMaster.Post;
  if Portion_Relation2F.ShowChooseDetail2(qryCtopic1.FieldByName('CofficientID')
    .AsInteger, qryCtopic1.FieldByName('CTopicCode').AsInteger) then
  begin
    qryCTopic2.Requery;
    qryCTopic2.Last;
    // if not(qryMaster.State in dseditmodes) then  qryMaster.Edit;
  end;
  // checkCofficientItem;
end;

procedure TPortionTableF.delClick(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «— »«ÿ „ÿ„∆‰ Â” Ìœø') = mrYes then
    with Dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text := 'delete from Acc.PortionTable  where CofficientID=' +
        qryCtopic1.FieldByName('CofficientID').AsString;
      ExecSQL;
      qryCtopic1.Requery();
      qryCtopic1.Last;
    end;
end;

procedure TPortionTableF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «— »«ÿ „ÿ„∆‰ Â” Ìœø') = mrYes then
    with Dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text := 'delete from acc.PortionTableItems  where ID=' +
        qryCTopic2.FieldByName('ID').AsString;
      ExecSQL;
      qryCTopic2.Requery();
      qryCTopic2.Last;
    end;
end;

procedure TPortionTableF.FormDestroy(Sender: TObject);
begin
  inherited;

  cloned.Free;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid3);
end;

procedure TPortionTableF.qryCtopic1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryCtopic1PortionCunt.AsInteger := counter;
  qryCtopic1YearID.AsInteger := APPBank.Year;
end;

procedure TPortionTableF.qryCtopic1AfterPost(DataSet: TDataSet);
begin
  inherited;
  // qryCtopic1.Requery();
  StatusBar1.Panels[0].Text := ' Ã„⁄ ÷—«Ì»:˛' +
    CurrToStrF(CalcSumFileds('Cofficient', qryCtopic1), ffNumber, 0);

end;

procedure TPortionTableF.qryCTopic2AfterPost(DataSet: TDataSet);
begin
  inherited;
  // qryCTopic2.Requery();

  StatusBar2.Panels[0].Text := ' Ã„⁄ ÷—«Ì»:˛' +
    CurrToStrF(CalcSumFileds('CofficientItem', qryCTopic2), ffNumber, 0);
end;

procedure TPortionTableF.qryMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ  ”ÂÌ„ Â“Ì‰Â „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPortionTableF.qryMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  // qryCtopic1.UpdateBatch();
  BigMessage('À»‹  ‘œ.', 1);
end;

procedure TPortionTableF.qryMasterAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TPortionTableF.qryMasterBeforePost(DataSet: TDataSet);
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
  checkCofficient;
end;

procedure TPortionTableF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, false);
  SetColSize(DBGrid2, 1, false);
  SetColSize(DBGrid3, 1, false);
end;

procedure TPortionTableF.BitBtn14Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TPortionTableF.BitBtn18Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid3);
end;

procedure TPortionTableF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCtopic1);
end;

procedure TPortionTableF.btnNoteClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPortionTableF.BitBtn15Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCTopic2);
end;

procedure TPortionTableF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCtopic1);
end;

procedure TPortionTableF.BitBtn17Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCTopic2);
end;

procedure TPortionTableF.qryMasterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryCtopic1.State in [dsedit]) then
    qryCtopic1.Edit;

end;

procedure TPortionTableF.qryCtopic1BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryCTopic2.State in [dsedit]) then
    qryCTopic2.Edit;
end;

procedure TPortionTableF.qryCtopic1BeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryCtopic1CTopicName_L1.AsString = '' then
  DataSet.Cancel;

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

procedure TPortionTableF.qryMasterBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  // checkCofficientItem;
  //new //checkCofficient;
end;

procedure TPortionTableF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if checkCofficient then
    exit;
  // checkCofficientItem;
  // checkCofficient;
end;

procedure TPortionTableF.qryCtopic1CofficientChange(Sender: TField);
begin
  inherited;
  // if not(qryMaster.State = dsedit) then qryMaster.Edit;

  // LbelCTopic1.Caption:=CurrToStrF(CalcSumFileds('Cofficient',qryCTopic1),ffNumber  ,0)  ;
end;

procedure TPortionTableF.qryCTopic2CofficientItemChange(Sender: TField);
begin
  inherited;
  // if not(qryMaster.State = dsedit) then qryMaster.Edit;
  // LbelCTopic2.Caption:= CurrToStrF(CalcSumFileds('CofficientItem',qryCTopic2),ffNumber,0)  ;
end;

procedure TPortionTableF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryMaster.DisableControls;
    qryCtopic1.DisableControls;
    qryCTopic2.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := True;
    ppReport1.Print;
  finally

    qryMaster.EnableControls;
    qryCtopic1.EnableControls;
    qryCTopic2.EnableControls;
  end;
end;

procedure TPortionTableF.actRecalExecute(Sender: TObject);
begin
  inherited;
  With Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'INSERT INTO Acc.PortionTable';
    SQL.Add('(CofficientID, FormInfoID, CTopicCode, Cofficient, PortionCunt, YearID)');
    SQL.Add('SELECT	CofficientID + (SELECT max([CofficientID]) as CofficientID FROM [Acc].[PortionTable]');
    SQL.Add('where yearid= :yearid_1 ) AS CofficientID ,');
    SQL.Add('FormInfoID, CTopicCode, Cofficient,');
    SQL.Add('PortionCunt, :yearid AS yearid');
    SQL.Add('FROM	Acc.PortionTable');
    SQL.Add('WHERE	(YearID = :yearid_1_2 )');
    Parameters.ParamByName('yearid_1').Value := APPBank.Year - 1;
    Parameters.ParamByName('yearid').Value := APPBank.Year;
    Parameters.ParamByName('yearid_1_2').Value := APPBank.Year - 1;
    ExecSQL;
    SQL.Text := 'INSERT INTO Acc.PortionTableItems';
    SQL.Add('(CofficientID, CTopicCode2, CofficientItem)');
    SQL.Add('SELECT	PortionTableItems.CofficientID +');
    SQL.Add('(SELECT	MAX(CofficientID) AS CofficientID');
    SQL.Add('FROM	Acc.PortionTable AS PortionTableMax');
    SQL.Add('WHERE (YearID = :yearid_1 )) AS CofficientID,');
    SQL.Add('PortionTableItems.CTopicCode2, PortionTableItems.CofficientItem');
    SQL.Add('FROM	Acc.PortionTableItems AS PortionTableItems INNER JOIN');
    SQL.Add('Acc.PortionTable AS PortionTable ON PortionTableItems.CofficientID = PortionTable.CofficientID');
    SQL.Add('WHERE	(PortionTable.YearID = :yearid )');
    Parameters.ParamByName('yearid_1').Value := APPBank.Year - 1;
    Parameters.ParamByName('yearid').Value := APPBank.Year;
    ExecSQL;
    updateQry;
    BigMessage('«‰Ã«„ ‘œ',1);
  end;
end;

procedure TPortionTableF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPortionTableF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPortionTableF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPortionTableF.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if qryCtopic1.FieldByName('CofficientID').AsInteger <
    qryCtopic1.RecordCount then
  begin
    sendkey(vk_down, [], false);
    (Sender as TDBGrid).selectedindex := 1;;
  end
  else if qryCtopic1.FieldByName('CofficientID')
    .AsInteger = qryCtopic1.RecordCount then
  begin

    sendkey(vk_down, [], false);
    (Sender as TDBGrid).selectedindex := 1;
    (Sender as TDBGrid).datasource.DataSet.Cancel;
  end;
end;

procedure TPortionTableF.createToolButton;
var
  i: integer;
const
  NameButton = 'ToolButton';
begin
  i := 1;
  with Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID,InfoName_L1 FROM acc.FormsInfo WHERE (FormType = 14)';
    Active := true;
    while not eof do
    begin
      with TToolButton.Create(ToolBar1) do
      begin
        Parent := ToolBar1;
        Caption := FieldByName('InfoName_L1').AsString;
        Name := NameButton + IntToStr(i);
        Tag := FieldByName('InfoID').AsInteger;
        Inc(i);
        ToolBar1.ShowCaptions := true;
        Grouped := true;
        Style := tbsCheck;
      end; // with
      Next;
    end; // while
    // SET default
    if i <> 1 then
      TToolButton(ToolBar1.FindComponent('ToolButton' +
        IntToStr(var_glb_CurrentMonth))).down := true;
  end; // with

end;

procedure TPortionTableF.ToolBar1CustomDrawButton(Sender: TToolBar;
  Button: TToolButton; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  if (cdsSelected in State) then
  begin
    checkCofficient;
    counter := Button.Tag;
    updateQry;
  end;
end;

procedure TPortionTableF.updateQry;
begin
  with qryCtopic1 do
  begin
    Close;
    Parameters.ParamByName('formInfoID').Value :=
      qryMaster.FieldByName('formInfoID').AsInteger;
    Parameters.ParamByName('PortionCunt').Value := counter;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
  end;
  if qryCtopic1.RecordCount = 0 then
    with qryCTopic2 do
    begin
      Close;
      Parameters.ParamByName('CofficientID').Value :=
        qryCtopic1.FieldByName('CofficientID').AsInteger;
      Open;
      StatusBar2.Panels[0].Text := ' Ã„⁄ ÷—«Ì»:˛' +
        CurrToStrF(CalcSumFileds('CofficientItem', qryCTopic2), ffNumber, 0);
    end;
  StatusBar2.Panels[0].Text := ' Ã„⁄ ÷—«Ì»:˛' +
    CurrToStrF(CalcSumFileds('Cofficient', qryCtopic1), ffNumber, 0);
end;

procedure TPortionTableF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryMasterInfoID.AsString + '  ' + qryMasterInfoName_L1.AsString;
end;

procedure TPortionTableF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + TToolButton
    (ToolBar1.FindComponent('ToolButton' + IntToStr(counter))).Caption;
end;

function TPortionTableF.checkCofficient: Boolean;
var
  h: THandle;
begin
  Result := false;
  if not qryCtopic1.Active then
    exit;
  if (qryCtopic1.FieldByName('CTopicCode').AsString <> '') or
    (qryCtopic1.RecordCount <> 0) then
    with qryCtopic1 do
      try
        DisableControls;
        if not(qryCtopic1.State = dsedit) then
          qryCtopic1.Edit;
        // Post;
        // First;
        with Dmf.qry_Temp do
        begin
          Active := false;
          SQL.Text :=
            'SELECT acc.PortionTable.CTopicCode  FROM   acc.PortionTable  INNER JOIN '
            + ' acc.CenterTopics ON acc.PortionTable.CTopicCode = acc.CenterTopics.CTopicCode '
            + ' where  FormInfoID=' + qryMasterFormInfoID.AsString +
            ' and Cofficient = 0 and PortionCunt=' + IntToStr(counter);
          Active := true;
          if FieldByName('CTopicCode').AsString <> '' then
          begin
            warn('„ﬁœ«— ÷—Ì»  ›’Ì·Ì 1 ' + FieldByName('CTopicCode').AsString +
              ' „Ã«“ ‰„Ì »«‘œ ');
            qryCtopic1.Locate('CTopicCode', FieldByName('CTopicCode')
              .AsString, []);
            DBGrid2.SetFocus;
            h := Windows.GetFocus;
            SendMessage(h, EM_SETSEL, 3, 3);
            Result := true;
            Abort;
          end; // if
        end; // with
        // UpdateBatch()
      finally
        EnableControls;
      end; // try

end;

procedure TPortionTableF.qryMasterBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if checkCofficient then
    Abort;
end;

procedure TPortionTableF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TPortionTableF.qry_PortionAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CofficientID').AsInteger :=
    GetANewCode('','PortionTable', 'CofficientID',dmf.adcAccounting);
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qryMaster.FieldByName('formInfoID').AsInteger;
  // ataSet.FieldByName('Cofficient').AsInteger:=0;
  DataSet.FieldByName('PortionCunt').AsInteger := counter;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
end;

procedure TPortionTableF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Portion.Open;
    GetExcelF.ShowImPortExcel(qry_Portion);
  finally
    qryCtopic1.Requery;
    qry_Portion.Close;
  end;
end;

procedure TPortionTableF.qry_Portion2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CofficientID').AsInteger :=
    qryCtopic1.FieldByName('CofficientID').AsInteger;
  DataSet.FieldByName('CofficientItem').AsInteger := 0;
end;

procedure TPortionTableF.actGetExcel2Execute(Sender: TObject);
begin
  inherited;
  try
    qry_Portion2.Open;
    GetExcelF.ShowImPortExcel(qry_Portion2);
  finally
    qryCtopic1.Requery;
    qry_Portion2.Close;
  end;
end;

procedure TPortionTableF.actNoteExecute(Sender: TObject);
begin
  inherited;
  pnlNote.Height := 2001;
  sleep2(20);
  pnlNote.BringToFront;
  pnlNote.Visible := not pnlNote.Visible;
  if pnlNote.Visible then
    memComment.SetFocus;
end;

end.
