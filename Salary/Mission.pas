{-------------------------------------------------------------------------------
 Unit Name: Mission
 Author:    Mahmood
-------------------------------------------------------------------------------}
unit Mission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ComCtrls, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, ppSubRpt, ppModule,
  ppRichTx, Menus, ppEndUsr, jpeg, ppVar, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions  ;

type
  TMissionF = class(Ttemplate2MDIF)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryMission: TADOQuery;
    SrcMission: TDataSource;
    sbtnMissionNo: TSpeedButton;
    EdtMissionNo: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit10: TDBEdit;
    qryPeronal_Info: TADOQuery;
    qryFormsInfo: TADOQuery;
    qryMission_PrsnNAME: TStringField;
    qryMission_companyName: TStringField;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    BtnPrint: TBitBtn;
    DBNavigator1: TDBNavigator;
    actSearchReport: TAction;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    PopMnuOthers: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    actSearch: TAction;
    N4: TMenuItem;
    Panel1: TPanel;
    Label4: TLabel;
    SBnPersonelNo: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    qryMissionMissionNo: TIntegerField;
    qryMissionMissionDate: TStringField;
    qryMissionState: TWordField;
    qryMissionPersonelNo: TIntegerField;
    qryMissionMissionPlace: TStringField;
    qryMissionCompanyCode: TIntegerField;
    qryMissionMissionStartDate: TStringField;
    qryMissionMissionEndDate: TStringField;
    qryMissionMissionTopic: TStringField;
    qryMissionTransPort: TStringField;
    qryMissionOtherTopic: TStringField;
    qryMissionAccDetailCode: TIntegerField;
    qryMissionAccCTopicCode: TIntegerField;
    qryMissionAccCTopicCode2: TIntegerField;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    Panel5: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    CmbMissionKind: TDBComboBox;
    Label16: TLabel;
    Pnlcompany: TPanel;
    SpeedButton1: TSpeedButton;
    LblPerson1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit15: TDBEdit;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qryMissionMissionID: TAutoIncField;
    actacc: TAction;
    actPersonelInfoF: TAction;
    N1: TMenuItem;
    Panel6: TPanel;
    BtnAccInterdicts: TBitBtn;
    qryMission_companyId: TIntegerField;
    qryMissionMissionFunction: TFloatField;
    DBEdit4: TDBEdit;
    qryMissionMissionKind: TIntegerField;
    ppDetailBand1: TppDetailBand;
    ppPageStyle1: TppPageStyle;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppDBText10: TppDBText;
    ppLblemployDaytime: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel15: TppLabel;
    ppDBText25: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    qryMissionAccTopicCode: TLargeintField;
    qryMissionAccCTopicCode3: TIntegerField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbtnMissionNoClick(Sender: TObject);
    procedure SBnPersonelNoClick(Sender: TObject);
    procedure qryMissionAfterInsert(DataSet: TDataSet);
    procedure SrcMissionStateChange(Sender: TObject);
    procedure qryMissionBeforePost(DataSet: TDataSet);
    procedure qryMissionAfterPost(DataSet: TDataSet);
    procedure qryMissionBeforeDelete(DataSet: TDataSet);
    procedure qryMissionAfterDelete(DataSet: TDataSet);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPrintExecute(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure qryMissionALLGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qryMissionALLSetText(Sender: TField; const Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure actaccExecute(Sender: TObject);
    procedure actPersonelInfoFExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryMissionMissionFunctionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryMissionMissionStartDateChange(Sender: TField);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
  private
    function  ValidMissionNo(MissionNo:String;MissionID: Integer): Boolean;
    procedure InitForm;
    { Private declarations }
  public
    FormType:Integer;
    procedure Enter(Form_Type: Integer);
    { Public declarations }
  end;

var
  MissionF: TMissionF;

implementation

uses DM, Math, search2, sort2, GlobalPro,
     mmessage,  searchCode_ADO, DateUtils, main,
     shamsiDate, PersonelInfo, GetExcel, mdiMain, AccountP;

{$R *.dfm}

procedure TMissionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  sbtnMissionNo.Click;
end;

procedure TMissionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMission);
end;

procedure TMissionF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryMission);
end;

procedure TMissionF.InitForm;
begin
  initDBComboBoxpay(CmbMissionKind,FormType);
  lblCaption.Hint:=IntToStr(FormType);
  with qryFormsInfo do begin
    Active:=False;
    Active:=True;
  end;//with
  with qryPeronal_Info do begin
    Active:=False;
    Active:=True;
  end;//with
  with qryMission do begin
    Active:=False;
    Active:=True;
    Last ;
  end;//with
end;

procedure TMissionF.Enter;
begin
  CreateMDIForm2(TMissionF,MissionF,mainF,Form_Type);
  MissionF.FormType:=Form_Type;
  MissionF.InitForm;
  ColorDBEdits(MissionF);
end;

procedure TMissionF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryMission);
end;

procedure TMissionF.sbtnMissionNoClick(Sender: TObject);
var
  Txt,TxtL1_L2:  String;
  s:Boolean;
  Results:  array[0..11] of String;
begin
  inherited;
  TxtL1_L2:='PersonelInfo.name_L1,PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1,';
  if optP.primaryLanguage<>0  then
    TxtL1_L2:='PersonelInfo.name_L1, PersonelInfo.name_L2, PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, PersonelInfo.fatherName_L1, PersonelInfo.fatherName_L2, ';
  Txt:='SELECT Mission.MissionID,Mission.MissionNo, Mission.MissionDate, Mission.PersonelNo,  '+TxtL1_L2+
       'PersonelInfo.IDNumber, PersonelInfo.NationalID '+
       'FROM Pay.Mission INNER JOIN '+
       'Pay.PersonelInfo ON Mission.PersonelNo = PersonelInfo.PersonelNo ';
  if optP.primaryLanguage<>0  then
    s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,Caption, txt,
      ['','‘„«—Â Õﬂ„',' «—ÌŒ Õﬂ„','‘„«—Â Å—”‰·','‰«„ “»«‰1','‰«„ “»«‰2',' ‰«„ Œ«‰Ê«œêÌ “»«‰1','‰«„ Œ«‰Ê«œêÌ “»«‰2','‰«„ Åœ— “»«‰1','‰«„ Åœ— “»«‰','‘„«—Â ‘‰«”‰«„Â','ﬂœ „·Ì'],
      Results,[0,10,100,100,100,100,100,100,100,100,100,10,50],alLeft)
  else  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,Caption, txt,
        ['','‘„«—Â Õﬂ„',' «—ÌŒ Õﬂ„','‘„«—Â Å—”‰·','‰«„ ',' ‰«„ Œ«‰Ê«œêÌ ','‰«„ Åœ—','‘„«—Â ‘‰«”‰«„Â','ﬂœ „·Ì'],
        Results,[0,10,50,80,100,100,100,100,100,100],alLeft);

  if s then
     qryMission.Locate('MissionID',Results[0],[]);
end;

procedure TMissionF.SBnPersonelNoClick(Sender: TObject);
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

  if s then begin
    if not (qryMission.state in dsEditModes) then   exit;
    qryMission['PersonelNo']:=Results[0];
  end;//if
end;

procedure TMissionF.qryMissionAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('MissionNo').AsInteger:=
         GetANewCode('','SELECT MAX(CONVERT(float, MissionNo)) AS Expr1 FROM Pay.Mission','MissionNo');
  DataSet.FieldByName('MissionDate').AsString:=var_glb_CurrentDate;
  DataSet.FieldByName('MissionStartDate').AsString:=var_glb_CurrentDate;
  DataSet.FieldByName('MissionEndDate').AsString:=var_glb_CurrentDate;
  DataSet.FieldByName('State').AsInteger:=0;
  EdtMissionNo.SetFocus
end;

procedure TMissionF.SrcMissionStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryMission.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
  SBnPersonelNo.Enabled:=okPanel.Visible;
  sbtnMissionNo.Visible:=not okPanel.Visible;
end;

procedure TMissionF.qryMissionBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('MissionFunction').AsFloat:=RoundTo(DataSet.FieldByName('MissionFunction').AsFloat,-2);
  if not ValidateDatasetDates(DataSet,APPBank.StartYear ,APPBank.endYear) then Abort;
  if (DataSet.FieldByName('MissionEndDate').AsString<
      DataSet.FieldByName('MissionStartDate').AsString) then begin
        Warn(' «—ÌŒ Å«Ì«‰ „«„Ê—Ì  ‰„Ì  Ê«‰œ «“  «—ÌŒ ‘—Ê⁄ „«„Ê—Ì  òÊçò — »«‘œ.˛');
        Abort;
  end;//if
  if not CheckRequiredFields(qryMission) then Abort;
  if not ValidMissionNo(DataSet.FieldByName('MissionNo').AsString,
                 DataSet.FieldByName('MissionID').AsInteger) then Abort;
  TrimStringFields(qryMission);
end;

function TMissionF.ValidMissionNo;
begin
  Result:=False;
  With DMF.qryTmpTmpp do begin
    Active:=False;
    SQL.Text:='SELECT COUNT(*) FROM Pay.Mission WHERE(MissionNo='''
              +MissionNo+''')AND (MissionID <> '+IntToStr(MissionID)+')';
    Active:=True;
    if (Fields[0].AsInteger<>0) then begin
       Warn('‘„«—Â „«„Ê—Ì  Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
       EdtMissionNo.SetFocus;
       Exit;
    end;//if
    Active:=False;
  end;//with
  Result:=True;
end;

procedure TMissionF.qryMissionAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»‹‹  ‘œ',1);
end;

procedure TMissionF.qryMissionBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.')<>mrYes then Abort;
end;

procedure TMissionF.qryMissionAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ',1);
end;

procedure TMissionF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_SPACE then SBnPersonelNo.Click
end;

procedure TMissionF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_SPACE then SpeedButton1.Click
end;

procedure TMissionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  MakeMenuItem(FormType,AllClikPopClick,PopList4Print);
  try
    qryMission.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  finally
    qryMission.EnableControls;
  end;
end;

procedure TMissionF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,(Sender as TMenuItem).Hint);
end;

procedure TMissionF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryMission);
end;

procedure TMissionF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TMissionF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMission);
end;

procedure TMissionF.qryMissionALLGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TMissionF.qryMissionALLSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(TDBComboBox(FindComponent('Cmb' +
  Sender.FieldName)).Items.Objects[TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;        

procedure TMissionF.actaccExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryMission)
end;

procedure TMissionF.actPersonelInfoFExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',qryMission.Fieldbyname('PersonelNo').AsInteger,[])
end;

procedure TMissionF.SpeedButton1Click(Sender: TObject);
var
   s:Boolean;
   sqlText: String;
   Results: array[0..2] of String;
begin
  inherited;              
  sqlText :='SELECT FormsInfo.InfoID, FormsInfo.FormInfoID, ISNULL(FormsInfo_1.InfoName_L1 + '' - '', '''') + FormsInfo.InfoName_L1 AS InfoName_L1 '+
            ' FROM Pay.FormsInfo LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_1 ON FormsInfo.PrvInfoID = FormsInfo_1.FormInfoID '+
            ' WHERE  FormsInfo.FormType = 41';
  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,' ﬂœ Ê ‰«„ ‘—ﬂ ', sqlText,
  ['ﬂœ','','⁄‰Ê«‰'],Results,[50,0,100],alLeft);
  if s then begin
   if not (qryMission.state in dsEditModes) then   qryMission.edit;
     qryMission.fieldbyname('CompanyCode').AsString:=Results[1];
  end;//if
end;

procedure TMissionF.qryMissionMissionFunctionGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=FloatToStr(RoundTo(Sender.AsFloat,-2))
end;

procedure TMissionF.qryMissionMissionStartDateChange(Sender: TField);
begin
  inherited;            
  qryMission.FieldByName('MissionFunction').AsFloat:=
   DaysBetween(Shamsi2Miladi(qryMission.fieldbyname('MissionStartDate').AsString),
               Shamsi2Miladi(qryMission.fieldbyname('MissionEndDate').AsString))+1;

end;

procedure TMissionF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

end.


