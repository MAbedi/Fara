unit Mailboxdatacontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, sndkey32, Mask, DBCtrls, StrUtils,
  SumDBGrid, System.ImageList, System.Actions;

type
  TMailboxdatacontrolF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    srcWorkFlow: TDataSource;
    qryWorkFlow: TADOQuery;
    qryViewFlow: TADOQuery;
    srcViewFlow: TDataSource;
    qryPositon: TADOQuery;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    actShow: TAction;
    actCheck: TAction;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    qryViewFlowFormCaption: TStringField;
    qryViewFlowSortAccept: TWordField;
    qryViewFlowkind: TWordField;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    qryViewFlowNote: TWideStringField;
    qryWorkFlowID: TAutoIncField;
    qryWorkFlowkind: TWordField;
    qryWorkFlowServerID: TIntegerField;
    qryWorkFlowYearID: TIntegerField;
    qryWorkFlowFormID: TIntegerField;
    qryWorkFlowFormType: TWordField;
    qryWorkFlowModifyDate: TDateTimeField;
    qryWorkFlowUserID: TIntegerField;
    qryWorkFlowPositionCode: TIntegerField;
    qryWorkFlowSortAccept: TWordField;
    qryWorkFlowState: TWordField;
    qryWorkFlowNote: TWideStringField;
    qryWorkFlowMaxSortAccept: TWordField;
    qryViewFlowFormTypeNum: TIntegerField;
    qryWorkFlowFormNumber: TIntegerField;
    qryWorkFlowFormDate: TStringField;
    qryWorkFlowDes: TStringField;
    qryWorkFlowFomNote: TStringField;
    qryWorkFlowStateName: TStringField;
    qryViewFlowCancelSortAccept: TWordField;
    qryViewFlowStateAfterPost: TWordField;
    dbgrd1: TDBGrid;
    SumGrid1: TSumGrid;
    qryWorkFlowForSum: TIntegerField;
    procedure srcWorkFlowStateChange(Sender: TObject);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure dbgrd1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1EditButtonClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryWorkFlowAfterInsert(DataSet: TDataSet);
    procedure qryWorkFlowBeforePost(DataSet: TDataSet);
    procedure qryWorkFlowAfterPost(DataSet: TDataSet);
    procedure qryWorkFlowBeforeDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryViewFlowAfterScroll(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
    procedure qryWorkFlowAfterScroll(DataSet: TDataSet);
  private
    SQLTXT: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MailboxdatacontrolF: TMailboxdatacontrolF;

implementation

uses DM, GlobalPro, searchCode_ADO, search2, sort2, MMESSAGE, FaraConsts,
  FormFunctions, CheckDocuments;

{$R *.dfm}

procedure TMailboxdatacontrolF.srcWorkFlowStateChange(Sender: TObject);
begin
  inherited;
  // okPanel.Visible := qryFlowFormsFara.State in dsEditModes;
  // newPanel.Visible := not okPanel.Visible;
  // BtnReject.Cancel := newPanel.Visible;
  // FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TMailboxdatacontrolF.actCheckExecute(Sender: TObject);
begin
  inherited;
  if qryWorkFlow.Active then
  begin
    CheckDocumentsF2.enter(qryWorkFlowkind.AsInteger,
      qryWorkFlowFormType.AsInteger, qryWorkFlowServerID.AsInteger,
      qryWorkFlowYearID.AsInteger, qryWorkFlowFormID.AsInteger,
      qryViewFlowSortAccept.AsInteger, qryViewFlowStateAfterPost.AsInteger,
      RadioGroup1.ItemIndex = 1);
    qryWorkFlow.Requery();
  end;



end;

procedure TMailboxdatacontrolF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryWorkFlow);
end;

procedure TMailboxdatacontrolF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrd1);
end;

procedure TMailboxdatacontrolF.actShowExecute(Sender: TObject);
begin
  inherited;
  case qryWorkFlow.FieldByName('Kind').AsInteger of
    1:
      ShowFormTypesForms(qryWorkFlow, Self);
    2:
      ShowReciptTypes(qryWorkFlow, Self)
  end; // case
end;

procedure TMailboxdatacontrolF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryWorkFlow);
end;

procedure TMailboxdatacontrolF.dbgrd1EditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  i: SmallInt;
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

          sqlText := 'SELECT  Code, TitlePosition FROM  Position';
          if searchCode_ADOF.SearchCode2(DMf.adcFaraSystem, 'پست کاربری',
            sqlText, ['كد ', 'عنوان'], Results, [50, 120], alLeft) then
          begin
            aDataSet.FieldByName('UserPositionCode').AsString := Results[0];
          end; // if
        end

      end; // 0

  end; // case
end;

procedure TMailboxdatacontrolF.dbgrd1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TMailboxdatacontrolF.FormCreate(Sender: TObject);
begin
  inherited;
  // qryFlowFormsFara.Active := True;
  SQLTXT := qryWorkFlow.SQL.Text;
  Edit1.Text := IntToStr(User.ID) + '  ' + User.name;
  Edit2.Text := IntToStr(User.PositionCode) + '  ' + User.PositionTitle;
  with qryViewFlow do
  begin
    Active := False;
    Parameters.ParamByName('PositionCode').Value := User.PositionCode;
    Active := True;
  end;
end;

procedure TMailboxdatacontrolF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(dbgrd1);
end;

procedure TMailboxdatacontrolF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(dbgrd1, 4, True);
end;

procedure TMailboxdatacontrolF.gridkeyenter(Sender: TObject; var Key: Char);
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
            If aDataSet.FieldByName('UserPositionCode').IsNull then
              nextIndex := 0
            else
              nextIndex := 2;
          1:
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
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      // #32,#157:  if curIndex in [1..4] then begin
      // key:=#0;
      /// /      DBGrid1EditButtonClick(sender);
      // end;//if
    end; // case

    if nextIndex >= (Sender as TDBGrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], False);
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

procedure TMailboxdatacontrolF.qryWorkFlowAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Kind').AsInteger := qryViewFlow.FieldByName('Kind')
    .AsInteger;
  DataSet.FieldByName('FormTypeNum').AsInteger :=
    qryViewFlow.FieldByName('FormType').AsInteger;
end;

procedure TMailboxdatacontrolF.qryWorkFlowAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TMailboxdatacontrolF.qryWorkFlowAfterScroll(DataSet: TDataSet);
begin
  inherited;
  actCheck.Visible := qryWorkFlowStateName.AsString <> 'باطل'

end;

procedure TMailboxdatacontrolF.qryWorkFlowBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TMailboxdatacontrolF.qryWorkFlowBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('SortAccept').AsInteger < 1) or
    (DataSet.FieldByName('SortAccept').AsInteger > 15) then
  begin
    Warn('محدوده ترتیب تائید بین 1 تا 15 می باشد.');
    Abort;
  end;

  if (DataSet.FieldByName('StateAfterPost').AsInteger < 0) or
    (DataSet.FieldByName('StateAfterPost').AsInteger > 1) then
  begin
    Warn('وضعیت فرم پس از تائید اعداد 0 و 1 معتبر است.');
    Abort;
  end;
end;

procedure TMailboxdatacontrolF.RadioGroup1Click(Sender: TObject);
var
  FormTypeNum: Integer;
begin
  inherited;
  FormTypeNum := qryViewFlowFormTypeNum.AsInteger;
  qryViewFlow.Requery();
  qryViewFlow.Locate('FormTypeNum', FormTypeNum, []);

end;

procedure TMailboxdatacontrolF.qryViewFlowAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryWorkFlow do
  begin
    Active := False;
    SQL.Text := SQLTXT;

    case RadioGroup1.ItemIndex of
      0, 1:
        begin
          if RadioGroup1.ItemIndex = 1 then
            SQL.Add('WHERE (SortAccept  = :SortAccept)')
          else
          begin
            if qryViewFlowCancelSortAccept.AsInteger = 1 then
              SQL.Add('WHERE (MaxSortAccept + 1  <= :SortAccept)')
            else
              SQL.Add('WHERE (MaxSortAccept + 1  = :SortAccept)');

            SQL.Add('AND(MaxSortAccept = SortAccept)');
            SQL.Add(Format('AND((UserCitation = 0)or(UserCitation <> %d))',
              [User.ID]));
          end;

          Parameters.ParamByName('SortAccept').Value :=
            DataSet.FieldByName('SortAccept').AsInteger;
        end;
    else
      begin
        SQL.Add(Format('WHERE (UserCitation  = %d)', [User.ID]));
      end;

    end;
    Parameters.ParamByName('kind').Value := DataSet.FieldByName('Kind')
      .AsInteger;
    Parameters.ParamByName('FormType').Value :=
      DataSet.FieldByName('FormTypeNum').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
  end;
end;

end.
