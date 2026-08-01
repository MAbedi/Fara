unit TozinListFD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, FarsiReportBuilde, Math, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, template2MDI, DBGridEhGrouping,  GeneralDM ,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, System.ImageList, Vcl.ImgList, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Data.Win.ADODB, ppDesignLayer, ppBands, ppCache, ppClass, ppDB,
  ppDBPipe, ppParameter, ppComm, ppRelatv, ppProd, ppReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TTozinListFDF = class(Ttemplate2MDIF)
    grdTozin: TCedarDbgrid;
    srcTozin: TDataSource;
    qryinit: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    actInsertForm: TAction;
    actEditForm: TAction;
    Button3: TButton;
    Button4: TButton;
    actSort: TAction;
    rdoType: TRadioGroup;
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
    actTozinState1: TAction;
    btnTozinState3: TButton;
    actTozinState3: TAction;
    Button7: TButton;
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
    actSumPost: TAction;
    actSumPostPersonID1: TAction;
    actSumPostTozinDate: TAction;
    actAddSum: TAction;
    actTozinState0: TAction;
    actTozinDelete: TAction;
    fdqryTozin: TFDQuery;
    fdqryTozinTozinID: TIntegerField;
    fdqryTozinTozinNumber: TIntegerField;
    fdqryTozinReciptType: TWordField;
    fdqryTozinMachineNo: TStringField;
    fdqryTozinStoreID: TSmallintField;
    fdqryTozinStuffCode: TLargeintField;
    fdqryTozinPersonID1: TIntegerField;
    fdqryTozinCustName1: TStringField;
    fdqryTozinMachineName: TStringField;
    fdqryTozinMachineWeight: TFloatField;
    fdqryTozinMachineFullWeight: TFloatField;
    fdqryTozinTozinNote: TStringField;
    fdqryTozinTozinDate: TStringField;
    fdqryTozinMoistureContent: TFloatField;
    fdqryTozinRisingUseful: TFloatField;
    fdqryTozinRisingNonUseFul: TFloatField;
    fdqryTozinPersonID2: TIntegerField;
    fdqryTozinCustName2: TStringField;
    fdqryTozinFirstUser: TStringField;
    fdqryTozinLastUser: TStringField;
    fdqryTozinIsSystem: TBooleanField;
    fdqryTozinc_StoreName: TStringField;
    fdqryTozinc_StuffName: TStringField;
    fdqryTozinMandeh: TFloatField;
    fdqryTozinEnterDate: TStringField;
    fdqryTozinExitDate: TStringField;
    fdqryTozinTozinState: TWordField;
    fdqryTozinTozin_Note: TStringField;
    fdqryTozinConversionCoSerial: TWordField;
    fdqryTozinReciptNumber: TIntegerField;
    fdqryTozinReciptCaption: TStringField;
    fdqryTozinServerID: TIntegerField;
    fdqryTozinYearID: TIntegerField;
    fdqryTozinStoreID2: TSmallintField;
    fdqryTozinReciptID: TIntegerField;
    fdqryTozinParentReciptItemID: TIntegerField;
    fdqryTozinprvYearID: TIntegerField;
    fdqryTozinAidDate: TStringField;
    fdqryTozinSellsMethod: TIntegerField;
    fdqryTozinSecondTypeName: TStringField;
    fdqryTozinPersonID3: TIntegerField;
    fdqryTozinCustName3: TStringField;
    fdqryTozinPersonID4: TIntegerField;
    fdqryTozinPersonID5: TIntegerField;
    fdqryTozinTruckNumber: TStringField;
    fdqryTozinCarType2: TStringField;
    fdqryTozinNationalID1: TStringField;
    fdqryTozinNationalID2: TStringField;
    fdqryTozinRelatedRecipts: TStringField;
    fdqryTozinRelatedName: TStringField;
    fdqryTozinpo: TStringField;
    fdqryTozinDeficitAdd_Dec: TCurrencyField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdqryTozinNumberOfBags: TBCDField;
    actSortTozin: TAction;
    fdqryTozinTozinNumberFormer: TIntegerField;
    fdqryTozinAidNumber: TStringField;
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
    procedure actTozinState0Execute(Sender: TObject);
    procedure actTozinDeleteExecute(Sender: TObject);
    procedure fdqryTozinAfterScroll(DataSet: TDataSet);
    procedure grdTozinTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure actSortTozinExecute(Sender: TObject);
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
  TozinListFDF: TTozinListFDF;

const
  PartSise = 100;

implementation

{$R *.dfm}

uses GlobalPro, GetTozin, searchCode_ADO, DM, sort2, filter_ADO,
  FilterClass_ADO, FormFunctions, MMESSAGE, Filter_ADO_Const, UTozin,
  FaraConsts;
{ Ttemplate2MDIF3 }

procedure TTozinListFDF.actAddSumExecute(Sender: TObject);
begin
  inherited;
  grdTozin.SetFooter4Sum([]);
end;

procedure TTozinListFDF.actConversionCoSerialExecute(Sender: TObject);
var
  i, TozinID: Integer;
begin
  inherited;
  with grdTozin.DataSource.DataSet do
    try
      if grdTozin.SelectedRows.Count > 0 then
      begin
        TozinID := fdqryTozinTozinID.AsInteger;
        DisableControls;
        for i := 0 to grdTozin.SelectedRows.Count - 1 do // new
        begin
          GotoBookmark((grdTozin.SelectedRows.Items[i]));

          TozinConversionCoSerial(qryinit, fdqryTozin, qryLicense,
            actCorrelateRecipt.Caption, actConversionCoSerial.Caption);

        end;
        fdqryTozin.Refresh;
        fdqryTozin.Locate('TozinID', TozinID, []);
        BigMessage('انجام شد', 2);
      end;

    finally
      EnableControls;
    end;

end;

procedure TTozinListFDF.actCorrelateReciptExecute(Sender: TObject);
var
  i, TozinID, ReciptID: Integer;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), fdqryTozin)
  then
    Abort;

  if get_response('آيا براي ثبت ' + actCorrelateRecipt.Caption +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;

  TozinID := fdqryTozinTozinID.AsInteger;
  ReciptID := 0;
  if grdTozin.SelectedRows.Count > 0 then
    with grdTozin.DataSource.DataSet do
    begin
      DisableControls;
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if fdqryTozinConversionCoSerial.AsInteger = ConversionCoSerial then
        begin
          TozinCorrelateRecipt2(Self, qryinit, fdqryTozin, qryLicense,
            actCorrelateRecipt.Caption, fdqryTozinMandeh.AsFloat, False, False,
            ReciptID);
        end;
      end;
      fdqryTozin.Refresh;
      fdqryTozin.Locate('TozinID', TozinID, []);
      EnableControls;
      BigMessage('انجام شد', 2);
    end;

end;

procedure TTozinListFDF.actEditFormExecute(Sender: TObject);
begin
  inherited;
  var_glb_gParam := FFormType;
  GetTozinF.enter(fdqryTozinTozinID.AsInteger, False);
end;

procedure TTozinListFDF.actEditTozinExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(fdqryTozinTozinID.AsInteger, False);
  // GetTozinF.btnEdit.Click
end;

procedure TTozinListFDF.actFilterExecute(Sender: TObject);
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

procedure TTozinListFDF.actInsertFormExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(0, False);
end;

procedure TTozinListFDF.actManualInsertExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(0, False);
  if GetTozinF.actManualInsert <> nil then
    GetTozinF.actManualInsert.Execute
end;

procedure TTozinListFDF.actSumPostPersonID1Execute(Sender: TObject);
begin
  inherited;
  SumPost(False, true)
end;

procedure TTozinListFDF.actSumPostTozinDateExecute(Sender: TObject);
begin
  inherited;
  SumPost(true, False)
end;

procedure TTozinListFDF.actPrintExecute(Sender: TObject);
begin
  inherited;
  fdqryTozin.AfterScroll := fdqryTozinAfterScroll;
  InitReportFile(ppReport1, 'listTozin');
end;

procedure TTozinListFDF.actSearch_Execute(Sender: TObject);
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
    fdqryTozin.Locate('TozinID', Results[0], []);
    // if not( fDqryTozin.State in dsEditModes) then
    // fDqryTozin.edit;
  end;

end;

procedure TTozinListFDF.actShowTozinExecute(Sender: TObject);
begin
  inherited;
  GetTozinF.enter(fdqryTozinTozinID.AsInteger, true);
end;

procedure TTozinListFDF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(fdqryTozin);
end;

procedure TTozinListFDF.actSortTozinExecute(Sender: TObject);
var
  Jump: Integer;
  StrSort: String;
  p: string;
  Settings: Int64;
  DoWhile: Boolean;
begin
  inherited;
  if get_response
    (' بهتر است قبل از انجام این کار پشتیبان تهیه شود که در صورت نیاز استفاده شود '
    + #13#10 + 'آیا پشتیبان تهیه شود.', clGreen) = mrYes then
  begin
    p := ReadConfig(APPID, 'AutoBackupPath', 'd:\FaraBackup\' + APPID +
      'Backup');
    BackupDatabaseLocalAndNet(p);
  end;
  Jump := 1;
  Jump := StrToInt(Trim(Get_Box('مرتب كردن شماره فرمها',
    'شروع مرتب سازي از عدد:', IntToStr(Jump))));
  if get_response('آيا براي تغيير شماره فرم ها از شماره  ' + IntToStr(Jump) +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;
  Dec(Jump);
  With fdqryTozin do
  begin
    DisableControls;
    First;
    BigMessageProgBar('در حال مرتب كردن فرمها....‏', RecordCount);
    DoWhile := True;
    while (not Eof and DoWhile) do
    begin
      DMf.qryTmpTmp.Active := False;

      DMf.qryTmpTmp.SQL.Text :=
        Format('UPDATE Tozin SET TozinNumberFormer =  TozinNumber , TozinNumber = %d', [RecNo + Jump]);
        DMf.qryTmpTmp.SQL.Add(Format('WHERE TozinID in ( %d )',
          [FieldByName('TozinID').AsInteger]));

      DMf.qryTmpTmp.SQL.Add('AND (TozinState = 0)');
      DMf.qryTmpTmp.ExecSQL;
      GoProgressBar(FieldByName('TozinNumber').AsString);
      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      Next;
      // Application.ProcessMessages;

    end;
    // while
    EnableControls;
    Active := False;
    Open;
    CloseMessage;
  end;

end;

procedure TTozinListFDF.SumPost(onTozinDate, OnPersonID1: Boolean);
var
  i, TozinID: Integer;
  TozinDate: string;
  PersonID1: Integer;
  NewReciptID: Integer;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), fdqryTozin)
  then
    Abort;

  if get_response('آيا براي ثبت تجمیعی ' + actCorrelateRecipt.Caption +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;

  TozinDate := '';
  PersonID1 := 0;
  TozinID := fdqryTozinTozinID.AsInteger;
  if grdTozin.SelectedRows.Count > 0 then
    with grdTozin.DataSource.DataSet do
    begin
      DisableControls;
      for i := 0 to grdTozin.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdTozin.SelectedRows.Items[i]));
        if fdqryTozinConversionCoSerial.AsInteger = ConversionCoSerial then
        begin

          if onTozinDate and OnPersonID1 then
          begin
            if ((TozinDate <> fdqryTozin.FieldByName('TozinDate').AsString)) or
              ((PersonID1 <> fdqryTozin.FieldByName('PersonID1').AsInteger))
            then
            begin
              TozinDate := fdqryTozin.FieldByName('TozinDate').AsString;
              PersonID1 := fdqryTozin.FieldByName('PersonID1').AsInteger;
              NewReciptID := 0;
            end;
          end
          else if onTozinDate then
          begin
            if ((TozinDate <> fdqryTozin.FieldByName('TozinDate').AsString))
            then
            begin
              TozinDate := fdqryTozin.FieldByName('TozinDate').AsString;
              PersonID1 := fdqryTozin.FieldByName('PersonID1').AsInteger;
              NewReciptID := 0;
            end;
          end
          else
          begin
            if ((PersonID1 <> fdqryTozin.FieldByName('PersonID1').AsInteger))
            then
            begin
              TozinDate := fdqryTozin.FieldByName('TozinDate').AsString;
              PersonID1 := fdqryTozin.FieldByName('PersonID1').AsInteger;
              NewReciptID := 0;
            end;
          end;

          NewReciptID := TozinCorrelateRecipt2(Self, qryinit, fdqryTozin,
            qryLicense, actCorrelateRecipt.Caption, fdqryTozinMandeh.AsFloat,
            False, true, NewReciptID);
        end;
      end;
      fdqryTozin.Refresh;
      fdqryTozin.Locate('TozinID', TozinID, []);
      EnableControls;
      BigMessage('انجام شد', 2);
    end;

end;

procedure TTozinListFDF.actSumPostExecute(Sender: TObject);
begin
  inherited;
  SumPost(true, true)
end;

procedure TTozinListFDF.actTozinState0Execute(Sender: TObject);
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
  if not CheckUserlevel(qryinit.FieldByName('State0ChangeLevelID'), fdqryTozin)
  then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي موقت نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  try
    fdqryTozin.AfterScroll := nil;
    fdqryTozin.DisableControls;
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

procedure TTozinListFDF.actTozinState1Execute(Sender: TObject);
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
  if not CheckUserlevel(qryinit.FieldByName('ChangeStateLevelID'), fdqryTozin)
  then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي قطعي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه موقت باشند تبديل به قطعي ميشوند.') <> mrYes then
      Exit;

  try
    fdqryTozin.AfterScroll := nil;
    fdqryTozin.DisableControls;
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

procedure TTozinListFDF.actTozinState3Execute(Sender: TObject);
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
  if not CheckUserlevel(qryinit.FieldByName('ChangeStateLevelID'), fdqryTozin)
  then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي باطل نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه صدور سند شده ،يا دائم باشند ابطال پذير نيستند.') <> mrYes
    then
      Exit;
  try
    fdqryTozin.AfterScroll := nil;
    fdqryTozin.DisableControls;
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

procedure TTozinListFDF.actTozinDeleteExecute(Sender: TObject);
var
  i, c: Integer;
  procedure sDelete;
  begin
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'DECLARE @TozinID INT = ' + fdqryTozin.FieldByName
        ('TozinID').AsString;
      SQL.Add('DECLARE @YearID INT = ' + fdqryTozin.FieldByName('YearID')
        .AsString);
      SQL.Add('DECLARE @ServerID INT = ' + fdqryTozin.FieldByName('ServerID')
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
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), fdqryTozin) then
    Abort;
  if grdTozin.SelectedRows.Count > 0 then
    if get_response('آيا براي حذف فرم‌هاي انتخاب شده مطمئن هستيد؟' + #13#10 +
      'فرم هايي كه فراخوانی شده ،يا دائم باشند حذف پذير نيستند.') <> mrYes then
      Exit;
  try
    fdqryTozin.AfterScroll := nil;
    fdqryTozin.DisableControls;
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

procedure TTozinListFDF.fdqryTozinAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryLicense do
  begin
    close;
    Parameters.ParamByName('TozinID').Value := fdqryTozin.FieldByName('TozinID')
      .AsInteger;
    Open;
  end;
end;

procedure TTozinListFDF.finallyqryTozin;
var
  TozinID: Integer;
begin
  With fdqryTozin do
  begin
    EnableControls;
    grdTozin.SelectedRows.Clear;
    TozinID := FieldByName('TozinID').AsInteger;
    Refresh;
    grdTozin.Update;
    Locate('TozinID', TozinID, []);
  end;
end;

procedure TTozinListFDF.FormShow(Sender: TObject);
begin
  inherited;
  initForm;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('TozinDate') = nil then
    close;
end;

procedure TTozinListFDF.grdTozinDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  grdTozin.Canvas.Font.Color := clWindowText;
  if fdqryTozinConversionCoSerial.AsInteger <> ConversionCoSerial then
    grdTozin.Canvas.Font.Color := clHotLight;
  if fdqryTozinConversionCoSerial.AsInteger = 19 then
    grdTozin.Canvas.Font.Color := clPurple;
  if fdqryTozinConversionCoSerial.AsInteger = 32 then
    grdTozin.Canvas.Font.Color := clRed;
  grdTozin.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TTozinListFDF.grdTozinTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  inherited;
  if fdqryTozin.IndexFieldNames = Column.FieldName then
    fdqryTozin.IndexFieldNames := Column.FieldName + ':D'
  else
    fdqryTozin.IndexFieldNames := Column.FieldName;
end;

procedure TTozinListFDF.initForm;
var
  b: Boolean;
begin
  fdqryTozin.AfterScroll := nil;
  FFormType := var_glb_gParam;
  OrginalSQL := fdqryTozin.SQL.Text;
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

    fdqryTozinPersonID1.DisplayLabel := 'کد ' +
      FieldByName('Person1Caption').AsString;
    fdqryTozinCustName1.DisplayLabel := 'عنوان ' +
      FieldByName('Person1Caption').AsString;
    fdqryTozinNationalID1.DisplayLabel := 'کد ملی ' +
      FieldByName('Person1Caption').AsString;

    fdqryTozinPersonID2.DisplayLabel := 'کد ' +
      FieldByName('Person2Caption').AsString;
    fdqryTozinCustName2.DisplayLabel := 'عنوان ' +
      FieldByName('Person2Caption').AsString;
    fdqryTozinNationalID2.DisplayLabel := 'کد ملی ' +
      FieldByName('Person2Caption').AsString;

    fdqryTozinPersonID3.DisplayLabel := 'کد ' +
      FieldByName('Person3Caption').AsString;
    fdqryTozinCustName3.DisplayLabel := 'عنوان ' +
      FieldByName('Person3Caption').AsString;

    fdqryTozin.ParamByName('EffectType').Value := FieldByName('EffectType')
      .AsInteger;

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
      fdqryTozin, False) and b;

  end;

end;

procedure TTozinListFDF.qryTozinTozinStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TTozinListFDF.rdoTypeClick(Sender: TObject);
begin
  inherited;
  UpdateQry;
end;

procedure TTozinListFDF.UpdateQry;
var
  States: string;
begin
  with fdqryTozin do
  begin
    Active := False;

    fdqryTozin.ParamByName('ReciptType').Value := FFormType;

    States := GetcFrom(myParams.ParamValues['States'], ftString);

    ParamByName('States').Value := States;

    ParamByName('alldata').Value := rdoType.ItemIndex;
    ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
    ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    ParamByName('StoreIdTo').Value := GetcTo(myParams.ParamValues['StoreID'],
      ftInteger);

    ParamByName('TozinNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    ParamByName('TozinNumberTo').Value := GetcTo(myParams.ParamValues['Number'],
      ftInteger);
    ParamByName('TozinDateFrom').Value :=
      GetcFrom(myParams.ParamValues['TozinDate'], ftString);
    ParamByName('TozinDateTO').Value :=
      GetcTo(myParams.ParamValues['TozinDate'], ftString);

    ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    if qryinit.FieldByName('SecondTypeActive').AsInteger in [1, 3] then
    begin
      ParamByName('LookUpsCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['LookUpsCode'], ftInteger);
      ParamByName('LookUpsCodeTo').Value :=
        GetcTo(myParams.ParamValues['LookUpsCode'], ftInteger);
      ParamByName('NotSecondType').Value :=
        GetcNot(myParams.ParamValues['LookUpsCode']);

    end
    else
    begin
      ParamByName('LookUpsCodeFrom').Value := 0;
      ParamByName('LookUpsCodeTo').Value := 100;
      ParamByName('NotSecondType').Value := -1;
    end;

    ParamByName('UserIDStore').Value := User.id;
    ParamByName('User_Admin').Value := IfThen(User.PowerUser, 1, 0);

    Active := true;
  end;
end;

procedure TTozinListFDF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TTozinListFDF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TTozinListFDF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TTozinListFDF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName
end;

end.
