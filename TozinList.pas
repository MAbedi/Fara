unit TozinList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, FarsiReportBuilde, Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, System.ImageList, Vcl.ImgList, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Data.Win.ADODB, ppDesignLayer, ppBands, ppCache, ppClass, ppDB,
  ppDBPipe, ppParameter, ppComm, ppRelatv, ppProd, ppReport;

type
  TTozinListF = class(Ttemplate2MDIF)
    grdTozin: TCedarDbgrid;
    srcTozin: TDataSource;
    qryTozin: TADOQuery;
    qryTozinTozinID: TIntegerField;
    qryTozinTozinNumber: TIntegerField;
    qryTozinReciptType: TWordField;
    qryTozinMachineNo: TStringField;
    qryTozinStoreID: TSmallintField;
    qryTozinStuffCode: TLargeintField;
    qryTozinPersonID1: TIntegerField;
    qryTozinMachineName: TStringField;
    qryTozinMachineWeight: TFloatField;
    qryTozinMachineFullWeight: TFloatField;
    qryTozinTozinNote: TStringField;
    qryTozinTozinDate: TStringField;
    qryTozinReciptNumber: TIntegerField;
    qryTozinMoistureContent: TFloatField;
    qryTozinRisingUseful: TFloatField;
    qryTozinRisingNonUseFul: TFloatField;
    qryTozinPersonID2: TIntegerField;
    qryTozinIsSystem: TBooleanField;
    qryinit: TADOQuery;
    qryTozinCustName2: TStringField;
    qryTozinCustName1: TStringField;
    qryTozinc_StoreName: TStringField;
    qryTozinc_StuffName: TStringField;
    qryTozinMandeh: TFloatField;
    Button1: TButton;
    Button2: TButton;
    actInsertForm: TAction;
    actEditForm: TAction;
    Button3: TButton;
    Button4: TButton;
    actSort: TAction;
    rdoType: TRadioGroup;
    qryTozinEnterDate: TStringField;
    qryTozinExitDate: TStringField;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    Button5: TButton;
    actPrint: TAction;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    qryTozinTozinState: TWordField;
    actTozinState1: TAction;
    btnTozinState3: TButton;
    actTozinState3: TAction;
    Button7: TButton;
    qryTozinNumberOfBags: TBCDField;
    actCorrelateRecipt: TAction;
    actConversionCoSerial: TAction;
    qryLicense: TADOQuery;
    qryLicenseReciptID: TIntegerField;
    qryLicenseServerID: TIntegerField;
    qryLicenseYearID: TIntegerField;
    qryLicenseReciptNumber: TIntegerField;
    qryLicenseReciptdate: TStringField;
    qryLicenseReciptType: TWordField;
    qryLicensetxt: TStringField;
    qryLicenseWeight: TFloatField;
    plnLicense: TppDBPipeline;
    srcLicense: TDataSource;
    btnConversionCoSerial: TBitBtn;
    btnCorrelateRecipt1: TBitBtn;
    actShowTozin: TAction;
    BitBtn1: TBitBtn;
    actEditTozin: TAction;
    Button8: TButton;
    actManualInsert: TAction;
    Button9: TButton;
    qryTozinTozin_Note: TStringField;
    qryTozinReciptCaption: TStringField;
    qryTozinConversionCoSerial: TWordField;
    qryTozinServerID: TIntegerField;
    qryTozinYearID: TIntegerField;
    qryTozinStoreID2: TSmallintField;
    qryTozinParentReciptItemID: TIntegerField;
    qryTozinReciptID: TIntegerField;
    qryTozinprvYearID: TIntegerField;
    qryTozinAidDate: TStringField;
    qryTozinAidNumber: TStringField;
    qryTozinPersonID3: TIntegerField;
    qryTozinSellsMethod: TIntegerField;
    qryTozinSecondTypeName: TStringField;
    qryTozinFirstUser: TStringField;
    qryTozinLastUser: TStringField;
    qryTozinCustName3: TStringField;
    qryTozinTruckNumber: TStringField;
    actSumPost: TAction;
    actSumPostPersonID1: TAction;
    actSumPostTozinDate: TAction;
    qryTozinCarType2: TStringField;
    qryTozinNationalID1: TStringField;
    qryTozinNationalID2: TStringField;
    qryTozinDeficitAdd_Dec: TBCDField;
    actAddSum: TAction;
    qryTozinRelatedRecipts: TStringField;
    qryTozinRelatedName: TStringField;
    actTozinState0: TAction;
    actTozinDelete: TAction;
    qryTozinPersonID4: TIntegerField;
    qryTozinPersonID5: TIntegerField;
    qryTozinpo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actInsertFormExecute(Sender: TObject);
    procedure actEditFormExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure rdoTypeClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryTozinTozinStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actTozinState1Execute(Sender: TObject);
    procedure actTozinState3Execute(Sender: TObject);
    procedure actCorrelateReciptExecute(Sender: TObject);
    procedure actConversionCoSerialExecute(Sender: TObject);
    procedure actShowTozinExecute(Sender: TObject);
    procedure actEditTozinExecute(Sender: TObject);
    procedure actManualInsertExecute(Sender: TObject);
    procedure grdTozinDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSumPostExecute(Sender: TObject);
    procedure actSumPostPersonID1Execute(Sender: TObject);
    procedure actSumPostTozinDateExecute(Sender: TObject);
    procedure actAddSumExecute(Sender: TObject);
    procedure qryTozinAfterScroll(DataSet: TDataSet);
    procedure actTozinState0Execute(Sender: TObject);
    procedure actTozinDeleteExecute(Sender: TObject);
  private
    FFormType: Integer;
    ConversionCoSerial, CorrelateReciptType: Integer;
    OrginalSQL: string;
    procedure initForm;
    procedure UpdateQry;
    procedure finallyqryTozin;
    procedure SumPost(onTozinDate, OnPersonID1: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TozinListF: TTozinListF;

const
  PartSise = 100;

implementation

{$R *.dfm}

uses GlobalPro, GetTozin, searchCode_ADO, DM, sort2, filter_ADO,
  FilterClass_ADO, FormFunctions, MMESSAGE, Filter_ADO_Const, UTozin,
  FaraConsts;
{ Ttemplate2MDIF3 }

procedure TTozinListF.actAddSumExecute(Sender: TObject);
begin
  inherited;
  grdTozin.SetFooter4Sum([]);
end;

procedure TTozinListF.actConversionCoSerialExecute(Sender: TObject);
var
  i, TozinID: Integer;
begin
  inherited;
  with grdTozin.DataSource.DataSet do
    try
      if grdTozin.SelectedRows.Count > 0 then
      begin
        TozinID := qryTozinTozinID.AsInteger;
        DisableControls;
        for i := 0 to grdTozin.SelectedRows.Count - 1 do // new
        begin
          GotoBookmark((grdTozin.SelectedRows.Items[i]));

          TozinConversionCoSerial(qryinit, qryTozin, qryLicense,
            actCorrelateRecipt.Caption, actConversionCoSerial.Caption);

        end;
        qryTozin.Requery();
        qryTozin.Locate('TozinID', TozinID, []);
        BigMessage('انجام شد', 2);
      end;

    finally
      EnableControls;
    end;

end;

procedure TTozinListF.actCorrelateReciptExecute(Sender: TObject);
var
  i, TozinID, ReciptID: Integer;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryTozin)
  then
    Abort;

  if get_response('آيا براي ثبت ' + actCorrelateRecipt.Caption +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;

  TozinID := qryTozinTozinID.AsInteger;
  ReciptID := 0;
  if grdTozin.SelectedRows.Count > 0 then
    with grdTozin.DataSource.DataSet do
    begin
      DisableControls;
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if qryTozinConversionCoSerial.AsInteger = ConversionCoSerial then
        begin
          TozinCorrelateRecipt2(Self, qryinit, qryTozin, qryLicense,
            actCorrelateRecipt.Caption, qryTozinMandeh.AsFloat, False, False,
            ReciptID);
        end;
      end;
      qryTozin.Requery();
      qryTozin.Locate('TozinID', TozinID, []);
      EnableControls;
      BigMessage('انجام شد', 2);
    end;

end;

procedure TTozinListF.actEditFormExecute(Sender: TObject);
begin
  inherited;
  var_glb_gParam := FFormType;
  GetTozinF.enter(qryTozinTozinID.AsInteger, False);
end;

procedure TTozinListF.actEditTozinExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(qryTozinTozinID.AsInteger, False);
  // GetTozinF.btnEdit.Click
end;

procedure TTozinListF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try

      if qryinit.FieldByName('SecondTypeActive').AsInteger in [1, 3] then
        AddItem(DMf.adcBSell, 'LookUpsCode', 'نوع اطلاعات', 'كد اطلاعات ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT Code,Name FROM LookUps WHERE (kind = ' +
          qryinit.FieldByName('FormKindSerial').AsInteger.ToString + ')',
          'SELECT 0,2147483647', true);

      AddItemFilter(GetFilter, TFilterStates);

      AddItemFilter(GetFilter, TFilterStuffCode);

      AddItem(DMf.adcBSell, 'PersonID1', qryinit.FieldByName('Person1Caption')
        .AsString, 'كد', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE(CustID<>0)',
        'SELECT 0,2147483647');
      AddItem(DMf.adcBSell, 'PersonID2', qryinit.FieldByName('Person2Caption')
        .AsString, 'كد', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE(CustID<>0)',
        'SELECT 0,2147483647');
      AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store4);
      AddItem(DMf.adcBSell, 'TozinDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'SELECT RIGHT(dbo.MiladiToShamsi(DATEADD(day, - 3, GETDATE())),10) AS Expr1, RIGHT(dbo.MiladiToShamsi(GETDATE()),10) AS NowDateTime ');
      AddItem(DMf.adcBSell, 'Number', ' فرم ', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'SELECT 0,2147483647');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateQry;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TTozinListF.actInsertFormExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(0, False);
end;

procedure TTozinListF.actManualInsertExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(0, False);
  if GetTozinF.actManualInsert <> nil then
    GetTozinF.actManualInsert.Execute
end;

procedure TTozinListF.actSumPostPersonID1Execute(Sender: TObject);
begin
  inherited;
  SumPost(False, true)
end;

procedure TTozinListF.actSumPostTozinDateExecute(Sender: TObject);
begin
  inherited;
  SumPost(true, False)
end;

procedure TTozinListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qryTozin.AfterScroll := qryTozinAfterScroll;
  InitReportFile(ppReport1, 'listTozin');
end;

procedure TTozinListF.actSearch_Execute(Sender: TObject);
var
  txt: String;
  Results: array [0 .. 4] of String;
begin
  inherited;
  txt := 'select TozinID ,TozinNumber,TozinDate,MachineNo,MachineName ' +
    ' from tozin where ReciptType =  ' + FFormType.ToString;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
    ['', 'شماره', 'تاريخ', 'شماره ماشين', 'نام ماشين'], Results,
    [0, 50, 100, 100, 100], alLeft) then
  begin
    qryTozin.Locate('TozinID', Results[0], []);
    // if not(qryTozin.State in dsEditModes) then
    // qryTozin.edit;
  end;

end;

procedure TTozinListF.actShowTozinExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(qryTozinTozinID.AsInteger, true);
end;

procedure TTozinListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTozin);
end;

procedure TTozinListF.SumPost(onTozinDate, OnPersonID1: Boolean);
var
  i, TozinID: Integer;
  TozinDate: string;
  PersonID1: Integer;
  NewReciptID: Integer;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryTozin)
  then
    Abort;

  if get_response('آيا براي ثبت تجمیعی ' + actCorrelateRecipt.Caption +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;

  TozinDate := '';
  PersonID1 := 0;
  TozinID := qryTozinTozinID.AsInteger;
  if grdTozin.SelectedRows.Count > 0 then
    with grdTozin.DataSource.DataSet do
    begin
      DisableControls;
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if qryTozinConversionCoSerial.AsInteger = ConversionCoSerial then
        begin

          if onTozinDate and OnPersonID1 then
          begin
            if ((TozinDate <> qryTozin.FieldByName('TozinDate').AsString)) or
              ((PersonID1 <> qryTozin.FieldByName('PersonID1').AsInteger)) then
            begin
              TozinDate := qryTozin.FieldByName('TozinDate').AsString;
              PersonID1 := qryTozin.FieldByName('PersonID1').AsInteger;
              NewReciptID := 0;
            end;
          end
          else if onTozinDate then
          begin
            if ((TozinDate <> qryTozin.FieldByName('TozinDate').AsString)) then
            begin
              TozinDate := qryTozin.FieldByName('TozinDate').AsString;
              PersonID1 := qryTozin.FieldByName('PersonID1').AsInteger;
              NewReciptID := 0;
            end;
          end
          else
          begin
            if ((PersonID1 <> qryTozin.FieldByName('PersonID1').AsInteger)) then
            begin
              TozinDate := qryTozin.FieldByName('TozinDate').AsString;
              PersonID1 := qryTozin.FieldByName('PersonID1').AsInteger;
              NewReciptID := 0;
            end;
          end;

          NewReciptID := TozinCorrelateRecipt2(Self, qryinit, qryTozin,
            qryLicense, actCorrelateRecipt.Caption, qryTozinMandeh.AsFloat,
            False, true, NewReciptID);
        end;
      end;
      qryTozin.Requery();
      qryTozin.Locate('TozinID', TozinID, []);
      EnableControls;
      BigMessage('انجام شد', 2);
    end;

end;

procedure TTozinListF.actSumPostExecute(Sender: TObject);
begin
  inherited;
  SumPost(true, true)
end;

procedure TTozinListF.actTozinState0Execute(Sender: TObject);
var
  i, c: Integer;
  s: string;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Tozin SET TozinState = 0 WHERE (TozinState <> 0) AND ' +
          '(TozinID IN (' + s + '))';
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(grdTozin.SelectedRows.Count) + ' ‌ موقت شد.', 1);
        s := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryinit.FieldByName('State0ChangeLevelID'), qryTozin)
  then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي موقت نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  try
    qryTozin.AfterScroll := nil;
    qryTozin.DisableControls;
    with grdTozin.DataSource.DataSet do
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName('TozinID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryTozin;
  end;

end;

procedure TTozinListF.actTozinState1Execute(Sender: TObject);
var
  i, c: Integer;
  s: string;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Tozin SET TozinState = 1 WHERE (TozinState = 0) AND ' +
          '(TozinID IN (' + s + '))';
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(grdTozin.SelectedRows.Count) + ' ‌ قطعي شد.', 1);
        s := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryinit.FieldByName('ChangeStateLevelID'), qryTozin)
  then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي قطعي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه موقت باشند تبديل به قطعي ميشوند.') <> mrYes then
      Exit;

  try
    qryTozin.AfterScroll := nil;
    qryTozin.DisableControls;
    with grdTozin.DataSource.DataSet do
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName('TozinID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryTozin;
  end;

end;

procedure TTozinListF.actTozinState3Execute(Sender: TObject);
var
  i, c: Integer;
  s: string;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Tozin SET TozinState = 3 WHERE (TozinState <= 1 ) AND ' +
          '(TozinID IN (' + s + '))';
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(grdTozin.SelectedRows.Count) + ' ‌ باطل شد.', 1);
        s := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryinit.FieldByName('ChangeStateLevelID'), qryTozin)
  then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي باطل نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه صدور سند شده ،يا دائم باشند ابطال پذير نيستند.') <> mrYes
    then
      Exit;
  try
    qryTozin.AfterScroll := nil;
    qryTozin.DisableControls;
    with grdTozin.DataSource.DataSet do
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName('TozinID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryTozin;
  end;

end;

procedure TTozinListF.actTozinDeleteExecute(Sender: TObject);
var
  i, c: Integer;
  procedure sDelete;
  begin
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'DECLARE @TozinID INT = ' + qryTozin.FieldByName
        ('TozinID').AsString;
      SQL.Add('DECLARE @YearID INT = ' + qryTozin.FieldByName('YearID')
        .AsString);
      SQL.Add('DECLARE @ServerID INT = ' + qryTozin.FieldByName('ServerID')
        .AsString);
      SQL.Add('DECLARE @ReciptNumber varchar(500)=''''');
      SQL.Add('SELECT @ReciptNumber=ReciptNumber FROM(');
      SQL.Add('SELECT ''شماره فرم ''+LTRIM(ReciptNumber)+''تايپ '' ++LTRIM(ReciptType) AS ReciptNumber FROM Recipts');
      SQL.Add('WHERE (TozinID = @TozinID ) AND (YearID = @YearID) AND (ServerID = @ServerID)');
      SQL.Add('UNION ALL');
      SQL.Add('SELECT ''شماره توزين ''+LTRIM(TozinNumber)+''تايپ '' ++LTRIM(ReciptType) FROM Tozin');
      SQL.Add('WHERE (PrvTozinID = @TozinID ) AND (YearID = @YearID) AND (ServerID = @ServerID))ABC');
      SQL.Add('--print @ReciptNumber');
      SQL.Add('if @ReciptNumber<>''''');
      SQL.Add('begin');
      SQL.Add('set @ReciptNumber = @ReciptNumber +'' حذف امکان پذیر نیست  '' ');

      SQL.Add('RAISERROR (@ReciptNumber,16,1)');
      SQL.Add('end');
      SQL.Add('else');
      SQL.Add('delete FROM Tozin WHERE (TozinID = @TozinID ) ');
      SQL.Add('AND (YearID = @YearID) AND (ServerID = @ServerID) AND (TozinState = 0)');
      c := c + ExecSQL;
      BigMessage(IntToStr(c) + ' فرم از ' +
        IntToStr(grdTozin.SelectedRows.Count) + 'حذف شد.', 1);
    end; // with
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryTozin) then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي حذف فرم‌هاي انتخاب شده مطمئن هستيد؟' + #13#10 +
      'فرم هايي كه فراخوانی شده ،يا دائم باشند حذف پذير نيستند.') <> mrYes then
      Exit;
  try
    qryTozin.AfterScroll := nil;
    qryTozin.DisableControls;
    with grdTozin.DataSource.DataSet do
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        sDelete;
      end;
  finally
    finallyqryTozin;
  end;

end;

procedure TTozinListF.finallyqryTozin;
var
  TozinID: Integer;
begin
  With qryTozin do
  begin
    EnableControls;
    grdTozin.SelectedRows.Clear;
    TozinID := FieldByName('TozinID').AsInteger;
    Requery();
    grdTozin.Update;
    Locate('TozinID', TozinID, []);
  end;
end;

procedure TTozinListF.FormShow(Sender: TObject);
begin
  inherited;
  initForm;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('TozinDate') = nil then
    close;
end;

procedure TTozinListF.grdTozinDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  grdTozin.Canvas.Font.Color := clWindowText;
  if qryTozinConversionCoSerial.AsInteger <> ConversionCoSerial then
    grdTozin.Canvas.Font.Color := clHotLight;
  if qryTozinConversionCoSerial.AsInteger = 19 then
    grdTozin.Canvas.Font.Color := clPurple;
  if qryTozinConversionCoSerial.AsInteger = 32 then
    grdTozin.Canvas.Font.Color := clRed;
  grdTozin.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TTozinListF.initForm;
var
  b: Boolean;
begin
  qryTozin.AfterScroll := nil;
  FFormType := var_glb_gParam;
  OrginalSQL := qryTozin.SQL.Text;
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := FFormType;
    Active := true;

    ConversionCoSerial := FieldByName('ConversionCoSerial').AsInteger;
    CorrelateReciptType := FieldByName('CorrelateReciptType').AsInteger;

    // عنوان فرم مرتبط
    Active := False;
    Parameters.ParamByName('ReciptType').Value := CorrelateReciptType;
    Active := true;
    actCorrelateRecipt.Visible := CorrelateReciptType <> 0;
    actCorrelateRecipt.Caption := FieldByName('ReciptCaption').AsString;
    btnCorrelateRecipt1.Hint := actCorrelateRecipt.Caption;
    // عنوان فرم مرتبط

    // عنوان فرم ضرائب
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ConversionCoSerial;
    Active := true;
    actConversionCoSerial.Visible := ConversionCoSerial <> 0;
    actConversionCoSerial.Caption := FieldByName('ReciptCaption').AsString;
    btnConversionCoSerial.Hint := actConversionCoSerial.Caption;
    // عنوان فرم ضرائب

    Active := False;
    Parameters.ParamByName('ReciptType').Value := FFormType;
    Active := true;

    lblCaption.Caption := ' لیست ' + FieldByName('ReciptCaption').AsString;
    Caption := lblCaption.Caption;
    lblCaption.Hint := FFormType.ToString;

    qryTozinPersonID1.DisplayLabel := 'کد ' +
      FieldByName('Person1Caption').AsString;
    qryTozinCustName1.DisplayLabel := 'عنوان ' +
      FieldByName('Person1Caption').AsString;
    qryTozinNationalID1.DisplayLabel := 'کد ملی ' +
      FieldByName('Person1Caption').AsString;

    qryTozinPersonID2.DisplayLabel := 'کد ' +
      FieldByName('Person2Caption').AsString;
    qryTozinCustName2.DisplayLabel := 'عنوان ' +
      FieldByName('Person2Caption').AsString;
    qryTozinNationalID2.DisplayLabel := 'کد ملی ' +
      FieldByName('Person2Caption').AsString;

    qryTozinPersonID3.DisplayLabel := 'کد ' +
      FieldByName('Person3Caption').AsString;
    qryTozinCustName3.DisplayLabel := 'عنوان ' +
      FieldByName('Person3Caption').AsString;

    qryTozin.Parameters.ParamByName('EffectType').Value :=
      FieldByName('EffectType').AsInteger;

    b := FieldByName('Person2Active').AsInteger = 1;
    setColumns2(grdTozin, b, 'PersonID2');
    setColumns2(grdTozin, b, 'CustName2');
    setColumns2(grdTozin, b, 'NationalID2');

    b := FieldByName('Person1Active').AsInteger = 1;
    setColumns2(grdTozin, b, 'PersonID1');
    setColumns2(grdTozin, b, 'CustName1');
    setColumns2(grdTozin, b, 'NationalID1');

    b := FieldByName('Person3Active').AsInteger = 1;
    setColumns2(grdTozin, b, 'PersonID3');
    setColumns2(grdTozin, b, 'CustName3');

    b := FieldByName('MachineActive').AsInteger in [1, 3];
    setColumns2(grdTozin, b, 'TruckNumber');

    setColumns2(grdTozin, FieldByName('SecondTypeActive').AsInteger in [1, 3],
      'SecondTypeName');

    b := SetRelatedReciptTypes(qryinit, nil);
    setColumns2(grdTozin, b, 'RelatedRecipts');
    setColumns2(grdTozin, b, 'RelatedName');

    // b := Trim(qryinit.FieldByName('RelatedReciptTypes').AsString) <> EmptyStr;
    // setColumns2(grdTozin, b, 'RelatedRecipts');
    // دسترسی منو های تغییر وضعیت ================
    b := (CurAccess and Integer(akChangeState) <> 0);

    actTozinState3.Visible := CheckUserlevel(FieldByName('State3ChangeLevelID'),
      qryTozin, False) and b;

  end;

end;

procedure TTozinListF.qryTozinAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryLicense do
  begin
    close;
    Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Open;
  end;

end;

procedure TTozinListF.qryTozinTozinStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TTozinListF.rdoTypeClick(Sender: TObject);
begin
  inherited;
  UpdateQry;
end;

procedure TTozinListF.UpdateQry;
var
  States: string;
begin
  with qryTozin do
  begin
    Active := False;
    qryTozin.Parameters.ParamByName('ReciptType').Value := FFormType;

    States := GetcFrom(myParams.ParamValues['States'], ftString);

    Parameters.ParamByName('States').Value := States;

    Parameters.ParamByName('alldata').Value := rdoType.ItemIndex;
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIdTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('TozinNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('TozinNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('TozinDateFrom').Value :=
      GetcFrom(myParams.ParamValues['TozinDate'], ftString);
    Parameters.ParamByName('TozinDateTO').Value :=
      GetcTo(myParams.ParamValues['TozinDate'], ftString);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    if qryinit.FieldByName('SecondTypeActive').AsInteger in [1, 3] then
    begin
      Parameters.ParamByName('LookUpsCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['LookUpsCode'], ftInteger);
      Parameters.ParamByName('LookUpsCodeTo').Value :=
        GetcTo(myParams.ParamValues['LookUpsCode'], ftInteger);
      Parameters.ParamByName('NotSecondType').Value :=
        GetcNot(myParams.ParamValues['LookUpsCode']);

    end
    else
    begin
      Parameters.ParamByName('LookUpsCodeFrom').Value := 0;
      Parameters.ParamByName('LookUpsCodeTo').Value := 100;
      Parameters.ParamByName('NotSecondType').Value := -1;
    end;

    Parameters.ParamByName('UserIDStore').Value := User.id;
    Parameters.ParamByName('User_Admin').Value := IfThen(User.PowerUser, 1, 0);

    Active := true;
  end;
end;

procedure TTozinListF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TTozinListF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TTozinListF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TTozinListF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName
end;

end.

