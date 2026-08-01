unit FlowForms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, sndkey32, DBCtrls, System.ImageList,
  System.Actions;

type
  TFlowFormsF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    srcFlowFormsFara: TDataSource;
    qryFlowFormsFara: TADOQuery;
    qryFlowFormsFaraID: TAutoIncField;
    qryFlowFormsFaraKind: TWordField;
    qryFlowFormsFaraTitleControl: TStringField;
    qryFlowFormsFaraStateAfterPost: TWordField;
    qryFlowFormsFaraNote: TStringField;
    qryViewFlow: TADOQuery;
    srcViewFlow: TDataSource;
    qryViewFlowFormType: TWordField;
    qryViewFlowFormCaption: TStringField;
    qryFlowFormsFaraFormTypeNum: TIntegerField;
    qryPositon: TADOQuery;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    qryViewFlowKind: TIntegerField;
    qryViewFlowkindName: TStringField;
    qryFlowFormsFara_PositionName: TStringField;
    qryFlowFormsFaraSortAccept: TWordField;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    qryFlowFormsFaraPositionCode: TIntegerField;
    DBMemo1: TDBMemo;
    qryFlowFormsFaraCancelSortAccept: TWordField;
    procedure srcFlowFormsFaraStateChange(Sender: TObject);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryFlowFormsFaraAfterInsert(DataSet: TDataSet);
    procedure qryFlowFormsFaraBeforePost(DataSet: TDataSet);
    procedure qryFlowFormsFaraAfterPost(DataSet: TDataSet);
    procedure qryFlowFormsFaraBeforeDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryViewFlowAfterScroll(DataSet: TDataSet);
    procedure qryFlowFormsFaraBeforeEdit(DataSet: TDataSet);
    procedure ALLPikGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLPikSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlowFormsF: TFlowFormsF;

implementation

uses DM, GlobalPro, searchCode_ADO, search2, sort2, MMESSAGE;

{$R *.dfm}

procedure TFlowFormsF.srcFlowFormsFaraStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFlowFormsFara.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TFlowFormsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFlowFormsFara);
end;

procedure TFlowFormsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TFlowFormsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFlowFormsFara);
end;

procedure TFlowFormsF.DBGrid2EditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i, j: SmallInt;
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;

  if (Sender as TDBGrid).ReadOnly then
    exit;

  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;
  case i of
    0:
      begin

        Begin

            sqlText := 'SELECT   PositionCode, PositionTitle FROM  Position';
            if searchCode_ADOF.SearchCode2(DMf.adcFaraSystem, 'پست کاربری',
              sqlText, ['كد ', 'عنوان'], Results, [50, 120], alLeft) then
            begin
              aDataSet.fieldbyname('PositionCode').AsString := Results[0];
            end; // if
          end

        end; // 0

      end; // case
  end;


procedure TFlowFormsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TFlowFormsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryFlowFormsFara.Active:=True;
  qryViewFlow.Active:=True;
end;

procedure TFlowFormsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TFlowFormsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, true);
  SetColSize(DBGrid2, 1, true);
end;

procedure TFlowFormsF.gridkeyenter(Sender: TObject; var Key: Char);
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
            If aDataSet.fieldbyname('PositionCode').IsNull then
              nextIndex := 0
            else
              nextIndex := 2;

          2:
            nextIndex := 3;

          3:
            nextIndex := 4;

          4:
            nextIndex := -1;


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
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
       #32,#157:  if curIndex in [0] then begin
       key:=#0;
          DBGrid2EditButtonClick(sender);
      end;//if
    end; // case

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
            if (Sender as TDBGrid).DataSource.State in dsEditModes then
              (Sender as TDBGrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; // -2
        -3:
          begin
            if (Sender as TDBGrid).DataSource.State in dsEditModes then
              (Sender as TDBGrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TDBGrid).SelectedIndex := nextIndex;
  end; // case

end;

procedure TFlowFormsF.qryFlowFormsFaraAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('Kind').AsInteger := qryViewFlow.fieldbyname('Kind')
    .AsInteger;
  DataSet.fieldbyname('FormTypeNum').AsInteger :=
    qryViewFlow.fieldbyname('FormType').AsInteger;
   DBGrid2.SetFocus;
end;

procedure TFlowFormsF.qryFlowFormsFaraAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TFlowFormsF.qryFlowFormsFaraBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TFlowFormsF.qryFlowFormsFaraBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  DBGrid2.SetFocus;
end;

procedure TFlowFormsF.qryFlowFormsFaraBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.fieldbyname('SortAccept').AsInteger < 1) or
    (DataSet.fieldbyname('SortAccept').AsInteger > 15) then
  begin
    Warn('محدوده ترتیب تائید بین 1 تا 15 می باشد.');
    Abort;
  end;

  if (DataSet.fieldbyname('StateAfterPost').AsInteger < 0) or
    (DataSet.fieldbyname('StateAfterPost').AsInteger > 1) then
  begin
    Warn('وضعیت فرم پس از تائید اعداد 0 و 1 معتبر است.');
    Abort;
  end;
end;


procedure TFlowFormsF.ALLPikGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := DBGrid2.Columns[ColumnIndexByFieldName(DBGrid2,
    (Sender as TField).FieldName)];
  // if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
  Text := col.PickList[Sender.AsInteger];
  // Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TFlowFormsF.ALLPikSetText(Sender: TField;
  const Text: String);
var
  col: TColumn;
  i: Integer;
begin
  inherited;
  col := DBGrid2.Columns[ColumnIndexByFieldName(DBGrid2,
    (Sender as TField).FieldName)];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := i;
  // Integer(col.PickList.Objects[i])
end;


procedure TFlowFormsF.qryViewFlowAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFlowFormsFara do
  begin
    Active:=False;
    Parameters.ParamByName('Kind').Value:= DataSet.fieldbyname('Kind').AsInteger;
    Parameters.ParamByName('FormType').Value:= DataSet.fieldbyname('FormType').AsInteger ;
    Active:=True;
  end;
end;

end.
