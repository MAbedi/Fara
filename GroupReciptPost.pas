unit GroupReciptPost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, CedarDbGrid, Data.Win.ADODB, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, Vcl.Buttons, System.Math, Vcl.Grids, Vcl.DBGrids;

type
  TGroupReciptPostF = class(Ttemplate2MDIF)
    cmbReciptType: TComboBox;
    qryRecallRecipts: TADOQuery;
    srcRecallREcipts: TDataSource;
    CedarDbgrid1: TCedarDbgrid;
    qryRecallReciptsYearID: TIntegerField;
    qryRecallReciptsStuffCode: TLargeintField;
    qryRecallReciptsc_StuffName: TStringField;
    qryRecallReciptsPersonID1: TIntegerField;
    qryRecallReciptsCustName: TStringField;
    qryRecallReciptsPersonID2: TIntegerField;
    qryRecallReciptsCustName_2: TStringField;
    qryRecallReciptsEntity: TFloatField;
    qryRecallReciptsWeight: TFloatField;
    qryRecallReciptsUnitSellPrice: TFMTBCDField;
    qryRecallReciptsTotalPrice: TFloatField;
    qryRecallReciptsWaterCo: TFloatField;
    qryRecallReciptsDeficitValue: TFloatField;
    qryRecallReciptsTaxCo: TFloatField;
    qryRecallReciptsTaxValue: TFloatField;
    qryRecallReciptsItemNote: TStringField;
    qryRecallReciptsItemPersonID1: TIntegerField;
    qryRecallReciptsNewReciptItemID: TIntegerField;
    qryRecallReciptsAidNumber: TIntegerField;
    qryRecallReciptsAidDate: TStringField;
    qryRecallReciptsReciptCaption: TStringField;
    qryRecallReciptsFlag: TFMTBCDField;
    qryRecallReciptsUnitName: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actPost: TAction;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    qryinit: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbStore: TComboBox;
    cmbReciptDate: TComboBox;
    actSelectAll: TAction;
    actInversSelect: TAction;
    actFilter: TAction;
    cmbLookUp: TComboBox;
    Label4: TLabel;
    qryRecallReciptsSecondType: TIntegerField;
    qryRecallReciptsPersonID2Bed: TWordField;
    qryRecallReciptsTotallSellPrice: TFloatField;
    qryRecallReciptsMasterPersonID1: TIntegerField;
    qryRecallReciptsMasterCustName1: TStringField;
    qryRecallReciptsSecondTypeName: TStringField;
    actPost2: TAction;
    qryRecallReciptsRecall_ReciptID: TIntegerField;
    qryRecallReciptsUnitCommission: TFMTBCDField;
    qryRecallReciptsReciptDate: TStringField;
    qryRecallReciptsReciptNumber: TIntegerField;
    qryRecallReciptsServerID: TIntegerField;
    actReciptPost: TAction;
    qryRecallReciptsportage: TFloatField;
    Label5: TLabel;
    Label6: TLabel;
    cmbFormType: TComboBox;
    cmbBank: TComboBox;
    qryinitF: TADOQuery;
    qryForms: TADOQuery;
    qryOld: TADOQuery;
    qryRecallReciptsSellsEmporium: TIntegerField;
    qryRecallReciptsPersonID3: TIntegerField;
    qryRecallReciptsGroupID: TIntegerField;
    qryRecallReciptsPersonID4: TIntegerField;
    qryRecallReciptsPersonID5: TIntegerField;
    qryRecallReciptspo: TStringField;
    procedure actPostExecute(Sender: TObject);
    procedure cmbReciptTypeChange(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actInversSelectExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actReciptPostExecute(Sender: TObject);
    procedure CedarDbgrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    ReciptType: Integer;
    RestartStore: Boolean;
    SumTotallSellPrice, SumTotallSellPriceRound: Real48;
    procedure AddRecipt(var ReciptID: Integer);
    procedure AddReciptItems(var ReciptID: Integer);
    procedure UpdateList;
    procedure PostReciptNote(var ReciptNote, Stuff_Name: string;
      ReciptID: Integer);
    // function FindSaveForms(RelatedRecipts: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  GroupReciptPostF: TGroupReciptPostF;

implementation

uses
  DM, MMESSAGE, FormFunctions, FaraConsts, GlobalPro, filter_ADO,
  FilterClass_ADO, Filter_ADO_Const, ReciptPostOnCustomer, main;

{$R *.dfm}

procedure TGroupReciptPostF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(DMf.adcBSell, 'LookUpsCode', 'نوع اطلاعات', 'كد اطلاعات ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM Recipts INNER JOIN LookUps ON '
        + 'Recipts.SecondType = LookUps.LookUpID ',
        'SELECT MIN(LookUps.Code),MAX(LookUps.Code) FROM Recipts LEFT OUTER JOIN LookUps ON '
        + 'Recipts.SecondType = LookUps.LookUpID');

      AddItemFilter(GetFilter, TFilterStoreID);
      AddItemFilter(GetFilter, TFilterPersonID1);

      AddItemFilter(GetFilter, TFilterAidDate);

      AddItemFilter(GetFilter, TFilterReciptDate);

      AddItem(DMf.adcBSell, 'ReciptNumber', '', 'شماره', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts WHERE (YearID = '
        + APPBank.Year.ToString + ')');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end;
    finally
      Free;
    end;
end;

procedure TGroupReciptPostF.actInversSelectExecute(Sender: TObject);
begin
  inherited;
  with qryRecallRecipts do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      qryRecallReciptsFlag.AsInteger :=
        ifthen(qryRecallReciptsFlag.AsInteger = 0, 1, 0);
      Post;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TGroupReciptPostF.actPostExecute(Sender: TObject);
var
  ReciptID: Integer;
  ReciptDate, ReciptNote, Stuff_Name: string;
  PersonID1, PersonID2: Integer;
  SecondType, Recall_ReciptID: Integer;
  b, InfoWeight: Boolean;
  Settings: Largeint;
begin
  inherited;
  ReciptID := 0;
  ReciptDate := '';
  ReciptNote := '';
  PersonID1 := -1;
  PersonID2 := -1;
  SecondType := -1;
  Recall_ReciptID := -1;
  Settings := qryinit.FieldByName('Settings').AsLargeInt;
  InfoWeight := (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHKInfoWeight)) <> 0;

  with qryRecallRecipts Do
    try
      DisableControls;
      Filter := 'Flag=1';
      Filtered := True;
      First;
      while not Eof do
      begin
        if qryRecallReciptsFlag.AsInteger <> 0 then
        begin
          try
            b := (qryRecallReciptsRecall_ReciptID.AsInteger <> Recall_ReciptID)
              or (qryRecallReciptsPersonID1.AsInteger <> PersonID1) or
              (qryRecallReciptsPersonID2.AsInteger <> PersonID2) or
              (qryRecallReciptsSecondType.AsInteger <> SecondType);
            if opt.EntityDisplayType <> 0 then
              b := b or (qryRecallReciptsAidDate.AsString <> ReciptDate);

            case opt.GroupReciptPostKind of
              0:
                ;
              1:
                ;
            else
              b := (qryRecallReciptsRecall_ReciptID.AsInteger <>
                Recall_ReciptID) or
                (qryRecallReciptsAidDate.AsString <> ReciptDate);
            end;

            if b then
            begin
              SumTotallSellPrice := 0;
              SumTotallSellPriceRound := 0;
              PostReciptNote(ReciptNote, Stuff_Name, ReciptID);

              // if qryReciptItems.Active  then
              // begin
              // Last;
              // Edit;
              // qryReciptItems.FieldByName('TotallSellPrice').AsCurrency :=
              // qryReciptItems.FieldByName('TotallSellPrice').AsCurrency +
              // SumTotallSellPrice - SumTotallSellPriceRound;
              // Post;
              // end;
              AddRecipt(ReciptID);
              Recall_ReciptID := qryRecallReciptsRecall_ReciptID.AsInteger;
              ReciptDate := qryRecallReciptsAidDate.AsString;
              PersonID1 := qryRecallReciptsPersonID1.AsInteger;
              PersonID2 := qryRecallReciptsPersonID2.AsInteger;
              SecondType := qryRecallReciptsSecondType.AsInteger;
            end;

            if qryRecallReciptsGroupID.AsInteger = 2 then
            begin
              Stuff_Name := '(' + qryRecallReciptsc_StuffName.AsString.
                Trim + ') ';
            end;

            AddReciptItems(ReciptID);
            // FindSaveForms(qryRecallReciptsRecall_ReciptID.AsInteger);

            if ((InfoWeight) or ((Settings and Integer(CHkFillingCustomerWeight)
              ) <> 0)) then
            begin
              if ReciptNote = EmptyStr then
                ReciptNote := qryRecallReciptsItemNote.AsString.Trim;
            end
            else
            begin
              ReciptNote := ReciptNote + ',' +
                qryRecallReciptsWeight.AsString.Trim + ' ' +
                qryRecallReciptsUnitName.AsString.Trim + ' ' +
                qryRecallReciptsc_StuffName.AsString.Trim;
              if pos(qryRecallReciptsCustName.AsString.Trim, ReciptNote) = 0
              then
                ReciptNote := qryRecallReciptsCustName.AsString.Trim + ' ' +
                  ReciptNote;
            end;
            FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
            FreeReservedCodes(DMf.adcBSell, 'recipts', 'reciptnumber');
          except
            Warn('اشکال در ثبت');
            Exit
          end;
        end;
        Next;
      end;
      if cmbReciptDate.ItemIndex <> 2 then
        PostReciptNote(ReciptNote, Stuff_Name, ReciptID);
    finally
      Filtered := False;
      EnableControls;
      Requery();
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
      FreeReservedCodes(DMf.adcBSell, 'recipts', 'reciptnumber');
      BigMessage('ثبت شد', 2);

    end;
end;

// function TGroupReciptPostF.FindSaveForms(RelatedRecipts: Integer): Boolean;
// var
// Ftype, i: Integer;
// FcustomerID: Integer;
// FieldName: string;
// begin
// // BigMessage('2‏- در حال ثبت اطلاعات خزانه داری  ...‏', 0);
// Ftype := Integer(cmbFormType.Items.Objects[cmbFormType.ItemIndex]);
// FcustomerID := Integer(cmbBank.Items.Objects[cmbBank.ItemIndex]);
// try
// with qryinitF do
// begin
// Parameters.ParamByName('FormType').Value := Ftype;
// Open;
// end;
// with qryOld do
// begin
// Close;
// Parameters.ParamByName('RelatedRecipts').Value := RelatedRecipts;
// Parameters.ParamByName('ServerID').Value := opt.ServerID;
// Parameters.ParamByName('YearID').Value := APPBank.Year;
// Open;
// end;
//
// with qryForms do
// begin
// Open;
// begin
// if qryOld.RecordCount = 1 then
// begin
// Insert;
// For i := 0 to qryOld.Fields.Count - 1 do
// begin
// FieldName := qryOld.Fields[i].FieldName;
// if (FindField(FieldName) <> nil) and
// (FieldByName(FieldName).CanModify) then
// begin
// FieldByName(FieldName).AsString := qryOld.Fields[i].AsString;
// end;
// end;
// FieldByName('formtype').AsInteger := Ftype;
// FieldByName('customerID2').AsInteger := FcustomerID;
// FieldByName('FormDate').AsString :=
// qryRecipts.FieldByName('ReciptDate').AsString;
// FieldByName('OperatorID').AsInteger := User.id;
// FieldByName('FirstUser').AsString := User.Name;
// FieldByName('FormID').AsInteger :=
// GetanewID(qryForms, IntToStr(Ftype), 'Forms', 'FormID', nil, 1);
// GetFormNumber(IntToStr(Ftype), qryinitF, qryForms);
// Post;
// end;
// end;
// end;
// Result := True;
// except
// Result := False;
// end;
// end;

procedure TGroupReciptPostF.actReciptPostExecute(Sender: TObject);
var
  PersonID1: Integer;
begin
  inherited;
  try
    PersonID1 := qryRecallReciptsPersonID1.AsInteger;
    with qryRecallRecipts do
    begin
      Close;
      Parameters.ParamByName('PersonID1From').Value := PersonID1;
      Parameters.ParamByName('PersonID1To').Value := PersonID1;
      Open;
    end;
    CreateChildForm(TReciptPostOnCustomerF, ReciptPostOnCustomerF, mainF,
      PersonID1, alNone);
  finally
    with qryRecallRecipts do
    begin
      Close;
      Parameters.ParamByName('PersonID1From').Value :=
        GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
      Parameters.ParamByName('PersonID1To').Value :=
        GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
      Open;
    end;

  end;

end;

procedure TGroupReciptPostF.PostReciptNote(var ReciptNote, Stuff_Name: string;
  ReciptID: Integer);
var
  SQL1: string;
begin
  if not ReciptNote.IsEmpty then
  begin
    SQL1 := 'UPDATE Recipts SET ReciptNote = ''%s''' +
      ' WHERE (ReciptID = %d) AND (ServerID = %d) AND (YearID = %d)';
    SQL1 := Format(SQL1, [Stuff_Name + ReciptNote, ReciptID, opt.ServerID,
      APPBank.Year]);
    DMf.adcBSell.Execute(SQL1);
    ReciptNote := EmptyStr;
    Stuff_Name := EmptyStr;
  end;

  // (SELECT TOP (1) S.c_StuffName ' +
  // ' FROM  ReciptItems AS RI INNER JOIN ' +
  // ' StuffCoding AS S ON RI.ProductCode = S.c_StuffCode AND RI.StuffCode = S.c_StuffCode '
  // + ' WHERE  (RI.YearID = Recipts.YearID) AND (RI.ServerID = Recipts.ServerID) AND (RI.ReciptID = Recipts.ReciptID) )+

end;

procedure TGroupReciptPostF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryRecallRecipts do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      qryRecallReciptsFlag.AsInteger := 1;
      Post;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TGroupReciptPostF.AddRecipt(var ReciptID: Integer);
var
  txt: string;
begin
  with qryRecipts Do
  begin
    Open;
    Insert;
    ReciptID := GetanewID(qryRecipts, Self.Name, 'Recipts', 'ReciptID', nil, 1);
    case opt.GroupReciptPostKind of
      0:
        ;
      1:
        ;
    else
      FieldByName('ParentReciptID').AsInteger :=
        qryRecallReciptsRecall_ReciptID.AsInteger
    end;

    FieldByName('StoreID').AsInteger :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    FieldByName('ReciptType').AsInteger := ReciptType;
    FieldByName('SellsEmporium').AsInteger :=
      qryRecallReciptsSellsEmporium.AsInteger;;

    FieldByName('SecondType').AsInteger := qryRecallReciptsSecondType.AsInteger;
    // Integer(cmbLookUp.Items.Objects[cmbLookUp.ItemIndex]);

    case cmbReciptDate.ItemIndex of
      0:
        FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
      1:
        FieldByName('ReciptDate').AsString := qryRecallReciptsAidDate.AsString;
      2:
        begin
          FieldByName('AidNumber').AsString :=
            qryRecallReciptsReciptNumber.AsString;
          FieldByName('ReciptDate').AsString :=
            qryRecallReciptsReciptDate.AsString;
        end;

    end;
    // if cmbReciptDate.ItemIndex = 0 then
    // fieldbyname('ReciptDate').AsString := var_glb_CurrentDate
    // else
    // fieldbyname('ReciptDate').AsString := qryRecallReciptsAidDate.AsString;
    myStore.code := FieldByName('StoreID').AsInteger;

    if qryinit.FieldByName('AidNumRestOnSecType').AsInteger = 1 then
    begin
      txt := Format
        ('SELECT MAX(ReciptNumber)FROM Recipts WHERE(SecondType = %d )',
        [qryRecallReciptsSecondType.AsInteger]);
      txt := txt + Format('AND (ReciptType = %d )', [ReciptType]);
      IF RestartStore THEN
        txt := txt + 'AND(StoreID=' + IntToStr(myStore.code) + ')';
      txt := txt + 'AND(YearID=' + IntToStr(APPBank.Year) + ')';
      qryRecipts.FieldByName('ReciptNumber').AsInteger :=
        GetANewCode(IntToStr(ReciptType), txt, 'ReciptNumber');
    end
    else
      GetReciptNumber(qryinit, qryRecipts, 0, myStore);

    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('OperatorID').AsInteger := User.id;
    FieldByName('ModifyDate').AsDateTime := Now;
    FieldByName('FirstUser').AsString := User.Name;

    if ReciptType = 12 then
      FieldByName('PersonID1').AsInteger :=
        qryRecallReciptsMasterPersonID1.AsInteger
    else
      FieldByName('PersonID1').AsInteger := qryRecallReciptsPersonID1.AsInteger;

    FieldByName('PersonID2').AsInteger := qryRecallReciptsPersonID2.AsInteger;
    FieldByName('PersonID2Bed').AsString :=
      qryRecallReciptsPersonID2Bed.AsString;

    FieldByName('PersonID3').AsInteger := qryRecallReciptsPersonID3.AsInteger;

    Post;
    case opt.GroupReciptPostKind of
      0:
        ;
      1:
        ;
    else
      With DMf.qryTmpTmp do
      begin
        Close;
        SQL.Text := 'UPDATE Recipts';
        SQL.Add('SET ParentReciptID = :ParentReciptID ');
        SQL.Add('WHERE (ReciptID = :ReciptID) ');
        SQL.Add('AND (ServerID = :ServerID) AND (YearID = :YearID)');
        Parameters.ParamByName('ParentReciptID').Value := ReciptID;
        Parameters.ParamByName('ReciptID').Value :=
          qryRecallReciptsRecall_ReciptID.AsInteger;;
        Parameters.ParamByName('ServerID').Value :=
          qryRecallReciptsServerID.AsInteger;;
        Parameters.ParamByName('YearID').Value :=
          qryRecallReciptsYearID.AsInteger;;
        ExecSQL;
        Close;
      end;
    end;

  end;
end;

procedure TGroupReciptPostF.AddReciptItems(var ReciptID: Integer);
var
  TotallSellPrice: Real48;
begin
  with qryReciptItems Do
    try
      Close;
      Open;
      Insert;

      FieldByName('ReciptID').AsInteger := ReciptID;
      FieldByName('ReciptItemID').AsInteger :=
        GetanewID(qryReciptItems, Self.Name, 'ReciptItems ',
        'ReciptItemID', nil, 1);

      case opt.GroupReciptPostKind of
        0:
          FieldByName('preReciptItemID').AsInteger :=
            qryRecallReciptsNewReciptItemID.AsInteger;
        1:
          FieldByName('preReciptItemID').AsInteger :=
            qryRecallReciptsNewReciptItemID.AsInteger;
      else

      end;

      FieldByName('StuffCode').AsLargeInt :=
        qryRecallReciptsStuffCode.AsLargeInt;

      if FindField('portage') <> nil then
        FieldByName('portage').AsFloat :=Trunc( qryRecallReciptsportage.AsFloat);

      FieldByName('FirstUser').AsString := User.Name;
      FieldByName('UnitSellPrice').AsCurrency :=
        qryRecallReciptsUnitSellPrice.AsCurrency;

      FieldByName('UnitCommission').AsFloat := Trunc(
        qryRecallReciptsUnitCommission.AsFloat);

      FieldByName('UseUnitID').AsInteger := 0;

      FieldByName('ItemNote').AsString := qryRecallReciptsItemNote.AsString;
      FieldByName('TaxCo').AsFloat := qryRecallReciptsTaxCo.AsFloat;
      FieldByName('TaxValue').AsFloat :=Trunc( qryRecallReciptsTaxValue.AsFloat);
      FieldByName('PrvYearID').AsInteger := qryRecallReciptsYearID.AsInteger;
      FieldByName('DeficitValue').AsFloat := Trunc(
        qryRecallReciptsDeficitValue.AsFloat);
      FieldByName('WaterCo').AsFloat := qryRecallReciptsWaterCo.AsFloat;
      FieldByName('PersonID1').AsInteger :=
        qryRecallReciptsItemPersonID1.AsInteger;
      if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
      begin
        FieldByName('OutputEntity').AsFloat := qryRecallReciptsEntity.AsFloat;
        FieldByName('OutputWeight').AsFloat := qryRecallReciptsWeight.AsFloat;
        FieldByName('TotalOutputPrice').AsCurrency :=
          Trunc(qryRecallReciptsTotalPrice.AsCurrency);

        TotallSellPrice :=Trunc( qryRecallReciptsTotallSellPrice.AsCurrency +
          (qryRecallReciptsUnitCommission.AsFloat * qryReciptItems.FieldByName
          ('OutputEntity').AsFloat));

      end
      else
      begin
        FieldByName('InputEntity').AsFloat := qryRecallReciptsEntity.AsFloat;
        FieldByName('InputWeight').AsFloat := qryRecallReciptsWeight.AsFloat;
        FieldByName('TotalInputPrice').AsCurrency := Trunc(
          qryRecallReciptsTotalPrice.AsCurrency);

        TotallSellPrice :=Trunc( qryRecallReciptsTotallSellPrice.AsCurrency +
          (qryRecallReciptsUnitCommission.AsFloat * qryReciptItems.FieldByName
          ('InputEntity').AsFloat));

      end;
      SumTotallSellPrice := SumTotallSellPrice + TotallSellPrice;
      TotallSellPrice := Trunc(TotallSellPrice);
      SumTotallSellPriceRound := SumTotallSellPriceRound + TotallSellPrice;

      if (cmbReciptDate.ItemIndex = 2) and
        (qryRecallRecipts.RecNo = qryRecallRecipts.RecordCount) then
      begin
        TotallSellPrice := TotallSellPrice + SumTotallSellPrice -
          SumTotallSellPriceRound
      end;

      qryReciptItems.FieldByName('TotallSellPrice').AsCurrency :=
        TotallSellPrice;

      Post;
    finally

    end;
end;

procedure TGroupReciptPostF.CedarDbgrid1DblClick(Sender: TObject);
var
  Flag, ReciptID, ServerID, YearID: Integer;

begin
  inherited;
  Flag := qryRecallReciptsFlag.AsInteger;

  with qryRecallRecipts do
  begin
    ReciptID := qryRecallReciptsRecall_ReciptID.AsInteger;
    ServerID := qryRecallReciptsServerID.AsInteger;
    YearID := qryRecallReciptsYearID.AsInteger;
    DisableControls;
    First;
    while not Eof do
    begin
      if (qryRecallReciptsRecall_ReciptID.AsInteger = ReciptID) and
        (qryRecallReciptsServerID.AsInteger = ServerID) and
        (qryRecallReciptsYearID.AsInteger = YearID) then
      begin
        Edit;
        qryRecallReciptsFlag.AsInteger := Flag;
        Post;
      end;
      Next;
    end;
    qryRecallRecipts.Locate('Recall_ReciptID;ServerID;YearID',
      VarArrayOf([ReciptID, ServerID, YearID]), []);
    EnableControls;
  end;

end;

procedure TGroupReciptPostF.cmbReciptTypeChange(Sender: TObject);

begin
  inherited;
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
  UpdateList;
end;

procedure TGroupReciptPostF.FormCreate(Sender: TObject);
begin
  inherited;
  // InitCombos(cmbLookUp,
  // 'SELECT LookUpID, Name FROM LookUps WHERE  (Kind = 251)');

  InitCombos(cmbStore,
    'SELECT n_StoreID,ltrim(n_StoreID)+'' -- ''+c_StoreName as StoreName FROM Stores');
  InitCombos(cmbReciptType,
    'select ReciptType, ReciptCaption from ReciptTypes where ReciptType = 12 ');
  // CHARINDEX(''1'', MnuPlaceIDs) <> 0
  cmbStore.ItemIndex := ReadConfig(APPID, Self.Name + '_cmbStore_ItemIndex',
    '0').ToInteger;
  cmbReciptType.ItemIndex := ReadConfig(APPID,
    Self.Name + '_cmbReciptType_ItemIndex', '0').ToInteger;
  cmbReciptDate.ItemIndex := ReadConfig(APPID,
    Self.Name + '_cmbReciptDate_ItemIndex', '0').ToInteger;
  // cmbLookUp.ItemIndex := ReadConfig(APPID, Self.Name + '_cmbLookUp_ItemIndex',
  // '0').ToInteger;
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);

  InitCombos(cmbBank,
    'SELECT custid, custname FROM Customers WHERE (CustID <> 0) AND (CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGroup WHERE GroupType=1))');
  InitCombos(cmbFormType,
    'SELECT FormType, FormCaption FROM FormTypes WHERE (DisplayFormType in(0,7))');

  cmbBank.ItemIndex := ReadConfig('', Name + '_cmbBank', '0').ToInteger;
  cmbFormType.ItemIndex := ReadConfig('', Name + '_cmbFormType', '0').ToInteger;

end;

procedure TGroupReciptPostF.FormDestroy(Sender: TObject);
begin
  inherited;

  SaveConfig(APPID, Self.Name + '_cmbStore_ItemIndex',
    (cmbStore.ItemIndex).ToString);
  SaveConfig(APPID, Self.Name + '_cmbReciptType_ItemIndex',
    (cmbReciptType.ItemIndex).ToString);
  SaveConfig(APPID, Self.Name + '_cmbReciptDate_ItemIndex',
    (cmbReciptDate.ItemIndex).ToString);
  // SaveConfig(APPID, Self.Name + '_cmbLookUp_ItemIndex',
  // (cmbLookUp.ItemIndex).ToString)

  SaveConfig('', Name + '_cmbBank', cmbBank.ItemIndex.ToString);
  SaveConfig('', Name + '_cmbFormType', cmbFormType.ItemIndex.ToString);

end;

procedure TGroupReciptPostF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

procedure TGroupReciptPostF.UpdateList;
begin
  with qryinit do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Open;
  end;

  RestartStore := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
    in [0, 1, 4];

  with qryRecallRecipts do
  begin
    Active := False;
    SQL.Text := 'SELECT * From';
    case opt.GroupReciptPostKind of
      0:
        SQL.Add('dbo.Fn_RecallReciptsEntity');
      1:
        SQL.Add('dbo.Fn_RecallReciptsWeight');
    else
      SQL.Add('dbo.Fn_RecallReciptsEW');
    end;

    SQL.Add('( :ReciptType , :YearIDFrom , :YearIDTo , :PersonID1From , :PersonID1To');
    SQL.Add(', :ReciptDateFrom , :ReciptDateTo , :ReciptNumberFrom , :ReciptNumberTo , :LookUpsCodeFrom , :LookUpsCodeTo');
    SQL.Add(')');

    SQL.Add('where (AidDate BetWeen :AidDateFrom AND :AidDateTo ) ');
    SQL.Add('AND(StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);


    SQL.Add('Order By Recall_ReciptID , AidDate, PersonID1, PersonID2, preReciptItemID');

    Parameters.ParamByName('ReciptType').Value := ReciptType;

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;

    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftString);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftString);

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

    Parameters.ParamByName('LookUpsCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['LookUpsCode'], ftInteger);
    Parameters.ParamByName('LookUpsCodeTo').Value :=
      GetcTo(myParams.ParamValues['LookUpsCode'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('AidDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidDate'], ftDate);
    Parameters.ParamByName('AidDateTo').Value :=
      GetcTo(myParams.ParamValues['AidDate'], ftDate);

    Active := True;
  end;
end;

end.
