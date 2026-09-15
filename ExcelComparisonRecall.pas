unit ExcelComparisonRecall;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, ActnList, Buttons, DB, ADODB,
  Vcl.DBGrids, ComCtrls, DBClient, Provider, System.Actions, InitPop,
  System.SysUtils, System.StrUtils, System.Character, math,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, FaraDesktopAlert;

type

  TExcelComparisonRecallF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Splitter1: TSplitter;
    ActionList1: TActionList;
    actOpenExcel: TAction;
    actCompareExcelwithInfo: TAction;
    btnClose: TBitBtn;
    ProgressBar1: TProgressBar;
    lblCount: TLabel;
    actDownItem4Add: TAction;
    actUpItem4Add: TAction;
    actCompareInfowithExcel: TAction;
    qryExcel1: TADOQuery;
    pnlSheet: TPanel;
    Label4: TLabel;
    cmbSheetName1: TComboBox;
    btnOpen: TBitBtn;
    BitBtn10: TBitBtn;
    lblEcxel1: TLabel;
    dbgrd1: TCedarDbgrid;
    srcExcel1: TDataSource;
    pnlTruckNumber: TPanel;
    Label2: TLabel;
    mmo1: TMemo;
    Label3: TLabel;
    qryExcelErorr: TADOQuery;
    procedure actOpenExcelExecute(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryExcel1AfterOpen(DataSet: TDataSet);
    procedure cmbSheetName1Change(Sender: TObject);
  private
    FormInOut, sConnec, OrgSQL: string;
    RecallTypeOption: Largeint;
    TotalIn_OutPriceActive, DoWhile: Boolean;
    UniqueName, _Filepath1: String;
    ReciptType: Integer;
    ExcelRecallMaxAmount: Real48;
    PostCount, id_for: Integer;
    qryItems, qryinit, qryRecipts: TDataSet;
    qryRecall: TADOQuery;
    sConnecNew, UniqueFileName, NewFileName, FileNameOrginal: String;
    procedure ExcelToList(Fname: String = '');
    procedure AddItem;
    procedure AddMaster;

    { Private declarations }
  public
    procedure ShowImPortExcel(var qryItem, qryini, qryRecipt: TDataSet;
      Form_InOut: string);
    { Public declarations }
  end;

var
  ExcelComparisonRecallF: TExcelComparisonRecallF;

const
  SplitterTxt = ' --> ';

implementation

uses GlobalPro, GeneralDM, FaraConsts, FormFunctions, DM, MMESSAGE,
  RecallSpecialRecipts, shamsiDate;

{$R *.dfm}

procedure TExcelComparisonRecallF.actOpenExcelExecute(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
      begin
        _Filepath1 := FileName;

        ExcelToList(FileName);

      end;

    finally
      SaveConfig('', UniqueName + '_Filepath1', FileName);

      Free;
      // btnaddLink.Click;
    end;

end;

procedure TExcelComparisonRecallF.AddItem;
var
  ControlCode: Largeint;
  b: Boolean;
  In_OutEntity: Real48;
  ts: TStringList;
  i: Integer;
  ControlCodes, s: string;
  PersonID1M, PersonID2M, StoreID: Integer;
begin
  with qryExcel1 do
    try
      DisableControls;
      First;
      ControlCode := qryRecall.FieldByName('ControlCode').AsLargeInt;
      s := 'ControlCode <> 0 and ControlCode = ' + ControlCode.ToString;
      if ExcelRecallMaxAmount <> 0 then
        s := s + ' AND Amount<=' + FloatToStr(ExcelRecallMaxAmount +
          qryRecall.FieldByName('Weight').AsFloat);
      Filter := s;
      Filtered := True;
      while (not Eof and DoWhile) do
      begin

        begin
          try
            qryItems.Insert;

            qryItems.FieldByName('PrvYearID').AsInteger :=
              qryRecall.FieldByName('YearID').AsInteger;

            qryItems.FieldByName('StuffCode').ReadOnly := False;
            qryItems.FieldByName('StuffCode').AsLargeInt :=
              qryRecall.FieldByName('StuffCode').AsLargeInt;
            // SetFieldValue(qryItems.FieldByName('StuffCode'),
            // qryRecall.FieldByName('StuffCode'));

            if (qryItems.FindField('TaxCo') <> nil) and
              (qryItems.FieldByName('TaxCo').AsCurrency = 0) then
            begin
              qryItems.FieldByName('TaxCo').AsCurrency :=
                qryRecall.FieldByName('TaxCo').AsCurrency;
              qryItems.FieldByName('TaxValue').AsCurrency :=
                qryRecall.FieldByName('TaxValue').AsCurrency;
            end;

            if qryItems.FieldByName('_StuffName').AsString = EmptyStr then
              initDesktopAlert(0, qryItems.FieldByName('StuffCode').DisplayName
                + 'ي   ' + qryItems.FieldByName('StuffCode').AsString +
                '   باانبار ارتباط ندارد', nil);

            In_OutEntity := qryRecall.FieldByName('Entity').AsFloat;

            if (qryinit.FieldByName('CorrelateKind').AsInteger in [7]) then
            begin
              qryItems.FieldByName('RequestedEntity').AsFloat :=
                qryRecall.FieldByName('Entity').AsFloat;
              qryItems.FieldByName('RequestedWeight').AsFloat :=
                qryRecall.FieldByName('Weight').AsFloat;
            end;

            qryItems.FieldByName(FormInOut + 'Entity').AsFloat :=
              RoundTo(In_OutEntity, qryinit.FieldByName('RoundCount')
              .AsInteger);
            RecallTypeOption := qryinit.FieldByName('RecallTypeOption')
              .AsLargeInt;
            TotalIn_OutPriceActive :=
              (RecallTypeOption and Integer(chkTotalIn_OutPrice)) <> 0;

            if not((RecallTypeOption and Integer(CHKNoWeight)) <> 0) then
            begin
              if opt.WeightDisplay and
                (qryExcel1.FieldByName('Amount').AsFloat <> 0) then
                qryItems.FieldByName(FormInOut + 'Weight').AsFloat :=
                  qryExcel1.FieldByName('Amount').AsFloat;
            end;

            if not qryItems.FieldByName('StuffAlloy').ReadOnly then
            begin
              qryItems.FieldByName('StuffAlloy').AsString :=
                qryRecall.FieldByName('StuffAlloy').AsString;
              qryItems.FieldByName('StuffGrade').AsString :=
                qryRecall.FieldByName('StuffGrade').AsString;
              qryItems.FieldByName('StuffSize').AsString :=
                qryRecall.FieldByName('StuffSize').AsString;
              qryItems.FieldByName('StuffDiameter').AsFloat :=
                qryRecall.FieldByName('StuffDiameter').AsFloat;
            end;
            qryItems.FieldByName('ControlCode').AsLargeInt :=
              qryRecall.FieldByName('ControlCode').AsLargeInt;

            if ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0) then
              if qryItems.FindField('SpecialCode') <> nil then
                qryItems.FieldByName('SpecialCode').AsString :=
                  qryRecall.FieldByName('SpecialCode').AsString;

            if not qryItems.FieldByName('Portage').ReadOnly then
              if not((RecallTypeOption and Integer(chkRecalPortage)) <> 0) then
                if qryinit.FieldByName('PawsFieldsActive').AsInteger in [1, 3]
                then
                  qryItems.FieldByName('Portage').AsInteger :=
                    qryRecall.FieldByName('Portage').AsInteger;

            if qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3] then
            begin
              qryItems.FieldByName('Article').AsInteger :=
                qryRecall.FieldByName('Article').AsInteger;
              qryItems.FieldByName('Wage').AsInteger :=
                qryRecall.FieldByName('Wage').AsInteger;
              qryItems.FieldByName('Scoria').AsInteger :=
                qryRecall.FieldByName('Scoria').AsInteger;
            end;

            if qryinit.FieldByName('ChangePriceManifesto').AsInteger = 1 then
            begin
              with DMf.qryTmpTmp do
              begin
                Active := False;
                SQL.Text := 'SELECT TOP 1 ManifestoItems.StuffCode, ';
                SQL.Add('ManifestoItems.SellPrice1, ManifestoItems.SellPrice2, ManifestoItems.SellPrice3,');
                SQL.Add('ManifestoItems.SellPrice4, StuffCoding.BuyPrice,');
                SQL.Add('StuffCoding.StandardRate, StuffCoding.State');
                SQL.Add('FROM Manifesto INNER JOIN');
                SQL.Add('ManifestoItems ON Manifesto.ManifestoID = ManifestoItems.ManifestoID INNER JOIN');
                SQL.Add('StuffCoding ON ManifestoItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
                SQL.Add('Customers ON Manifesto.CustomerGrpIDFrom <= Customers.CustomerGrpID AND Manifesto.CustomerGrpIDTo >=');
                SQL.Add('Customers.CustomerGrpID AND');
                SQL.Add('Manifesto.CustIDFrom <= Customers.CustID AND Manifesto.CustIDTo >= Customers.CustID');
                SQL.Add('WHERE (Manifesto.ManifestoRunDate <= ''' +
                  var_glb_CurrentDate + ''')AND (SellOrBuy = 0) ');
                SQL.Add('AND ISNULL(Manifesto.Active, 1) = 1 AND ISNULL(ManifestoItems.Active, 1) = 1 ');
                SQL.Add('AND (ManifestoItems.StuffCode = ' +
                  qryRecall.FieldByName('StuffCode').AsString + ') AND');
                SQL.Add('(Customers.CustID = ' +
                  IntToStr(qryRecipts.FieldByName('PersonID1')
                  .AsInteger) + ')');
                SQL.Add('ORDER BY Manifesto.ManifestoRunDate DESC,Manifesto.ManifestoNo DESC');

                Active := True;
              end;
              if DMf.qryTmpTmp.RecordCount > 0 then
              begin
                qryItems.FieldByName('UnitSellPrice').Value :=
                  DMf.qryTmpTmp.FieldByName('SellPrice1').AsCurrency;

                case opt.EntityDisplayType of
                  0:
                    qryItems.FieldByName('Total' + FormInOut + 'Price')
                      .AsCurrency := DMf.qryTmpTmp.FieldByName('SellPrice1')
                      .AsCurrency * qryRecall.FieldByName('Entity').AsFloat;
                  1:
                    qryItems.FieldByName('Total' + FormInOut + 'Price')
                      .AsCurrency := DMf.qryTmpTmp.FieldByName('SellPrice1')
                      .AsCurrency * qryRecall.FieldByName('Weight').AsFloat;
                end;
              end;
            end;

            case RecallSpecialReciptsF.rgPrice.ItemIndex of
              1:

                SetFieldValue(qryItems.FieldByName('UnitSellPrice'),
                  qryRecall.FieldByName('UnitSellPrice'));

              2:
                qryItems.FieldByName('UnitSellPrice').Value :=
                  qryRecall.FieldByName('UnitSellPricePost').AsCurrency;
            end;

            If TotalIn_OutPriceActive Then
            begin
              if qryRecall.FieldByName('Price').AsCurrency < 0 then
                qryItems.FieldByName('Total' + FormInOut + 'Price')
                  .AsCurrency := 0
              else
                SetFieldValue(qryItems.FieldByName('Total' + FormInOut +
                  'Price'), qryRecall.FieldByName('Price'));

            end;

            qryItems.FieldByName('PersonID1').AsInteger :=
              qryRecall.FieldByName('PersonID1').AsInteger;

            SetFieldValue(qryItems.FieldByName('preReciptItemID'),
              qryRecall.FieldByName('ReciptItemID'));


            // if qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23]
            // then
            // qryItems.FieldByName('ItemNote').AsString :=
            // qryRecall.FieldByName('ReciptCaption.AsString + ':' +
            // qryRecall.FieldByName('ReciptNumber.AsString;

            qryItems.FieldByName('ItemNote').ReadOnly := False;
            qryItems.FieldByName('ItemNote').AsString :=
              qryRecall.FieldByName('ItemNote').AsString + ' ' +
              qryItems.FieldByName('ItemNote').AsString;

            SetFieldValue(qryItems.FieldByName('Auxiliary'),
              qryRecall.FieldByName('Auxiliary'));

            qryItems.FieldByName('UseUnitID').ReadOnly := False;
            qryItems.FieldByName('UseUnitID').AsFloat := 0;

            if (qryinit.FieldByName('AidInfoActive').AsInteger in [2, 3]) then
            begin
              case qryinit.FieldByName('InsertAidOnRecall').AsInteger of
                1:
                  begin
                    qryItems.FieldByName('AidDate').AsString :=
                      qryRecall.FieldByName('ReciptDate').AsString;
                    qryItems.FieldByName('AidNumber').AsString :=
                      qryRecall.FieldByName('ReciptNumber').AsString;
                  end;
                2:
                  begin
                    qryItems.FieldByName('AidDate').AsString :=
                      qryRecall.FieldByName('AidDate').AsString;
                    qryItems.FieldByName('AidNumber').AsString :=
                      qryRecall.FieldByName('AidNumber').AsString;
                  end;
                3:
                  begin
                    qryItems.FieldByName('AidDate').AsString :=
                      qryRecall.FieldByName('MAidDate').AsString;
                    qryItems.FieldByName('AidNumber').AsString :=
                      qryRecall.FieldByName('MAidNumber').AsString;
                  end;
              end;
            end;

            if (qryinit.FieldByName('UseUnitCase').AsInteger in [2, 3]) then
            begin
              qryItems.FieldByName('UseUnitID').AsString :=
                qryRecall.FieldByName('UseUnitID').AsString;
            end;

            if (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 4])
            then
            begin
              qryItems.FieldByName('ProductCode').AsLargeInt :=
                qryRecall.FieldByName('ProductCode').AsLargeInt;
            end;

            if (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 3])
            then
            begin
              qryItems.FieldByName('ProductModel').AsInteger :=
                qryRecall.FieldByName('ProductModel').AsInteger;
            end;

            if qryItems.FindField('SecondTypeItem') <> NIL then
            BEGIN
              b := qryItems.FieldByName('SecondTypeItem').ReadOnly;
              qryItems.FieldByName('SecondTypeItem').ReadOnly := False;
              qryItems.FieldByName('SecondTypeItem').AsInteger :=
                qryRecall.FieldByName('SecondTypeItem').AsInteger;
              qryItems.FieldByName('SecondTypeItem').ReadOnly := b;
            END;

            if qryinit.FieldByName('RecallType').AsInteger = 10 then
            begin
              qryItems.FieldByName('RequestedEntity').ReadOnly := False;
              qryItems.FieldByName('RequestedWeight').ReadOnly := False;
              qryItems.FieldByName('RequestedEntity').AsFloat :=
                qryRecall.FieldByName('Entity').AsFloat;
              qryItems.FieldByName('RequestedWeight').AsFloat :=
                qryRecall.FieldByName('Weight').AsFloat;
            end;

            if qryinit.FieldByName('MachineActive').AsInteger = 4 then
            begin
              qryItems.FieldByName('MachineName').AsString :=
                qryRecall.FieldByName('MachineName').AsString;
              qryItems.FieldByName('MachineNo').AsString :=
                qryRecall.FieldByName('MachineNo').AsString;
            end;

            if qryItems.FindField('WaterCo') <> nil then
            begin
              if qryItems.FindField('DeficitValue4') <> nil then
                SetFieldValue(qryItems.FieldByName('DeficitValue4'),
                  qryRecall.FieldByName('DeficitValue4'));

              if qryItems.FindField('DeficitValue3') <> nil then
                SetFieldValue(qryItems.FieldByName('DeficitValue3'),
                  qryRecall.FieldByName('DeficitValue3'));

              qryItems.FieldByName('WaterCo').AsCurrency :=
                qryRecall.FieldByName('WaterCo').AsCurrency;
              qryItems.FieldByName('DeficitValue').AsCurrency :=
                qryRecall.FieldByName('DeficitValue').AsCurrency;

              if qryItems.FindField('DeficitValue2') <> nil then
                SetFieldValue(qryItems.FieldByName('DeficitValue2'),
                  qryRecall.FieldByName('DeficitValue2'));

              if (qryItems.FindField('TaxCo') <> nil) and
                ((qryItems.FieldByName('DeficitValue2').AsCurrency <> 0) or
                (qryItems.FieldByName('DeficitValue3').AsCurrency <> 0)) then
              begin
                qryItems.FieldByName('TaxCo').AsCurrency :=
                  qryRecall.FieldByName('TaxCo').AsCurrency;
                // qryItems.FieldByName('TaxValue').AsCurrency :=
                // FieldByName('TaxValue').AsCurrency;
              end;

            end;

            qryItems.FieldByName('ItemDate').AsString :=
              qryRecall.FieldByName('ItemDate').AsString;

            if qryinit.FieldByName('RecallType').AsInteger in [5, 16] then
            begin
              if (qryItems.FindField('ArzAmount') <> nil) then
              begin
                qryItems.FieldByName('ArzAmount').ReadOnly := False;
                qryItems.FieldByName('ArzAmount').AsFloat :=
                  qryRecall.FieldByName('ArzAmount').AsFloat;
              end;

              if (qryinit.FieldByName('RecallType').AsInteger in [5]) and
                (qryItems.FindField('ArzRate') <> nil) and
                (qryItems.FieldByName('ArzRate').AsFloat <> 0) then
              begin
                qryItems.FieldByName('ArzRate').ReadOnly := False;
                qryItems.FieldByName('ArzRate').AsFloat :=
                  qryRecall.FieldByName('ArzRate').AsFloat;
              end;

            end;

            ts := TStringList.Create;
            ts.Text := qryinit.FieldByName('FieldInTheField').AsString;
            for i := 0 to ts.Count - 1 do
            begin
              if (qryItems.FindField(ts.KeyNames[i]) <> nil) and
                (qryRecall.FindField(ts.ValueFromIndex[i]) <> nil) then
                SetFieldValue(qryItems.FieldByName(ts.KeyNames[i]),
                  qryRecall.FieldByName(ts.ValueFromIndex[i]), False);

              if (qryItems.FindField(ts.KeyNames[i]) <> nil) and
                (qryExcel1.FindField(ts.ValueFromIndex[i]) <> nil) then
                SetFieldValue(qryItems.FieldByName(ts.KeyNames[i]),
                  qryExcel1.FieldByName(ts.ValueFromIndex[i]), False);

            end;
            ts.Free;

            // RefreshLookupList(qryI);

            qryItems.post;
            Inc(PostCount);
            // qryExcelErorr.First;
            if qryExcelErorr.Locate('ControlCode;Amount',
              VarArrayOf([qryExcel1.FieldByName('ControlCode').AsString,
              qryExcel1.FieldByName('Amount').AsString]), []) then
            begin
              qryExcelErorr.Delete;
              // Inc(id_for);
              // qryExcelErorr.Edit;
              // for i := 0 to qryExcelErorr.Fields.Count - 1 do
              // qryExcelErorr.Fields[i].AsString := id_for.ToString;
              // qryExcelErorr.post;
            end;


            // qryExcel1.Edit;
            // qryExcel1.FieldByName('ControlCode').AsLargeInt:=0 ;
            // qryExcel1.post;

          except
            on E: Exception do
            begin
              qryItems.Cancel;
              add2log(E.Message);
            end;
          end;
        end;

        // mmo1.Lines.Add(Format('%d', [ControlCode]));
        Application.ProcessMessages;
        If LastKeyPressed = VK_ESCAPE then
          if get_response('عمليات متوقف شود؟') = mrYes then
          begin
            DoWhile := False;
            LastKeyPressed := 0;
          end;
        LastKeyPressed := 0;

        Next;
      end;

    finally
    end;

end;

procedure TExcelComparisonRecallF.AddMaster;
var
  i: Integer;
  Field_Name: string;
begin
  with qryRecipts do
  begin
    // if qryItems.Active then
    // if qryItems.RecordCount = 0 then
    // if qryRecipts.State in dsEditModes then
    // qryRecipts.Cancel;

    if not(qryRecipts.State in dsEditModes) then
      Insert;

    for i := 0 to qryRecall.FieldCount - 1 do
    begin
      Field_Name := qryRecall.Fields[i].FieldName;
      if (FindField(Field_Name) <> nil) and
        ((FieldByName(Field_Name).AsString = EmptyStr) or
        (FieldByName(Field_Name).AsString = '0')) then
        FieldByName(Field_Name).AsString :=
          qryRecall.FieldByName(Field_Name).AsString;
    end;

    FieldByName('StoreID').AsInteger := qryRecall.FieldByName('StoreID')
      .AsInteger;
    FieldByName('PersonID1').AsInteger := qryRecall.FieldByName('PersonID1M')
      .AsInteger;
    FieldByName('PersonID2').AsInteger := qryRecall.FieldByName('PersonID2M')
      .AsInteger;

    FieldByName('PersonID4').AsInteger := qryRecall.FieldByName('PersonID4M')
      .AsInteger;
  end;

end;

procedure TExcelComparisonRecallF.BitBtn10Click(Sender: TObject);
var
  b: Boolean;
  In_OutEntity: Real48;
  PersonID1M, PersonID2M, StoreID: Integer;
begin
  BitBtn10.Enabled := False;
  ProgressBar1.Min := 0;
  ProgressBar1.Position := 0;
  PostCount := 0;
  id_for := 0;
  DoWhile := True;

  PersonID1M := 0;
  PersonID2M := 0;
  StoreID := 0;

  with qryRecall do
  begin
    DisableControls;
    First;
    while (not Eof and DoWhile) do
    begin
      // if RecNo=80 then
      // Warn('111111');
      if (PersonID1M <> FieldByName('PersonID1M').AsInteger) or
        (PersonID2M <> FieldByName('PersonID2M').AsInteger) or
        (StoreID <> FieldByName('StoreID').AsInteger) then
      begin
        PersonID1M := FieldByName('PersonID1M').AsInteger;
        PersonID2M := FieldByName('PersonID2M').AsInteger;
        StoreID := FieldByName('StoreID').AsInteger;
        if (qryRecipts.State in dsEditModes) then
          if qryItems.Active then
            if qryItems.RecordCount > 0 then
              qryRecipts.post;

        AddMaster;

      end;
      AddItem;
      Next;
      ProgressBar1.StepIt;

    end;
    if DoWhile then
    begin
      EnableControls;
      Warn(PostCount.ToString + ' انتقال انجام شد.‏  ', mtInformation);
      CloseMessage;
      if qryRecipts.State in dsEditModes then
      begin
        if qryItems.RecordCount > 0 then
          qryRecipts.post
        else
          qryRecipts.Cancel;
      end;
      Self.Close;
    end
    else
      Warn('عمليات متوقف  شد.!!!‏', mtConfirmation);

    lblCount.Visible := False;
    pnlTruckNumber.Visible := mmo1.Lines.Count > 0;

  end;

  if ExcelRecallMaxAmount <> 0 then
    with qryExcelErorr do
    begin
      if RecordCount > 0 then
      begin
        Warn(RecordCount.ToString + ' انتقال انجام نشد.‏  ', mtWarning);
        DataToExcel(qryExcelErorr);
      end;
    end;

end;

procedure TExcelComparisonRecallF.btnOpenClick(Sender: TObject);
begin
  actOpenExcel.Tag := 1;
  BitBtn10.Enabled := actOpenExcel.Execute;

end;

procedure TExcelComparisonRecallF.BitBtn3Click(Sender: TObject);
begin
  actOpenExcel.Tag := 2;
  actOpenExcel.Execute
end;

procedure TExcelComparisonRecallF.BitBtn4Click(Sender: TObject);
begin
  With qryExcel1 do
    try
      DisableControls;
      while not Eof do
      begin
        if Fields[2].AsString = EmptyStr then
          Delete
        else
          Next;
      end;
    finally
      EnableControls;
    end;

  Warn('انجام شد.', mtInformation);
end;

procedure TExcelComparisonRecallF.cmbSheetName1Change(Sender: TObject);
begin
  with qryExcel1 do
  begin
    Close;
    EnableControls;
    ConnectionString := sConnec;
    SQL.Text := 'select * from [' + cmbSheetName1.Items
      [cmbSheetName1.ItemIndex] + ']';
    Open;
    // qryExcel(T_a_g).GetFieldNames(lstExcel(T_a_g).Items);
  end;

end;

procedure TExcelComparisonRecallF.ShowImPortExcel(var qryItem, qryini,
  qryRecipt: TDataSet; Form_InOut: string);
begin
  with TExcelComparisonRecallF.Create(Application) do
    try
      qryItems := qryItem;
      qryinit := qryini;
      qryRecipts := qryRecipt;

      ReciptType := qryRecipts.FieldByName('ReciptType').AsInteger;

      FormInOut := Form_InOut;

      UniqueName := 'ReciptType' + ReciptType.ToString;

      UniqueFileName := '_' + MakeUniqDBBackupName(APPBank.Name,
        var_glb_CurrentDate);

      if DebugHook <> 0 then
      begin
        _Filepath1 := ReadConfig('', UniqueName + '_Filepath1', '');

        if not FileExists(_Filepath1) then
          _Filepath1 := EmptyStr;
        if _Filepath1 <> EmptyStr then
          ExcelToList(_Filepath1);
      end;

      ShowModal;
    finally
      qryExcel1.Close;
      Free;

    end;
end;

procedure TExcelComparisonRecallF.ExcelToList(Fname: String = '');
begin
  FileNameOrginal := _Filepath1;
  btnOpen.Hint := _Filepath1;
  NewFileName := ReplaceStr(_Filepath1, '.', UniqueFileName + '.');
  CopyFile(pchar(_Filepath1), pchar(NewFileName), True);

  if ExtractFileExt(Fname) = '.xlsx' then
    sConnec :=
      Format('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Extended Properties=excel 12.0;Persist Security Info=False',
      [Fname])
  else
    sConnec :=
      Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Extended Properties=excel 8.0;Persist Security Info=False',
      [Fname]);

  sConnecNew := ReplaceStr(sConnec, FileNameOrginal, NewFileName);

  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := sConnec;
      LoginPrompt := False;
      try
        Open;
      except
        SaveConfig('', UniqueName + '_Filepath1', EmptyStr);
      end;

      GetTableNames(cmbSheetName1.Items);
      // pnlSheet.Visible := cmbSheetName.Items.Count > 1;
      if pnlSheet.Visible then
        cmbSheetName1.ItemIndex := 0;
      cmbSheetName1Change(cmbSheetName1);
    finally
      Free;
    end;

end;

procedure TExcelComparisonRecallF.FormCreate(Sender: TObject);
begin
  ExcelRecallMaxAmount := RecallSpecialReciptsF.qryinit.FieldByName
    ('ExcelRecallMaxAmount').AsFloat;
  mmo1.Lines.Clear;
  OrgSQL := RecallSpecialReciptsF.qrySpecialRecall.SQL.Text;

end;

procedure TExcelComparisonRecallF.qryExcel1AfterOpen(DataSet: TDataSet);
var
  ControlCode: Largeint;
  i: Integer;
  ControlCodes: string;
begin
  lblEcxel1.caption := ExtractFileName(_Filepath1);
  for i := 0 to dbgrd1.Columns.Count - 1 do
    dbgrd1.Columns[i].Width := dbgrd1.Width div dbgrd1.Columns.Count;

  if qryExcel1.FindField('ControlCode') = nil then
    Exit;

  with qryExcel1 do
    try
      DisableControls;
      First;
      while (not Eof) do
      begin
        if FieldByName('ControlCode').AsString.Trim <> EmptyStr then
        begin
          ControlCode := FieldByName('ControlCode').AsLargeInt;
          ControlCodes := ControlCodes + ControlCode.ToString + ',';
        end;
        Next;
      end;
    finally
      SetLength(ControlCodes, length(ControlCodes) - 1);
      if ControlCodes = EmptyStr then
        ControlCodes := '0';

    end;

  qryRecall := RecallSpecialReciptsF.qrySpecialRecall;
  with qryRecall do
  begin
    SQL.Text := ReplaceStr(OrgSQL, ':ControlCode', ControlCodes);
    Open;
    sort := 'StoreID,PersonID1M,PersonID2M';
    ProgressBar1.Max := RecordCount;

  end;

  with qryExcelErorr do
  begin
    Close;
    EnableControls;
    sConnecNew := ReplaceStr(sConnec, FileNameOrginal, NewFileName);
    ConnectionString := sConnecNew;
    SQL.Text := 'select * from [' + cmbSheetName1.Items
      [cmbSheetName1.ItemIndex] + ']';
    Open;
  end;

end;

end.
