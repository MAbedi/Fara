unit Revalidate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, StrUtils,
  ADODB, Mask, DBCtrls, Grids, Vcl.DBGrids, template2MDI, ImgList,
  System.ImageList,
  System.Actions,  DBGridEhGrouping, ToolCtrlsEh, FaraConsts,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRevalidateF = class(Ttemplate2MDIF)
    qryRevalidate: TADOQuery;
    qryRevalidateRID: TIntegerField;
    qryRevalidateValidationNum: TStringField;
    qryRevalidateValidationDate: TStringField;
    qryRevalidateComment: TWideStringField;
    qryRevalidateState: TWordField;
    srcRevalidate: TDataSource;
    Panel5: TPanel;
    srcReValidateItems: TDataSource;
    qryReValidateItems: TADOQuery;
    qryReValidateItemsID: TAutoIncField;
    qryReValidateItemsRID: TIntegerField;
    qryReValidateItemsSerialNum: TIntegerField;
    qryReValidateItemsValidationValue: TBCDField;
    qryReValidateItemsOfficialValue: TBCDField;
    qryReValidateItemsMiderateInc: TBCDField;
    qryReValidateItemsMiderateDec: TBCDField;
    qryReValidateItemsNote: TWideStringField;
    qryReValidateItemsRemainedAge: TFloatField;
    qryReValidateItems_StuffDesc: TStringField;
    qryReValidateItems_Pelak: TStringField;
    Label6: TLabel;
    edtValidationValue: TDBEdit;
    Label7: TLabel;
    edtRemainedAge: TDBEdit;
    Bevel3: TBevel;
    Label8: TLabel;
    edtOfficialValue: TDBEdit;
    Label9: TLabel;
    edtMiderateInc: TDBEdit;
    Label10: TLabel;
    edtMiderateDec: TDBEdit;
    newPanel: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    actSort: TAction;
    BitBtn13: TBitBtn;
    actExcel: TAction;
    actPrint: TAction;
    BitBtn14: TBitBtn;
    actSort2: TAction;
    actSearch2: TAction;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    actExcel2: TAction;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    pnlUtil: TPanel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    pnlItems: TPanel;
    NewPanelItems: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    OkPanelItems: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    qryDepDec: TADOQuery;
    qryDepDecSerialNum: TIntegerField;
    qryDepDecPrice: TBCDField;
    qryDepDecFirstDepValue: TBCDField;
    qryDepDecDepvalueInYear: TBCDField;
    qryDepDecPurPrice: TBCDField;
    srcdepDec: TDataSource;
    GroupBox4: TGroupBox;
    qryReValidateItemsFirstDepValue: TBCDField;
    qryReValidateItemsDepvalueInYear: TBCDField;
    Label4: TLabel;
    edtFirstDepValue: TDBEdit;
    Label11: TLabel;
    edtDepvalueInYear: TDBEdit;
    BitBtn18: TBitBtn;
    actAmval: TAction;
    DBNavigator1: TDBNavigator;
    grdRevaliDate: TCedarDbgrid;
    qryReValidateItemsFirstUser: TStringField;
    qryReValidateItemsLastUser: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcRevalidateStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure srcReValidateItemsStateChange(Sender: TObject);
    procedure qryReValidateItemsAfterInsert(DataSet: TDataSet);
    procedure qryRevalidateAfterInsert(DataSet: TDataSet);
    procedure qryRevalidateAfterScroll(DataSet: TDataSet);
    procedure qryRevalidateAfterPost(DataSet: TDataSet);
    procedure qryRevalidateBeforeDelete(DataSet: TDataSet);
    procedure qryReValidateItemsOfficialValueChange(Sender: TField);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSort2Execute(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actExcel2Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure qryRevalidateBeforePost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryReValidateItemsBeforePost(DataSet: TDataSet);
    procedure qryReValidateItemsAfterScroll(DataSet: TDataSet);
    procedure qryRevalidateValidationDateChange(Sender: TField);
    procedure actAmvalExecute(Sender: TObject);
    procedure qryReValidateItemsAfterEdit(DataSet: TDataSet);
  private
    Function calOfficialValue: Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RevalidateF: TRevalidateF;

implementation

uses Dm, searchCode_ADO, mmessage, GlobalPro, search2, sort2,
  shamsiDate, Amval, FormFunctions;

{$R *.dfm}

procedure TRevalidateF.SpeedButton1Click(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'Ã” ÃÊÌ',
    'SELECT SerialNum, PelakNum, StuffDesc FROM  assets.Amval ',
    ['‘„«—Â ”—Ì«· ', '‘„«—Â Å·«ﬂ', '‰«„ ﬂ«·«'], Result, [60, 60, 100], alLeft)
  then
  begin
    if not(qryReValidateItems.State in dsEditModes) then
      qryReValidateItems.Edit;
    qryReValidateItems.FieldByName('SerialNum').AsString := Result[0];
  end;

end;

procedure TRevalidateF.srcRevalidateStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMF.adcBSell);
  okPanel.Visible := qryRevalidate.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  pnlItems.Visible := okPanel.Visible;
  pnlUtil.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
end;

procedure TRevalidateF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryRevalidate);
  SetLookUpCash(qryReValidateItems);
  qryRevalidate.Open;
  if qryRevalidate.IsEmpty then
    qryReValidateItems.Open;
end;

procedure TRevalidateF.srcReValidateItemsStateChange(Sender: TObject);
begin
  inherited;
  OkPanelItems.Visible := qryReValidateItems.State in dsEditModes;
  NewPanelItems.Visible := not OkPanelItems.Visible;
end;

procedure TRevalidateF.qryReValidateItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := GetUserStamp;

end;

procedure TRevalidateF.qryReValidateItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := GetUserStamp;
  DataSet.FieldByName('RID').AsInteger := qryRevalidate.FieldByName('RID')
    .AsInteger;
end;

procedure TRevalidateF.qryRevalidateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RID').AsInteger :=
    GetANewCode(Self.Name, 'assets.Revalidate', 'RID');
  DataSet.FieldByName('ValidationNum').AsInteger :=
    GetANewCode(Self.Name, 'assets.Revalidate', 'ValidationNum');

  DataSet.FieldByName('ValidationDate').AsString :=
    IfThen(var_glb_CurrentDate < APPBank.endYear, var_glb_CurrentDate,
    APPBank.endYear);

end;

procedure TRevalidateF.qryRevalidateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReValidateItems do
  begin
    Close;
    Parameters.ParamByName('ReID').Value := DataSet.FieldByName('RID')
      .AsInteger;
    Open;
  end;
end;

procedure TRevalidateF.qryRevalidateAfterPost(DataSet: TDataSet);
var
  RID: Int64;
begin
  inherited;
  try
    qryReValidateItems.UpdateBatch;
    DMF.AmvalCal(qryRevalidate.FieldByName('ValidationDate').AsString
      // opt.BaseDate
      , qryReValidateItems.FieldByName('SerialNum').AsInteger);
    RID := qryRevalidate.FieldByName('RID').AsInteger;
    qryRevalidate.Requery;
    qryRevalidate.Locate('Rid', RID, []);
    BigMessage('À»  ‘œ.˛', 1);
  except
    Warn('«‘ﬂ«· œ— À» ');
  end;

end;

procedure TRevalidateF.qryRevalidateBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–›  „ÿ∆„‰ Â” Ìœøû') <> mrYes then
    Abort;
end;

procedure TRevalidateF.qryReValidateItemsOfficialValueChange(Sender: TField);
begin
  inherited;
  if qryReValidateItems.FieldByName('ValidationValue').AsFloat >
    qryReValidateItems.FieldByName('OfficialValue').AsFloat then
  begin
    qryReValidateItems.FieldByName('MiderateInc').AsFloat :=
      qryReValidateItems.FieldByName('ValidationValue').AsFloat -
      qryReValidateItems.FieldByName('OfficialValue').AsFloat;
    qryReValidateItems.FieldByName('MiderateDec').AsFloat := 0;
  end
  else
  begin
    qryReValidateItems.FieldByName('MiderateInc').AsFloat := 0;
    qryReValidateItems.FieldByName('MiderateDec').AsFloat :=
      abs(qryReValidateItems.FieldByName('ValidationValue').AsFloat -
      qryReValidateItems.FieldByName('OfficialValue').AsFloat);
  end;

end;

procedure TRevalidateF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRevalidate);
end;

procedure TRevalidateF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRevalidate);
end;

procedure TRevalidateF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReValidateItems);
end;

procedure TRevalidateF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReValidateItems);
end;

procedure TRevalidateF.actExcel2Execute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRevalidateF.actExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryRevalidate);
end;

procedure TRevalidateF.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click;
end;

procedure TRevalidateF.qryRevalidateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qryReValidateItems.State in dsEditModes) then
    qryReValidateItems.Post;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not FormFunctions.CheckUsingDate(DataSet.FieldByName('ValidationDate').AsString,
    qryReValidateItems.FieldByName('serialNum').AsInteger) then
  begin
    DBEdit2.SetFocus;
    FlashAControl(DBEdit2);
    Abort;
  end;
end;

procedure TRevalidateF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  grdRevaliDate.Height := Height -
    (Panel6.Height + Panel2.Height + PnlUnderButton.Height)
end;

procedure TRevalidateF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRevalidateF.qryReValidateItemsBeforePost(DataSet: TDataSet);

begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TRevalidateF.qryReValidateItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDepDec do
  begin
    Close;
    Parameters.ParamByName('snFrom').Value := DataSet.FieldByName('SerialNum')
      .AsInteger;
    Parameters.ParamByName('snto').Value := DataSet.FieldByName('SerialNum')
      .AsInteger;
    Parameters.ParamByName('BaseDate').Value :=
      qryRevalidate.FieldByName('ValidationDate').AsString;
    Parameters.ParamByName('yearid').Value := APPBank.Year;

    Open;
  end;
end;

procedure TRevalidateF.qryRevalidateValidationDateChange(Sender: TField);

begin
  inherited;
  if not(qryReValidateItems.State in dsEditModes) then
    qryReValidateItems.Edit;
  qryReValidateItems.FieldByName('OfficialValue').AsCurrency :=
    calOfficialValue;
end;

procedure TRevalidateF.actAmvalExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TAmvalF, AmvalF, Self,
    qryReValidateItems.FieldByName('SerialNum').AsInteger)
end;

function TRevalidateF.calOfficialValue: Currency;
Var
  MDate: TDate;
begin
  qryReValidateItemsAfterScroll(qryReValidateItems);
  MDate := Shamsi2Miladi(qryRevalidate.FieldByName('ValidationDate')
    .AsString) - 1;
  DMF.AmvalCal(miladi2Shamsi(MDate), qryReValidateItems.FieldByName('SerialNum')
    .AsInteger);
  qryDepDec.Requery;
  Result := qryDepDec.FieldByName('PurPrice').AsCurrency

end;

end.
