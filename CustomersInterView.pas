unit CustomersInterView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, ComCtrls, Dateutils, ppDesignLayer, System.Actions;

type
  TCustomersInterViewF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qryInterView: TADOQuery;
    srcInterView: TDataSource;
    qryInterViewID: TAutoIncField;
    qryInterViewCustID: TIntegerField;
    qryInterViewInterViewKind: TWordField;
    qryInterViewInterViewNo: TIntegerField;
    qryInterViewInterViewDate: TStringField;
    qryInterViewInterViewNote: TWideStringField;
    qryInterViewAccost: TWideStringField;
    qryInterViewModifyDate: TDateTimeField;
    qryInterViewInterViewStae: TWordField;
    Label1: TLabel;
    edtInterViewNo: TDBEdit;
    Label2: TLabel;
    edtInterViewDate: TDBEdit;
    rdoKind: TDBRadioGroup;
    Label3: TLabel;
    edtAccost: TDBEdit;
    GroupBox2: TGroupBox;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    edtCustID: TDBEdit;
    edtCustName: TDBEdit;
    srcCustomers: TDataSource;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    BitBtn3: TBitBtn;
    btnSearch: TBitBtn;
    actExcel: TAction;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    actPrint: TAction;
    BitBtn5: TBitBtn;
    actOther: TAction;
    pmChange: TPopupMenu;
    N1: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel5: TppLabel;
    qryInterViewFirstUser: TWideStringField;
    qryInterViewFollowUp: TDateTimeField;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    lbl1: TLabel;
    DBMemo1: TDBMemo;
    pnl1: TPanel;
    lbl2: TLabel;
    txtModifyDate: TDBText;
    txtFirstUser: TDBText;
    txtInterViewStae: TDBText;
    dbrgrpInterViewStae: TDBRadioGroup;
    grpFollowUpDateTime: TGroupBox;
    medtFollowUpTime: TMaskEdit;
    medtFollowUpDate: TMaskEdit;
    qryInterViewInterViewKind2: TWordField;
    qryCustomersTel: TWideStringField;
    edtTel: TDBEdit;
    qryInterViewSuccessPercent: TFloatField;
    qryInterViewSatisfactionPercent: TFloatField;
    qryInterViewRowId: TIntegerField;
    qryInterViewlevels: TIntegerField;
    qryInterViewFormCallName: TStringField;
    qryInterViewFormCallID: TLargeintField;
    edtSatisfactionPercent: TDBEdit;
    Label4: TLabel;
    edtSuccessPercent: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    qryLookup: TADOQuery;
    qryInterView_levels: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    pdbtxtInterViewStae: TppDBText;
    pdbtxtInterViewKind: TppDBText;
    plblDate: TppLabel;
    qryCustomersCustomerGrpName: TStringField;
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure srcInterViewStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryInterViewModifyDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryInterViewBeforeDelete(DataSet: TDataSet);
    procedure qryInterViewBeforeEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure qryInterViewAfterInsert(DataSet: TDataSet);
    procedure qryInterViewBeforePost(DataSet: TDataSet);
    procedure actOtherExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryInterViewAfterPost(DataSet: TDataSet);
    procedure medtFollowUpTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryInterViewInterViewKind2GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryInterViewAfterScroll(DataSet: TDataSet);
    procedure pdbtxtRadioFindGetText(Sender: TObject; var Text: string);
    procedure pdbtxtInterViewStaeGetText(Sender: TObject; var Text: string);
    procedure pdbtxtInterViewKindGetText(Sender: TObject; var Text: string);
    procedure pdbtxtMiladi2ShamsiGetText(Sender: TObject; var Text: string);
    procedure plblDateGetText(Sender: TObject; var Text: string);
  private
    FormType: Integer;
    function ChangeState: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomersInterViewF: TCustomersInterViewF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts,
  DesignForms;

{$R *.dfm}

procedure TCustomersInterViewF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryInterView do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := DataSet.fieldbyname('CustID')
      .AsInteger;
    Open;
  end;
end;

procedure TCustomersInterViewF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterView);
end;

procedure TCustomersInterViewF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterView);
end;

procedure TCustomersInterViewF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCustomersInterViewF.srcInterViewStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryInterView.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  // BtnReject.Cancel:=newPanel.Visible;

end;

procedure TCustomersInterViewF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryCustomers do
  begin
    Close;
    Parameters.ParamByName('Cust').Value := FormType;
    Open;
    Caption := 'ثبت مذاكرات با ' + qryCustomersCustomerGrpName.AsString;
    lblTopic0.Caption := 'ثبت مذاكرات با...' +
      qryCustomersCustomerGrpName.AsString;
  end;

  N1.Enabled := (CurAccess and Integer(akChangeState) <> 0);

end;

procedure TCustomersInterViewF.medtFollowUpTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not(qryInterView.State in dsEditModes) then
    qryInterView.Edit;
end;

procedure TCustomersInterViewF.qryInterViewModifyDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(Sender.AsDateTime);
  Text := FormatDateTime('hh:mm', Sender.AsDateTime) + ' -- ' + Text;
end;

procedure TCustomersInterViewF.qryInterViewBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.fieldbyname('InterViewStae').AsInteger = 1) and
    (not User.PowerUser) then
  begin
    Warn('مجاز به حذف نمي باشيد');
    Abort;
  end;
end;

procedure TCustomersInterViewF.qryInterViewBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.fieldbyname('InterViewStae').AsInteger = 1) and
    (not User.PowerUser) then
  begin
    Warn('مجاز به ويرايش نمي باشيد');
    Abort;
  end;
end;

procedure TCustomersInterViewF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryInterView.State in dsEditModes then
    qryInterView.Post;
  // ChangeState;   بنا به در خواست محمودی
end;

function TCustomersInterViewF.ChangeState: Boolean;
begin
  // Result:= True;
  with TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        Format('UPDATE CustomersInterView SET InterViewStae = 1 WHERE (ID = %d)',
        [qryInterView.fieldbyname('ID').AsInteger]);
      Result := ExecSQL > 0

    finally
      Free;
    end;
end;

procedure TCustomersInterViewF.N1Click(Sender: TObject);
begin
  inherited;
  if ChangeState then
    BigMessage('تغيير يافت', 1);
end;

procedure TCustomersInterViewF.qryInterViewAfterInsert(DataSet: TDataSet);
begin
  inherited;
  edtInterViewNo.SetFocus;
  DataSet.fieldbyname('InterViewNo').AsInteger :=
    GetANewCode(Self.Name,
    Format('SELECT MAX(InterViewNo) FROM CustomersInterView WHERE(CustID = %D)',
    [FormType]), '');
  DataSet.fieldbyname('InterViewDate').AsString := var_glb_CurrentDate;
  DataSet.fieldbyname('CustID').AsInteger := FormType;
  DataSet.fieldbyname('InterViewKind').AsInteger := 0;
  DataSet.fieldbyname('InterViewStae').AsInteger := 0;
  DataSet.fieldbyname('ModifyDate').AsDateTime := Now;
  DataSet.fieldbyname('FirstUser').AsString := User.Name;
  // qryInterViewFollowUp.AsDateTime := Now;

  if DesignFormsF <> nil then
    with DesignFormsF do
    begin
      DataSet.fieldbyname('FormCallName').AsString :=
        'T' + DesignFormsF.id.ToString.Trim;
      DataSet.fieldbyname('FormCallID').AsLargeint := qryForm.fieldbyname('ID')
        .AsLargeint;

    end;

  // medtFollowUpTime.Text := EmptyStr;
  // medtFollowUpDate.Text := EmptyStr;
end;

procedure TCustomersInterViewF.qryInterViewBeforePost(DataSet: TDataSet);
var
  FollowUpDate: TDateTime;
begin
  inherited;
  FollowUpDate := Shamsi2Miladi(medtFollowUpDate.Text);
  if FollowUpDate > Shamsi2Miladi('1354/03/01') then
    qryInterViewFollowUp.AsString :=
      Format('%s %s‏', [DateToStr(FollowUpDate), medtFollowUpTime.Text])
  else
    Warn2(grpFollowUpDateTime.Caption + ' معتبر نیست ');

  if not CheckRequiredFields(DataSet) then
    Abort;

end;

procedure TCustomersInterViewF.qryInterViewInterViewKind2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if qryInterViewInterViewKind.AsInteger > -1 then
    Text := rdoKind.Items[qryInterViewInterViewKind.AsInteger];
end;

procedure TCustomersInterViewF.actOtherExecute(Sender: TObject);
begin
  inherited;
  pmChange.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCustomersInterViewF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCustomersInterViewF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCustomersInterViewF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCustomersInterViewF.pdbtxtInterViewKindGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := rdoKind.Items[StrToInt(Text)]
end;

procedure TCustomersInterViewF.pdbtxtInterViewStaeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := dbrgrpInterViewStae.Items[StrToInt(Text)]
end;

procedure TCustomersInterViewF.pdbtxtRadioFindGetText(Sender: TObject;
  var Text: string);
var
  i: Integer;
  sFld: string;
begin
  inherited;

  sFld := UpperCase((Sender as TppDBText).DataField);
  for i := 0 to Self.ControlCount - 1 do
    if (Controls[i] is TDBRadioGroup) then
      if (UpperCase(TDBRadioGroup(Controls[i]).DataField) = sFld) then
        Text := TDBRadioGroup(Controls[i]).Items[StrToInt(Text)];

end;

procedure TCustomersInterViewF.plblDateGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := medtFollowUpDate.Text + ' ' + medtFollowUpTime.Text
end;

procedure TCustomersInterViewF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' كد و نام مشتري  :‏' + qryCustomers.fieldbyname('CustID').AsString +
    '  ' + qryCustomers.fieldbyname('CustName').AsString;
end;

procedure TCustomersInterViewF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RptCustomersInterView', true, False, 'فرم', False)
end;

procedure TCustomersInterViewF.qryInterViewAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد ', 1)
end;

procedure TCustomersInterViewF.qryInterViewAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryInterViewFollowUp.AsDateTime > Shamsi2Miladi('54/03/01') then
  begin
    medtFollowUpDate.Text := miladi2Shamsi(qryInterViewFollowUp.AsDateTime);
    medtFollowUpTime.Text := FormatDateTime('hh:mm',
      qryInterViewFollowUp.AsDateTime);
  end
  else
  begin
    medtFollowUpDate.Text := EmptyStr;
    medtFollowUpTime.Text := EmptyStr;
  end;

end;

procedure TCustomersInterViewF.pdbtxtMiladi2ShamsiGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := miladi2Shamsi(StrToDateTime(Text)) + ' ' +
      FormatDateTime('hh:mm:ss ampm', StrToDateTime(Text))
end;

end.
