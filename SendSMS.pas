unit SendSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, System.ImageList, System.Actions;

type
  TSendSMSF = class(Ttemplate2MDIF)
    srcCustomers: TDataSource;
    qryCustomers: TADOQuery;
    pnlLeft: TPanel;
    mmoMessage: TMemo;
    Label1: TLabel;
    actSendSMSManager: TAction;
    pnlRight: TPanel;
    grdCustomers: TDBGrid;
    actSelect: TAction;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersCustName1: TWideStringField;
    qryCustomersMobile: TStringField;
    qryCustomersTel: TStringField;
    qryCustomersAddress: TStringField;
    qryInterView: TADOQuery;
    qryInterViewCustID: TIntegerField;
    qryInterViewInterViewKind: TWordField;
    qryInterViewInterViewNo: TIntegerField;
    qryInterViewInterViewDate: TStringField;
    qryInterViewInterViewNote: TWideStringField;
    qryInterViewModifyDate: TDateTimeField;
    qryInterViewInterViewStae: TWordField;
    Panel1: TPanel;
    btnSelect: TButton;
    Panel4: TPanel;
    btnSendMessage: TButton;
    Label8: TLabel;
    qryInterViewFirstUser: TWideStringField;
    btnSMSManager: TBitBtn;
    actFilter: TAction;
    qryCustomersCustomerGrpID: TIntegerField;
    procedure actSelectExecute(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure mmoMessageChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendSMSManagerExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
  private
    procedure FillCustomerInterVeiw;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SendSMSF: TSendSMSF;

implementation

uses selected, DM, GlobalPro, shamsiDate, FaraConsts, MMESSAGE, DMSMS,
  filter_ADO, FilterClass_ADO, Filters;

{$R *.dfm}

procedure TSendSMSF.actFilterExecute(Sender: TObject);
var
  lookupSql, MinMaxSql: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      lookupSql := 'SELECT CustID,CustName' +
        ' FROM Customers INNER JOIN CustomersGroup ON CustomersGroup.CustomerGrpID = customers.CustomerGrpID'
        + ' WHERE (GroupType IN (0,19)) AND  (LEN(Mobile) > 8)';
      MinMaxSql := 'SELECT MIN(CustID),MAX(CustID)' +
        ' FROM Customers INNER JOIN CustomersGroup ON CustomersGroup.CustomerGrpID = customers.CustomerGrpID'
        + ' WHERE GroupType IN (0,19) AND  (LEN(Mobile) > 8) ';
      AddItem(dmf.adcBSell, 'CustID', 'مشتری', 'کد', ftinteger, dvMinMax, '0',
        '0', cilookup, lookupSql, MinMaxSql);
      lookupSql :=
        'SELECT DISTINCT CustomersGroup.CustomerGrpID,CustomerGrpName FROM CustomersGroup INNER JOIN'
        + '  Customers ON CustomersGroup.CustomerGrpID = customers.CustomerGrpID '
        + ' WHERE (GroupType IN (0,19)) AND  (LEN(Mobile) > 8) ORDER BY CustomerGrpName';
      AddItem(dmf.adcBSell, 'GrpID', 'گروه مشتری', '', ftString, dvDefaults,
        '-1', '-1', ciCheck, lookupSql, '');

      if (ShowModal = mrOk) then
      begin
        GetFilterString;
        actSelect.Execute;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSendSMSF.actSelectExecute(Sender: TObject);
var
  CustList, sqlTxt, grpList: string;
  IDFrom, IDTo: Integer;
begin
  inherited;
  grpList := GetcFrom(myParams.ParamValues['GrpID'], ftString);
  if grpList = '' then
    grpList := '-1';
  IDFrom := GetcFrom(myParams.ParamValues['CustID'], ftinteger);
  IDTo := GetcTo(myParams.ParamValues['CustID'], ftinteger);
  sqlTxt := 'SELECT * FROM (SELECT  CustID ID ,CustID, CustName,CustomerGrpID FROM Customers WHERE (LEN(Mobile) > 8) Union all'
    + ' SELECT  CustomersManag.PersonID1 ID,CustomersManag.PersonID1,CustName, CustomerGrpID'
    + ' FROM   CustomersManag INNER JOIN Customers ON CustomersManag.PersonID1 = Customers.CustID'
    + ' WHERE (LEN(CustomersManag.Mobile) > 8) ) T WHERE CustomerGrpID IN (%s) AND (CustID BETWEEN %d AND %d)';
  sqlTxt := Format(sqlTxt, [grpList, IDFrom, IDTo]);
  CustList := '';
  CustList := selectedF.ShowSelect(dmf.adcBSell, 'انتخاب مشتری', sqlTxt,
    ['', 'کد', 'نام'], alLeft, [0, 100, 400, 0], CustList, 'ID');
  if CustList = '' then
    Exit;
  if selectedF.FShowmodal = mrOk then
    with qryCustomers do
    begin
      Active := false;
      sql.Text := StringReplace(sql.Text, ':CustList', CustList,
        [rfReplaceAll]);
      Active := True;
    end;
end;

procedure TSendSMSF.actSendSMSManagerExecute(Sender: TObject);
var
  sqlTxt, REC_YEAR, REC_MONTH, REC_DAY, REC_HOUR, REC_MIN, Createdate,
    CreateTime: string;
  MASTERID: Integer;
begin
  inherited;
  sqlTxt := 'INSERT INTO SMS_BOX(MASTERID,BOXKIND,PHONENUMBER,MESS,REC_YEAR,' +
    'REC_MONTH,REC_DAY,REC_HOUR,REC_MIN,SMSKIND,CREATEDATE,CREATETIME,USERTITLE,REC_STATUS,REFSERIAL)';
  // + 'VALUES(%d,2,%s,%s,%s,%s,%s,%s,%s,1,%s,%s,%s,1,999)';

  REC_YEAR := formatdatetime('YYYY', Now);
  REC_MONTH := formatdatetime('MM', Now);
  REC_DAY := formatdatetime('DD', Now);
  REC_HOUR := formatdatetime('HH', Now);
  REC_MIN := formatdatetime('MM', Now);
  Createdate := formatdatetime('YYYY/MM/DD', Now);
  CreateTime := formatdatetime('HH:MM', Now);
  with dmf.qryGlbTmpTmp do
  Begin
    Close;
    sql.Text :=
      'Select Isnull(Max(MASTERID),0)+1 from  SMS_BOX where BOXKIND=2 ';
    Open;
    MASTERID := Fields[0].AsInteger;
  End;
  qryInterView.Open;
  try
    with qryCustomers do
    begin
      DisableControls;
      first;
      while not eof do
      begin
        FillCustomerInterVeiw;
        // InfoSMS
        with dmf.qryGlbTmpTmp do
        begin
          Close;
          sql.Text := sqlTxt + 'Values (' + IntToStr(MASTERID) + ',2,' +
            QuotedStr(qryCustomersMobile.AsString) + ',' +
            QuotedStr(mmoMessage.Text) + ',' + QuotedStr(REC_YEAR) + ',' +
            QuotedStr(REC_MONTH) + ',' + QuotedStr(REC_DAY) + ',' +
            QuotedStr(REC_HOUR) + ',' + QuotedStr(REC_MIN) + ', 1 ,' +
            QuotedStr(Createdate) + ',' + QuotedStr(CreateTime) + ',' +
            QuotedStr(User.Name) + ',1,' + '999' + ')';
          ExecSQL;
        end;
        MASTERID := MASTERID + 1;
        next;
      end;
      EnableControls;
    end;
  finally
    FreeReservedCodes(dmf.adcBSell, '', '', Self.Name);
    qryInterView.UpdateBatch;
    BigMessage('ثبت شد', 1);
  end;
end;

procedure TSendSMSF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  BigMessage('در حال ثبت....', 0);
  qryInterView.Open;
  try
    with qryCustomers do
    begin
      DisableControls;
      first;
      while not eof do
      begin
        FillCustomerInterVeiw;
        // InfoSMS
        DMSMSF.SendSMS2Service(qryCustomersMobile.AsString, mmoMessage.Text);
        next;
      end;
      EnableControls;
    end;
  finally
    FreeReservedCodes(dmf.adcBSell, '', '', Self.Name);
    qryInterView.UpdateBatch;
    BigMessage('ثبت شد', 1);
  end;
end;

procedure TSendSMSF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdCustomers);
end;

procedure TSendSMSF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdCustomers, 5);
end;

procedure TSendSMSF.mmoMessageChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := Length(mmoMessage.Text);
  Label8.Caption := 'تعداد حرفهاي پیام = ' + IntToStr(i);
  Label8.Caption := Label8.Caption + #13#10 + 'تعداد پیامک = ' +
    IntToStr((i div 72) + 1);
end;

procedure TSendSMSF.FillCustomerInterVeiw;
var
  txt: string;
begin
  qryInterView.Insert;
  qryInterViewCustID.AsInteger := qryCustomersCustID.AsInteger;
  qryInterViewInterViewKind.AsInteger := 1;
  qryInterViewInterViewStae.AsInteger := 0;
  qryInterViewInterViewDate.AsString := miladi2Shamsi(Now);
  qryInterViewModifyDate.AsDateTime := Now;
  txt := 'SELECT MAX(InterViewNo)FROM CustomersInterView WHERE(CustID = %d)';
  txt := Format(txt, [qryCustomersCustID.AsInteger]);
  qryInterViewInterViewNo.AsInteger := GetANewCode(Self.Name, txt, '');
  qryInterViewInterViewNote.AsString := mmoMessage.Text;
  qryInterViewFirstUser.AsString := User.Name;
  qryInterView.post;
end;

end.
