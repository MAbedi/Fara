// Mostafa
unit Deficits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ComCtrls, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppPrnabl,
  ppCtrls, ppBands, ppCache, Menus, StrUtils, sndkey32, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TDeficitsF = class(Ttemplate2MDIF)
    qryDeficits: TADOQuery;
    qryDeficitsDeficitID: TSmallintField;
    qryDeficitsDeficitName: TStringField;
    qryDeficitsDeficitType: TWordField;
    qryDeficitsCalculationType: TWordField;
    qryDeficitsDeficitCo: TFloatField;
    qryDeficitsExportType: TWordField;
    qryDeficitsacc_DetailCode: TStringField;
    qryDeficitsacc_CTopicCode: TStringField;
    srcDeficits: TDataSource;
    qryDeficits_DetailName: TStringField;
    qryDeficits_CTopicName2: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Panel4: TPanel;
    TabControl1: TTabControl;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    actPrint: TAction;
    CmbCalculationType: TDBComboBox;
    BitBtn1: TBitBtn;
    actSendToExcel: TAction;
    BitBtn2: TBitBtn;
    qryDeficits_MoeenName: TStringField;
    BitBtn6: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actSort: TAction;
    DBNavigator1: TDBNavigator;
    BitBtn9: TBitBtn;
    qryDeficitsacc_CTopicCode2: TStringField;
    qryDeficits_CTopicName: TStringField;
    qryDeficitsEditAfterPost: TWordField;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    qryDeficitsBeforeDeficitCalc: TWordField;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    edtacc_TopicCode: TDBEdit;
    edtacc_DetailCode: TDBEdit;
    Edtacc_CTopicCode: TDBEdit;
    edtacc_CTopicCode2: TDBEdit;
    TabSheet3: TTabSheet;
    SpeedButton5: TSpeedButton;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    qryDeficitsDeficitsTogetherRange: TStringField;
    Panel5: TPanel;
    DataSetDelete1: TDataSetDelete;
    BitBtn10: TBitBtn;
    DBGrid2: TDBGrid;
    qryDeficitsCorrelation: TADOQuery;
    dsDeficitsCorrelation: TDataSource;
    Label10: TLabel;
    edtObverseTopicCode: TDBEdit;
    SpeedButton6: TSpeedButton;
    DBText5: TDBText;
    qryDeficits_ObverseTopicCode: TStringField;
    ts3: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    grp1: TGroupBox;
    ts2: TTabSheet;
    ts0: TTabSheet;
    qryDeficitsCorrelationDeficitID: TSmallintField;
    qryDeficitsCorrelationKind: TIntegerField;
    qryDeficitsStartDate: TStringField;
    qryDeficitsEndDate: TStringField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    qryDeficitsacc_CTopicCode3: TStringField;
    qryDeficits__CTopicCodeName3: TStringField;
    DBText6: TDBText;
    SpeedButton10: TSpeedButton;
    edtacc_CTopicCode3: TDBEdit;
    Label48: TLabel;
    qryDeficitsacc_TopicCode: TLargeintField;
    qryDeficitsObverseTopicCode: TLargeintField;
    qryDeficitsGroupDeficitID: TIntegerField;
    GroupBox1: TGroupBox;
    edtGroupDeficitID: TDBEdit;
    Label13: TLabel;
    qryDeficitsCorrelationCodeFrom: TLargeintField;
    qryDeficitsCorrelationCodeTo: TLargeintField;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    edtPost2Field: TDBEdit;
    qryDeficitsPost2Field: TStringField;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    qryDeficitsTopicCodeBed: TLargeintField;
    qryDeficits_MoeenNameBed: TStringField;
    qryDeficitsDetailCodeBed: TStringField;
    qryDeficits_DetailNameBed: TStringField;
    qryDeficitsCTopicCodeBed: TStringField;
    qryDeficits_CTopicNameBed: TStringField;
    qryDeficitsCTopicCode2Bed: TStringField;
    qryDeficits_CTopicName2Bed: TStringField;
    qryDeficitsCTopicCode3Bed: TStringField;
    qryDeficits__CTopicCodeName3Bed: TStringField;
    qryDeficitsTopicCodeBes: TLargeintField;
    qryDeficits_MoeenNameBes: TStringField;
    qryDeficitsDetailCodeBes: TStringField;
    qryDeficits_DetailNameBes: TStringField;
    qryDeficitsCTopicCodeBes: TStringField;
    qryDeficits_CTopicNameBes: TStringField;
    qryDeficitsCTopicCode2Bes: TStringField;
    qryDeficits_CTopicName2Bes: TStringField;
    qryDeficitsCTopicCode3Bes: TStringField;
    qryDeficits__CTopicCodeName3Bes: TStringField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    txt_MoeenNameBed: TDBText;
    txt_DetailNameBed: TDBText;
    txt_CTopicNameBed: TDBText;
    Label18: TLabel;
    SpeedButton11: TSpeedButton;
    txt_CTopicName2Bed: TDBText;
    txt__CTopicCodeName3Bed: TDBText;
    SpeedButton12: TSpeedButton;
    Label19: TLabel;
    edtTopicCodeBed: TDBEdit;
    edtacc_DetailCodeBed: TDBEdit;
    Edtacc_CTopicCodeBed: TDBEdit;
    edtacc_CTopicCode2Bed: TDBEdit;
    edtCTopicCode3Bed: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    txt_MoeenNameBes: TDBText;
    txt_DetailNameBes: TDBText;
    txt_CTopicNameBes: TDBText;
    Label23: TLabel;
    SpeedButton16: TSpeedButton;
    txt_CTopicName2Bes: TDBText;
    txt__CTopicCodeName3Bes: TDBText;
    SpeedButton17: TSpeedButton;
    Label24: TLabel;
    edtTopicCodeBes: TDBEdit;
    edtacc_DetailCodeBes: TDBEdit;
    Edtacc_CTopicCodeBes: TDBEdit;
    edtacc_CTopicCode2Bes: TDBEdit;
    edtCTopicCode3Bes: TDBEdit;
    dbchkAccFixedCoding: TDBCheckBox;
    dbchkAccFixedCoding1: TDBCheckBox;
    qryDeficitsAccFixedCoding: TWordField;
    DBGrid1: TDBGrid;
    qryDeficitsTTMSActive: TWordField;
    dbchkTTMSActive: TDBCheckBox;
    Label25: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure srcDeficitsStateChange(Sender: TObject);
    procedure qryDeficitsAfterInsert(DataSet: TDataSet);
    procedure TabControl1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbCalculationTypeChange(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure qryDeficitsBeforeDelete(DataSet: TDataSet);
    procedure qryDeficitsCalculationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryDeficitsCalculationTypeSetText(Sender: TField;
      const Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure edtacc_TopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtacc_DetailCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edtacc_CTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure CmbCalculationTypeEnter(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure qryDeficitsAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edtacc_CTopicCode2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryDeficitsCorrelationAfterInsert(DataSet: TDataSet);
    procedure qryDeficitsAfterScroll(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure edtObverseTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryDeficitsCorrelationBeforeEdit(DataSet: TDataSet);
    procedure qryDeficitsCorrelationBeforePost(DataSet: TDataSet);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
  private
    FormType: Byte;
    Procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeficitsF: TDeficitsF;

implementation

uses DM, searchCode_ADO, GlobalPro, mmessage, search2, ChooseItem,
  FormFunctions;

{$R *.dfm}

procedure TDeficitsF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryDeficits, 'acc_CTopicCode3', '', False)
end;

procedure TDeficitsF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryDeficits, qryDeficitsCTopicCode2Bed.FieldName)
end;

procedure TDeficitsF.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryDeficits, 'CTopicCode3Bed',
    'CTopicCodeBed', False)
end;

procedure TDeficitsF.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryDeficits, qryDeficitsTopicCodeBes.FieldName)
end;

procedure TDeficitsF.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryDeficits, qryDeficitsDetailCodeBes.FieldName)
end;

procedure TDeficitsF.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryDeficits, qryDeficitsCTopicCodeBes.FieldName)
end;

procedure TDeficitsF.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryDeficits, 'CTopicCode2Bes')
end;

procedure TDeficitsF.SpeedButton17Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryDeficits, 'CTopicCode3Bes',
    'CTopicCodeBes', False)
end;

procedure TDeficitsF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryDeficits)
end;

procedure TDeficitsF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryDeficits)
end;

procedure TDeficitsF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryDeficits)
end;

procedure TDeficitsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TDeficitsF.srcDeficitsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDeficits.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);

end;

procedure TDeficitsF.qryDeficitsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit1.SetFocus;
  DBRadioGroup1.ItemIndex := 0;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;

  DataSet.FieldByName('TopicCodeBed').AsInteger := 0;
  DataSet.FieldByName('DetailCodeBed').AsInteger := 0;
  DataSet.FieldByName('CTopicCodeBed').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2Bed').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3Bed').AsInteger := 0;

  DataSet.FieldByName('TopicCodeBes').AsInteger := 0;
  DataSet.FieldByName('DetailCodeBes').AsInteger := 0;
  DataSet.FieldByName('CTopicCodeBes').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2Bes').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3Bes').AsInteger := 0;

  DataSet.FieldByName('AccFixedCoding').AsInteger := 0;

  DataSet.FieldByName('ObverseTopicCode').AsInteger := 0;
  DataSet.FieldByName('DeficitID').AsInteger :=
    GetANewCode(Self.Name, 'Deficits', 'DeficitID');
  DataSet.FieldByName('DeficitType').AsInteger := FormType;
end;

procedure TDeficitsF.TabControl1Change(Sender: TObject);
begin
  inherited;
  case TabControl1.TabIndex of
    0:
      Begin
        Label1.Caption := 'ﬂœ «÷«›«  ';
        Label2.Caption := '⁄‰Ê«‰ «÷«›« ';
        FormType := 1;
      end; // 0
    1:
      Begin
        Label1.Caption := 'ﬂœ ﬂ”Ê—« ';
        Label2.Caption := '⁄‰Ê«‰ ﬂ”Ê—« ';
        FormType := 2;
      end; // 1
  end; // case
  with qryDeficits do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
  end; // wihth
end;

procedure TDeficitsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  // SetColSize(DBGrid2,1,False);               «‘ﬂ«· œ«—œ
  // Panel1.Width:=(Panel4.Width*3) div 4;
end;

procedure TDeficitsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDeficitsF.cmbCalculationTypeChange(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TDeficitsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDeficitsF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qryDeficits.FieldByName('Deficittype').AsInteger = 2 then
    Text := '«÷«›« '
  else
    Text := 'ﬂ”Ê—« ';
end;

procedure TDeficitsF.ppLabel14GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DBRadioGroup1.Items.Strings[DBRadioGroup1.ItemIndex];
end;

procedure TDeficitsF.qryDeficitsBeforeDelete(DataSet: TDataSet);
var
  candel: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'Select count(ReciptDeficitID) from ReciptsDeficits where ReciptDeficitID = '
      + DataSet.FieldByName('DeficitID').AsString;
    Active := True;
    candel := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if candel then
  begin
    if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ”Ê—«  /«÷«›«  „ÿ„∆‰ Â” Ìœø') <> mrYes
    then
      Abort;
    BigMessage('Õ–› ‘œ.', 1);
  end
  else
  begin
    Warn('Õ–› «Ì‰ ﬂ”Ê—«  / «÷«›«  „Ã«“ ‰Ì” .');
    Abort;
  end; // else

end;

procedure TDeficitsF.qryDeficitsCalculationTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger]
end;

procedure TDeficitsF.qryDeficitsCalculationTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex
end;

procedure TDeficitsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TDeficitsF.edtacc_TopicCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TDeficitsF.edtacc_DetailCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TDeficitsF.Edtacc_CTopicCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TDeficitsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDeficitsF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := CmbCalculationType.Text;
end;

procedure TDeficitsF.CmbCalculationTypeEnter(Sender: TObject);
begin
  inherited;
  CmbCalculationType.DroppedDown := True;
end;

Procedure TDeficitsF.InitForm;
var
  DtlCode: String;
  CtpcCode: String;
begin
  DMf.adcAccounting.Connected := True;
  PageControl1.TabIndex := 0;
  DtlCode := DMf.ReadBankConfig('UsageDetailCode');
  CtpcCode := DMf.ReadBankConfig('UsageCTopicCode');
  if StrToInt(DtlCode) = 1 then
  begin
    Label6.Enabled := False;
    DBText2.Enabled := False;
    edtacc_DetailCode.Enabled := False;
    SpeedButton2.Enabled := False;
  end; // if
  if StrToInt(CtpcCode) = 1 then
  begin
    DBText3.Enabled := False;
    Edtacc_CTopicCode.Enabled := False;
    Label7.Enabled := False;
    SpeedButton3.Enabled := False;
  end; // if
  TabControl1Change(Self);
  qryDeficits.Active := True;

end;

procedure TDeficitsF.N1Click(Sender: TObject);
begin
  inherited;
  qryDeficits.Sort := 'DeficitID';
end;

procedure TDeficitsF.N2Click(Sender: TObject);
begin
  inherited;
  qryDeficits.Sort := 'DeficitName';
end;

procedure TDeficitsF.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);

end;

procedure TDeficitsF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if FormType = 1 then
    Text := '·Ì”  «÷«›«  ’Ê— Õ”«»Â«'
  else
    Text := '·Ì”  ﬂ”Ê—«  ’Ê— Õ”«»Â«';
end;

procedure TDeficitsF.qryDeficitsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryDeficitsCorrelation.State in dsEditModes then
    qryDeficitsCorrelation.Post;

  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TDeficitsF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TDeficitsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDeficits);
end;

procedure TDeficitsF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryDeficits)
end;

procedure TDeficitsF.edtacc_CTopicCode2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton4.Click
end;

procedure TDeficitsF.SpeedButton5Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryDeficits.FieldByName('DeficitsTogetherRange').AsString;
  if ChooseItemF.SelectChecks(s, 'DeficitID', 'DeficitName', ' Deficits',
    'where DeficitID <> ' + qryDeficitsDeficitID.AsString) then
  begin
    with qryDeficits do
    begin
      Edit;
      FieldByName('DeficitsTogetherRange').Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if
end;

procedure TDeficitsF.qryDeficitsCorrelationAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DeficitID').AsInteger :=
    qryDeficits.FieldByName('DeficitID').AsInteger;
  DataSet.FieldByName('kind').AsInteger := PageControl1.TabIndex - 1;
end;

procedure TDeficitsF.qryDeficitsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryDeficitsCorrelation do
  begin
    Active := False;
    Parameters.ParamByName('DeficitID').Value :=
      qryDeficits.FieldByName('DeficitID').AsInteger;
    Active := True;
  end;
end;

procedure TDeficitsF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryDeficits, 'ObverseTopicCode')
end;

procedure TDeficitsF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryDeficits, qryDeficitsTopicCodeBed.FieldName)
end;

procedure TDeficitsF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryDeficits, qryDeficitsDetailCodeBed.FieldName)
end;

procedure TDeficitsF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryDeficits, qryDeficitsCTopicCodeBed.FieldName)
end;

procedure TDeficitsF.edtObverseTopicCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton6.Click
end;

procedure TDeficitsF.PageControl1Change(Sender: TObject);
var
  TabSheet: TTabSheet;
begin
  inherited;
  if (qryDeficits.State in dsEditModes) then
    qryDeficits.Post;
  if (qryDeficitsCorrelation.State in dsEditModes) then
    qryDeficitsCorrelation.Post;
  With qryDeficitsCorrelation do
  begin
    Active := False;
    Parameters.ParamByName('kind').Value := PageControl1.TabIndex - 1;
    Active := True;
  end;
  TabSheet := TTabSheet
    (FindComponent('ts' + IntToStr(PageControl1.TabIndex - 1)));
  DBGrid2.Parent := TabSheet;
  Panel5.Parent := TabSheet;
end;

procedure TDeficitsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TDeficitsF.DBGrid2EditButtonClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
  // s,Code,Name,Table:  String;
begin
  inherited;
  case PageControl1.TabIndex - 1 of
    0:
      txt := 'SELECT GroupID,GroupName             FROM StuffGroups';
    1:
      txt := 'SELECT c_StuffCode,c_StuffName       FROM Stuffcoding';
    2:
      txt := 'SELECT CustomerGrpID,CustomerGrpName FROM CustomersGroup';
    3:
      txt := 'SELECT CustID,CustName               FROM Customers';
  end;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    TTabSheet(FindComponent('ts' + IntToStr(PageControl1.TabIndex - 1)))
    .Caption, txt, ['òœ', '⁄‰Ê«‰'], Results, [50, 150], alLeft);
  if b then
    if not(qryDeficitsCorrelation.State in dsEditModes) then
      qryDeficitsCorrelation.Edit;

  If DBGrid2.SelectedIndex = 0 then
    qryDeficitsCorrelation['CodeFrom'] := Results[0]
  else
    qryDeficitsCorrelation['CodeTo'] := Results[0];
end;

procedure TDeficitsF.qryDeficitsCorrelationBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryDeficits.State in dsEditModes) then
    qryDeficits.Edit
end;

procedure TDeficitsF.qryDeficitsCorrelationBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort
end;

procedure TDeficitsF.gridkeyenter;
var
  nextIndex: Integer;
  curIndex: Integer;
  grd: TDBGrid;
begin
  grd := (Sender as TDBGrid);
  curIndex := grd.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=grd.DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd.Columns[nextIndex].Visible) OR
          (grd.Columns[nextIndex].ReadOnly)) do
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
      if grd.DataSource.DataSet.State in dsEditModes then
        grd.DataSource.DataSet.Cancel;

    #32, #157:
      if grd.Columns[curIndex].ButtonStyle = cbsEllipsis then
      begin // in [1,17,19,23,24,25,26] then begin
        Key := #0;
        grd.OnEditButtonClick(Sender);
      end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < grd.Columns.Count) and
      (not(grd.Columns[nextIndex].Visible) OR
      (grd.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= grd.Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd.SelectedIndex := 1;
        end; // 0
      -2:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      grd.SelectedIndex := nextIndex;
    end; // case
end;

end.
