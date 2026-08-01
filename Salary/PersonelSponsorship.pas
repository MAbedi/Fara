unit PersonelSponsorship;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBCtrls, Mask, Buttons, ppDB,
  ppDBPipe, ppModule, ppMemo, ppCtrls, ppStrtch, ppRegion,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, ADODB, DBActns, ActnList, ExtCtrls, ImgList, Grids, Vcl.DBGrids, ppVar,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TPersonelSponsorshipF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    qrySponsorship: TADOQuery;
    srcSponsorship: TDataSource;
    Panel3: TPanel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    ImageList1: TImageList;
    actPrint: TAction;
    actSearch: TAction;
    actExit: TAction;
    LblTopicTypes: TLabel;
    cmbkinship: TDBComboBox;
    grpMaster: TGroupBox;
    sbtnPersonelNo: TSpeedButton;
    EdtPersonelNo: TDBEdit;
    DBEdit1: TDBEdit;
    qryPersonelInfo: TADOQuery;
    qrySponsorshipID: TAutoIncField;
    qrySponsorshipPersonelNo: TIntegerField;
    qrySponsorshipName: TStringField;
    qrySponsorshiplastName: TStringField;
    qrySponsorshipFatherName: TStringField;
    qrySponsorshipIDNumber: TStringField;
    qrySponsorshipNationalID: TStringField;
    qrySponsorshipBirthDate: TStringField;
    qrySponsorshipKind: TWordField;
    qrySponsorshipState: TWordField;
    qrySponsorshipNote: TStringField;
    qrySponsorship_PersonelName: TStringField;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    GrpBoxNote: TGroupBox;
    DBMemo1: TDBMemo;
    qrySponsorship_Name: TStringField;
    qrySponsorship_lastName: TStringField;
    Cmbsex: TDBComboBox;
    Label9: TLabel;
    qrySponsorshipSex: TWordField;
    qrySponsorshipMarriageID: TIntegerField;
    qrySponsorshipStudyActive: TWordField;
    Label10: TLabel;
    cmbMarriageID: TDBComboBox;
    dbchkState: TDBCheckBox;
    btnPrint: TBitBtn;
    ppReport1: TppReport;
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
    ppDBPipeline1: TppDBPipeline;
    pdbtxtStudyActive: TppDBText;
    pdbtxtSex: TppDBText;
    pdbtxtMarriageID: TppDBText;
    ppLine1: TppLine;
    cmbJobType: TDBComboBox;
    Label7: TLabel;
    qrySponsorshipkinship: TIntegerField;
    qrySponsorshipJobType: TIntegerField;
    qrySponsorshipInsuranceType: TIntegerField;
    qrySponsorshipInsurancePercent: TFloatField;
    qrySponsorshipJobTitle: TStringField;
    qrySponsorshipMaritalDate: TStringField;
    qrySponsorshipDivorceDate: TStringField;
    qrySponsorshipDeathDate: TStringField;
    qrySponsorshipDegree: TIntegerField;
    cmbInsuranceType: TDBComboBox;
    Label8: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    cmbDegree: TDBComboBox;
    Label16: TLabel;
    BitBtn2: TBitBtn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    qrySponsorshipGraduationDate: TStringField;
    edtGraduationDate: TDBEdit;
    Label17: TLabel;
    procedure qrySponsorshipAfterInsert(DataSet: TDataSet);
    procedure srcSponsorshipStateChange(Sender: TObject);
    procedure EdtPersonelNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrySponsorshipBeforePost(DataSet: TDataSet);
    procedure qrySponsorshipBeforeDelete(DataSet: TDataSet);
    procedure qrySponsorshipAfterDelete(DataSet: TDataSet);
    procedure qrySponsorshipAfterPost(DataSet: TDataSet);
    procedure actExitExecute(Sender: TObject);
    procedure sbtnPersonelNoClick(Sender: TObject);
    procedure qrySponsorshipPersonelNoChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure actSearchExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure pdbtxtStudyActiveGetText(Sender: TObject; var Text: String);
    procedure pdbtxtSexGetText(Sender: TObject; var Text: String);
    procedure pdbtxtMarriageIDGetText(Sender: TObject; var Text: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure qrySponsorshipSexGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrySponsorshipSexSetText(Sender: TField; const Text: string);
    procedure ppDBText1GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    PersonelNo: Integer;
  public
    procedure enter(Personel_No: Integer);
    procedure initFormCreate;
    { Public declarations }
  end;

var
  PersonelSponsorshipF: TPersonelSponsorshipF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage;

{$R *.dfm}

procedure TPersonelSponsorshipF.qrySponsorshipAfterInsert(DataSet: TDataSet);

begin
  inherited;
  DataSet.FieldByName('Kind').AsInteger := 0;
  DataSet.FieldByName('State').AsInteger := 0;
  if PersonelNo <> 0 then
    DataSet.FieldByName('PersonelNo').AsInteger := PersonelNo;
  EdtPersonelNo.SetFocus
end;

procedure TPersonelSponsorshipF.srcSponsorshipStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrySponsorship.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  sbtnPersonelNo.Visible := okPanel.Visible;
  actSearch.Visible := newPanel.Visible;
end;

procedure TPersonelSponsorshipF.EdtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    sbtnPersonelNo.Click;
end;

procedure TPersonelSponsorshipF.qrySponsorshipBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('_PersonelName').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not CheckRequiredFields(qrySponsorship) then
    Abort;
  TrimStringFields(qrySponsorship);
end;

procedure TPersonelSponsorshipF.qrySponsorshipBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPersonelSponsorshipF.qrySponsorshipAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('›—„ Õ–› ‘œ.', 1);
end;

procedure TPersonelSponsorshipF.qrySponsorshipAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TPersonelSponsorshipF.initFormCreate;
begin
  With qrySponsorship do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Pay.PersonelSponsorship ';
    if PersonelNo <> 0 then
    begin
      SQL.Add('WHERE PersonelNo=:PersonelNo');
      Parameters.ParamByName('PersonelNo').Value := PersonelNo;
    end;
    Active := True;
  end;
end;

procedure TPersonelSponsorshipF.enter;
begin
  PersonelSponsorshipF := TPersonelSponsorshipF.Create(Application);
  with PersonelSponsorshipF do
  begin
    try
      PersonelNo := Personel_No;
      initFormCreate;
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPersonelSponsorshipF.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPersonelSponsorshipF.sbtnPersonelNoClick(Sender: TObject);
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
    if not(qrySponsorship.State in dsEditModes) then
      exit;
    qrySponsorship['PersonelNo'] := Results[0];
  end; // if
end;

procedure TPersonelSponsorshipF.qrySponsorshipPersonelNoChange(Sender: TField);
begin
  inherited;
  qrySponsorship.FieldByName('FatherName').AsString :=
    qrySponsorship.FieldByName('_Name').AsString;
  qrySponsorship.FieldByName('lastName').AsString :=
    qrySponsorship.FieldByName('_lastName').AsString
end;

procedure TPersonelSponsorshipF.qrySponsorshipSexGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];

end;

procedure TPersonelSponsorshipF.qrySponsorshipSexSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;

end;

procedure TPersonelSponsorshipF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qrySponsorship);
  initDBComboBoxpay(cmbMarriageID, 5);
  initDBComboBoxpay(cmbkinship, 114);
  initDBComboBoxpay(cmbJobType, 115);
  initDBComboBoxpay(cmbInsuranceType, 116);
  initDBComboBoxpay(cmbDegree, 8);
end;

procedure TPersonelSponsorshipF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];

end;

procedure TPersonelSponsorshipF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);

end;

procedure TPersonelSponsorshipF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelSponsorshipF.actSearchExecute(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 4] of String;
begin
  inherited;
  Txt := 'SELECT PersonelSponsorship.ID, PersonelSponsorship.PersonelNo, PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonelName,'
    + ' PersonelSponsorship.Name, PersonelSponsorship.lastName' +
    ' FROM Pay.PersonelSponsorship INNER JOIN Pay.PersonelInfo ON PersonelSponsorship.PersonelNo = PersonelInfo.PersonelNo';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
    ['', '‘„«—Â Å—”‰·', '‰«„ Å—”‰·', ' ‰«„ ﬂ›Ì·', '‰«„ Œ«‰Ê«œêÌ'], Results,
    [0, 100, 100, 100, 100], alLeft);
  if s then
    qrySponsorship.Locate('ID', Results[0], []);
end;

procedure TPersonelSponsorshipF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TPersonelSponsorshipF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPersonelSponsorshipF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPersonelSponsorshipF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelSponsorshipF.ppDBText1GetText(Sender: TObject;
  var Text: string);
var
  sName: string;
  cmb: TDBComboBox;
begin
  inherited;
  sName := (Sender as TppDBText).DataField;
  cmb := TDBComboBox(FindComponent('Cmb' + sName));
  if cmb <> nil then
    Text := cmb.Text;
end;

procedure TPersonelSponsorshipF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPersonelSponsorshipF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'PersonelSponsorship')
end;

procedure TPersonelSponsorshipF.pdbtxtStudyActiveGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qrySponsorship.FieldByName('StudyActive').AsInteger of
    0:
      Text := 'ŒÌ—';
    1:
      Text := '»·Â';
  end;
end;

procedure TPersonelSponsorshipF.pdbtxtSexGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qrySponsorship.FieldByName('Sex').AsInteger of
    0:
      Text := '„—œ';
    1:
      Text := '“‰';
  end;
end;

procedure TPersonelSponsorshipF.pdbtxtMarriageIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := cmbMarriageID.Items
    [cmbMarriageID.Items.IndexOfObject
    (TObject(qrySponsorship.FieldByName('MarriageID').AsInteger))]
end;

end.
