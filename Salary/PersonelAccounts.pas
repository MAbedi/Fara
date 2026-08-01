unit PersonelAccounts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBCtrls, Mask, Buttons, ppDB,
  ppDBPipe, ppModule, ppMemo, ppCtrls, ppStrtch, ppRegion,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, ADODB, DBActns, ActnList, ExtCtrls, ImgList, Grids, Vcl.DBGrids, ppVar,
  ppParameter, Menus, ppDesignLayer, System.ImageList, System.Actions;

type
  TPersonelAccountsF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    qryPersonelAccounts: TADOQuery;
    srcPersonelAccounts: TDataSource;
    Panel3: TPanel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    ImageList1: TImageList;
    actPrint: TAction;
    actSearch: TAction;
    actExit: TAction;
    grpMaster: TGroupBox;
    sbtnPersonelNo: TSpeedButton;
    EdtPersonelNo: TDBEdit;
    DBEdit1: TDBEdit;
    qryPersonelInfo: TADOQuery;
    qryPersonelAccountsPersonelNo: TIntegerField;
    qryPersonelAccounts_PersonelName: TStringField;
    DBGrid1: TDBGrid;
    qryPersonelAccountsAccountsType: TIntegerField;
    qryPersonelAccountsBankCode_Pa: TIntegerField;
    qryPersonelAccountsBranchInfo_Pa: TIntegerField;
    qryPersonelAccountsAccBankType_Pa: TIntegerField;
    qryPersonelAccountsBranchCode_Pa: TStringField;
    qryPersonelAccountsAccountNumber_Pa: TStringField;
    qryPersonelAccountsCreditCardNo_Pa: TStringField;
    CmbBankCode_Pa: TDBComboBox;
    Label15: TLabel;
    CmbBranchInfo_Pa: TDBComboBox;
    Label44: TLabel;
    edtBranchCode_Pa: TDBEdit;
    Label16: TLabel;
    CmbAccBankType_Pa: TDBComboBox;
    Label18: TLabel;
    edtAccountNumber_Pa: TDBEdit;
    Label17: TLabel;
    edtCreditCardNo_Pa: TDBEdit;
    Label40: TLabel;
    Panel2: TPanel;
    CmbAccountsType: TDBComboBox;
    Label1: TLabel;
    btnOther: TBitBtn;
    actSendToExcel: TAction;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrintv: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    actGetExcel: TAction;
    btnGetExcel: TBitBtn;
    mnuOther: TPopupMenu;
    Excel1: TMenuItem;
    N1: TMenuItem;
    actOther: TAction;
    actTransfer: TAction;
    actFilter: TAction;
    edtSHEBA: TDBEdit;
    Label2: TLabel;
    qryPersonelAccountsSHEBA: TStringField;
    procedure qryPersonelAccountsAfterInsert(DataSet: TDataSet);
    procedure srcPersonelAccountsStateChange(Sender: TObject);
    procedure EdtPersonelNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryPersonelAccountsBeforePost(DataSet: TDataSet);
    procedure qryPersonelAccountsBeforeDelete(DataSet: TDataSet);
    procedure qryPersonelAccountsAfterDelete(DataSet: TDataSet);
    procedure qryPersonelAccountsAfterPost(DataSet: TDataSet);
    procedure actExitExecute(Sender: TObject);
    procedure sbtnPersonelNoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure actSearchExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintvExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
  private
    { Private declarations }
    PersonelNo: Integer;
    procedure InsertAllPersonAccounts(AccountsType: Integer);
  public
    procedure enter(Personel_No: Integer);
    procedure initFormCreate;
    { Public declarations }
  end;

var
  PersonelAccountsF: TPersonelAccountsF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage,
  DBGrid2Print, GetExcel, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TPersonelAccountsF.qryPersonelAccountsAfterInsert(DataSet: TDataSet);

begin
  inherited;
  if PersonelNo <> 0 then
    DataSet.FieldByName('PersonelNo').AsInteger := PersonelNo;
  EdtPersonelNo.SetFocus
end;

procedure TPersonelAccountsF.srcPersonelAccountsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryPersonelAccounts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  sbtnPersonelNo.Visible := okPanel.Visible;
  actSearch.Visible := newPanel.Visible;
end;

procedure TPersonelAccountsF.EdtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    sbtnPersonelNo.Click;
end;

procedure TPersonelAccountsF.qryPersonelAccountsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('_PersonelName').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not CheckRequiredFields(qryPersonelAccounts) then
    Abort;
  TrimStringFields(qryPersonelAccounts);
end;

procedure TPersonelAccountsF.qryPersonelAccountsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPersonelAccountsF.qryPersonelAccountsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('›—„ Õ–› ‘œ.', 1);
end;

procedure TPersonelAccountsF.qryPersonelAccountsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TPersonelAccountsF.initFormCreate;
begin
  With qryPersonelAccounts do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Pay.PersonelAccounts ';
    if PersonelNo <> 0 then
    begin
      SQL.Add('WHERE PersonelNo=:PersonelNo');
      Parameters.ParamByName('PersonelNo').Value := PersonelNo;
    end;
    Active := True;
  end;
end;

procedure TPersonelAccountsF.enter;
begin
  PersonelAccountsF := TPersonelAccountsF.Create(Application);
  with PersonelAccountsF do
  begin
    try
      PersonelNo := Personel_No;
      initDBComboBoxpay(CmbBankCode_Pa, 7);
      initDBComboBoxpay(CmbBranchInfo_Pa, 84);
      initDBComboBoxpay(CmbAccBankType_Pa, 26);
      initDBComboBoxpay(CmbAccountsType, 88);
      initFormCreate;
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPersonelAccountsF.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPersonelAccountsF.sbtnPersonelNoClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  TxtL1_L2 := ' name_L1, lastName_L1,  fatherName_L1';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM Pay.PersonelInfo ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
      ['‘„«—Â Å—”‰·', '‰«„', 'Name', ' ‰«„ Œ«‰Ê«œêÌ', 'lastName', '‰«„ Åœ— ',
      'fatherName', '‘„«—Â ‘‰«”‰«„Â', 'ﬂœ „·Ì'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
      ['‘„«—Â Å—”‰·', '‰«„ ', ' ‰«„ Œ«‰Ê«œêÌ', '‰«„ Åœ—', '‘„«—Â ‘‰«”‰«„Â',
      'ﬂœ „·Ì'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
  begin
    if not(qryPersonelAccounts.State in dsEditModes) then
      exit;
    qryPersonelAccounts['PersonelNo'] := Results[0];
  end; // if
end;

procedure TPersonelAccountsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryPersonelAccounts);
end;

procedure TPersonelAccountsF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TPersonelAccountsF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TPersonelAccountsF.actSearchExecute(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 4] of String;
begin
  inherited;
  Txt := 'SELECT PersonelAccounts.PersonelNo, PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonelName,'
    + ' PersonelAccounts.AccountNumber_Pa, PersonelAccounts.BranchCode_Pa' +
    ' FROM Pay.PersonelAccounts INNER JOIN Pay.PersonelInfo ON PersonelAccounts.PersonelNo = PersonelInfo.PersonelNo';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
    ['‘„«—Â Å—”‰·', '‰«„ Å—”‰·', '‘„«—Â Õ”«» »«‰ﬂÌ', 'ﬂœ ‘⁄»Â'], Results,
    [100, 100, 100, 100], alLeft);
  if s then
    qryPersonelAccounts.Locate('PersonelNo', Results[0], []);
end;

procedure TPersonelAccountsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TPersonelAccountsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPersonelAccountsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelAccountsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print
end;

procedure TPersonelAccountsF.actPrintvExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0)
end;

procedure TPersonelAccountsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPersonelAccountsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelAccountsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPersonelAccountsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'AccountsType', '‰Ê⁄ »«‰ò', '‰Ê⁄ »«‰ò', ftInteger,
        dvDefaults, '', '', ciCombo,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 88)',
        '');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        InsertAllPersonAccounts(GetcTo(myParams.ParamValues['AccountsType'],
          ftInteger));
      end;

    finally
      Free;
    end;
  end;
end;

procedure TPersonelAccountsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryPersonelAccounts);
end;

procedure TPersonelAccountsF.actOtherExecute(Sender: TObject);
begin
  inherited;
  mnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelAccountsF.InsertAllPersonAccounts(AccountsType: Integer);
var
  sqlTxt: string;
begin
  sqlTxt := 'INSERT INTO Pay.PersonelAccounts(PersonelNo, AccountsType, BankCode_Pa,  AccBankType_Pa, BranchCode_Pa, AccountNumber_Pa, CreditCardNo_Pa) ';
  sqlTxt := sqlTxt + ' SELECT  PersonelNo, ' + IntToStr(AccountsType) +
    ', BankCode,AccBankType, BranchCode, AccountNumber,  CreditCardNo' +
    ' FROM Pay.PersonelInfo WHERE PersonelNo NOT IN ( SELECT PersonelNo FROM Pay.PersonelAccounts  WHERE  (AccountsType = '
    + IntToStr(AccountsType) + '))';
  if AccountsType = 0 then
    raise Exception.Create('‰Ê⁄ »«‰ò «‰ Œ«» ‰‘œÂ «” ');
  with DMF.qryTmpTmpp do
  begin
    Close;
    SQL.Text := sqlTxt;
    BigMessage(IntToStr(ExecSQL) + ' —òÊ—œ À»  ‘œ', 1);
    Close;
  end;
  qryPersonelAccounts.Requery();
end;

end.
