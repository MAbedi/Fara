unit SubCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, DB, Mask, ADODB, Menus, Grids, Vcl.DBGrids, template2MDI, ImgList,
  System.ImageList, System.Actions;

type
  TSubCardF = class(Ttemplate2MDIF)
    DataSetDelete1: TDataSetDelete;
    actSendToExcel: TAction;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    actAmvalSort: TAction;
    actAmvalExcel: TAction;
    actAmvalSearch: TAction;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    grpMasterSerial: TGroupBox;
    Label1: TLabel;
    edtSerialNum: TDBEdit;
    spdSerialNum: TSpeedButton;
    edtStuffDesc: TDBEdit;
    Label2: TLabel;
    edtPelakNum: TDBEdit;
    GroupBox1: TGroupBox;
    qrySubAmval: TADOQuery;
    qryMaster: TADOQuery;
    qryMasterStuffDesc: TStringField;
    qryMasterPelakNum: TStringField;
    srcMaster: TDataSource;
    srcSubAmval: TDataSource;
    qrySubAmvalSerialNum: TIntegerField;
    qrySubAmvalStuffDesc: TStringField;
    qrySubAmvalPelakNum: TStringField;
    qryMasterSerialNum: TIntegerField;
    DBGrid2: TDBGrid;
    pnl1: TPanel;
    buttonCtopic: TBitBtn;
    SpeedButton8: TSpeedButton;
    DBNavigator1: TDBNavigator;

    procedure qryAlterAssetsAfterPost(DataSet: TDataSet);
    procedure qryAlterAssetsBeforeDelete(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryAlterAssetsFormTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actAmvalSortExecute(Sender: TObject);
    procedure actAmvalExcelExecute(Sender: TObject);
    procedure actAmvalSearchExecute(Sender: TObject);
    procedure spdSerialNumClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure actSort_Execute(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure srcMasterStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    // procedure SpeedButton1Click(Sender: TObject);
    procedure buttonCtopicClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    // function ValidDate(InputDate: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SubCardF: TSubCardF;

implementation

uses Dm, searchCode_ADO, GlobalPro, mmessage, sort2, search2,
  ScanImage, FormFunctions, selected;

{$R *.dfm}

procedure TSubCardF.srcMasterStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(dmF.adcBSell);
end;

procedure TSubCardF.qryAlterAssetsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.‏', 1);
end;

procedure TSubCardF.qryAlterAssetsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TSubCardF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TSubCardF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSubCardF.N1Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'AlterAssets', 'ID', 5)
end;

procedure TSubCardF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSubCardF.N2Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TSubCardF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qrySubAmval do
  begin
    Active := False;
    Parameters.ParamByName(':MasterSerial').Value :=
      qryMasterSerialNum.AsInteger;
    Active := True;
  end;

end;

procedure TSubCardF.qryAlterAssetsFormTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 1 then
    Text := 'مربوط به تعديل تجديد ارزيابي مي باشد.'
  else
    Text := EmptyStr;
end;

procedure TSubCardF.actAmvalSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);
end;

procedure TSubCardF.actAmvalExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSubCardF.actAmvalSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TSubCardF.spdSerialNumClick(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي',
    'SELECT SerialNum, PelakNum, StuffDesc FROM Assets.Amval WHERE (MasterSerial = 0) OR (MasterSerial IS NULL)',
    ['شماره سريال ', 'شماره پلاك', 'نام كالا'], Result, [60, 60, 100],
    alLeft) then
  begin
    qryMaster.Locate('SerialNum', Result[0], []);
  end;

end;

procedure TSubCardF.SpeedButton8Click(Sender: TObject);
VAR
  intSerial: Integer;
begin
  inherited;
  intSerial := qryMasterSerialNum.AsInteger;
  dmF.adcBSell.Execute
    (Format('UPDATE Assets.Amval SET MasterSerial = 0 WHERE SerialNum = %d',
    [qrySubAmvalSerialNum.AsInteger]));
  qrySubAmval.Requery();
  qryMaster.Requery();
  qryMaster.Locate('SerialNum', intSerial, []);
end;

procedure TSubCardF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TSubCardF.FormCreate(Sender: TObject);
begin
  inherited;
  qryMaster.Active := True;
  with qrySubAmval do
  begin
    Active := False;
    Parameters.ParamByName(':MasterSerial').Value :=
      qryMasterSerialNum.AsInteger;
    Active := True;
  end;

end;

procedure TSubCardF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSubCardF.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdSerialNum.Click;
end;

procedure TSubCardF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, DBGrid1.Columns[0].Field);
end;

procedure TSubCardF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);

end;

procedure TSubCardF.buttonCtopicClick(Sender: TObject);
var
  strText, strResult: string;
begin
  inherited;
  strText :=
    'SELECT SerialNum, StuffDesc, PelakNum, Assets.Amval.AsstetsGrpCode, Assets.AssetsGroups.GrpName '
    + ' FROM Assets.Amval INNER JOIN Assets.AssetsGroups ON Assets.Amval.AsstetsGrpCode = Assets.AssetsGroups.AsstetsGrpCode '
    + 'WHERE (( MasterSerial = 0 ) OR ( MasterSerial IS NULL ))' +
    'AND (SerialNum NOT IN(SELECT MasterSerial FROM Assets.Amval GROUP BY MasterSerial))';
  strResult := selectedF.ShowSelect(dmF.adcBSell, 'لیست اموال', strText,
    ['شماره سریال', 'نام کالا', 'شماره پلاک', 'کدگروه دارائی', 'گروه دارائی'],
    alCustom, [60, 150, 60, 70, 100]);

  if strResult = EmptyStr then
    Exit;

  try
    dmF.adcBSell.Execute(Format('UPDATE Assets.Amval SET MasterSerial = %d' +
      ' WHERE ( SerialNum IN (%s) )', [qryMasterSerialNum.AsInteger,
      strResult]));
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn(E.Message);
    end;
  end;

  qrySubAmval.Requery();

end;

end.
