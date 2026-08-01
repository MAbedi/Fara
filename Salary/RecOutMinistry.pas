unit RecOutMinistry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBCtrls, Mask, Buttons, ppDB,
  ppDBPipe, ppModule, ppMemo, ppCtrls, ppStrtch, ppRegion,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, ADODB, DBActns, ActnList, ExtCtrls, ImgList, Grids, Vcl.DBGrids, ppVar,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TRecOutMinistryF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    qryRecOutMinistry: TADOQuery;
    srcRecOutMinistry: TDataSource;
    Panel3: TPanel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    ImageList1: TImageList;
    actPrint: TAction;
    actSearch: TAction;
    actExit: TAction;
    LblTopicTypes: TLabel;
    cmbjobID: TDBComboBox;
    grpMaster: TGroupBox;
    EdtPersonelNo: TDBEdit;
    DBEdit1: TDBEdit;
    qryPersonelInfo: TADOQuery;
    qryRecOutMinistryID: TAutoIncField;
    qryRecOutMinistryPersonelNo: TIntegerField;
    qryRecOutMinistry_PersonelName: TStringField;
    Label1: TLabel;
    edtOfDate: TDBEdit;
    Label3: TLabel;
    edtResolutionDate: TDBEdit;
    Label4: TLabel;
    edtToDate: TDBEdit;
    DBGrid1: TDBGrid;
    qryRecOutMinistry_Name: TStringField;
    qryRecOutMinistry_lastName: TStringField;
    cmbSectionAcademic: TDBComboBox;
    Label9: TLabel;
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
    Label7: TLabel;
    cmbEmploymentType: TDBComboBox;
    Label8: TLabel;
    cmbBudget: TDBComboBox;
    Label16: TLabel;
    qryRecOutMinistryOfDate: TStringField;
    qryRecOutMinistryToDate: TStringField;
    qryRecOutMinistrySectionAcademic: TIntegerField;
    qryRecOutMinistryEmploymentType: TIntegerField;
    Label2: TLabel;
    cmbServiceLocation: TDBComboBox;
    cmbWorkType: TDBComboBox;
    Label5: TLabel;
    qryRecOutMinistryWorkType: TIntegerField;
    qryRecOutMinistryBudget: TIntegerField;
    qryRecOutMinistryServiceLocation: TIntegerField;
    qryRecOutMinistryjobID: TIntegerField;
    qryRecOutMinistryResolutionNo: TStringField;
    qryRecOutMinistryResolutionDate: TStringField;
    qryRecOutMinistryDocumentationT: TStringField;
    qryRecOutMinistryDocumentationM: TStringField;
    qryRecOutMinistryDocumentationS: TStringField;
    qryRecOutMinistryTypeHistory: TIntegerField;
    qryRecOutMinistryContactHistory: TIntegerField;
    qryRecOutMinistryEmploymentStatus: TIntegerField;
    qryRecOutMinistryFractionFront: TBCDField;
    edtResolutionNo: TDBEdit;
    edtDocumentationT: TDBEdit;
    Label14: TLabel;
    edtDocumentationM: TDBEdit;
    Label6: TLabel;
    edtDocumentationS: TDBEdit;
    Label15: TLabel;
    Label10: TLabel;
    cmbTypeHistory: TDBComboBox;
    cmbContactHistory: TDBComboBox;
    Label17: TLabel;
    cmbEmploymentStatus: TDBComboBox;
    Label11: TLabel;
    edtFractionFront: TDBEdit;
    Label12: TLabel;
    sbtnPersonelNo: TSpeedButton;
    medtPersonelNo: TMaskEdit;
    qryRecOutMinistryday: TWideStringField;
    qryRecOutMinistryLimit: TWideStringField;
    procedure qryRecOutMinistryAfterInsert(DataSet: TDataSet);
    procedure srcRecOutMinistryStateChange(Sender: TObject);
    procedure EdtPersonelNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryRecOutMinistryBeforePost(DataSet: TDataSet);
    procedure qryRecOutMinistryBeforeDelete(DataSet: TDataSet);
    procedure qryRecOutMinistryAfterDelete(DataSet: TDataSet);
    procedure qryRecOutMinistryAfterPost(DataSet: TDataSet);
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
  RecOutMinistryF: TRecOutMinistryF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage;

{$R *.dfm}

procedure TRecOutMinistryF.qryRecOutMinistryAfterInsert(DataSet: TDataSet);

begin
  inherited;
  if PersonelNo = 0 then
  begin
    sbtnPersonelNo.Click;
    DataSet.Insert;
  end;
  DataSet.FieldByName('PersonelNo').AsInteger:=PersonelNo;
  EdtPersonelNo.SetFocus
end;

procedure TRecOutMinistryF.srcRecOutMinistryStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryRecOutMinistry.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  btnClose.Cancel:=newPanel.Visible;
  actSearch.Visible:=newPanel.Visible;
end;

procedure TRecOutMinistryF.EdtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=32 then sbtnPersonelNo.Click;
end;

procedure TRecOutMinistryF.qryRecOutMinistryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('_PersonelName').IsNull then
  begin
     DataSet.Cancel;
     Abort
  end;
  if not ValidateDatasetDates(DataSet) then Abort;
  if not CheckRequiredFields(qryRecOutMinistry) then Abort;
  TrimStringFields(qryRecOutMinistry);
end;

procedure TRecOutMinistryF.qryRecOutMinistryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TRecOutMinistryF.qryRecOutMinistryAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('›—„ Õ–› ‘œ.',1);
end;

procedure TRecOutMinistryF.qryRecOutMinistryAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
end;

procedure TRecOutMinistryF.initFormCreate;
begin
  With qryRecOutMinistry do
  begin
    Active:=False;
    Parameters.ParamByName('PersonelNo').Value:=PersonelNo;
    Active:=True;
  end;
end;

procedure TRecOutMinistryF.medtPersonelNoExit(Sender: TObject);
begin
  inherited;
  PersonelNo:=StrToInt(Trim(medtPersonelNo.Text));
  initFormCreate;
end;

procedure TRecOutMinistryF.enter;
begin
 RecOutMinistryF:=TRecOutMinistryF.Create(Application);
 with RecOutMinistryF do
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

procedure TRecOutMinistryF.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TRecOutMinistryF.sbtnPersonelNoClick(Sender: TObject);
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

procedure TRecOutMinistryF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryRecOutMinistry);
  initDBComboBoxpay(cmbEmploymentStatus,3);
  initDBComboBoxpay(cmbjobID,19);
  initDBComboBoxpay(cmbSectionAcademic,8);
  initDBComboBoxpay(cmbEmploymentType,14);
  initDBComboBoxpay(cmbServiceLocation,107);
end;

procedure TRecOutMinistryF.ALLGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.IndexOfObject(TObject(Sender.AsInteger))];
end;
procedure TRecOutMinistryF.AllSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(TDBComboBox(FindComponent('Cmb' +
  Sender.FieldName)).Items.Objects[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TRecOutMinistryF.actSearchExecute(Sender: TObject);
var
  Txt:  String;
  s:Boolean;
  Results:  array[0..4] of String;
begin
  inherited;
  Txt:='SELECT RecOutMinistry.ID, RecOutMinistry.PersonelNo, PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonelName,' +
	 	  	' RecOutMinistry.OfDate, RecOutMinistry.TODate' +
	  		' FROM Pay.RecOutMinistry INNER JOIN Pay.PersonelInfo ON RecOutMinistry.PersonelNo = PersonelInfo.PersonelNo';
  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'„‘Œ’«  Å—”‰·', txt,
        ['','‘„«—Â Å—”‰·','‰«„ Å—”‰·','«“  «—ÌŒ',' «  «—ÌŒ'],
        Results,[0,100,100,100,100],alLeft);
  if s then
     qryRecOutMinistry.Locate('ID',Results[0],[]);
end;

procedure TRecOutMinistryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TRecOutMinistryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRecOutMinistryF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate
end;

procedure TRecOutMinistryF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TRecOutMinistryF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TRecOutMinistryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'RecOutMinistry')
end;

end.



