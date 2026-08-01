// mahmood
unit MakeDocumentMission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, DBCtrls, zAPIBalloon,
  Menus, ToolWin, Provider, DBClient, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TMakeDocumentMissionF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MskDocNo: TMaskEdit;
    mskDocDate: TMaskEdit;
    PnlWarnings: TPanel;
    Panel5: TPanel;
    qryDocuments: TADOQuery;
    BitBtn1: TBitBtn;
    actMakeDoc: TAction;
    qryMissionType: TADOQuery;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    MskDocTopic: TMaskEdit;
    CmbDocType: TComboBox;
    Label5: TLabel;
    actFilter: TAction;
    srcMissionType: TDataSource;
    Panel8: TPanel;
    qryDocGroups: TADOQuery;
    BitBtn4: TBitBtn;
    actErrorList: TAction;
    lslWarnings: TListBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSendExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    zbal: TzAPIBalloon;
    BitBtn8: TBitBtn;
    PopMnuForm: TPopupMenu;
    MenuItem1: TMenuItem;
    N5: TMenuItem;
    MenuItem4: TMenuItem;
    N9: TMenuItem;
    MenuItem2: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    Label8: TLabel;
    cmbCompany: TComboBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    PnlAccNew: TPanel;
    SBtnReciptNumber: TSpeedButton;
    MskSerial: TMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    actCheckDocument: TAction;
    Panel4: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText8: TDBText;
    Label13: TLabel;
    Label22: TLabel;
    DBText9: TDBText;
    Panel9: TPanel;
    StatusBar1: TStatusBar;
    StatusBar11: TStatusBar;
    BitBtn3: TBitBtn;
    actSendWarnToExcel: TAction;
    btnSendWarnToExcel: TBitBtn;
    dsMissionType: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    dsMissionType_Dec: TStringField;
    dsMissionTypeAccTopicCode: TLargeintField;
    dsMissionTypeAccDetailCode: TIntegerField;
    dsMissionTypeAccCTopicCode: TIntegerField;
    dsMissionTypeAccCTopicCode2: TIntegerField;
    dsMissionTypeAccCTopicCode3: TIntegerField;
    dsMissionType_TopicName: TStringField;
    dsMissionType_DetailName: TStringField;
    dsMissionType_CTopicName: TStringField;
    dsMissionType_CTopicName2: TStringField;
    dsMissionType_CTopicName3: TStringField;
    dsMissionTypeCredit: TFMTBCDField;
    dsMissionType_CompanyCode: TIntegerField;
    cmbYearID: TComboBox;
    dsMissionTypedebt1: TBCDField;
    dsMissionTypedebt: TFMTBCDField;
    actAccountf: TAction;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryMissionTypeAfterOpen(DataSet: TDataSet);
    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure MskSerialExit(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryMissionTypeAfterInsert(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure actSendWarnToExcelExecute(Sender: TObject);
    procedure cmbCompanyChange(Sender: TObject);
    procedure cmbYearIDChange(Sender: TObject);
    procedure actAccountfExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    MonthNo: Byte;
    NewDoc: Boolean;
    Rec_No: Integer;
    YearID: Integer;
    SourceDataBaseformName:string;
    function AddMaster: Integer;
    procedure AddDetail(DocID: Integer; qry: TDataSet);
    procedure UpdateFilter;
    function Error: Integer;
    procedure SetQry2Old(qry: TADOQuery);
  public
    { Public declarations }
  end;

var
  MakeDocumentMissionF: TMakeDocumentMissionF;

implementation

uses DM, shamsiDate, GlobalPro, filter_ADO, FilterClass_ADO,
  Math, StrUtils, mmessage, searchCode_ADO, SalaryFunctions, search1,
  sort, FaraConsts, AccFunctions, AccountP;

{$R *.dfm}

procedure TMakeDocumentMissionF.UpdateFilter;
begin
  if cmbYearID.ItemIndex > -1 then
    YearID := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex])
  else
    YearID := APPBank.Year;

  actMakeDoc.Enabled := False;
  PnlWarnings.Visible := False;

  FreeReservedCodes(DMf.qryTopicCode.Connection, '');

  GetSecondaryDocNo(ExtIPMission, cmbCompany, MskDocNo, APPBank.Year);

  GetSerial(ExtIPMission, cmbCompany, MskSerial, APPBank.Year);

  //
  // if opt.AccOldAvailable then
  // begin
  // MskDocNo.Text :=
  // IntToStr(GetANewCode
  // ('SELECT max(DocGroups.SecondaryDocNo) FROM DocGroups ;',
  // 'SecondaryDocNo', DMf.adcOldAccounting));
  // end
  // else
  // begin
  // s := GetSecondaryDocNo(cmbCompany, YearID);
  // MskDocNo.Text := IntToStr(GetANewCode('',s, 'SecondaryDocNo',
  // DMf.qryTopicCode.Connection));
  // s := 'SELECT max(Serial) FROM Acc.DocGroups ' + 'WHERE CompanyCode=' +
  // IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
  // ' AND  YearID = ' + IntToStr(YearID);
  // MskSerial.Text := IntToStr(GetANewCode('',s, 'Serial', DMf.adcAccounting));
  // end;

  with qryMissionType do
  begin
    Active := False;
    Parameters.ParamByName('Month').Value := MonthNo;
    Parameters.ParamByName('PersonalFrom').Value :=
      GetcFrom(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('PersonalTo').Value :=
      GetcTo(myParams.ParamValues['Personal'], ftInteger);
    Active := True;
  end; // with
  actShowDoc.Execute
end;

procedure TMakeDocumentMissionF.FormCreate(Sender: TObject);
begin
  inherited;
  SourceDataBaseformName := 'FixedCalculated';
  InitComboYearID(cmbYearID);
  if cmbYearID.ItemIndex > -1 then
    YearID := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex])
  else
    YearID := APPBank.Year;
  PnlAccNew.Visible := not opta.AccOldAvailable;
  if opta.AccOldAvailable then
  begin
    Caption := Caption + ' (”«„«‰) ';
    // qryDocuments.SQL.Text:='';
    qryDocuments.Connection := DMf.adcOldAccounting;
    qryDocGroups.Connection := DMf.adcOldAccounting;
    SetQry2Old(qryMissionType);

    setColumns2(DBGrid1, False, 'AccCTopicCode2');
    setColumns2(DBGrid1, False, 'AccCTopicCode3');
  end;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  initAccCombos(CmbDocType, cmbCompany);
  cmbCompany.ItemIndex := 0;
  mskDocDate.Text := var_glb_CurrentDate;
  NewDoc := True;
end;

procedure TMakeDocumentMissionF.SetQry2Old;
begin
  With qry do
  begin
    FieldByName('_CTopicName2').LookupDataSet := DMf.qry_CTopicCode;
    FieldByName('_CTopicName2').KeyFields := 'AccCTopicCode';
    FieldByName('_CTopicName2').LookupResultField := 'CTopicName_L1';
    FieldByName('_CTopicName2').LookupKeyFields := 'CTopicCode';
    FieldByName('_CTopicName3').LookupDataSet := DMf.qry_CTopicCode;
    FieldByName('_CTopicName3').KeyFields := 'AccCTopicCode';
    FieldByName('_CTopicName3').LookupResultField := 'CTopicName_L1';
    FieldByName('_CTopicName3').LookupKeyFields := 'CTopicCode';
  end;
end;

procedure TMakeDocumentMissionF.actMakeDocExecute(Sender: TObject);
var
  MakeDate: String;
begin
  inherited;
  if CmbDocType.ItemIndex = -1 then
  begin
    Warn('‰Ê⁄ ”‰œ «‰ Œ«» ‰‘œÂ «” ');
    Exit;
  end;
  if not checkSecondaryDocNo(StrToInt(trim(MskDocNo.Text)),
    Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]), YearID, NewDoc)
  then
    Exit;
  if dsMissionType.Filtered then
    if get_response('«ÿ·«⁄«  ›Ì· — ‘œÂ «”  ¬Ì« »—«Ì ’œÊ— ”‰œ „ÿ„∆‰ Â” Ìœ!!øø')
      <> mrYes then
      Exit;
  MakeDate := mskDocDate.Text;
  if not validate_date(False, '', '', ' «—ÌŒ ”‰œ', MakeDate) then
    Exit;
  AddDetail(AddMaster, dsMissionType);
        DocTransationInsert(qryDocGroups);
  FreeReservedCodes(DMf.qryTopicCode.Connection, '');
end;

function TMakeDocumentMissionF.AddMaster: Integer;
begin
  MskSerialExit(MskSerial);
  with qryDocGroups do
  begin
    Active := True;
    if NewDoc then
    begin
      Insert;
      FieldByName('SecondaryDocNo').AsInteger := StrToInt(trim(MskDocNo.Text));
      if opta.AccOldAvailable then
      begin
        FieldByName('DocTopic').AsString := MskDocTopic.Text;
        Result := FieldByName('SecondaryDocNo').AsInteger;
      end
      else
      begin
        FieldByName('Serial').AsInteger := StrToInt(trim(MskSerial.Text));
        FieldByName('YearID').AsInteger := YearID;
        FieldByName('DocTopic_L1').AsString := MskDocTopic.Text;
        FieldByName('MakeDate').AsDateTime := now;
        FieldByName('UserID').AsInteger := User.id;
        FieldByName('DocNote_L1').AsString := 'À»  ”‰œ  Ê”ÿ ”Ì” „  ' +
          Application.MainForm.Caption;
        if FindField('SourceDataBase') <> nil then
          FieldByName('SourceDataBase').AsString :=
            IfThen(optSub.Subsys[18] = '1', 'pay.', APPBank.Name + '.pay.') +
            SourceDataBaseformName;
        Result := FieldByName('Serial').AsInteger;
      end;
      FieldByName('PrimaryDocNo').AsInteger := 0;
      FieldByName('DocDate').AsString := mskDocDate.Text;
      FieldByName('DocTypeCode').AsInteger :=
        Integer(CmbDocType.Items.Objects[CmbDocType.ItemIndex]);
      FieldByName('Status').AsInteger := 1;
      FieldByName('FirstUser').AsString := User.Name;
      FieldByName('CompanyCode').AsInteger :=
        Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);

        if FindField('SourceKey') <> nil then
          FieldByName('SourceKey').AsString := 'Serial = ' +
            FieldByName('Serial').AsString.Trim + ' and CompanyCode = '
            +FieldByName('CompanyCode').AsString.Trim + ' and YearID = ' +
            YearID.ToString.Trim;

    end
    else
    begin
      Active := False;
      SQL.Text := 'SELECT * FROM Acc.DocGroups ';
      SQL.Add('WHERE (Serial = :Serial) AND (CompanyCode = :CompanyCode)');
      SQL.Add(' AND (YearID = :YearID)');
      Parameters.ParamByName('Serial').Value := StrToInt(trim(MskSerial.Text));
      Parameters.ParamByName('CompanyCode').Value :=
        Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
      Parameters.ParamByName('YearID').Value := YearID;
      Active := True;
      Result := StrToInt(trim(MskSerial.Text));
      // Locate('Serial', Result, []);
      edit;
      FieldByName('DocNote_L1').AsString := FieldByName('DocNote_L1').AsString +
        ' À»  ”‰œ  Ê”ÿ ”Ì” „ ÕﬁÊﬁ œ” „“œ ';
    end; // if
    Post;

  end; // with  }
end;

procedure TMakeDocumentMissionF.cmbCompanyChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
  actShowDoc.Execute;

end;

procedure TMakeDocumentMissionF.cmbYearIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TMakeDocumentMissionF.AddDetail(DocID: Integer; qry: TDataSet);
begin
  with qry do
  begin
    DisableControls;
    First;
    qryDocuments.Active := True;
    while not eof do
    begin
      qryDocuments.Insert;
      if opta.AccOldAvailable then
      begin
        qryDocuments.FieldByName('SecondaryDocNo').AsInteger := DocID;
        qryDocuments.FieldByName('desc').AsString :=
          FieldByName('_Dec').AsString;
        qryDocuments.FieldByName('bed').AsCurrency := FieldByName('Debt')
          .AsCurrency;
        qryDocuments.FieldByName('bes').AsCurrency := FieldByName('Credit')
          .AsCurrency;
        qryDocuments.FieldByName('DoPrint').AsBoolean := True;
      end
      else
      begin
        qryDocuments.FieldByName('Serial').AsInteger := DocID;
        qryDocuments.FieldByName('YearID').AsInteger := YearID;
        qryDocuments.FieldByName('CTopicCode2').AsInteger :=
          FieldByName('AccCTopicCode2').AsInteger;
        qryDocuments.FieldByName('CTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
        qryDocuments.FieldByName('Comment_L1').AsString :=
          FieldByName('_Dec').AsString;
        qryDocuments.FieldByName('Debt').AsCurrency := FieldByName('Debt')
          .AsCurrency;
        qryDocuments.FieldByName('Credit').AsCurrency := FieldByName('Credit')
          .AsCurrency;
        qryDocuments.FieldByName('CompanyCode').AsInteger :=
          Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
      end;
      qryDocuments.FieldByName('TopicCode').AsInteger :=
        FieldByName('AccTopicCode').AsInteger;
      qryDocuments.FieldByName('DetailCode').AsInteger :=
        FieldByName('AccDetailCode').AsInteger;
      qryDocuments.FieldByName('CTopicCode').AsInteger :=
        FieldByName('AccCTopicCode').AsInteger;
      qryDocuments.FieldByName('Row').AsInteger := RecNo + Rec_No;
      qryDocuments.Post;
      Next;
    end; // while
    qryDocuments.Active := False;
    EnableControls;
  end; // with  }
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Mission SET DocNo = ' + MskDocNo.Text +
      ', State = 2';
    SQL.Add('WHERE MissionID in (SELECT Mission.MissionID');
    SQL.Add('FROM Pay.MissionInfo INNER JOIN Mission ON MissionInfo.MissionID = Mission.MissionID');
    SQL.Add('WHERE  (MissionInfo.Price > 0) AND (Mission.DocNo IS NULL OR');
    SQL.Add('Mission.DocNo = 0) AND (CAST(SUBSTRING(Mission.MissionEndDate, 6, 2) AS int) = '
      + IntToStr(MonthNo) + ')');
    SQL.Add('AND ( Mission.PersonelNo BETWEEN  :PersonalFrom and :PersonalTo )');
    SQL.Add('GROUP BY Mission.MissionID ) ');
    Parameters.ParamByName('PersonalFrom').Value :=
      GetcFrom(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('PersonalTo').Value :=
      GetcTo(myParams.ParamValues['Personal'], ftInteger);
    ExecSQL;
    Active := False;
  end;
  UpdateFilter;
  BigMessage('”‰œ »« ‘„«—Â ' + MskDocNo.Text + ' À»  ‘œ.˛', 2);
end;

procedure TMakeDocumentMissionF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Personal') = nil then
    close;
  UpdateFilter;
  cmbCompany.Visible := gv_MultiCompany;
  Label8.Visible := cmbCompany.Visible;
  // CmbDocType.ItemIndex := 3;
  // if opt.AccOldAvailable then
  /// CmbDocType.ItemIndex := 3;
  // cmbCompany.ItemIndex:=0;
end;

procedure TMakeDocumentMissionF.actShowDocExecute(Sender: TObject);
var
  ErrorCount: Integer;
begin
  inherited;
  PnlWarnings.Visible := False;
  ErrorCount := 0; // Error;
  // actMakeDoc.Enabled:=ErrorCount=0;
  if ErrorCount > 0 then
  begin
    zbal.Title := IntToStr(ErrorCount) + 'Œÿ« ÊÃÊœ œ«—œ';
    zbal.Prompt.Text := 'ÃÂ  —ÊÌ  «“ ·Ì”  Œÿ«Â« «” ›«œÂ ﬂ‰Ìœ.';
    zbal.Show(BitBtn4);
    FlashAControl(BitBtn4);
  end; // if
end;

procedure TMakeDocumentMissionF.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeReservedCodes(DMf.qryTopicCode.Connection, '');
end;

procedure TMakeDocumentMissionF.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryMissionType)
end;

procedure TMakeDocumentMissionF.qryMissionTypeAfterOpen(DataSet: TDataSet);
var
  credit, debt, c: Currency;
begin
  inherited;
  With dsMissionType do
  begin
    Active := False;
    Active := True;
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('debt').AsCurrency := FieldByName('debt1').AsCurrency;
      Next;
    end;
  end;

  credit := CalcSumFileds2(dsMissionType.FieldByName('credit'));
  StatusBar1.Panels[0].Text := CurrToStrF(credit, ffCurrency, 0);
  debt := CalcSumFileds2(dsMissionType.FieldByName('debt'));
  StatusBar1.Panels[1].Text := CurrToStrF(debt, ffCurrency, 0);
  c := debt - credit;
  if c <> 0 then
    With dsMissionType do
      try
        First;
        edit;
        FieldByName('debt').AsCurrency := FieldByName('debt').AsCurrency - c;
        debt := debt - c;
        Post;
        c := 0;
      finally
        StatusBar1.Panels[1].Text := CurrToStrF(debt, ffCurrency, 0);
        StatusBar11.Panels[0].Text := CurrToStrF(c, ffCurrency, 0);
        actMakeDoc.Visible := (debt <> 0) and (credit <> 0) and
          (debt - credit = 0);
        EnableControls;
      end;
end;

function TMakeDocumentMissionF.Error: Integer;
begin
  Result := 0;
  with dsMissionType do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if (FieldByName('AccTopicCode').Value <> 0) and
        (FieldByName('_TopicName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccDetailCode').Value <> 0) and
        (FieldByName('_DetailName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccCTopicCode').Value <> 0) and
        (FieldByName('_CTopicName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccCTopicCode2').Value <> 0) and
        (FieldByName('_CTopicName2').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccCTopicCode3').Value <> 0) and
        (FieldByName('_CTopicName3').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TMakeDocumentMissionF.actErrorListExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  if PnlWarnings.Visible = True then
    PnlWarnings.Visible := False
  else
  begin
    PnlWarnings.Visible := True;
    lslWarnings.Clear;
    with dsMissionType do
    begin
      DisableControls;
      First;
      try
        while not eof do
        begin
          s := IfThen((FieldByName('_TopicName').AsString = '') and
            (FieldByName('AccTopicCode').AsString <> '0'),
            FieldByName('AccTopicCode').AsString);
          s := s + IfThen((FieldByName('_DetailName').AsString = '') and
            (FieldByName('AccDetailCode').AsString <> '0'),
            '-' + FieldByName('AccDetailCode').AsString);
          s := s + IfThen((FieldByName('_CTopicName').AsString = '') and
            (FieldByName('AccCTopicCode').AsString <> '0'),
            '-' + FieldByName('AccCTopicCode').AsString);
          s := s + IfThen((FieldByName('_CTopicName2').AsString = '') and
            (FieldByName('AccCTopicCode2').AsString <> '0'),
            '-' + FieldByName('AccCTopicCode2').AsString);
          s := s + IfThen((FieldByName('_CTopicName3').AsString = '') and
            (FieldByName('AccCTopicCode3').AsString <> '0'),
            '-' + FieldByName('AccCTopicCode3').AsString);
          if s <> '' then
            lslWarnings.Items.AddObject(Format('[—œÌ› %d]: [Œÿ« ﬂœ %s]',
              [RecNo, s]), TObject(dsMissionType.RecNo));
          Next;
        end; // while
      finally
        First;
        EnableControls;
      end; // try
    end // with
  end // with
end;

procedure TMakeDocumentMissionF.lslWarningsClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  dsMissionType.First;
  dsMissionType.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);
  lslWarnings.Hint := lslWarnings.Items[i];
end;

procedure TMakeDocumentMissionF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TMakeDocumentMissionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(dsMissionType);
end;

procedure TMakeDocumentMissionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(dsMissionType);
end;

procedure TMakeDocumentMissionF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateFilter;
end;

procedure TMakeDocumentMissionF.SBtnReciptNumberClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate,'
    + ' COUNT(Acc.Documents.Serial) AS RecNo' +
    ' FROM Acc.DocGroups LEFT OUTER JOIN' + ' Acc.Documents ON  ' +
    ' Acc.DocGroups.Serial = Acc.Documents.Serial ' +
    ' AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode ' +
    ' AND Acc.DocGroups.YearID = Acc.Documents.YearID ' +
    ' WHERE(Acc.DocGroups.Status IN (0, 1))AND(Acc.DocGroups.PrimaryDocNo = 0)'

    + ' AND (Acc.DocGroups.YearID = %d ) ' +

    IfThen(opta.SendDoc2OtherSystems, '',
    'AND (Acc.DocGroups.SourceDataBase = %s )') +
    ' GROUP BY Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate';

  If opta.SendDoc2OtherSystems Then
    Txt := Format(Txt, [APPBank.Year])
  else
    Txt := Format(Txt, [APPBank.Year, QuotedStr(APPBank.Name + '.pay.' +
      SourceDataBaseformName)]);

  b := searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' ·Ì”  «”‰«œ „ÊÃÊœ  ',
    Txt, ['”—Ì«· ”‰œ', '‘„«—Â ”‰œ', ' «—ÌŒ ”‰œ', '—œÌ›'], Results,
    [80, 80, 80, 80], alLeft);
  if b then
  begin
    MskSerial.Text := Results[0];
    MskDocNo.Text := Results[1];
    mskDocDate.Text := Results[2];
    Rec_No := StrToInt(Results[3]);
    NewDoc := False;
  end;
end;

procedure TMakeDocumentMissionF.MskSerialExit(Sender: TObject);
begin
  inherited;
  if opta.AccOldAvailable then
    Exit;
  with DMf.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text :=
      'select count(serial) as countserial from Acc.docgroups where serial= ' +
      trim(MskSerial.Text);
    SQL.Add('AND CompanyCode = ' +
      IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
      ' AND  YearID = ' + IntToStr(YearID));
    Active := True;
    NewDoc := FieldByName('countserial').AsInteger = 0;
    MskSerial.ReadOnly := not NewDoc;
    MskDocNo.ReadOnly := MskSerial.ReadOnly;
    mskDocDate.ReadOnly := MskSerial.ReadOnly;
    Active := False;
    if not MskSerial.ReadOnly then
      Exit;
    SQL.Text :=
      'select Serial,SecondaryDocNo,DocDate from Acc.docgroups where serial= ' +
      trim(MskSerial.Text);
    Active := True;
    MskSerial.Text := FieldByName('Serial').AsString;
    MskDocNo.Text := FieldByName('SecondaryDocNo').AsString;
    mskDocDate.Text := FieldByName('DocDate').AsString;
    Active := False;
  end; // with
end;

procedure TMakeDocumentMissionF.actCheckDocumentExecute(Sender: TObject);
begin
  inherited;
  dsMissionType.DisableControls;
  if ValidateDocument(dsMissionType, lslWarnings) then
  begin
    Warn('”‰œ „Ê—œ  √ÌÌœ «” .', mtConfirmation);
    actMakeDoc.Enabled := True;
    PnlWarnings.Visible := False;
  end
  else
  begin
    Warn('”‰œ ‰«„⁄ »— «” .');
    actMakeDoc.Enabled := True;
    PnlWarnings.Visible := True;
  end; // else
  dsMissionType.EnableControls;
end;

procedure TMakeDocumentMissionF.PageControl1Change(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentMissionF.qryMissionTypeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel
end;

procedure TMakeDocumentMissionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'Personal', ' Å—”‰· ', 'Å—”‰·', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT   PersonelNo, name_L1 + ''  '' + lastName_L1 AS PersonelName  FROM Pay.PersonelInfo',
        'SELECT  MIN(PersonelNo), MAX(PersonelNo)  FROM Pay.PersonelInfo ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TMakeDocumentMissionF.actAccountfExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryMissionType)
end;

procedure TMakeDocumentMissionF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  SendWarnDBGridToExcelc(DBGrid1, lslWarnings)
end;

end.
