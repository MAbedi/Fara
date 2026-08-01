unit FormInfo_Acc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, System.ImageList, System.Actions;

type
  TFormInfo_AccF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryFormInfo: TADOQuery;
    srcFormInfo: TDataSource;
    qryFormInfoID: TIntegerField;
    qryFormInfoFormType: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    cmbType: TComboBox;
    Label1: TLabel;
    qryFormType: TADOQuery;
    qryFormTypeFormType: TSmallintField;
    qryFormTypeFormCaption: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure srcFormInfoStateChange(Sender: TObject);
    procedure qryFormInfoAfterInsert(DataSet: TDataSet);
    procedure cmbTypeChange(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryFormInfoBeforeDelete(DataSet: TDataSet);
    procedure qryFormInfoAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryFormInfoAfterDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
  private
    FormType: Byte;
    procedure initCombo;
    procedure gridkeyenter(Sender: TObject; var Key: Char);

    { Private declarations }
  public

    { Public declarations }
  end;

var
  FormInfo_AccF: TFormInfo_AccF;

implementation

uses DM, Math, StrUtils, search2, sort2, GlobalPro,
  mmessage, sndkey32;

{$R *.dfm}
{ TFormName_FormInfo_AccF }

procedure TFormInfo_AccF.gridkeyenter(Sender: TObject; var Key: Char);
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
            nextIndex :=
              IfThen((aDataSet.FieldByName('InfoID').AsString = ''), 0, 1);
          1:
            nextIndex :=
              IfThen((aDataSet.FieldByName('InfoName_L1').AsString = ''), 1, 2);
          2:
            nextIndex := IfThen(aDataSet.FieldByName('InfoName_L2')
              .AsString = '', 2, -1);
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

procedure TFormInfo_AccF.initCombo;
begin
  cmbType.Clear;
  with qryFormType do
  begin
    Active := false;
    Active := True;
    while not Eof do
    begin
      cmbType.AddItem(FieldByName('FormCaption').AsString,
        TObject(FieldByName('FormType').AsInteger));

      // cmbType.AddItem(IfThen(opt.primaryLanguage=0,fieldbyname('FormCaption_L1').asstring,fieldbyname('FormCaption_L2').asstring),
      // TObject(FieldByName('FormType').AsInteger));
      Next;
    end; // while
  end; // with
end;

procedure TFormInfo_AccF.FormCreate(Sender: TObject);
begin
  inherited;
  // FormType:=var_glb_gParam;
  with qryFormType do
  begin
    Active := false;
    // Parameters.ParamByName('Type').Value:=FormType;
    Active := True;
  end; // with
  initCombo;
  cmbType.ItemIndex := 0;
  cmbTypeChange(Sender);
end;

procedure TFormInfo_AccF.FormShow(Sender: TObject);
begin
  inherited;
  // setColumns(DBGrid1,'#01',opt.LanguageDisplay1);
  // setColumns(DBGrid1,'#02',opt.LanguageDisplay2);
end;

procedure TFormInfo_AccF.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormInfo.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'Formsinfo');

end;

procedure TFormInfo_AccF.qryFormInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SetFocus;
  DataSet.FieldByName('FormType').AsInteger :=
    qryFormType.FieldByName('FormType').AsInteger;
  DataSet.FieldByName('FormInfoID').AsInteger := GetANewCode('', 'Formsinfo',
    'FormInfoID',dmf.adcAccounting);
  DataSet.FieldByName('InfoID').AsInteger :=
    GetANewCode('', 'SELECT MAX(InfoID) FROM acc.FormsInfo WHERE(FormType = ' +
    qryFormType.FieldByName('FormType').AsString + ')', 'InfoID',dmf.adcAccounting);
end;

procedure TFormInfo_AccF.cmbTypeChange(Sender: TObject);
begin
  inherited;
  if cmbType.ItemIndex = -1 then
    exit;
  with qryFormInfo do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value :=
      Integer(cmbType.Items.Objects[cmbType.ItemIndex]);
    Active := True;
  end; // with
  qryFormType.Locate('FormType',
    Integer(cmbType.Items.Objects[cmbType.ItemIndex]), [])
end;

procedure TFormInfo_AccF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormInfo_AccF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_AccF.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TFormInfo_AccF.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  // BigMessage('À»‹‹  ‘œ',1);
end;

procedure TFormInfo_AccF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TFormInfo_AccF.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ', 1);
end;

procedure TFormInfo_AccF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TFormInfo_AccF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(FormType));
end;

procedure TFormInfo_AccF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);

end;

end.
