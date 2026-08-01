unit GetCheckPostOverallType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template4,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, GetCheck,
  frLookup_nonDB, strutils;

type
  TGetCheckPostOverallTypeF = class(TTemplate4F)
    rdoType: TRadioGroup;
    btnok: TBitBtn;
    frCustomer: TfrLookup_nonDBF;
    actOk: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    edtFormNumber: TEdit;
    SpeedButton1: TSpeedButton;
    qry4Locate: TADOQuery;
    procedure actOkExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtFormNumberExit(Sender: TObject);
  private
    FFormID, FServerID, FYearID: Integer;
    function GetMasteQuery: TADOQuery;
    function GetClientQuery: TADOQuery;
    procedure SavePostOverall;
    procedure initCombo;

    { Private declarations }
  public
    procedure enter(FormType, PostOverallTypeCall: Integer);
    { Public declarations }
  end;

var
  GetCheckPostOverallTypeF: TGetCheckPostOverallTypeF;

implementation

uses
  DM, FaraConsts, FormFunctions, searchCode_ADO, GlobalPro;

{$R *.dfm}

procedure TGetCheckPostOverallTypeF.actOkExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk
end;

procedure TGetCheckPostOverallTypeF.edtFormNumberExit(Sender: TObject);
begin
  inherited;
  if (qry4Locate.Locate('FormNumber', edtFormNumber.Text, [])) then
  begin
    frCustomer.cmbLookup.SetFocus;
    FFormID := qry4Locate.FieldByName('FormID').AsInteger;
    FServerID := qry4Locate.FieldByName('ServerID').AsInteger;
    FYearID := qry4Locate.FieldByName('YearID').AsInteger;
  end
  else
  begin
    FFormID := 0;
    FServerID := 0;
    FYearID := 0;
    warn('قبلا فراخوانی شده!!!؟');
  end;

end;

procedure TGetCheckPostOverallTypeF.enter(FormType, PostOverallTypeCall
  : Integer);
begin
  GetCheckPostOverallTypeF := TGetCheckPostOverallTypeF.Create(Application);
  with GetCheckPostOverallTypeF do
  begin
    try
      With qry4Locate do
      begin
        Active := False;
        SQL.Text :=
          'SELECT FormID,ServerID,YearID,FormNumber, FormDate FROM Forms ' +
          '  WHERE formid not in (select isnull(ParentFormID,0) from forms where yearid = '
          + APPBank.Year.ToString + ' and formtype=' + FormType.ToString +
          ') and  (YearID =' + APPBank.Year.ToString + ')AND FormType =' +
          PostOverallTypeCall.ToString;
        Active := True;
      end;

      initCombo;
      frCustomer.code := GetCheckF.qryMaster_FormsCustomerID1.AsString;
      if ShowModal = mrOk then
        if FFormID <> 0 then
          SavePostOverall;

    finally
      GetCheckPostOverallTypeF.Free;
    end;
  end;

end;

function TGetCheckPostOverallTypeF.GetClientQuery: TADOQuery;
begin
  Result := TADOQuery.Create(Self);
  with Result do
  begin
    Connection := theMainConnection;
    SQL.Text := 'SELECT * FROM FormItems';
    SQL.Add('WHERE (FormID = %D) AND (ServerID = %D) AND (YearID = %D)');
    SQL.Text := Format(SQL.Text, [FFormID, FServerID, FYearID]);
    Active := True;

  end;

end;

function TGetCheckPostOverallTypeF.GetMasteQuery: TADOQuery;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  with qry do
  begin
    Connection := theMainConnection;
    SQL.Text := 'SELECT * FROM Forms';
    SQL.Add('WHERE (FormID = %d) AND (ServerID = %d) AND (YearID = %d)');
    SQL.Text := Format(SQL.Text, [FFormID, FServerID, FYearID]);
    Active := True;
    Result := qry;
  end;
end;

procedure TGetCheckPostOverallTypeF.initCombo;
var
  qrytxt: string;
begin
  qrytxt := 'SELECT DISTINCT CustID,CustName,AccountNumber FROM Vu_CustomersGroups '
    + GetCustomersGroupTypeSQL('CustomerKind1', GetCheckF.qryInitQry) +
    IfThen(GetCheckF.qryInitQry.FieldByName('UserSecurityCheckActive')
    .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
    ')=1', '');
  frCustomer.init(theMainConnection, qrytxt, 'بانک');
end;

procedure TGetCheckPostOverallTypeF.SavePostOverall;
var
  qrymaster: TADOQuery;
  qryItems: TADOQuery;
begin
  try
    qrymaster := GetMasteQuery;
    qryItems := GetClientQuery;
    with GetCheckF do
    begin
      qryMaster_FormsParentFormID.AsInteger := FFormID;
      qryMaster_FormsCustomerID1.AsString := frCustomer.code;
      qryMaster_FormsCustomerID2.AsInteger :=
        qrymaster.FieldByName('CustomerID2').AsInteger;
      qryMaster_FormsCustomerID3.AsInteger :=
        qrymaster.FieldByName('CustomerID3').AsInteger;

      case rdoType.ItemIndex of
        0:
          begin
            qryDetail_Item.Insert;
            qryDetail_ItemItemAmount.AsCurrency :=
              CalcSumFileds(qryItems, 'ItemAmount');
            qryDetail_ItemCheckDate.AsString :=
              Date1400Cnv(var_glb_CurrentDate);
            qryDetail_ItemCheckFor.AsString :=
              qrymaster.FieldByName('FomNote').AsString;

            qryDetail_ItemItemNote.AsString := qryItems.FieldByName('ItemNote')
              .AsString + ' ' + 'کد مجوز پرداخت:' + qrymaster.FieldByName
              ('formnumber').AsString + ' ' + 'تاریخ: ' +
              qrymaster.FieldByName('formdate').AsString;

            if qryItems.RecordCount = 1 then
            begin
              qryDetail_ItemDetailCode.AsInteger :=
                qryItems.FieldByName('DetailCode').AsInteger;
              qryDetail_ItemTopicCode.AsInteger :=
                qryItems.FieldByName('TopicCode').AsInteger;

              qryDetail_ItemCustomerID2.AsInteger :=
                qryItems.FieldByName('CustomerID2').AsInteger;

              qryDetail_ItemCTopicCode.AsInteger :=
                qryItems.FieldByName('CTopicCode').AsInteger;
              qryDetail_ItemCTopicCode2.AsInteger :=
                qryItems.FieldByName('CTopicCode2').AsInteger;
              qryDetail_ItemCTopicCode3.AsInteger :=
                qryItems.FieldByName('CTopicCode3').AsInteger;

            end
            else
            begin
              qryDetail_Item.DisableControls;
              qryDetail_ItemCheckNumber.Required := False;
              qrySeverable.Active := True;

              qryItems.First;
              while not qryItems.Eof do
              begin
                qrySeverable.Insert;
                qrySeverableServerID.AsInteger :=
                  qryMaster_FormsServerID.AsInteger;
                qrySeverableYearID.AsInteger := qryMaster_FormsYearID.AsInteger;
                qrySeverableFormID.AsInteger := qryMaster_FormsFormID.AsInteger;

                qrySeverableFormItemID.AsInteger :=
                  qryDetail_ItemFormItemID.AsInteger;
                qrySeverableCustID.AsInteger :=
                  qryItems.FieldByName('customerId2').AsInteger;
                qrySeverableTopicCode.AsInteger :=
                  qryItems.FieldByName('TopicCode').AsInteger;
                qrySeverableDetailCode.AsInteger :=
                  qryItems.FieldByName('DetailCode').AsInteger;
                qrySeverableCTopicCode.AsString :=
                  qryItems.FieldByName('CTopicCode').AsString;

                qrySeverableCTopicCode2.AsString :=
                  qryItems.FieldByName('CTopicCode2').AsString;

                qrySeverableAmount.AsCurrency :=
                  qryItems.FieldByName('ItemAmount').AsCurrency;
                qrySeverableSeverableNote.AsString :=
                  qryItems.FieldByName('ItemNote').AsString;

                qrySeverable.Post;
                qryItems.Next;

              end;
            end;
          end;
        1:
          begin
            qryDetail_Item.DisableControls;
            qryDetail_ItemCheckNumber.Required := False;

            qryItems.First;
            while not qryItems.Eof do
            begin
              qryDetail_Item.Insert;
              qryDetail_ItemCheckFor.AsString :=
                qrymaster.FieldByName('FomNote').AsString;
              qryDetail_ItemItemNote.AsString :=
                qrymaster.FieldByName('FomNote').AsString + ' ' +
                'کد مجوز پرداخت:' + qrymaster.FieldByName('formnumber').AsString
                + ' ' + 'تاریخ: ' + qrymaster.FieldByName('formdate').AsString;
              qryDetail_ItemItemAmount.AsCurrency :=
                qryItems.FieldByName('ItemAmount').AsCurrency;

              if qryItems.FieldByName('CheckNumber').AsString <> '0' then
                qryDetail_ItemCheckNumber.AsString :=
                  qryItems.FieldByName('CheckNumber').AsString
              else
                qryDetail_ItemCheckNumber.AsString := '0';

              qryDetail_ItemCustomerID2.AsInteger :=
                qryItems.FieldByName('CustomerID2').AsInteger;
              qryDetail_ItemCheckDate.AsString :=
                Date1400Cnv(var_glb_CurrentDate);
              qryDetail_ItemTopicCode.AsString :=
                qryItems.FieldByName('TopicCode').AsString;
              qryDetail_ItemDetailCode.AsString :=
                qryItems.FieldByName('DetailCode').AsString;
              qryDetail_ItemCTopicCode.AsString :=
                qryItems.FieldByName('CTopicCode').AsString;
              qryDetail_ItemCTopicCode2.AsString :=
                qryItems.FieldByName('CTopicCode2').AsString;

              qryDetail_ItemCTopicCode3.AsString :=
                qryItems.FieldByName('CTopicCode3').AsString;

              qryDetail_Item.Post;
              qryItems.Next;
            end;
          end;

      end;
    end;

  finally
    qrymaster.Free;
    qryItems.Free;
    GetCheckF.qryDetail_Item.EnableControls;
    GetCheckF.qryDetail_ItemCheckNumber.Required := True;
  end;

end;

procedure TGetCheckPostOverallTypeF.SpeedButton1Click(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 6] of string;
begin
  inherited;
  txt := qry4Locate.SQL.Text;
  if searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو كد', txt,
    ['', '', '', 'شماره فرم', 'تاريخ فرم', 'کد ', 'نام '], Result,
    [0, 0, 0, 50, 100, 100], alLeft) then
  begin
    FFormID := Result[0].ToInteger();
    FServerID := Result[1].ToInteger();
    FYearID := Result[2].ToInteger();
    edtFormNumber.Text := Result[3];
  end;
end;

end.
