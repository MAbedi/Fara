unit RecInMinistry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBCtrls, Mask, Buttons, ppDB,
  ppDBPipe, ppModule, ppMemo, ppCtrls, ppStrtch, ppRegion,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, ADODB, DBActns, ActnList, ExtCtrls, ImgList, Grids, Vcl.DBGrids, ppVar,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TRecInMinistryF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    qryRecInMinistry: TADOQuery;
    srcRecInMinistry: TDataSource;
    Panel3: TPanel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    ImageList1: TImageList;
    actPrint: TAction;
    actSearch: TAction;
    actExit: TAction;
    LblTopicTypes: TLabel;
    cmbCity: TDBComboBox;
    grpMaster: TGroupBox;
    sbtnPersonelNo: TSpeedButton;
    EdtPersonelNo: TDBEdit;
    DBEdit1: TDBEdit;
    qryPersonelInfo: TADOQuery;
    qryRecInMinistryID: TAutoIncField;
    qryRecInMinistryPersonelNo: TIntegerField;
    qryRecInMinistry_PersonelName: TStringField;
    Label1: TLabel;
    edtOfDate: TDBEdit;
    Label3: TLabel;
    edtOrganizationalPosition: TDBEdit;
    Label4: TLabel;
    edtToDate: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    grpUnit: TGroupBox;
    qryRecInMinistry_Name: TStringField;
    qryRecInMinistry_lastName: TStringField;
    cmbSectionAcademic: TDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    cmbEmploymentStatus: TDBComboBox;
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
    ppLine1: TppLine;
    cmbSection: TDBComboBox;
    Label7: TLabel;
    cmbEmploymentType: TDBComboBox;
    Label8: TLabel;
    cmbOfficeCode: TDBComboBox;
    Label16: TLabel;
    qryRecInMinistryOfDate: TStringField;
    qryRecInMinistryToDate: TStringField;
    qryRecInMinistrySectionAcademic: TIntegerField;
    qryRecInMinistryEmploymentType: TIntegerField;
    qryRecInMinistryjob: TStringField;
    qryRecInMinistryOfficeCode: TIntegerField;
    qryRecInMinistryOrganizationalPosition: TStringField;
    qryRecInMinistryCity: TIntegerField;
    qryRecInMinistrySection: TIntegerField;
    qryRecInMinistryRuralDistrict: TIntegerField;
    qryRecInMinistryEmploymentStatus: TIntegerField;
    qryRecInMinistryTypeHistory: TIntegerField;
    qryRecInMinistryDeputy: TIntegerField;
    qryRecInMinistryGeneralOffice: TIntegerField;
    qryRecInMinistryOffice: TIntegerField;
    Label2: TLabel;
    cmbRuralDistrict: TDBComboBox;
    cmbTypeHistory: TDBComboBox;
    Label6: TLabel;
    cmbGeneralOffice: TDBComboBox;
    cmbOffice: TDBComboBox;
    Label13: TLabel;
    Label11: TLabel;
    cmbDeputy: TDBComboBox;
    Label12: TLabel;
    medtPersonelNo: TMaskEdit;
    qryRecInMinistryday: TWideStringField;
    qryRecInMinistryLimit: TWideStringField;
    procedure qryRecInMinistryAfterInsert(DataSet: TDataSet);
    procedure srcRecInMinistryStateChange(Sender: TObject);
    procedure EdtPersonelNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryRecInMinistryBeforePost(DataSet: TDataSet);
    procedure qryRecInMinistryBeforeDelete(DataSet: TDataSet);
    procedure qryRecInMinistryAfterDelete(DataSet: TDataSet);
    procedure qryRecInMinistryAfterPost(DataSet: TDataSet);
    procedure actExitExecute(Sender: TObject);
    procedure sbtnPersonelNoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure actSearchExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure medtPersonelNoExit(Sender: TObject);
  private
    { Private declarations }
    PersonelNo:Integer;
  public
     procedure enter(Personel_No: Integer);
     procedure initFormCreate;
    { Public declarations }
  end;

var
  RecInMinistryF: TRecInMinistryF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage;

{$R *.dfm}

procedure TRecInMinistryF.qryRecInMinistryAfterInsert(DataSet: TDataSet);

begin
  inherited;
  if PersonelNo = 0 then
  begin
    sbtnPersonelNo.Click;
    DataSet.Insert;
  end;
  DataSet.FieldByName('PersonelNo').AsInteger:=PersonelNo;
  edtOfDate.SetFocus
end;

procedure TRecInMinistryF.srcRecInMinistryStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryRecInMinistry.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  btnClose.Cancel:=newPanel.Visible;
//  sbtnPersonelNo.Visible:=okPanel.Visible;
  actSearch.Visible:=newPanel.Visible;
end;

procedure TRecInMinistryF.EdtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=32 then sbtnPersonelNo.Click;
end;

procedure TRecInMinistryF.qryRecInMinistryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('_PersonelName').IsNull then
  begin
     DataSet.Cancel;
     Abort
  end;
  if not ValidateDatasetDates(DataSet) then Abort;
  if not CheckRequiredFields(qryRecInMinistry) then Abort;
  TrimStringFields(qryRecInMinistry);
end;

procedure TRecInMinistryF.qryRecInMinistryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TRecInMinistryF.qryRecInMinistryAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('›—„ Õ–› ‘œ.',1);
end;

procedure TRecInMinistryF.qryRecInMinistryAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
end;

procedure TRecInMinistryF.initFormCreate;
begin
  With qryRecInMinistry do
  begin
    Active:=False;
//    SQL.Text:='SELECT * FROM Pay.RecInMinistry ';
  //  SQL.Add('WHERE PersonelNo=:PersonelNo');
    Parameters.ParamByName('PersonelNo').Value:=PersonelNo;
    Active:=True;
  end;
end;

procedure TRecInMinistryF.medtPersonelNoExit(Sender: TObject);
begin
  inherited;
  PersonelNo:=StrToInt(Trim(medtPersonelNo.Text));
  initFormCreate;
end;

procedure TRecInMinistryF.enter;
begin
 RecInMinistryF:=TRecInMinistryF.Create(Application);
 with RecInMinistryF do
 begin
   try
     PersonelNo:=Personel_No;
     initFormCreate;
     ShowModal;
   finally
     Free;
   end;//try
 end;//with
end;

procedure TRecInMinistryF.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TRecInMinistryF.sbtnPersonelNoClick(Sender: TObject);
var
  Txt,TxtL1_L2:  String;
  s:Boolean;
  Results:  array[0..8] of String;
begin
  inherited;
  TxtL1_L2:=' name_L1, lastName_L1,  fatherName_L1';
  if optP.primaryLanguage<>0  then  TxtL1_L2:=' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt:='SELECT  PersonelNo,'+TxtL1_L2+', NationalID, IDNumber '+
       'FROM Pay.PersonelInfo ';
  //Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage<>0  then
    s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'„‘Œ’«  Å—”‰·', txt,
      ['‘„«—Â Å—”‰·','‰«„','Name',' ‰«„ Œ«‰Ê«œêÌ','lastName','‰«„ Åœ— ','fatherName','‘„«—Â ‘‰«”‰«„Â','ﬂœ „·Ì'],
      Results,[10,100,100,100,100,100,100,100,50],alLeft)
  else  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'„‘Œ’«  Å—”‰·', txt,
        ['‘„«—Â Å—”‰·','‰«„ ',' ‰«„ Œ«‰Ê«œêÌ','‰«„ Åœ—','‘„«—Â ‘‰«”‰«„Â','ﬂœ „·Ì'],
        Results,[10,100,100,100,100,100],alLeft);

  if s then
  begin
    medtPersonelNo.Text:=Results[0];
    PersonelNo:=StrToInt(Trim(medtPersonelNo.Text));
    initFormCreate;
  end;//if
end;

procedure TRecInMinistryF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryRecInMinistry);
  initDBComboBoxpay(cmbCity,1);
  initDBComboBoxpay(cmbSectionAcademic,8);
  initDBComboBoxpay(cmbEmploymentStatus,3);
  initDBComboBoxpay(cmbSection,99);
  initDBComboBoxpay(cmbEmploymentType,14);
  initDBComboBoxpay(cmbOfficeCode,12);
  initDBComboBoxpay(cmbRuralDistrict,100);

  initDBComboBoxpay(cmbGeneralOffice,104);
  initDBComboBoxpay(cmbOffice,105);
  initDBComboBoxpay(cmbDeputy,103);

end;

procedure TRecInMinistryF.ALLGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.IndexOfObject(TObject(Sender.AsInteger))];
end;
procedure TRecInMinistryF.AllSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(TDBComboBox(FindComponent('Cmb' +
  Sender.FieldName)).Items.Objects[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TRecInMinistryF.actSearchExecute(Sender: TObject);
var
  Txt:  String;
  s:Boolean;
  Results:  array[0..4] of String;
begin
  inherited;
  Txt:='SELECT RecInMinistry.ID, RecInMinistry.PersonelNo, PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonelName,' +
	 	  	' RecInMinistry.OfDate, RecInMinistry.TODate' +
	  		' FROM Pay.RecInMinistry INNER JOIN Pay.PersonelInfo ON RecInMinistry.PersonelNo = PersonelInfo.PersonelNo';
  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'„‘Œ’«  Å—”‰·', txt,
        ['','‘„«—Â Å—”‰·','‰«„ Å—”‰·','«“  «—ÌŒ',' «  «—ÌŒ'],
        Results,[0,100,100,100,100],alLeft);
  if s then
     qryRecInMinistry.Locate('ID',Results[0],[]);
end;

procedure TRecInMinistryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TRecInMinistryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRecInMinistryF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate
end;

procedure TRecInMinistryF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TRecInMinistryF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TRecInMinistryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'RecInMinistry')
end;

end.


