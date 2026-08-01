unit FrVajheNaghd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Controls, Vcl.Grids, Vcl.DBGrids, System.StrUtils,
  Vcl.Graphics, Vcl.Forms, Vcl.Dialogs, sndkey32, Vcl.DBActns, System.Actions,
  Vcl.ActnList;

type
  TfrmVajheNaghd = class(TFrame)
    srcFormsFr: TDataSource;
    GrdVajheNaghd: TDBGrid;
    qryCustomer: TADOQuery;
    qryFormsFr: TADOQuery;
    qryForms_CustomerName: TStringField;
    qryFormsFormID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryFormsCustomerID2: TIntegerField;
    qryFormsAmount: TBCDField;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormsBudgetCode: TIntegerField;
    qryFormsProjectID: TIntegerField;
    qryFormsTopicCode: TLargeintField;
    qryFormsDetailCode: TStringField;
    qryFormsCTopicCode: TStringField;
    qryFormsFomNote: TStringField;
    qryFormsAidInfoNo: TStringField;
    qryFormsAidInfoDate: TStringField;
    qryFormsCTopicCode2: TStringField;
    qryFormsCustomerName2: TStringField;
    qryFormsPayTypes: TWordField;
    qryFormsTopicTypes: TWordField;
    qryFormsDocNo: TIntegerField;
    qryFormsDocDate: TStringField;
    qryFormsFormState: TWordField;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    qryFormsModifyDate: TDateTimeField;
    qryFormsReciptID: TIntegerField;
    PnlVajheNaghd: TPanel;
    newPanelVajheNaghd: TPanel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    okPanelVajheNaghd: TPanel;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BtnAccVajh: TBitBtn;
    qryInitForm: TADOQuery;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    procedure BtnAccVajhClick(Sender: TObject);
    procedure srcFormsFrStateChange(Sender: TObject);
    procedure qryFormsFrAfterDelete(DataSet: TDataSet);
    procedure qryFormsFrAfterEdit(DataSet: TDataSet);
    procedure qryFormsFrAfterInsert(DataSet: TDataSet);
    procedure qryFormsFrBeforeDelete(DataSet: TDataSet);
    procedure qryFormsFrBeforeEdit(DataSet: TDataSet);
    procedure qryFormsFrBeforeInsert(DataSet: TDataSet);
    procedure qryFormsFrBeforePost(DataSet: TDataSet);
    procedure GrdVajheNaghdEditButtonClick(Sender: TObject);
    procedure GrdVajheNaghdKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private

    procedure gridVajheNaghdkeyenter(Sender: TObject; var Key: Char);
  protected
    procedure Resize; override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Private declarations }

  public
    qryRecipts: TADOQuery;
    FormType: Integer;
    ReciptType: Integer;

    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Account, MMESSAGE, FaraConsts, FormFunctions, GlobalPro, DM,
  searchCode_ADO, search2, sort2;

procedure TfrmVajheNaghd.BitBtn12Click(Sender: TObject);
begin
  search2F.ShowSearch(qryFormsFr);
end;

procedure TfrmVajheNaghd.BitBtn1Click(Sender: TObject);
begin
  SendToExcel(GrdVajheNaghd);
end;

procedure TfrmVajheNaghd.BitBtn9Click(Sender: TObject);
begin
  sort2f.ShowSort(qryFormsFr);
end;

procedure TfrmVajheNaghd.BtnAccVajhClick(Sender: TObject);
begin
  Accountf.enter(qryFormsFr)
end;

constructor TfrmVajheNaghd.Create(AOwner: TComponent);
begin
  inherited;
  SetLookUpCash(qryFormsFr);
  qryFormsFr.Parameters.ParamByName('YearID').Value := APPBank.Year;

end;

destructor TfrmVajheNaghd.Destroy;
begin
  SaveColWidth(GrdVajheNaghd, IntToStr(ReciptType));
  inherited;
end;

procedure TfrmVajheNaghd.GrdVajheNaghdEditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 1] of String;
  b: Boolean;
  // theFields: Variant;
begin
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    2:
      begin
        sqlText :=
          'SELECT Customers.CustID,Customers.CustName FROM Customers LEFT OUTER JOIN '
          + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
          + ' WHERE CustomersGroup.GroupType IN(' +
          Trim(qryInitForm.FieldByName('CustomerKind1').AsString) + ')' +
          IfThen(qryInitForm.FieldByName('UserSecurityCheckActive')
          .AsInteger  in[1,3], ' AND dbo.ChkUser(Customers.OperatorID,' +
          IntToStr(user.id) + ')=1', '');
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
          Trim(qryInitForm.FieldByName('Customer1Label').AsString) + 'Â«',
          sqlText, ['òœ',
          '‰«„ ' + Trim(qryInitForm.FieldByName('Customer1Label').AsString) +
          ''], Results, [50, 150], alLeft);
        if b then
        begin
          if not(qryFormsFr.State in dseditmodes) then
            qryFormsFr.Edit;
          aDataSet.FieldByName('CustomerID1').AsString := Results[0];
          TmpChar := #13;
          gridVajheNaghdkeyenter(Sender, TmpChar);
        end; // if
      end; // 6
  end; // case

end;

procedure TfrmVajheNaghd.GrdVajheNaghdKeyPress(Sender: TObject; var Key: Char);
begin
  gridVajheNaghdkeyenter(Sender, Key);
end;

procedure TfrmVajheNaghd.gridVajheNaghdkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := 4;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not(GrdVajheNaghd.Columns[nextIndex].Visible) OR
          (GrdVajheNaghd.Columns[nextIndex].ReadOnly)) do
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

      #32, #157: if curIndex in [2] then

    begin
      Key := #0;
      GrdVajheNaghdEditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < GrdVajheNaghd.Columns.Count) and
      (not(GrdVajheNaghd.Columns[nextIndex].Visible) OR
      (GrdVajheNaghd.Columns[nextIndex].ReadOnly)) do
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

procedure TfrmVajheNaghd.qryFormsFrAfterDelete(DataSet: TDataSet);
begin
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TfrmVajheNaghd.qryFormsFrAfterEdit(DataSet: TDataSet);
begin
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TfrmVajheNaghd.qryFormsFrAfterInsert(DataSet: TDataSet);
begin
  AllAfterInsert4acc(DataSet);
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('ProjectID').AsInteger := 0;
  DataSet.FieldByName('Amount').AsInteger := 0;
  // if canshow then DataSet.FieldByName('CustomerID1').AsInteger:=CustomerID;
  DataSet.FieldByName('FormID').AsInteger := GetANewID(DataSet, Self.Name,
    'Forms', 'FormID', qryRecipts, 1);
  GetFormNumber(IntToStr(ReciptType), qryInitForm, DataSet);
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('CustomerID2').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
end;

procedure TfrmVajheNaghd.qryFormsFrBeforeDelete(DataSet: TDataSet);
begin
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ÊÃÂ „ÿ„∆‰ Â” Ìœø') <> mryes then
    Abort;
end;

procedure TfrmVajheNaghd.qryFormsFrBeforeEdit(DataSet: TDataSet);
begin
  if (qryRecipts.LockType <> ltReadOnly) and
    (not(qryRecipts.State in dseditmodes)) then
    Abort;
end;

procedure TfrmVajheNaghd.qryFormsFrBeforeInsert(DataSet: TDataSet);
begin
  if (qryRecipts.LockType <> ltReadOnly) and
    (not(qryRecipts.State in dseditmodes)) then
    Abort;
end;

procedure TfrmVajheNaghd.qryFormsFrBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CustomerID1').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  DataSet.FieldByName('CustomerID2').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then begin
  // qryFormItems.Requery();
  // abort;
  // end;
end;

procedure TfrmVajheNaghd.Resize;
begin
  inherited;
  SetColSize(GrdVajheNaghd, 5, True, IntToStr(ReciptType));
end;

procedure TfrmVajheNaghd.srcFormsFrStateChange(Sender: TObject);
begin
  okPanelVajheNaghd.Visible := qryFormsFr.State in dseditmodes;
  newPanelVajheNaghd.Visible := not okPanelVajheNaghd.Visible;
  // BtnAccVajh.Visible := qryInitForm.FieldByName('AccCodingShow').AsInteger > 0;
  FreeReservedCodes(DMf.adcBSell, 'Forms', 'FormNumber', IntToStr(ReciptType));
  FreeReservedCodes(DMf.adcBSell, 'Forms', 'FormID', Self.Name);

end;

end.

