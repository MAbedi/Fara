unit ReciptsRegulates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppBands, ppCtrls, ppReport, ppStrtch, ppSubRpt,
  ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppParameter, ppDesignLayer,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TReciptsRegulatesF = class(TTemplate4F)
    qryReciptsRegulates: TADOQuery;
    srcItems: TDataSource;
    Panel2: TPanel;
    Label20: TLabel;
    EdtStuffCode: TDBEdit;
    EdtStuffName: TDBEdit;
    LblUnit: TLabel;
    EdtUnit: TDBEdit;
    Label1: TLabel;
    Label13: TLabel;
    EdtTotalIOPrice: TDBEdit;
    dsReciptsRegulates: TDataSource;
    qryReciptsRegulatesServerID: TIntegerField;
    qryReciptsRegulatesYearID: TIntegerField;
    qryReciptsRegulatesRegRowId: TIntegerField;
    qryReciptsRegulatesReciptItemID: TIntegerField;
    qryReciptsRegulatesReciptID: TIntegerField;
    qryReciptsRegulatesRegDate: TStringField;
    qryReciptsRegulatesRegPrice: TBCDField;
    qryReciptsRegulatesRegDocNo: TIntegerField;
    qryReciptsRegulatesRegDocDate: TStringField;
    qryReciptsRegulatesRegMasterRowID: TIntegerField;
    qryReciptsRegulatesRegNote: TWideStringField;
    Panel3: TPanel;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppDBPipeline1ppField21: TppField;
    ppDBPipeline1ppField22: TppField;
    ppDBPipeline1ppField23: TppField;
    ppDBPipeline1ppField24: TppField;
    ppDBPipeline1ppField25: TppField;
    ppDBPipeline1ppField26: TppField;
    ppDBPipeline1ppField27: TppField;
    ppDBPipeline1ppField28: TppField;
    ppDBPipeline1ppField29: TppField;
    ppDBPipeline1ppField30: TppField;
    ppDBPipeline1ppField31: TppField;
    ppDBPipeline1ppField32: TppField;
    ppDBPipeline1ppField33: TppField;
    ppDBPipeline1ppField34: TppField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSysVarPageNo: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    BitBtn1: TBitBtn;
    qryReciptsRegulatesCustID: TIntegerField;
    qryCustomers: TADOQuery;
    qryReciptsRegulates_CustID: TStringField;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txt_CustID: TDBText;
    btnPersonID3: TSpeedButton;
    LblPerson3: TLabel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    dbedtRegDate: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    edtCustID: TDBEdit;
    txt__TopicCodeName: TDBText;
    btnacc_TopicCode: TSpeedButton;
    Label7: TLabel;
    edtacc_TopicCode: TDBEdit;
    txt__DetailCode: TDBText;
    btnacc_DetailCode: TSpeedButton;
    Label8: TLabel;
    edtacc_DetailCode: TDBEdit;
    qryReciptsRegulates__DetailCode: TStringField;
    qryReciptsRegulates__TopicCodeName: TStringField;
    qryReciptsRegulatesacc_TopicCode: TLargeintField;
    qryReciptsRegulatesacc_DetailCode: TStringField;
    BtnRecallSpecial: TBitBtn;
    qry_DeficitsArzAmount: TBCDField;
    qryReciptsRegulatesArzTypeID: TIntegerField;
    CmbArzTypeID: TDBComboBox;
    lblarz: TLabel;
    edtArzAmount: TDBEdit;
    lblArzAmount: TLabel;
    DBGrid1: TCedarDbgrid;
    qryReciptsRegulatesEffectAdjustments: TWordField;
    Label9: TLabel;
    BtnCustID2: TSpeedButton;
    edtCustID2: TDBEdit;
    Label10: TLabel;
    dbtxt_CustID2: TDBText;
    qryReciptsRegulatesCustID2: TIntegerField;
    qryReciptsRegulates_CustID2: TStringField;
    qryEffectAdjustments: TADOQuery;
    qryReciptsRegulates_EffectAdjustments: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure dsReciptsRegulatesStateChange(Sender: TObject);
    procedure qryReciptsRegulatesAfterInsert(DataSet: TDataSet);
    procedure qryReciptsRegulatesBeforeDelete(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure btnPersonID3Click(Sender: TObject);
    procedure btnacc_TopicCodeClick(Sender: TObject);
    procedure btnacc_DetailCodeClick(Sender: TObject);
    procedure edtCustIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtacc_TopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtacc_DetailCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRecallSpecialClick(Sender: TObject);
    procedure BtnCustID2Click(Sender: TObject);
    procedure edtCustID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure initQry(qryInit: TADOQuery);
    function getRegRowId: Integer;
    { Private declarations }
  public
    qryItems, qryRecipts: TADOQuery;
    procedure enter(qry_Items, qryInit, qry_Recipts: TADOQuery);
    { Public declarations }
  end;

var
  ReciptsRegulatesF: TReciptsRegulatesF;

implementation

uses DM, FormFunctions, GlobalPro, RecallAlterAssets;

{$R *.dfm}

procedure TReciptsRegulatesF.edtacc_DetailCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnacc_DetailCode.Click
end;

procedure TReciptsRegulatesF.edtacc_TopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnacc_TopicCode.Click
end;

procedure TReciptsRegulatesF.edtCustID2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BtnCustID2.Click
end;

procedure TReciptsRegulatesF.edtCustIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnPersonID3.Click
end;

procedure TReciptsRegulatesF.enter(qry_Items, qryInit, qry_Recipts: TADOQuery);
begin
  if not(((qryInit.FieldByName('EffectType').AsInteger in [2, 4])) or
    (qryInit.FieldByName('IncreasingInventory').AsInteger <> 1)) then
  begin
    Warn2('این فرم در نوع تاثیر افزاینده/کاهنده باز می شود.');
    Exit;
  end;
  ReciptsRegulatesF := TReciptsRegulatesF.Create(Application);
  with ReciptsRegulatesF do
  begin
    try
      if ((qryInit.FieldByName('EffectType').AsInteger = 4) and
        (qryInit.FieldByName('IncreasingInventory').AsInteger <> 1)) then
      begin
        qryReciptsRegulates.LockType := ltReadOnly;
        EdtTotalIOPrice.DataField := 'TotalOutputPrice';
        Warn(' فرم دراین نوع تاثیر فقط خواندنی می باشد.', mtInformation);
      end;
      qryItems := qry_Items;
      qryRecipts := qry_Recipts;
      srcItems.DataSet := qryItems;
      initQry(qryInit);
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TReciptsRegulatesF.initQry(qryInit: TADOQuery);
var
  b: Boolean;
begin
  b := qryInit.FieldByName('ArzActive').AsInteger > 0;
  lblArzAmount.Visible := b;
  edtArzAmount.Visible := b;
  setColumns2(DBGrid1, b, 'ArzAmount');
  CmbArzTypeID.Visible := b;
  lblarz.Visible := b;
  if b then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
      Active := True;
      while not Eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
      Active := False;
    end;



  With qryReciptsRegulates do
  begin
    Close;
    Parameters.ParamByName('ReciptID').Value := qryItems.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := qryItems.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ReciptItemID').Value :=
      qryItems.FieldByName('ReciptItemID').AsInteger;
    Open;
    // if not qryReciptsRegulates.Active then qryReciptsRegulates.Active:=True;
  end;

end;

procedure TReciptsRegulatesF.dsReciptsRegulatesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryReciptsRegulates.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);

end;

procedure TReciptsRegulatesF.qryReciptsRegulatesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With qryReciptsRegulates do
  begin
    FieldByName('ReciptID').AsInteger := qryItems.FieldByName('ReciptID')
      .AsInteger;
    FieldByName('ServerID').AsInteger := qryItems.FieldByName('ServerID')
      .AsInteger;
    FieldByName('YearID').AsInteger := qryItems.FieldByName('YearID').AsInteger;
    FieldByName('ReciptItemID').AsInteger :=
      qryItems.FieldByName('ReciptItemID').AsInteger;
    FieldByName('RegMasterRowID').AsInteger := 0;
    FieldByName('EffectAdjustments').AsInteger := 0;
    FieldByName('RegRowId').AsInteger := getRegRowId;
    FieldByName('RegDate').AsString := qryRecipts.FieldByName
      ('ReciptDate').AsString;

    FieldByName('ArzTypeID').AsInteger := qryRecipts.FieldByName('ArzTypeID')
      .AsInteger;
  end;
  dbedtRegDate.SetFocus;
end;

function TReciptsRegulatesF.getRegRowId: Integer;
var
  txt: String;
begin
  txt := 'SELECT MAX(RegRowId) FROM ReciptsRegulates ' + ' WHERE ( YearID = ' +
    qryItems.FieldByName('YearID').AsString + ') AND ' + ' ServerID = ' +
    qryItems.FieldByName('ServerID').AsString;
  Result := GetANewCode(Self.Name, txt, 'RegRowId');
end;

procedure TReciptsRegulatesF.btnPersonID3Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(qryReciptsRegulatesCustID, '0')
end;

procedure TReciptsRegulatesF.BtnRecallSpecialClick(Sender: TObject);
begin
  inherited;
  RecallAlterAssetsF.SelectRecall(qryItems, qryReciptsRegulates)
end;

procedure TReciptsRegulatesF.qryReciptsRegulatesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort
end;

procedure TReciptsRegulatesF.BtnCustID2Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(qryReciptsRegulatesCustID2, '3')
end;

procedure TReciptsRegulatesF.btnacc_TopicCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryReciptsRegulates)
end;

procedure TReciptsRegulatesF.btnacc_DetailCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryReciptsRegulates, 'acc_DetailCode',
    'acc_TopicCode', qryReciptsRegulates.FieldByName('acc_TopicCode')
    .AsLargeInt > 0)
end;

procedure TReciptsRegulatesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'ReciptsRegulates', True, False, 'فرم', False);
end;

procedure TReciptsRegulatesF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.Name
end;

procedure TReciptsRegulatesF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TReciptsRegulatesF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

end.
