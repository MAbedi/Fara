unit AlterAmval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,  FaraConsts,
  DBCtrls, DB, Mask, ADODB, Menus, Grids, Vcl.DBGrids, template2MDI, ImgList,
  System.ImageList, System.Actions;

type
  TAlterAmvalF = class(Ttemplate2MDIF)
    qryAlterAssets: TADOQuery;
    qryAlterAssetsID: TIntegerField;
    qryAlterAssetsSerial: TIntegerField;
    qryAlterAssetsAlterDate: TStringField;
    qryAlterAssetsAlterPrice: TBCDField;
    qryAlterAssetsAlterDepValue: TBCDField;
    qryAlterAssetsAlterDepValueInYear: TBCDField;
    qryAlterAssetsAlterNote: TMemoField;
    qryAlterAssetsFormType: TWordField;
    qryAlterAssetsPrvID: TIntegerField;
    srcAlterAssets: TDataSource;
    okPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
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
    qryAlterAssetsInfoKind: TWordField;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    qryAlterAssets_StuffDec: TStringField;
    qryAlterAssets_Pelak: TStringField;
    qryAlterAssets_DecDate: TStringField;
    qryAlterAssets_FirstDepValue: TCurrencyField;
    qryAlterAssets_AssetsValue: TCurrencyField;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBEdit7: TDBEdit;
    spdSerialNum: TSpeedButton;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    Bevel2: TBevel;
    qryAmval: TADOQuery;
    qryAlterAssetsFirstUser: TStringField;
    qryAlterAssetsLastUser: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure srcAlterAssetsStateChange(Sender: TObject);
    procedure qryAlterAssetsAfterInsert(DataSet: TDataSet);
    procedure qryAlterAssetsAfterPost(DataSet: TDataSet);
    procedure qryAlterAssetsBeforeDelete(DataSet: TDataSet);
    procedure qryAlterAssetsBeforePost(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryExpensesAfterScroll(DataSet: TDataSet);
    procedure qryAlterAssetsFormTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actAmvalSortExecute(Sender: TObject);
    procedure actAmvalExcelExecute(Sender: TObject);
    procedure actAmvalSearchExecute(Sender: TObject);
    procedure qryAlterAssetsAlterDateChange(Sender: TField);
    procedure qryAlterAssetsSerialChange(Sender: TField);
    procedure spdSerialNumClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure actSort_Execute(Sender: TObject);
    procedure qryAlterAssetsAfterEdit(DataSet: TDataSet);
  private
    function ValidDate(InputDate: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterAmvalF: TAlterAmvalF;

implementation

uses Dm, searchCode_ADO, GlobalPro, mmessage, sort2, search2,
  ScanImage, FormFunctions;

{$R *.dfm}

procedure TAlterAmvalF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryAlterAssets);
  // qryAlterAssets.Parameters.ParamByName('YearID').Value:=APPBank.Year;
  qryAlterAssets.Open;
end;

procedure TAlterAmvalF.srcAlterAssetsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryAlterAssets.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell);
end;

procedure TAlterAmvalF.qryAlterAssetsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := GetUserStamp;

end;

procedure TAlterAmvalF.qryAlterAssetsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := GetUserStamp;
  DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.name, 'Assets.AlterAssets', 'ID');
  DataSet.FieldByName('InfoKind').AsInteger := 0;
  DataSet.FieldByName('PrvID').AsInteger := 0;

  DBEdit7.SetFocus;
end;

procedure TAlterAmvalF.qryAlterAssetsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
  dmF.AmvalCal(opt.BaseDate, qryAlterAssetsSerial.AsInteger);
end;

procedure TAlterAmvalF.qryAlterAssetsBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TAlterAmvalF.qryAlterAssetsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not ValidDate(DataSet.FieldByName('AlterDate').AsString) then
  begin
    Warn(' «—ÌŒ „⁄ »— ‰„Ì »«‘œ.˛');
    FlashAControl(DBEdit1);
    DBEdit1.SetFocus;
    Abort;
  end;

end;

procedure TAlterAmvalF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAlterAssets);
end;

procedure TAlterAmvalF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAlterAmvalF.N1Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'AlterAssets', 'ID', 5)
end;

procedure TAlterAmvalF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAlterAmvalF.N2Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TAlterAmvalF.qryExpensesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAlterAssets do
  begin
    Close;
    Parameters.ParamByName('PrvID').Value := DataSet.FieldByName('ExpID')
      .AsInteger;
    Open;
  end;

end;

procedure TAlterAmvalF.qryAlterAssetsFormTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 1 then
    Text := '„—»Êÿ »Â  ⁄œÌ·  ÃœÌœ «—“Ì«»Ì „Ì »«‘œ.'
  else
    Text := EmptyStr;
end;

procedure TAlterAmvalF.actAmvalSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAlterAssets);
end;

procedure TAlterAmvalF.actAmvalExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAlterAmvalF.actAmvalSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAlterAssets);
end;

function TAlterAmvalF.ValidDate(InputDate: String): Boolean;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmF.adcBSell;
      SQL.Text := 'SELECT  MAX(AlterDate) FROM Assets.AlterAssets';
      SQL.Add('where (InfoKind = 0) And (Serial = :SN)');
      if qryAlterAssets.State in [dsedit] then
      begin
        SQL.Add('AND (ID <> :IDNO)');
        Parameters.ParamByName('IDNO').Value :=
          qryAlterAssets.FieldByName('ID').AsString;
      end;
      Parameters.ParamByName('SN').Value := qryAlterAssets.FieldByName
        ('Serial').AsString;
      Open;
      Open;
      Result := (Fields[0].AsString < InputDate);
    finally
      Free;
    end;
end;

procedure TAlterAmvalF.qryAlterAssetsAlterDateChange(Sender: TField);
begin
  inherited;
  if not ValidDate(Sender.AsString) then
  begin
    Warn(' «—ÌŒ ‰«„⁄ »— «” .˛˛');
    FlashAControl(DBEdit1);
    DBEdit1.SelectAll;
    DBEdit1.SetFocus;
  end;

end;

procedure TAlterAmvalF.qryAlterAssetsSerialChange(Sender: TField);
begin
  inherited;
  if not qryAlterAssets.FieldByName('_DecDate').IsNull then
  begin
    Warn('«Ì‰ œ«—«ÌÌ ›—ÊŒ Â Ì« »—ﬂ‰«— ‘œÂ «” . „Ã«“ »Â À»  «ÿ·«⁄«  ‰„Ì »«‘Ìœ.˛');
    qryAlterAssets.Cancel;
    Exit;

  end;
end;

procedure TAlterAmvalF.spdSerialNumClick(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'Ã” ÃÊÌ',
    'SELECT SerialNum, PelakNum, StuffDesc FROM  Assets.Amval ',
    ['‘„«—Â ”—Ì«· ', '‘„«—Â Å·«ﬂ', '‰«„ ﬂ«·«'], Result, [60, 60, 100], alLeft)
  then
  begin
    if not(qryAlterAssets.State in dsEditModes) then
      qryAlterAssets.Edit;
    qryAlterAssets.FieldByName('Serial').AsString := Result[0];
  end;

end;

procedure TAlterAmvalF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TAlterAmvalF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAlterAmvalF.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdSerialNum.Click;
end;

procedure TAlterAmvalF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAlterAssets);

end;

end.
