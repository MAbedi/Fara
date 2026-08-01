unit Movement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, FaraConsts,
  ADODB, Mask, DBCtrls, Menus, template2MDI, Grids, Vcl.DBGrids, ImgList, ppDB,
  ppDBPipe, ppParameter, ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TMovementF = class(Ttemplate2MDIF)
    qryMovement: TADOQuery;
    qryMovementSerialNum: TIntegerField;
    qryMovementFormNum: TIntegerField;
    qryMovementMoveDate: TStringField;
    qryMovementOldPlaceCode: TIntegerField;
    qryMovementOldExpCode: TIntegerField;
    qryMovementOldUserCode: TIntegerField;
    qryMovementNewPlaceCode: TIntegerField;
    qryMovementNewUserCode: TIntegerField;
    qryMovementExpAccCode: TIntegerField;
    qryMovementMoveState: TWordField;
    qryMovementMoveComments: TMemoField;
    qryMovementCostValue: TBCDField;
    qryMovementFirstDepValue: TBCDField;
    qryMovementDepvalueInYear: TBCDField;
    qryMovementFinalDepValue: TBCDField;
    srcMovement: TDataSource;
    qryAccTopics: TADOQuery;
    qryAccCtopics: TADOQuery;
    qryPlace: TADOQuery;
    qryUser: TADOQuery;
    qryMovement_OldAccName: TStringField;
    qryMovement_OldPlaceName: TStringField;
    qryMovement_OldExpName: TStringField;
    qryMovement_OldUserName: TStringField;
    qryMovement_NewAccName: TStringField;
    qryMovement_NewPlaceName: TStringField;
    qryMovement_NewExpName: TStringField;
    qryMovement_NewUserName: TStringField;
    qryMovement_DescStuff: TStringField;
    qryMovement_PlaceCode: TStringField;
    qryMovement_AccCode: TStringField;
    qryMovement_ExpCode: TStringField;
    qryMovement_UserCode: TStringField;
    qryMovementMoveID: TIntegerField;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    spdNewAccCode: TSpeedButton;
    spdNewPlaceCode: TSpeedButton;
    spdExpAccCode: TSpeedButton;
    spdNewUserCode: TSpeedButton;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    spdSerialNum: TSpeedButton;
    DBEdit2: TDBEdit;
    edt_Pelak: TDBEdit;
    Label2: TLabel;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    newPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actOther: TAction;
    BitBtn9: TBitBtn;
    actPrint: TAction;
    DBNavigator2: TDBNavigator;
    qryMovement_Pelak: TStringField;
    Label15: TLabel;
    DBEdit23: TDBEdit;
    Label16: TLabel;
    DBEdit24: TDBEdit;
    qryMovementOldAccCode: TLargeintField;
    qryMovementNewAccCode: TLargeintField;
    Excel1: TMenuItem;
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppParameterList1: TppParameterList;
    ppMovement: TppDBPipeline;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit21: TDBEdit;
    MoveTypeGroup: TRadioGroup;
    qryMovementMoveType: TWordField;
    qryDepTable: TADOQuery;
    srcDepTable: TDataSource;
    qryDepTableID: TAutoIncField;
    qryDepTableSerial: TIntegerField;
    qryDepTableYearid: TIntegerField;
    qryDepTableTablename: TWideStringField;
    qryDepTableId4table: TIntegerField;
    qryDepTableFirstDepValue: TBCDField;
    qryDepTableDepvalueInyear: TBCDField;
    ppTitleBand1: TppTitleBand;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    qryMovementFirstUser: TStringField;
    qryMovementLastUser: TStringField;
    procedure srcMovementStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spdSerialNumClick(Sender: TObject);
    procedure qryMovementSerialNumChange(Sender: TField);
    procedure spdNewAccCodeClick(Sender: TObject);
    procedure spdNewPlaceCodeClick(Sender: TObject);
    procedure spdExpAccCodeClick(Sender: TObject);
    procedure spdNewUserCodeClick(Sender: TObject);
    procedure qryMovementAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure qryMovementBeforeEdit(DataSet: TDataSet);
    procedure qryMovementAfterPost(DataSet: TDataSet);
    procedure qryMovementBeforeDelete(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryMovementBeforePost(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qryMovementBeforeInsert(DataSet: TDataSet);
    procedure qryMovementAfterDelete(DataSet: TDataSet);
    procedure qryMovementAfterScroll(DataSet: TDataSet);
    procedure qryMovementAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    Id4table: Integer;
    function CanChange(MoveID: Integer): Boolean;
    procedure MoveStuff;
    procedure amvalupdate;
    function ValidDate(InputDate: String; Sn: Integer): Boolean;
    procedure ppDesigner1CustomSaveDoc(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);

  public
    { Public declarations }
  end;

var
  MovementF: TMovementF;

implementation

uses Dm, searchCode_ADO, GlobalPro, sort2, search2, mmessage, Amval,
  ScanImage, FormFunctions;

{$R *.dfm}

procedure TMovementF.srcMovementStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(dmF.adcBSell);
  okPanel.Visible := qryMovement.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;

end;

procedure TMovementF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryMovement);
  qryMovement.Open;
end;

procedure TMovementF.spdSerialNumClick(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي',
    'SELECT SerialNum, PelakNum, StuffDesc FROM  assets.Amval WHERE SerialNum NOT IN (SELECT SerialNum FROM assets.Decrease)',
    ['شماره سريال ', 'شماره پلاك', 'نام كالا'], Result, [60, 60, 100], alLeft)
  then
  begin
    if not(qryMovement.State in dsEditModes) then
      qryMovement.Edit;
    qryMovement.FieldByName('SerialNum').AsString := Result[0];
  end;

end;

procedure TMovementF.qryMovementSerialNumChange(Sender: TField);
begin
  inherited;
  qryMovement.FieldByName('OldAccCode').AsInteger :=
    qryMovement.FieldByName('_AccCode').AsInteger;
  qryMovement.FieldByName('OldPlaceCode').AsInteger :=
    qryMovement.FieldByName('_PlaceCode').AsInteger;
  qryMovement.FieldByName('OldExpCode').AsInteger :=
    qryMovement.FieldByName('_ExpCode').AsInteger;
  qryMovement.FieldByName('OldUserCode').AsInteger :=
    qryMovement.FieldByName('_UserCode').AsInteger;

end;

procedure TMovementF.spdNewAccCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي',
    'SELECT AccTopicCode, AccDesc FROM assets.AccTopics', ['كد', 'شرح حساب'],
    Result, [60, 100], alLeft) then
  begin
    if not(qryMovement.State in dsEditModes) then
      qryMovement.Edit;
    qryMovement.FieldByName('NewAccCode').AsString := Result[0]
  end;
end;

procedure TMovementF.spdNewPlaceCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي محل استقرار',
    'SELECT  PlaceCode, PlaceName FROM  assets.Places', ['كد ', 'نام'], Result,
    [50, 100], alLeft) then
  begin
    if not(qryMovement.State in dsEditModes) then
      qryMovement.Edit;
    qryMovement.FieldByName('NewPlaceCode').AsString := Result[0];
  end; // if

end;

procedure TMovementF.spdExpAccCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي مراكز هزينه',
    'SELECT ExpCode, ExpDesc FROM  assets.AccCtopics ', ['كد ', 'نام'], Result,
    [50, 100], alLeft) then
  begin
    if not(qryMovement.State in dsEditModes) then
      qryMovement.Edit;
    qryMovement.FieldByName('ExpAccCode').AsString := Result[0];
  end; // if
end;

procedure TMovementF.spdNewUserCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'استفاده‌كنندگان كالا',
    'SELECT UserID, UserName FROM assets.Users ', ['كد ', 'نام'], Result,
    [50, 100], alLeft) then
  begin
    if not(qryMovement.State in dsEditModes) then
      qryMovement.Edit;
    qryMovement.FieldByName('NewUserCode').AsString := Result[0];
  end; // if
end;

procedure TMovementF.qryMovementAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmF.qryAmval.Requery;
  with dmF.qry_TempAss do
  begin
    Close;
    SQL.Text := format('Delete FROM Assets.DepTable WHERE ' +
      '(Id4table = %d) AND (Yearid = %d) AND (Tablename = ''Movement'')',
      [Id4table, appbank.Year]);
    ExecSQL;
    Close;
  end;
end;

procedure TMovementF.qryMovementAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := GetUserStamp;

end;

procedure TMovementF.qryMovementAfterInsert(DataSet: TDataSet);
var
  MoveID, FormNum: Integer;
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := GetUserStamp;
  MoveID := GetANewCode(Self.Name,
    format('SELECT MAX(MoveID) FROM Assets.Movement ' +
    'WHERE(MoveID BETWEEN %d AND %d)', [opt.StartLimitIDAss, opt.EndLimitIDAss]
    ), 'MoveID');
  if MoveID < opt.StartLimitIDAss then
    DataSet.FieldByName('MoveID').AsInteger := opt.StartLimitIDAss
  else
    DataSet.FieldByName('MoveID').AsInteger := MoveID;

  // DataSet.FieldByName('MoveID').AsInteger := GetANewCode('assets.Movement',
  // 'MoveID');

  FormNum := GetANewCode(Self.Name,
    format('SELECT MAX(FormNum) FROM Assets.Movement ' +
    'WHERE(FormNum BETWEEN %d AND %d)', [opt.StartLimitIDAss, opt.EndLimitIDAss]
    ), 'FormNum');
  if FormNum < opt.StartLimitIDAss then
    DataSet.FieldByName('FormNum').AsInteger := opt.StartLimitIDAss
  else
    DataSet.FieldByName('FormNum').AsInteger := FormNum;

  // DataSet.FieldByName('FormNum').AsInteger := GetANewCode('assets.Movement',
  // 'FormNum');

  DataSet.FieldByName('MoveDate').AsString := var_glb_CurrentDate;
  DBEdit23.SetFocus;
end;

procedure TMovementF.DBEdit1KeyPress(Sender: TObject; var Key: Char);
var
  aControl: TComponent;
begin
  inherited;
  if Key = #32 then
  begin
    aControl := FindComponent('spd' + (Sender as TDBEdit).DataField);
    If Assigned(aControl) then
      TSpeedButton(aControl).Click
    else
      Warn('پيدا نشد');
  end;
end;

procedure TMovementF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Movement.rtm');
end;

procedure TMovementF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMovement);
end;

function TMovementF.CanChange(MoveID: Integer): Boolean;
begin
  with dmF.qry_TempAss do
  begin
    Close;
    SQL.Text := 'SELECT MoveState FROM assets.Movement WHERE MoveID=:Id';
    Parameters.ParamByName('id').Value := MoveID;
    Open;
    Result := Fields[0].AsInteger > 0;
    Close;
  end; // with
end;

procedure TMovementF.qryMovementBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if CanChange(DataSet.FieldByName('MoveID').AsInteger) then
  begin
    Warn('مجاز به ويرايش نيستيد');
    Abort;
  end; // if
end;

procedure TMovementF.qryMovementBeforeInsert(DataSet: TDataSet);

begin
  inherited;
  dmF.qryAmval.Requery;

end;

procedure TMovementF.MoveStuff;
begin
  with dmF.qry_TempAss do
  begin
    Close;
    SQL.Text :=
      'Update assets.Amval Set PlaceCode=:pc,ExpCode=:ec,AccTopicCode=:Acc,UserCode=:Uc where SerialNum = :sn';
    Parameters.ParamByName('pc').Value :=
      qryMovement.FieldByName('NewPlaceCode').AsInteger;
    Parameters.ParamByName('ec').Value := qryMovement.FieldByName('ExpAccCode')
      .AsInteger;
    Parameters.ParamByName('Acc').Value := qryMovement.FieldByName('NewAccCode')
      .AsInteger;
    Parameters.ParamByName('Uc').Value := qryMovement.FieldByName('NewUserCode')
      .AsInteger;
    Parameters.ParamByName('sn').Value := qryMovement.FieldByName('SerialNum')
      .AsInteger;
    ExecSQL;
    Close;
  end; // with
end;

procedure TMovementF.qryMovementAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    MoveStuff;
    DBEdit1.SetFocus;
    dmF.AmvalCal(opt.BaseDate, DataSet.FieldByName('SerialNum').AsInteger);
    BigMessage('ثبت شد.', 1);
  except
    Warn('اشكال در ثبت');
  end;
end;

procedure TMovementF.qryMovementAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MoveTypeGroup.ItemIndex := qryMovementMoveType.AsInteger;
  with qryDepTable, Parameters do
  begin
    Close;
    ParamByName('ID').Value := qryMovementMoveID.AsInteger;
    ParamByName('YearID').Value := appbank.Year;
    Open;
  end;
end;

procedure TMovementF.qryMovementBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if CanChange(DataSet.FieldByName('MoveID').AsInteger) then
  begin
    Warn('مجاز به حذف نيستيد');
    Abort;
  end; // if

  if get_response('آيا براي حذف  مطئمن هستيد؟‍') <> mrYes then
    Abort;
  // amvalupdate; {نیاز به کنترل دارد}
  Id4table := qryMovementMoveID.AsInteger;
end;

procedure TMovementF.N2Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TAmvalF, AmvalF, Self, qryMovement.FieldByName('SerialNum')
    .AsInteger)
end;

procedure TMovementF.N1Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'Movement',
    qryMovement.FieldByName('MoveID').AsString, 4)
end;

procedure TMovementF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TMovementF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMovement);
end;

procedure TMovementF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TMovementF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TMovementF.qryMovementBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckLimitID(DataSet.FieldByName('MoveID')) then
    Abort;
  if not CheckLimitID(DataSet.FieldByName('FormNum')) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if (DataSet.FieldByName('MoveDate').AsString < appbank.StartYear) or
    (DataSet.FieldByName('MoveDate').AsString > appbank.endYear) then
  begin
    Warn('تاریخ فرم باید در محدوده سال مالی باشد');
    DBEdit24.SetFocus;
    FlashAControl(DBEdit24);
    Abort;
  end;

  if not ValidDate(DataSet.FieldByName('MoveDate').AsString,
    DataSet.FieldByName('serialNum').AsInteger) then
  begin
    DBEdit24.SetFocus;
    FlashAControl(DBEdit24);
    Abort;
  end;
  qryMovementMoveType.AsInteger := MoveTypeGroup.ItemIndex;
end;

function TMovementF.ValidDate(InputDate: String; Sn: Integer): Boolean;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmF.adcBSell;
      SQL.Text := 'SELECT  MAX(MoveDate) FROM assets.Movement';
      SQL.Add('where (SerialNum = :SN)');
      if qryMovement.State in [dsedit] then
      begin
        SQL.Add('AND (MoveID <> :IDNO)');
        Parameters.ParamByName('IDNO').Value :=
          qryMovement.FieldByName('MoveID').AsString;
      end;
      Parameters.ParamByName('SN').Value := Sn;
      Open;
      Result := (Fields[0].AsString < InputDate);
      if not Result then
        Warn('تاريخ نامعتبر است.‏‏')
      else
        Result := CheckUsingDate(InputDate, Sn);
    finally
      Free;
    end;
end;

procedure TMovementF.Excel1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMovementF.amvalupdate; // Modified by Mehdi 4/6/2015 9:52:18 AM
begin
  with dmF.qry_TempAss do
  begin
    Close;
    SQL.Text :=
      'Update assets.Amval Set PlaceCode=:pc,ExpCode=:ec,AccTopicCode=:Acc,UserCode=:Uc where SerialNum = :sn';
    Parameters.ParamByName('pc').Value :=
      qryMovement.FieldByName('OldPlaceCode').AsInteger;
    Parameters.ParamByName('ec').Value := qryMovement.FieldByName('OldExpCode')
      .AsInteger;
    Parameters.ParamByName('Acc').Value := qryMovement.FieldByName('OldAccCode')
      .AsInteger;
    Parameters.ParamByName('Uc').Value := qryMovement.FieldByName('OldUserCode')
      .AsInteger;
    Parameters.ParamByName('sn').Value := qryMovement.FieldByName('SerialNum')
      .AsInteger;
    ExecSQL;
    Close;
  end; // with

end; // Modified by Mehdi 4/6/2015 9:53:07 AM

procedure TMovementF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TMovementF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TMovementF.ppDesigner1CustomSaveDoc(Sender: TObject);
begin

end;

procedure TMovementF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TMovementF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := appbank.CompanyName;
end;

end.
