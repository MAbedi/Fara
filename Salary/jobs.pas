unit jobs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Buttons,
  Tabs, DockTabSet, DB, ADODB, Mask, DBCtrls, Grids, Vcl.DBGrids, ComCtrls,sndkey32,
  System.ImageList, System.Actions;

type
  TjobsF = class(Ttemplate2MDIF)
    qryjobs: TADOQuery;
    qryjobsjobCode: TIntegerField;
    qryjobsjobName: TStringField;
    qryjobsJobLocation: TIntegerField;
    qryjobsOrganPos: TIntegerField;
    qryjobsOrganizational: TIntegerField;
    qryjobsGroupCode: TIntegerField;
    qryjobsJobDefinition: TStringField;
    qryjobsCreationDate: TStringField;
    DockTabSet1: TDockTabSet;
    TabSet1: TTabSet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    qryJobLocation19: TADOQuery;
    qryOrganPos103: TADOQuery;
    qryOrganizational13: TADOQuery;
    qryCategory18: TADOQuery;
    qryjobsItems: TADOQuery;
    qryjobsTerms: TADOQuery;
    qryjobsItemsID: TAutoIncField;
    qryjobsItemsjobCode: TIntegerField;
    qryjobsItemsDescriptions: TStringField;
    qryjobsItemsInfoKind: TSmallintField;
    qryjobsTermsLicenceCode: TIntegerField;
    qryjobsTermsStudyField: TIntegerField;
    qryjobsTermsExperienceYear: TBCDField;
    qryjobsTermsExperienceMonth: TBCDField;
    qryjobsTermsDuration: TBCDField;
    qryjobsTermsMinPoints: TBCDField;
    qryjobsTermsMaxPoints: TBCDField;
    qryjobsTermsPercentExtra: TBCDField;
    qryjobsTermsJobLevel: TIntegerField;
    qryjobsTermsTestCondition: TIntegerField;
    qryjobsTermsNote: TStringField;
    srcjobs: TDataSource;
    srcjobsItems: TDataSource;
    srcjobsTerms: TDataSource;
    lbl1: TLabel;
    dbedtjobCode: TDBEdit;
    lbl2: TLabel;
    dbedt2: TDBEdit;
    LblPerson1: TLabel;
    dbedtJobLocation: TDBEdit;
    btnJobLocation: TSpeedButton;
    dbedt_JobLocation: TDBEdit;
    qryjobs_JobLocation: TStringField;
    qryjobs_OrganPos: TStringField;
    qryjobs_Organizational: TStringField;
    Label1: TLabel;
    dbedtOrganPos: TDBEdit;
    btnOrganPos: TSpeedButton;
    dbedt_OrganPos: TDBEdit;
    Label2: TLabel;
    dbedtOrganizational: TDBEdit;
    btnOrganizational: TSpeedButton;
    dbedt_Organizational: TDBEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    dbgrdjobsTerms: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    tbcjobsItems: TTabControl;
    dbgrdjobsItems: TDBGrid;
    qryjobsTermsID: TAutoIncField;
    qryjobsTermsjobCode: TIntegerField;
    btnjobCode: TSpeedButton;
    qryFormsInfo: TADOQuery;
    qryjobsGradeID: TIntegerField;
    qryjobsRankID: TIntegerField;
    qryjobs_GradeName: TStringField;
    qryjobs_RankName: TStringField;
    edtGroupCode: TDBEdit;
    edt_GradeName: TDBEdit;
    btnGrade: TSpeedButton;
    edtGradeID: TDBEdit;
    edtRankID: TDBEdit;
    btnRank: TSpeedButton;
    edt_RankName: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnGroup: TSpeedButton;
    strngfld: TStringField;
    edt_GroupID: TDBEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qryJobPromissory: TADOQuery;
    qryJobPromissoryjobCode: TIntegerField;
    qryJobPromissoryPromRunDate: TStringField;
    qryJobPromissoryPromAmount: TBCDField;
    srcJobPromissory: TDataSource;
    procedure btnJobLocationClick(Sender: TObject);
    procedure srcjobsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedtJobLocationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOrganPosClick(Sender: TObject);
    procedure btnOrganizationalClick(Sender: TObject);
    procedure tbcjobsItemsChange(Sender: TObject);
    procedure qryjobsAfterScroll(DataSet: TDataSet);
    procedure dbgrdjobsTermsKeyPress(Sender: TObject; var Key: Char);
    procedure MyGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure MySetText(Sender: TField; const Text: String);
    procedure qryjobsAfterPost(DataSet: TDataSet);
    procedure qryjobsTermsAfterEdit(DataSet: TDataSet);
    procedure qryjobsTermsBeforePost(DataSet: TDataSet);
    procedure qryjobsItemsBeforePost(DataSet: TDataSet);
    procedure qryjobsTermsBeforeEdit(DataSet: TDataSet);
    procedure qryjobsTermsAfterInsert(DataSet: TDataSet);
    procedure qryjobsItemsAfterInsert(DataSet: TDataSet);
    procedure qryjobsAfterInsert(DataSet: TDataSet);
    procedure btnjobCodeClick(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure btnRankClick(Sender: TObject);
    procedure qryJobPromissoryAfterInsert(DataSet: TDataSet);
    procedure qryJobPromissoryBeforePost(DataSet: TDataSet);
  private
    procedure gridkeyenter(Sender: TObject; var key: char);
    procedure initPickLists(FormType:Integer;ColumnName:string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jobsF: TjobsF;

implementation

uses
  DM, GlobalPro, searchCode_TreeView, searchCode_ADO, mmessage;

{$R *.dfm}

procedure TjobsF.btnGradeClick(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  b := searchCode_TreeViewF.SearchTree(DMf.adcSalary, 'رتبه(27)', 27,
    Results, alLeft);
  if b then
  begin
    if not(qryjobs.state in dsEditModes) then
      exit;
    qryjobs['GradeID']:=Results[0];
  end;//if
end;

procedure TjobsF.btnGroupClick(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  b:=searchCode_TreeViewF.SearchTree(DMf.adcSalary,'گروه(68)' ,68, results ,alLeft);
  if b then
  begin
    if not (qryjobs.state in dsEditModes) then   exit;
    qryjobs['GroupCode']:=Results[0];
  end;//if
end;
procedure TjobsF.btnjobCodeClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  Txt:='SELECT  jobCode,jobName FROM Pay.jobs';
  b:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'مشاغل', txt,
            ['كد شغل','نام'],Results,[100,250],alLeft);
  if b then
     qryjobs.Locate('jobCode',Results[0],[]);

end;

procedure TjobsF.btnJobLocationClick(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  b:=searchCode_TreeViewF.SearchTree(DMf.adcSalary,'رشته های شغلی(18)' ,18, results ,alLeft);
  if b then
  begin
    if not (qryjobs.state in dsEditModes) then   exit;
    qryjobs['JobLocation']:=Results[0];
  end;//if
end;

procedure TjobsF.btnOrganizationalClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..2] of String;
begin
  inherited;
  Txt:=qryOrganizational13.SQL.Text;
    b:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'پست سازمانی(13)', txt,
      ['','کد','عنوان'], Results,[0,100,200],alLeft);
  if b then
  begin
    if not (qryjobs.state in dsEditModes) then   exit;
    qryjobs['Organizational']:=Results[0];
  end;//if
end;

procedure TjobsF.btnOrganPosClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..2] of String;
begin
  inherited;
  Txt:=qryOrganPos103.SQL.Text;
    b:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'جایگاه سازمانی(103)', txt,
      ['','کد','عنوان'], Results,[0,100,200],alLeft);
  if b then
  begin
    if not (qryjobs.state in dsEditModes) then   exit;
    qryjobs['OrganPos']:=Results[0];
  end;//if
end;

procedure TjobsF.btnRankClick(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  b:=searchCode_TreeViewF.SearchTree(DMf.adcSalary,'پایه(78)' ,78, results ,alLeft);
  if b then
  begin
    if not (qryjobs.state in dsEditModes) then   exit;
    qryjobs['RankID']:=Results[0];
  end;//if
end;

procedure TjobsF.dbedtJobLocationKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_SPACE then TSpeedButton( FindComponent('btn'+(Sender as TDBEdit).DataField) ).Click

end;

procedure TjobsF.dbgrdjobsTermsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender,key);
end;

procedure TjobsF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  Grd: TDBGrid;
//  aDataSet: TDataSet;
//  c:  String;
begin
  Grd:=(Sender as TDBGrid);
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:
    begin
      if shiftDown then exit;
//      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;
  //    case curIndex of
        if curIndex<Grd.Columns.Count then
           nextIndex:=curIndex+1
        else
           nextIndex:=-1;
//        0: nextIndex:=1;
//        1: nextIndex:=2;
//        2: nextIndex:=3;
//        3: nextIndex:=4;
//        4: nextIndex:=-1;
//      end;//case
    end;//#13
    '+':
    begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not (Grd.Columns[nextIndex].Visible) OR (Grd.Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':
    begin
      key:=#0;
      SendKeys('000',false);
    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
    #32,#157:  if Grd.Columns[curIndex].ButtonStyle=cbsEllipsis then
    begin
      key:=#0;
      //DBGrid3EditButtonClick(sender);
    end;//if
  end;//case
  if nextIndex>=0 then
    while (nextIndex<Grd.Columns.Count) and (not (Grd.Columns[nextIndex].Visible) OR (Grd.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
  if (curindex<>nextindex) then
    case nextindex of
       -1: begin
            sendkey(vk_down,[],false);
            (sender as TDBGrid).selectedindex:=0;
          end;//0
       -2:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,0,0);
            end;//-2
       -3:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,1,0);
            end;//-3
       else
            (sender as TDBGrid).selectedindex:=nextIndex;
    end;//case

end;

procedure TjobsF.MyGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col:TColumn;
begin
  inherited;
  col := dbgrdjobsTerms.Columns[ColumnIndexByFieldName(dbgrdjobsTerms,Sender.FieldName)];
  if col.PickList.IndexOfObject(TObject(Sender.asinteger)) <> -1 then
  Text:= col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TjobsF.MySetText(Sender: TField; const Text: String);
var
  col:TColumn;
  i : Integer;
begin
  inherited;
  col:=dbgrdjobsTerms.Columns[ColumnIndexByFieldName(dbgrdjobsTerms,Sender.FieldName)];
  I :=col.PickList.IndexOf(Text);
  if I <> -1 then Sender.AsInteger :=integer( col.PickList.Objects[i])
end;

procedure TjobsF.initPickLists(FormType:Integer;ColumnName:string);
var
  aIndex:Integer;
begin
  aIndex:=ColumnIndexByFieldName(dbgrdjobsTerms,ColumnName);
  dbgrdjobsTerms.Columns[aIndex].PickList.Clear;
  with DMF.qryTmpTmpp do
  begin
    Active:=False;
    SQL.Text:='SELECT  FormInfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo '+
              'WHERE   FormType = :FormType ';
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=True;
    while not eof do
    begin
      dbgrdjobsTerms.Columns[aIndex].PickList.AddObject(Fields[1].AsString,TObject(Fields[0].AsInteger));
      Next;
    end;
    Active:=False;
  end;
end;

procedure TjobsF.FormCreate(Sender: TObject);
begin
  inherited;
  initPickLists(8,'LicenceCode');
  initPickLists(10,'StudyField');
  initPickLists(113,'JobLevel');
  initPickLists(114,'TestCondition');
  SetLookUpCash(qryjobs);
  SetLookUpCash(qryjobsItems);
  SetLookUpCash(qryJobPromissory);
  SetLookUpCash(qryjobsTerms);
  qryjobs.Active:=True;
  tbcjobsItems.TabIndex:=0;
  tbcjobsItemsChange(tbcjobsItems);
end;

procedure TjobsF.qryJobPromissoryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('jobCode').asinteger := qryjobsjobCode.asinteger;
end;

procedure TjobsF.qryJobPromissoryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryJobPromissory.FieldByName('PromRunDate').IsNull then
  begin
    qryJobPromissory.Cancel;
    Abort;
  end;

end;

procedure TjobsF.qryjobsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryjobsjobCode.AsInteger:=GetANewCode('','Pay.jobs','jobCode',DMf.adcSalary);
  dbedtjobCode.SetFocus;
end;

procedure TjobsF.qryjobsAfterPost(DataSet: TDataSet);
var
  jobCode:Integer;
begin
  inherited;
  jobCode := qryjobsjobCode.asinteger;
  if qryjobsItems.state in dsEditModes then
    qryjobsItems.Post;
  if qryjobsTerms.state in dsEditModes then
    qryjobsTerms.Post;
  if qryjobsTerms.state in dsEditModes then
    qryJobPromissory.Post;

  try
    qryjobsItems.UpdateBatch(arAll);
    qryjobsTerms.UpdateBatch(arAll);
    qryJobPromissory.UpdateBatch(arAll);
    BigMessage('ثبت شد.', 1);
    qryjobs.Requery;
    qryjobs.Locate('jobCode',jobCode,[]);
  except
      on E:Exception do
      begin
         warn('اشکال در ثبت'+E.Message);
      end;

  end;//try

end;

procedure TjobsF.qryjobsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With  qryjobsTerms do
  begin
    Active:=False;
    Parameters.ParamByName('jobCode').Value:=qryjobs.FieldByName('jobCode').AsInteger;
    Active:=True;
  end;
  With  qryjobsItems do
  begin
    Active := false;
    Parameters.ParamByName('jobCode').Value := qryjobs.FieldByName('jobCode')
      .asinteger;
    Active := True;
  end;
  With qryJobPromissory do
  begin
    Active := false;
    Parameters.ParamByName('jobCode').Value := qryjobs.FieldByName('jobCode')
      .asinteger;
    Active := True;
  end;

end;

procedure TjobsF.qryjobsItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('jobCode').AsInteger:=qryjobsjobCode.AsInteger;
  DataSet.FieldByName('InfoKind').AsInteger:=tbcjobsItems.TabIndex;

end;

procedure TjobsF.qryjobsItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryjobsItems.FieldByName('Descriptions').IsNull  then
  begin
    qryjobsTerms.Cancel;
    Abort;
  end;

end;

procedure TjobsF.qryjobsTermsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (qryjobs.state in dsEditModes) then   qryjobs.edit;
end;

procedure TjobsF.qryjobsTermsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('jobCode').AsInteger:=qryjobsjobCode.AsInteger;
end;

procedure TjobsF.qryjobsTermsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not (qryjobs.state in dsEditModes) then   qryjobs.edit;
end;

procedure TjobsF.qryjobsTermsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryjobsTerms.FieldByName('LicenceCode').IsNull  then
  begin
    qryjobsTerms.Cancel;
    Abort;
  end;
end;

procedure TjobsF.srcjobsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryjobs.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
  btnJobLocation.Enabled:=okPanel.Visible;
  btnOrganPos.Enabled:=okPanel.Visible;
  btnOrganizational.Enabled:=okPanel.Visible;
  btnjobCode.Enabled:=newPanel.Visible;
  btnGrade.Enabled:=okPanel.Visible;
  btnRank.Enabled:=okPanel.Visible;
  btnGroup.Enabled:=okPanel.Visible;
end;

procedure TjobsF.tbcjobsItemsChange(Sender: TObject);
begin
  inherited;
  if (qryjobsItems.state in dsEditModes) then     qryjobsItems.Post;
  if (qryjobs.state in dsEditModes) then     qryjobs.Post;

  case tbcjobsItems.TabIndex of
    0:qryjobsItemsDescriptions.DisplayLabel:='شرح مهارت';
    1:qryjobsItemsDescriptions.DisplayLabel:='شرح ادواري';
  else
      qryjobsItemsDescriptions.DisplayLabel:='شرح جاري';
  end;
  With  qryjobsItems do
  begin
    Active:=False;
    Parameters.ParamByName('InfoKind').Value:=tbcjobsItems.TabIndex;
    Active:=True;
  end;
end;

end.
