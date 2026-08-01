unit FrGetCheckPostOverallType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.StrUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, frLookup_nonDB, Vcl.Buttons, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Data.DB, Data.Win.ADODB, MyComboBoxUnit;

type
  TfrmGetCheckPostOverallType = class(TFrame)
    lblCaption: TLabel;
    qry4Locate: TADOQuery;
    actlst1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    actSmsSend: TAction;
    actOk: TAction;
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtFormNumber: TEdit;
    rdoType: TRadioGroup;
    pnlDown: TPanel;
    btnok: TBitBtn;
    qry4Sum: TADOQuery;
    qry_Severable: TADOQuery;
    qry_SeverableID: TAutoIncField;
    qry_SeverableFormItemID: TIntegerField;
    qry_SeverableCustID: TIntegerField;
    qry_SeverableTopicCode: TLargeintField;
    qry_SeverableDetailCode: TStringField;
    qry_SeverableCTopicCode: TStringField;
    qry_SeverableCTopicCode2: TStringField;
    qry_SeverableBudgetCode: TIntegerField;
    qry_SeverableAmount: TBCDField;
    qry_SeverableServerID: TIntegerField;
    qry_SeverableYearID: TIntegerField;
    qry_SeverableFormID: TIntegerField;
    qry_SeverableSeverableNote: TWideStringField;
    qry_SeverableDeficitAmount: TBCDField;
    qry_SeverableArzAmount: TBCDField;
    qry_SeverableCTopicCode3: TStringField;
    cmbYear: TYearComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure edtFormNumberExit(Sender: TObject);
    procedure edtFormNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFormNumberEnter(Sender: TObject);
    procedure cmbYearClick(Sender: TObject);
  private
    FFormID, FServerID, FYearID: Integer;
    procedure initCombo;
    procedure SavePostOverall;
    function GetClientQuery: TADOQuery;
    function GetMasteQuery: TADOQuery;

    { Private declarations }
  public
    qryInitQry: TADOQuery;
    FormType, PostOverallTypeCall: Integer;
    procedure Init;
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

implementation

uses
  FaraConsts, searchCode_ADO, DM, GlobalPro, FormFunctions, GetCheck, selected;

{$R *.dfm}

procedure TfrmGetCheckPostOverallType.actOkExecute(Sender: TObject);
begin
  if FFormID <> 0 then
    SavePostOverall;
end;

procedure TfrmGetCheckPostOverallType.cmbYearClick(Sender: TObject);
begin
  With qry4Locate do
  begin
    Active := False;
    SQL.Text := 'SELECT Forms.FormID, Forms.ServerID, Forms.YearID';
    SQL.Add(', Forms.FormNumber, Forms.FormDate, SUM(FormItems.ItemAmount) AS SelectdSum1');
    SQL.Add('FROM Forms LEFT OUTER JOIN');
    SQL.Add('FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID');
    SQL.Add('= FormItems.YearID');
    SQL.Add('  WHERE Forms.FormID not in (select isnull(ParentFormID,0) from forms where yearid = '
      + APPBank.Year.ToString + ' and formtype=' + FormType.ToString +
      ') and  (Forms.YearID =' + cmbYear.YearID.ToString +
      ')AND Forms.FormType =' + PostOverallTypeCall.ToString);

    SQL.Add(' AND(Forms.ServerID = ' + opt.ServerID.ToString + ')');

    SQL.Add('GROUP BY Forms.FormID, Forms.ServerID, Forms.YearID, Forms.FormNumber, Forms.FormDate, Forms.FormType');

    Active := True;
  end;
end;

constructor TfrmGetCheckPostOverallType.Create(AOwner: TComponent);
begin
  inherited;
  cmbYear.YearID := APPBank.Year;
end;

procedure TfrmGetCheckPostOverallType.edtFormNumberEnter(Sender: TObject);
begin
  Init;
end;

procedure TfrmGetCheckPostOverallType.edtFormNumberExit(Sender: TObject);
begin
  if (qry4Locate.Locate('FormNumber', edtFormNumber.Text, [])) then
  begin
    rdoType.SetFocus;
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

procedure TfrmGetCheckPostOverallType.edtFormNumberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then
    SpeedButton1.Click;
end;

function TfrmGetCheckPostOverallType.GetClientQuery: TADOQuery;
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

procedure TfrmGetCheckPostOverallType.SavePostOverall;
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
              qry_Severable.Active := True;

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

function TfrmGetCheckPostOverallType.GetMasteQuery: TADOQuery;
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

procedure TfrmGetCheckPostOverallType.initCombo;
var
  qrytxt: string;
begin
  qrytxt := 'SELECT DISTINCT CustID,CustName,AccountNumber FROM Vu_CustomersGroups '
    + GetCustomersGroupTypeSQL('CustomerKind1', qryInitQry) +
    IfThen(qryInitQry.FieldByName('UserSecurityCheckActive').AsInteger  in[1,3],
    ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) + ')=1', '');
end;

procedure TfrmGetCheckPostOverallType.Init;
begin
  try
    cmbYearClick(cmbYear);
    initCombo;
  finally

  end;

end;

procedure TfrmGetCheckPostOverallType.SpeedButton1Click(Sender: TObject);
var
  txt, mySelected: String;
begin
  inherited;
  Init;
  txt := qry4Locate.SQL.Text;
  mySelected := selectedF.ShowSelect(DMf.adcBsell, 'انتخاب گروه', txt,
    ['', '', '', 'شماره', 'تاریخ', 'مبلغ'], alLeft, [0, 0, 0, 50, 400, 80],
    mySelected);
  if Length(mySelected) > 1 then
    with qry4Sum do
    begin
      SQL.Text := 'SELECT FormItems.*,Forms.*';
      SQL.Add('FROM Forms LEFT OUTER JOIN');
      SQL.Add('FormItems ON Forms.FormID = FormItems.FormID AND ');
      SQL.Add('Forms.ServerID = FormItems.ServerID AND Forms.YearID= FormItems.YearID');
      SQL.Add('WHERE (Forms.ServerID = :ServerID)  ');
      SQL.Add('AND (Forms.YearID = :YearID)');
      SQL.Add('AND (Forms.FormID IN (' + mySelected + '))');
      Parameters.ParamByName('ServerID').Value := opt.ServerID;
      Parameters.ParamByName('YearID').Value := cmbYear.YearID;
      Open;
      try
        with GetCheckF do
        begin
          qryMaster_FormsParentFormID.AsInteger := FieldByName('FormID')
            .AsInteger;
          qryMaster_FormsCustomerID2.AsInteger := 0;
          qryMaster_FormsCustomerID3.AsInteger := 0;
          qryDetail_Item.Insert;
          qryDetail_ItemItemAmount.AsCurrency :=
            CalcSumFileds(qry4Sum, 'ItemAmount');
          qryDetail_ItemCheckDate.AsString := Date1400Cnv(var_glb_CurrentDate);
          qryDetail_ItemItemNote.AsString := 'مجوز پرداخت';

          qryDetail_ItemDetailCode.AsInteger :=
            qry4Sum.FieldByName('DetailCode').AsInteger;
          qryDetail_ItemTopicCode.AsInteger := qry4Sum.FieldByName('TopicCode')
            .AsInteger;

          qryDetail_ItemCustomerID2.AsInteger :=
            qry4Sum.FieldByName('CustomerID2').AsInteger;

          qryDetail_ItemCTopicCode.AsInteger :=
            qry4Sum.FieldByName('CTopicCode').AsInteger;
          qryDetail_ItemCTopicCode2.AsInteger :=
            qry4Sum.FieldByName('CTopicCode2').AsInteger;
          qryDetail_ItemCTopicCode3.AsInteger :=
            qry4Sum.FieldByName('CTopicCode3').AsInteger;

          qryDetail_Item.Post;
          qryMaster_Forms.Post;
          qry_Severable.Open;

          while not qry4Sum.Eof do
          begin
            qry_Severable.Insert;
            qry_SeverableServerID.AsInteger :=
              qryMaster_FormsServerID.AsInteger;
            qry_SeverableYearID.AsInteger := qryMaster_FormsYearID.AsInteger;
            qry_SeverableFormID.AsInteger := qryMaster_FormsFormID.AsInteger;

            qry_SeverableFormItemID.AsInteger :=
              qryDetail_ItemFormItemID.AsInteger;
            qry_SeverableCustID.AsInteger := qry4Sum.FieldByName('customerId2')
              .AsInteger;
            qry_SeverableTopicCode.AsInteger := qry4Sum.FieldByName('TopicCode')
              .AsInteger;
            qry_SeverableDetailCode.AsInteger :=
              qry4Sum.FieldByName('DetailCode').AsInteger;
            qry_SeverableCTopicCode.AsString :=
              qry4Sum.FieldByName('CTopicCode').AsString;

            qry_SeverableCTopicCode2.AsString :=
              qry4Sum.FieldByName('CTopicCode2').AsString;

            qry_SeverableAmount.AsCurrency := qry4Sum.FieldByName('ItemAmount')
              .AsCurrency;
            qry_SeverableSeverableNote.AsString :=
              qry4Sum.FieldByName('ItemNote').AsString;

            qry_Severable.Post;
            qry4Sum.Next;

          end;
        end;

      finally
        GetCheckF.qryDetail_Item.EnableControls;
        GetCheckF.qryDetail_ItemCheckNumber.Required := True;
      end;

    end;

end;

end.
