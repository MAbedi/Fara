unit EmissionDoc;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, DB, ADODB, Grids, Vcl.DBGrids, SysUtils, StrUtils, System.Actions;

type
  TEmissionDocF = class(TTemplate4F)
    srcDocGroup: TDataSource;
    qryDocGroup: TADOQuery;
    qryDocGroupSecondaryDocNo: TIntegerField;
    qryDocGroupCompanyCode: TWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdtCompany: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    dbmmoDocTopic_L1: TDBMemo;
    BitBtn1: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    qryDocGroupDocTypeCode: TIntegerField;
    qryDocuments: TADOQuery;
    actFilter: TAction;
    qryExpenseList: TADOQuery;
    qryExpenseListExpID: TAutoIncField;
    qryExpenseListFormNo: TIntegerField;
    qryExpenseListFormDate: TWideStringField;
    qryExpenseListCacther: TWideStringField;
    qryExpenseListPreference: TIntegerField;
    qryExpenseListAmount: TBCDField;
    qryExpenseListTopicCode: TIntegerField;
    qryExpenseListDetailCode: TIntegerField;
    qryExpenseListCTopicCode: TIntegerField;
    qryExpenseListState: TSmallintField;
    qryExpenseListKind: TSmallintField;
    qryExpenseListComments: TWideStringField;
    qryExpenseListChecked: TSmallintField;
    qryExpenseListBed: TBCDField;
    qryExpenseListBes: TBCDField;
    qryExpenseListCustDetailId: TIntegerField;
    qryExpenseListCatcherItem: TWideStringField;
    qryExpenseListPayerTopicCode: TIntegerField;
    qryExpenseListPayerDetailCode: TIntegerField;
    qryExpenseListPayerCTopicCode: TIntegerField;
    DBGrid1: TDBGrid;
    srcExpenseList: TDataSource;
    Panel2: TPanel;
    lslWarnings: TListBox;
    qryDetails: TADOQuery;
    qryTopicCode: TADOQuery;
    qryExpenseList_TopicCodeName: TStringField;
    qryExpenseList_DetailCode: TStringField;
    qryExpenseList_CTopicCode: TStringField;
    BitBtn2: TBitBtn;
    strngfldExpenseListDetailName_L1: TStringField;
    qryDocGroupTopic_L1: TStringField;
    qryDocGroupDocDate: TStringField;
    qryDocGroupSerial: TIntegerField;
    qryDocGroupUserID: TIntegerField;
    qryDocGroupMakeDate: TDateTimeField;
    qryDocGroupFirstUser: TStringField;
    intgrfldDocGroupYearID: TIntegerField;
    qryCenterTopics: TADOQuery;
    btn1: TSpeedButton;
    dbedt_CompanyName_L1: TDBEdit;
    qry_Company: TADOQuery;
    intgrfld_CompanyCompanyCode: TIntegerField;
    intgrfld_CompanyLevelID: TIntegerField;
    dtmfld_CompanyMakeDate: TDateTimeField;
    qry_CompanyCompanyName_L1: TStringField;
    qry_CompanyCompanyName_L2: TStringField;
    qry_CompanyComment_L1: TStringField;
    qry_CompanyComment_L2: TStringField;
    qryDocGroup_CompanyName_L1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryDocGroupAfterInsert(DataSet: TDataSet);
    procedure qryDocGroupAfterPost(DataSet: TDataSet);
    procedure qryDocGroupAfterCancel(DataSet: TDataSet);
    procedure lblTopic0Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryDocGroupCompanyCodeChange(Sender: TField);
    procedure qryDocGroupSecondaryDocNoChange(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    procedure Updatefilter;
    { Private declarations }
  public
    procedure Enter;
    { Public declarations }
  end;

var
  EmissionDocF: TEmissionDocF;

implementation

uses dm, GlobalPro, mmessage, filter_ADO, FilterClass_ADO, FaraConsts,
  searchCode_ADO;

{$R *.dfm}

procedure TEmissionDocF.Enter;
begin
  EmissionDocF := TEmissionDocF.Create(Application);
  try
    with EmissionDocF do
    begin
      actFilter.Execute;
      ShowModal;
    end; // with
  finally
    Free;
  end;
end;

procedure TEmissionDocF.FormCreate(Sender: TObject);
begin
  inherited;
  qryDocGroup.Active := True;
end;

procedure TEmissionDocF.qryDocGroupAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('YearId').AsInteger := APPBank.Year;
  DataSet.FieldByName('CompanyCode').AsInteger := opta.DefaultCompany;

  DataSet.FieldByName('Serial').AsInteger :=
    GetANewCode
    ('',Format('select max(serial) from acc.docGroups where (YearID = %d) AND (serial BETWEEN %d AND %d)',
    [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'serial',dmf.adcAccounting);

  If gv_MultiCompany And opta.RestDocCode then
    DataSet.FieldByName('SecondaryDocNo').AsInteger :=
      GetANewCode
      ('',Format('select max(SecondaryDocNo) from acc.docGroups where (CompanyCode = %d )'
      + ' and (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
      [opta.DefaultCompany, APPBank.Year, opta.StartLimitID, opta.EndLimitID]),
      'SecondaryDocNo',dmf.adcAccounting)

  else
    DataSet.FieldByName('SecondaryDocNo').AsInteger :=
      GetANewCode
      ('',Format('select max(SecondaryDocNo) from acc.docGroups where (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
      [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'SecondaryDocNo',dmf.adcAccounting);

  DataSet.FieldByName('DocDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('DocTypeCode').AsInteger := 4;
  DataSet.FieldByName('DocTopic_L1').AsString :=
    '’œÊ— ”‰œ Õ”«»œ«—Ì  Ê”ÿ ”Ì” „ «“ «ÿ·«⁄«  ”‰œ Â“Ì‰Â —”„Ì';
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('Userid').AsInteger := user.id;
  DataSet.FieldByName('MakeDate').AsDateTime := Now;

end;

procedure TEmissionDocF.qryDocGroupAfterPost(DataSet: TDataSet);
var
  Row: Integer;
begin
  inherited;
  qryExpenseList.First;
  Row := 1;
  while not qryExpenseList.Eof do
  begin
    with qryDocuments do
    begin
      Active := True;
      Insert;
      FieldByName('Serial').AsInteger := qryDocGroupSerial.AsInteger;
      FieldByName('CompanyCode').AsInteger := qryDocGroupCompanyCode.AsInteger;
      FieldByName('YearId').AsInteger := APPBank.Year;
      FieldByName('TopicCode').AsInteger := qryExpenseList.FieldByName
        ('TopicCode').AsInteger;
      FieldByName('DetailCode').AsInteger := qryExpenseList.FieldByName
        ('DetailCode').AsInteger;
      FieldByName('CTopicCode').AsInteger := qryExpenseList.FieldByName
        ('CTopicCode').AsInteger;
      FieldByName('Comment_L1').AsString := '»«»  À»  ”‰œ Â“Ì‰Â ‘„«—Â ' +
        qryExpenseList.FieldByName('FormNo').AsString;


      FieldByName('Debt').AsCurrency := qryExpenseList.FieldByName('Bed')
        .AsCurrency;
      // qryExpenseList.fieldbyname('Bes').AsCurrency ;
      FieldByName('Credit').AsCurrency := 0;
      FieldByName('AidDocNo').AsFloat := qryExpenseList.FieldByName
        ('FormNo').AsFloat;
      FieldByName('AidDocdate').AsString := qryExpenseList.FieldByName
        ('FormDate').AsString;
      FieldByName('row').AsInteger := Row;
      inc(Row);

      Post;
      Insert;
      FieldByName('Serial').AsInteger := qryDocGroupSerial.AsInteger;
      FieldByName('CompanyCode').AsInteger := qryDocGroupCompanyCode.AsInteger;
      FieldByName('YearId').AsInteger := APPBank.Year;
      FieldByName('TopicCode').AsInteger := qryExpenseList.FieldByName
        ('PayerTopicCode').AsInteger;
      FieldByName('DetailCode').AsInteger := qryExpenseList.FieldByName
        ('PayerDetailCode').AsInteger;
      FieldByName('CTopicCode').AsInteger := qryExpenseList.FieldByName
        ('PayerCTopicCode').AsInteger;
      FieldByName('Comment_L1').AsString := qryExpenseList.FieldByName
        ('Comments').AsString;
      FieldByName('Debt').AsCurrency := 0;
      FieldByName('Credit').AsCurrency := qryExpenseList.FieldByName('Bed')
        .AsCurrency;

      FieldByName('row').AsInteger := Row;
      inc(Row);
      Post;
    end; // with

    // qryExpenseList.Edit;
    // qryExpenseList.FieldByName('state').AsInteger := 2;
    // qryExpenseList.Post;

    Dmf.adcAccounting.Execute
      (Format('UPDATE Acc.Expense SET [State] = 2 WHERE (ExpID = %d) AND (YearId = %d)',
      [qryExpenseListExpID.AsInteger, APPBank.Year]));

    qryExpenseList.Next;
  end; // while
  close;
  // qryDocGroup.UpdateBatch;
  qryDocuments.UpdateBatch;
  qryDocuments.Active := False;

  BigMessage('À»  ‘œ', 1);

end;

procedure TEmissionDocF.qryDocGroupAfterCancel(DataSet: TDataSet);
begin
  inherited;
  close;
end;

procedure TEmissionDocF.lblTopic0Click(Sender: TObject);
begin
  inherited;
  Caption := EmissionDocF.Caption;
end;

procedure TEmissionDocF.FormShow(Sender: TObject);
begin
  inherited;
  qryDocGroup.Insert;
end;

procedure TEmissionDocF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(Dmf.adcAccounting, 'FormDate2', ' «—ÌŒ', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(FormDate),max(FormDate) from Acc.Expense');
      AddItem(Dmf.adcAccounting, 'FormNo2', '‘„«—Â', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(FormNo),max(FormNo) from Acc.Expense');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if
    finally
      Free;
    end; // try
  end; // whith              Updatefilter
end;

procedure TEmissionDocF.Updatefilter;
begin
  with qryExpenseList do
  begin
    Active := False;
    Parameters.ParamByName('FromFormNo2').Value :=
      GetcFrom(myParams.ParamValues['FormNo2'], ftInteger);
    Parameters.ParamByName('ToFormNo2').Value :=
      GetcTo(myParams.ParamValues['FormNo2'], ftInteger);
    Parameters.ParamByName('FromFormDate2').Value :=
      GetcFrom(myParams.ParamValues['FormDate2'], ftString);
    Parameters.ParamByName('ToFormDate2').Value :=
      GetcTo(myParams.ParamValues['FormDate2'], ftString);
    Parameters.ParamByName('FromState2').Value := 1;
    Parameters.ParamByName('ToState2').Value := 1;
    Active := True;
  end; // with
end;

procedure TEmissionDocF.qryDocGroupCompanyCodeChange(Sender: TField);
begin
  inherited;
  // Memo1.Text:='SELECT Max(DocGroups.SecondaryDocNo) FROM DocGroups WHERE (((DocGroups.CompanyCode)='+qrydocgroup.FieldByName('CompanyCode').AsString+'));';
  qryDocGroup.FieldByName('SecondaryDocNo').AsInteger :=
    GetANewCode
    ('','SELECT Max(SecondaryDocNo) FROM Acc.DocGroups WHERE (((CompanyCode)=' +
    qryDocGroup.FieldByName('CompanyCode').AsString + '));', 'SecondaryDocNo',dmf.adcAccounting);

  // qrydocgroup.FieldByName('CompanyDocNo').AsInteger:=qrydocgroup.FieldByName('SecondaryDocNo').AsInteger;

end;

procedure TEmissionDocF.qryDocGroupSecondaryDocNoChange(Sender: TField);
begin
  inherited;
  // qryDocGroup.FieldByName('CompanyDocNo').AsInteger :=
  // qryDocGroup.FieldByName('SecondaryDocNo').AsInteger;
end;

procedure TEmissionDocF.BitBtn2Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  lslWarnings.Clear;
  lslWarnings.Visible := True;
  with qryExpenseList do
  begin
    DisableControls;
    First;
    try
      while not Eof do
      begin
        s := IfThen((FieldByName('_TopicCodeName').AsString = '') and
          (FieldByName('TopicCode').AsString <> '0'), FieldByName('TopicCode')
          .AsString);
        s := s + IfThen((FieldByName('_CTopicCode').AsString = '') and
          (FieldByName('CTopicCode').AsString <> '0'),
          '-' + FieldByName('CTopicCode').AsString);
        s := s + IfThen((FieldByName('_DetailCode').AsString = '') and
          (FieldByName('DetailCode').AsString <> '0'),
          '-' + FieldByName('DetailCode').AsString);
        if s <> '' then
          lslWarnings.Items.AddObject(Format('[—œÌ› %d]: [Œÿ« ﬂœ %s]',
            [RecNo, s]), TObject(RecNo));
        Next;
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TEmissionDocF.btn1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, ',Ã” ÃÊ ‘—ﬂ ',
    'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies', ['òœ', '‰«„ ‘—ﬂ '],
    alLeft) <> '' then
  begin
    if not(qryDocGroup.State in dseditmodes) then
      qryDocGroup.Edit;
    qryDocGroupCompanyCode.AsString := c;
  end; // if
end;

procedure TEmissionDocF.lslWarningsClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    exit;
  qryExpenseList.First;
  qryExpenseList.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);
end;

end.
