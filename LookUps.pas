unit LookUps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, StrUtils, math, System.ImageList,
  System.Actions;

type
  TLookUpsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryLookUps: TADOQuery;
    qryLookUpsLookUpID: TIntegerField;
    qryLookUpsCode: TIntegerField;
    qryLookUpsName: TStringField;
    qryLookUpsKind: TIntegerField;
    qryLookUpsacc_CTopicCode2: TStringField;
    qryLookUpsacc_CTopicCode: TStringField;
    qryLookUpsacc_DetailCode: TStringField;
    qryLookUpsStartCode: TIntegerField;
    qryLookUpsFinishCode: TIntegerField;
    srcLookUps: TDataSource;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    qryInit: TADOQuery;
    BitBtn7: TBitBtn;
    actPrintVijeh: TAction;
    qryLookUpsChangeState: TIntegerField;
    qryLookUpsacc_TopicCode: TLargeintField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure srcLookUpsStateChange(Sender: TObject);
    procedure qryLookUpsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryLookUpsBeforePost(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryLookUpsBeforeDelete(DataSet: TDataSet);
    procedure qryLookUpsAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure qryLookUpsAfterEdit(DataSet: TDataSet);
  private
    Form_Type: Integer;
    Procedure initForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookUpsF: TLookUpsF;

implementation

uses DM, GlobalPro, sort2, search2, mmessage, sndkey32,
  DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TLookUpsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
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
            nextIndex :=
              IfThen((aDataSet.FieldByName('Code').AsString = ''), 0, 1);
          1:
            nextIndex :=
              IfThen((aDataSet.FieldByName('Name').AsString = ''), 1, -1);
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
      // #32,#157:  if curIndex in [1..4] then begin
      // key:=#0;
      /// /      DBGrid1EditButtonClick(sender);
      // end;//if
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

procedure TLookUpsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TLookUpsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TLookUpsF.srcLookUpsStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  okPanel.Visible := qryLookUps.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;

end;

procedure TLookUpsF.qryLookUpsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SetFocus;
  DataSet.FieldByName('Code').AsInteger :=
    GetANewCode(Self.Name, 'SELECT MAX(Code)FROM LookUps WHERE Kind = ' +
    IntToStr(Form_Type), 'Code');
  DataSet.FieldByName('Kind').AsInteger := Form_Type;
end;

procedure TLookUpsF.FormCreate(Sender: TObject);
begin
  inherited;
  Form_Type := var_glb_gParam;
  initForm
end;

procedure TLookUpsF.qryLookUpsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LookUpID').AsInteger := GetANewCode(Self.Name, 'LookUps',
    'LookUpID');
  // DataSet.FieldByName('LookUpID').AsInteger :=  DataSet.FieldByName('Code').AsInteger+  qryInit .FieldByName('StartCode').AsInteger;

  if not UnicFieldName(qryLookUpsLookUpID, qryLookUpsName, 'Lookups', 0,
    Format('AND (Kind = %d)', [Form_Type])) then
    Abort;

end;

procedure TLookUpsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryLookUps);
end;

procedure TLookUpsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryLookUps);
end;

procedure TLookUpsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TLookUpsF.qryLookUpsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    SQL.Text := 'SELECT count(*) FROM Stuffcoding WHERE st' +
      IntToStr(Form_Type - 300) + ' = ' + qryLookUps.FieldByName
      ('Code').AsString;
    Active := True;
    if Fields[0].AsInteger > 0 then
    begin
      Warn('«“ «Ì‰ ﬂœ œ— ' + Fields[0].AsString +
        ' „Ê—œ  «” ›«œÂ ‘œÂ «”  Ê ﬁ«»· Õ–› ‰Ì” !!.˛', mtInformation);
      Abort;
    end;
  end;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mryes then
    Abort;

end;

procedure TLookUpsF.qryLookUpsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ', 1);
end;

procedure TLookUpsF.initForm;
begin
  with qryInit do
  begin
    Close;
    Parameters.ParamByName('Type').Value := Form_Type;
    Open;
    Self.Caption := Format('À»  Ê ÊÌ—«Ì‘ «ÿ·«⁄«  %s',
      [FieldByName('Name').AsString]);
  end;

  with qryLookUps do
  begin
    Close;
    Parameters.ParamByName('formtype').Value := Form_Type;
    Open;
  end;
end;

procedure TLookUpsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TLookUpsF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TLookUpsF.qryLookUpsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ChangeState').AsInteger := 1;
end;

end.
