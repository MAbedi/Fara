unit AidAssets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids,FaraConsts , System.Actions;

type
  TAidAssetsF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    srcAmval: TDataSource;
    qryAmval: TADOQuery;
    qryAmvalSerialNum: TIntegerField;
    qryAmvalStuffDesc: TStringField;
    qryAmvalPelakNum: TStringField;
    qryAmvalAssetsValue: TBCDField;
    qryAmvalDocNum: TIntegerField;
    qryAmvalDocDate: TStringField;
    qryAmvalAsstetsGrpCode: TIntegerField;
    qryAmvalGrpName: TStringField;
    qryAidAssets: TADOQuery;
    qryAidAssetsSerial: TIntegerField;
    qryAidAssetsGrpCode: TIntegerField;
    qryAidAssetsAidInfoID: TIntegerField;
    qryAidAssetsAidAssetsName: TStringField;
    srcAidAssets: TDataSource;
    qryAidInfo: TADOQuery;
    qryAidAssets_AidInfoName: TStringField;
    newPanel: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetDelete1: TDataSetDelete;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    actSearch: TAction;
    qryAidAssetsFirstUser: TStringField;
    qryAidAssetsLastUser: TStringField;
    procedure qryAmvalAfterScroll(DataSet: TDataSet);
    procedure qryAidAssetsAfterInsert(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure srcAidAssetsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryAidAssetsBeforeDelete(DataSet: TDataSet);
    procedure qryAidAssetsAfterPost(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qryAidAssetsAfterEdit(DataSet: TDataSet);
  private
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    Procedure enter(sn: Integer);
    { Public declarations }
  end;

var
  AidAssetsF: TAidAssetsF;

implementation

uses searchCode_ADO, Dm, GlobalPro, sort2, search2, mmessage, sndkey32;

{$R *.dfm}

procedure TAidAssetsF.gridkeyenter(Sender: TObject; var Key: Char);
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
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 2;
          2:
            nextIndex := -1
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      DBGrid2EditButtonClick(Sender);
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

procedure TAidAssetsF.qryAmvalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAidAssets do
  begin
    Close;
    Parameters.ParamByName('Sn').Value := DataSet.fieldbyname('SerialNum')
      .AsInteger;
    Open;
  end;
  with qryAidInfo do
  begin
    Close;
    Parameters.ParamByName('grp').Value := DataSet.fieldbyname('AsstetsGrpCode')
      .AsInteger;
    Open;
  end;

end;

procedure TAidAssetsF.qryAidAssetsAfterEdit(DataSet: TDataSet);
begin
  inherited;
DataSet.FieldByName('LastUser').AsString :=GetUserStamp;

end;

procedure TAidAssetsF.qryAidAssetsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('FirstUser').AsString := GetUserStamp;
  DataSet.fieldbyname('Serial').AsInteger := qryAmval.fieldbyname('SerialNum')
    .AsInteger;
  DataSet.fieldbyname('GrpCode').AsInteger :=
    qryAmval.fieldbyname('AsstetsGrpCode').AsInteger;

end;

procedure TAidAssetsF.DBGrid2EditButtonClick(Sender: TObject);
var
  SqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if (Sender as TDBGrid).SelectedIndex = 0 then
  begin
    SqlText :=
      Format('SELECT AidInfoID, AidInfoName FROM assets.AidInfo WHERE (GrpCode = %d)',
      [qryAmval.fieldbyname('AsstetsGrpCode').AsInteger]);
    if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'Ã” ÃÊ «ÿ·«⁄«  ﬂ„ﬂÌ', SqlText,
      ['ﬂœ', '⁄‰Ê«‰'], Results, [80, 150], alLeft) then
      qryAidAssets.fieldbyname('AidInfoID').AsString := Results[0]
  end;
end;

procedure TAidAssetsF.enter;
begin
  with TAidAssetsF.Create(Application) do
    try
      qryAmval.Locate('SerialNum', sn, []);
      DBGrid1.Visible := sn = 0;
      if not DBGrid1.Visible then
        qryAidAssets.Open;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TAidAssetsF.srcAidAssetsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryAidAssets.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  // BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell);
end;

procedure TAidAssetsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryAmval.Open;
end;

procedure TAidAssetsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 2);
end;

procedure TAidAssetsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TAidAssetsF.qryAidAssetsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TAidAssetsF.qryAidAssetsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TAidAssetsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAidAssets);
end;

procedure TAidAssetsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAidAssets);
end;

procedure TAidAssetsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

end.
