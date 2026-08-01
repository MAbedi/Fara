unit ExcelComparisonExcel2;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, ActnList, Buttons, DB, ADODB,
  Vcl.DBGrids, ComCtrls, DBClient, Provider, System.Actions, InitPop,
  System.SysUtils, System.StrUtils, System.Character, math,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.ValEdit;

type

  TExcelComparisonExcel2F = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    ActionList1: TActionList;
    actOpenExcel: TAction;
    qryExcel2: TADOQuery;
    actCompareExcelwithInfo: TAction;
    actClose: TAction;
    btnCompareExcelwithInfo: TBitBtn;
    btnClose: TBitBtn;
    Splitter2: TSplitter;
    ProgressBar1: TProgressBar;
    lblCount: TLabel;
    actDownItem4Add: TAction;
    actUpItem4Add: TAction;
    actCompareInfowithExcel: TAction;
    qryExcel1: TADOQuery;
    pnlExcel2: TPanel;
    pnlSheet: TPanel;
    cmbSheetName1: TComboBox;
    btnFactori: TBitBtn;
    btnBank: TBitBtn;
    cmbSheetName2: TComboBox;
    btnPostAll: TBitBtn;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersNationalID: TStringField;
    qryStuffcoding: TADOQuery;
    qryStuffcodingc_StuffCode: TLargeintField;
    qryStuffcodingGroupID: TIntegerField;
    qryStuffcodingc_StuffName: TStringField;
    lblEcxel1: TLabel;
    srcNewExcel1: TDataSource;
    srcNewExcel2: TDataSource;
    qryStuffcodingc_StuffTecInfo: TStringField;
    qryCustomersCustomerGrpID: TIntegerField;
    qryCustomersAddress: TStringField;
    qryCustomersModifyDate: TDateTimeField;
    qryTruckNumber: TADOQuery;
    Panel2: TPanel;
    btnDelete: TBitBtn;
    dbgrd1: TCedarDbgrid;
    grd2: TCedarDbgrid;
    pnlTruckNumber: TPanel;
    mmo1: TMemo;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cmbBank: TComboBox;
    cmbFormType: TComboBox;
    qryTruckNumberForms: TADOQuery;
    Panel3: TPanel;
    cmbStore: TComboBox;
    Label2: TLabel;
    cmbSecondType: TComboBox;
    Label8: TLabel;
    qryCustomersReagentName: TWideStringField;
    qryCustomersCity: TStringField;
    cmbFieldName: TComboBox;
    Label9: TLabel;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    qryinitR: TADOQuery;
    qryinitF: TADOQuery;
    qryForms: TADOQuery;
    Splitter1: TSplitter;
    cmbSellsEmporium: TComboBox;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TabSheet2: TTabSheet;
    Label19: TLabel;
    lblEcxel2: TLabel;
    qryCustomersRegion: TStringField;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    btnPOST: TBitBtn;
    btnDel: TBitBtn;
    qryUtilEcE: TADOQuery;
    qryUtilEcEReciptType: TWordField;
    qryUtilEcECaption: TStringField;
    qryUtilEcESystemFieldName: TStringField;
    qryUtilEcEExcelFieldName: TStringField;
    qryUtilEcENote: TWideStringField;
    qryUtilEcEFileKind: TWordField;
    grdUtilEcE: TCedarDbgrid;
    srcUtilEcE: TDataSource;
    qryCustomersCustFirstName: TStringField;
    BitBtn1: TBitBtn;
    qryCustomersEconomicNumber: TStringField;
    qryCustomersRegisterNumber: TStringField;
    qry4Del: TADOQuery;
    qry4DelSystemFieldName: TStringField;
    qry4DelExcelFieldName: TStringField;
    qry4DelNote: TWideStringField;
    procedure actOpenExcelExecute(Sender: TObject);
    // procedure cmbSheetName1Change(Sender: TObject);
    procedure actCompareExcelwithInfoExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure qryExcel2AfterOpen(DataSet: TDataSet);
    procedure btnFactoriClick(Sender: TObject);
    procedure btnBankClick(Sender: TObject);
    procedure qryExcel1AfterOpen(DataSet: TDataSet);
    procedure btnPostAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure cmbFieldNameEnter(Sender: TObject);
    procedure cmbFieldNameChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnPOSTClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryUtilEcEAfterInsert(DataSet: TDataSet);
    procedure grdUtilEcEDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    ItmString: TStrings;
    FormInOut: string;
    KeyValue_Locate: String;
    UniqueName, _Filepath1, _Filepath2: String;
    PostCount, PostCount2, CustomersInsert: Integer;
    StoreID, ReciptType, FSellsEmporium: Integer;
    procedure ExcelToList(T_a_g: Integer; Fname: String = '');
    procedure CompareExcelwithInfo;
    function GetqryExcel(T_a_g: Integer): TADOQuery;
    function cmbSheetName(T_a_g: Integer): TComboBox;
    // function lstExcel(T_a_g: Integer): TListBox;
    // procedure addLinks(lstS1, lstS2, lstDesti: TListBox; qry1, qry2: TADOQuery);
    procedure OpenBaseQry(Qry: TADOQuery);
    function ChkExists(Qry1: TADOQuery): Boolean;
    function SaveForms(RelatedRecipts: Integer): Boolean;
    function FixNationalID(NationalID: string): string;
    function Excel1NationalID: string;
    function F10NationalID: string;
    function FileFieldName: string;
    function F17ShomarePay: string;
    function F7ReciptDate: string;
    function PriceAmount: string;
    procedure AddCustomersKindF1;
    procedure AddCustomersKindF2;
    function ChkPrice: Boolean;
    function GetNote: string;
    function F16c_StuffTecInfo: string;
    function F20Weight: string;
    function F19Entity: string;
    function F13UnitSellPrice: string;
    function F28AidDate: string;
    function FCustName: string;
    function AddressPart1: string;
    function AddressPart2: string;
    function AddressPart3: string;
    function AddressPart4: string;
    function FCity: string;
    function ParvenehKasb: string;
    function OnvanDoreh: string;
    procedure InitExcelComparisonExcel;
    procedure AddToUtilEcE(FileKind: Integer;
      Caption, SystemFieldName, ExcelFieldName: string; Note: string = '');
    function UtilEcE(FieldName: string): string;
    function NotePart1: string;
    function NotePart2: string;
    function NotePart3: string;
    function GetUtilEcENote(FieldName: string): string;
    function CustNameNationalID: string;
    function ReagentName: string;
    function Weight_Entity: string;
    function NoeArd_Sanad: string;
    function Excel1Price: string;
    function Excel2Price: string;
    function Excel2Shenase: string;
    function CardexCode: string;
    function CodeDoreh: string;
    function Excel2ShomareSanad: string;
    function Radif: string;
    function KeyValue4Locate: string;
    function KeyValue4TruckNumber: string;
    function MyIsNumber(const S: string; Index: Integer): Boolean;
    function MYLOCATE(Qry: TADOQuery; fldNmae, Value4: string): Boolean;
    function MYLOCATE2(Qry: TADOQuery; fldNmae, Value4: string): Boolean;
    function CheckFormula(ExcelFld: string): Boolean;
    procedure AddCustomersKindF3;
    function FCustFirstName: string;

    { Private declarations }
  public
    procedure ShowImPortExcel(Recipt_Type, Store_ID: Integer;
      Form_InOut: string; TSecondType: TStrings);
    { Public declarations }
  end;

var
  ExcelComparisonExcel2F: TExcelComparisonExcel2F;

const
  SplitterTxt = ' --> ';

implementation

uses GlobalPro, GeneralDM, FaraConsts, FormFunctions, DM, MMESSAGE;

{$R *.dfm}

procedure TExcelComparisonExcel2F.actOpenExcelExecute(Sender: TObject);

var
  T_a_g: Integer;
begin
  T_a_g := GetTag(Sender as TAction);
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
      begin
        if T_a_g = 1 then
        begin
          _Filepath1 := FileName;
          btnFactori.Hint := FileName;
        end
        else
        begin
          _Filepath2 := FileName;
          btnBank.Hint := FileName;
        end;
        ExcelToList(T_a_g, FileName);

      end;

    finally
      if T_a_g = 1 then
        SaveConfig('', UniqueName + '_Filepath1', FileName)
      else
        SaveConfig('', UniqueName + '_Filepath2', FileName);
      Free;
      // btnaddLink.Click;
    end;

end;

procedure TExcelComparisonExcel2F.OpenBaseQry(Qry: TADOQuery);
begin
  With Qry do
  begin
    Connection := theMainConnection;
    Close;
    Open;
  end;

end;

function TExcelComparisonExcel2F.ChkExists(Qry1: TADOQuery): Boolean;
var
  S: string;
begin
//  S := qryExcel1.FieldByName(F17ShomarePay).AsString;

  if cmbFieldName.ItemIndex = 5 then
    S := qryExcel1.FieldByName(F17ShomarePay).AsString + '_' +
      IntToStr(GlobalPro.GetHashCode(qryExcel1.FieldByName(F16c_StuffTecInfo).AsString))
  else
    S := qryExcel1.FieldByName(F17ShomarePay).AsString;

  // if S='C7ae6096a1db04b448dec401096cd8d9f' then
  // Warn('C7ae6096a1db04b448dec401096cd8d9f');
  Result := Qry1.Locate('TruckNumber', S, []);
  if Result then
  begin
    mmo1.Lines.Add('RSamane=' + qryExcel1.FieldByName(Radif).AsString + ' ' +
      Qry1.FieldByName('ReciptNumber').AsString + ' > ' + S)
  end
  else
  begin
    // Qry1.Insert;
    // Qry1.FieldByName('TruckNumber').AsString := S;
    // Qry1.Post;

    if (cmbFieldName.ItemIndex = 6) and (Qry1.Name = qryTruckNumberForms.Name)
    then
    begin
      qryTruckNumberForms.Insert;
      qryTruckNumberForms.FieldByName('TruckNumber').AsString := S;
      qryTruckNumberForms.Post;
    end;

  end;
end;

function TExcelComparisonExcel2F.MyIsNumber(const S: string;
  Index: Integer): Boolean;
begin
  if cmbFieldName.ItemIndex = 1 then
    Result := True
  else
    Result := IsNumber(S, 1);

end;

procedure TExcelComparisonExcel2F.btnPostAllClick(Sender: TObject);

var
  ReciptID, i: Integer;
  DoWhile: Boolean;
  ReciptDate, S: string;
begin
  grdUtilEcE.Enabled := False;
  btnDelete.Click;
  if cmbStore.ItemIndex = -1 then
  begin
    Warn2('انیار انتخاب نشده');
    Exit;
  end;

  if cmbSecondType.ItemIndex = -1 then
  begin
    Warn2('نوع اطلاعات انتخاب نشده');
    Exit;
  end;

  if cmbSellsEmporium.ItemIndex = -1 then
  begin
    Warn2('مرکز فروش انتخاب نشده');
    Exit;
  end;
  FSellsEmporium := Integer(cmbSellsEmporium.Items.Objects
    [cmbSellsEmporium.ItemIndex]);

  ProgressBar1.Min := 0;
  ProgressBar1.Position := 0;
  PostCount := 0;
  PostCount2 := 0;
  CustomersInsert := 0;
  ProgressBar1.Max := qryExcel1.RecordCount;
  FreeReservedCodes(DMF.adcBSell, 'customers', '', Self.Name);
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
  FreeReservedCodes(DMF.adcBSell, 'recipts', 'reciptnumber');
  FreeReservedCodes(DMF.adcBSell, 'forms', 'formnumber');
  FreeReservedCodes(DMF.adcBSell, 'forms', 'formid');

  OpenBaseQry(qryCustomers);
  OpenBaseQry(qryStuffcoding);
  OpenBaseQry(qryTruckNumber);
  OpenBaseQry(qryTruckNumberForms);
  qryRecipts.Open;
  qryReciptItems.Open;

  with qryExcel1 do
    try
      DoWhile := True;
      DisableControls;
      First;
      while (not Eof and DoWhile) do
      begin
        S := FieldByName(F17ShomarePay).AsString.Trim;

        if (S <> EmptyStr) and (MyIsNumber(S, 1)) and
          not ChkExists(qryTruckNumber) then
        begin
          try
            qryRecipts.Insert;
            qryRecipts.FieldByName('ReciptType').AsInteger := ReciptType;
            qryRecipts.FieldByName('UseOtherID').AsInteger := 0;

            qryRecipts.FieldByName('SellsEmporium').AsInteger := FSellsEmporium;

            StoreID := Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
            myStore.code := StoreID;
            qryRecipts.FieldByName('StoreID').AsInteger := StoreID;

            ReciptID := GetanewID(qryRecipts, Self.Name, 'Recipts',
              'ReciptID', nil, 1);

            qryRecipts.FieldByName('SecondType').AsInteger :=
              Integer(cmbSecondType.Items.Objects[cmbSecondType.ItemIndex]);

            GetReciptNumber(qryinitR, qryRecipts, 0, myStore);
            qryRecipts.FieldByName('OperatorID').AsInteger := User.id;
            qryRecipts.FieldByName('ModifyDate').AsDateTime := Now;
            qryRecipts.FieldByName('FirstUser').AsString := User.Name;

            if cmbFieldName.ItemIndex = 5 then
              qryRecipts.FieldByName('TruckNumber').AsString :=
                FieldByName(F17ShomarePay).AsString + '_' +
                IntToStr(GlobalPro.GetHashCode(qryExcel1.FieldByName(F16c_StuffTecInfo)
                .AsString))
            else
              qryRecipts.FieldByName('TruckNumber').AsString :=
                FieldByName(F17ShomarePay).AsString;

            ReciptDate := LeftStr(qryExcel1.FieldByName(F7ReciptDate)
              .AsString, 10);
            qryRecipts.FieldByName('ReciptDate').AsString := ReciptDate;

            if cmbFieldName.ItemIndex in [2, 3, 4, 5, 6] then
            begin
              qryRecipts.FieldByName('AidDate').AsString :=
                FieldByName(F28AidDate).AsString;

              if cmbFieldName.ItemIndex in [6] then
                AddCustomersKindF3
              else
                AddCustomersKindF2;

              qryRecipts.FieldByName('ReciptNote').AsString := GetNote;

              with qryUtilEcE do
              begin
                DisableControls;
                First;
                while not Eof do
                begin
                  if (qryRecipts.FindField(qryUtilEcESystemFieldName.AsString)
                    <> nil) and
                    (qryExcel1.FindField(qryUtilEcEExcelFieldName.AsString)
                    <> nil) then
                    SetFieldValue
                      (qryRecipts.FieldByName
                      (qryUtilEcESystemFieldName.AsString),
                      qryExcel1.FieldByName
                      (qryUtilEcEExcelFieldName.AsString), False);
                  Next;
                end;
                EnableControls;
              end;

              // for i := 0 to tsField.Count - 1 do
              // begin
              // if (qryRecipts.FindField(tsField.KeyNames[i]) <> nil) and
              // (qryExcel1.FindField(tsField.ValueFromIndex[i]) <> nil) then
              // SetFieldValue(qryRecipts.FieldByName(tsField.KeyNames[i]),
              // qryExcel1.FieldByName(tsField.ValueFromIndex[i]), False);
              // end;

            end
            else
            begin
              AddCustomersKindF1;
              qryRecipts.FieldByName('ReciptNote').AsString := GetNote;

            end;

            Inc(PostCount);

          finally
          end;

          try
            qryReciptItems.Insert;

            qryReciptItems.FieldByName('ReciptID').AsInteger := ReciptID;
            qryReciptItems.FieldByName('ReciptItemID').AsInteger :=
              GetanewID(qryReciptItems, Self.Name, 'ReciptItems ',
              'ReciptItemID', qryRecipts, 1);
            qryReciptItems.FieldByName('FirstUser').AsString := User.Name;

            if cmbFieldName.ItemIndex in [2, 3, 4, 5, 6] then
            begin
              if (qryStuffcoding.Locate('c_StuffTecInfo',
                CorrectFarsiChars(qryExcel1.FieldByName(F16c_StuffTecInfo)
                .AsString), [])) or
                (qryStuffcoding.Locate('c_StuffTecInfo',
                qryExcel1.FieldByName(F16c_StuffTecInfo).AsString, [])) then
              begin
                qryReciptItems.FieldByName('StuffCode').AsLargeInt :=
                  qryStuffcodingc_StuffCode.AsLargeInt;
              end
              else
              begin
                S := qryExcel1.FieldByName(F16c_StuffTecInfo).AsString + ' = ' +
                  CorrectFarsiChars(qryExcel1.FieldByName(F16c_StuffTecInfo)
                  .AsString);
                add2log('c_StuffTecInfo Not Found : ' + QuotedStr(S));
                Warn2(S, 0);
              end;

              qryReciptItems.FieldByName(FormInOut + 'Weight').AsString :=
                qryExcel1.FieldByName(F20Weight).AsString;
              qryReciptItems.FieldByName(FormInOut + 'Entity').AsString :=
                qryExcel1.FieldByName(F19Entity).AsString;

              qryReciptItems.FieldByName('UnitSellPrice').AsString :=
                qryExcel1.FieldByName(F13UnitSellPrice).AsString;
              qryReciptItems.FieldByName('TotallSellPrice').AsString :=
                PriceAmount;

              qryReciptItems.FieldByName('Total' + FormInOut + 'Price').AsString
                := PriceAmount;

            end
            else
            begin
              ItmString.DelimitedText :=
                qryExcel1.FieldByName(F16c_StuffTecInfo).AsString;
              if ItmString.Count = 3 then
              begin
                if (qryStuffcoding.Locate('c_StuffTecInfo',
                  CorrectFarsiChars(ItmString[2]), [])) or
                  (qryStuffcoding.Locate('c_StuffTecInfo', ItmString[2], []))
                then
                begin
                  qryReciptItems.FieldByName('StuffCode').AsLargeInt :=
                    qryStuffcodingc_StuffCode.AsLargeInt;
                end
                else
                begin
                  S := ItmString[2] + ' = ' + CorrectFarsiChars(ItmString[2]);
                  add2log('c_StuffTecInfo Not Found :' + QuotedStr(S));
                  Warn2(S, 0);
                end;

              end;
              ItmString.DelimitedText :=
                qryExcel1.FieldByName(Weight_Entity).AsString;
              if ItmString.Count = 3 then
              begin
                qryReciptItems.FieldByName(FormInOut + 'Weight').AsString :=
                  ItmString[0];
                qryReciptItems.FieldByName(FormInOut + 'Entity').AsString :=
                  ItmString[2];
              end;
            end;

            qryReciptItems.FieldByName('Total' + FormInOut + 'Price').AsString
              := PriceAmount;
            qryReciptItems.FieldByName('TotallSellPrice').AsString :=
              PriceAmount;

            if cmbFieldName.ItemIndex <> 6 then
              qryReciptItems.FieldByName('UnitSellPrice').AsFloat :=
                qryReciptItems.FieldByName('Total' + FormInOut + 'Price')
                .AsFloat / qryReciptItems.FieldByName
                (FormInOut + 'Weight').AsFloat
            else
            begin
              qryReciptItems.FieldByName('Total' + FormInOut + 'Price')
                .AsCurrency :=
                RoundTo(qryReciptItems.FieldByName(FormInOut + 'Weight').AsFloat
                * qryReciptItems.FieldByName('UnitSellPrice').AsFloat, 0);

              qryReciptItems.FieldByName('TotallSellPrice').AsCurrency :=
                qryReciptItems.FieldByName('Total' + FormInOut + 'Price')
                .AsCurrency;

            end;

            qryReciptItems.FieldByName('PersonID1').AsInteger :=
              qryCustomersCustID.AsInteger;

            if cmbFieldName.ItemIndex in [2, 5] then
              with qryUtilEcE do
              begin
                DisableControls;
                First;
                while not Eof do
                begin
                  if (qryReciptItems.FindField
                    (qryUtilEcESystemFieldName.AsString) <> nil) then
                  begin
                    if (qryExcel1.FindField(qryUtilEcEExcelFieldName.AsString)
                      <> nil) then
                      SetFieldValue
                        (qryReciptItems.FieldByName
                        (qryUtilEcESystemFieldName.AsString),
                        qryExcel1.FieldByName
                        (qryUtilEcEExcelFieldName.AsString), False)
                    else
                      CheckFormula(qryUtilEcEExcelFieldName.AsString);
                  end;
                  Next;
                end;
                EnableControls;
              end;
            // for i := 0 to tsField.Count - 1 do
            // begin
            // if (qryReciptItems.FindField(tsField.KeyNames[i]) <> nil) and
            // (qryExcel1.FindField(tsField.ValueFromIndex[i]) <> nil) then
            // SetFieldValue(qryReciptItems.FieldByName(tsField.KeyNames[i]),
            // qryExcel1.FieldByName(tsField.ValueFromIndex[i]), False);
            // end;

            if not DMF.adcBSell.InTransaction then
              try
                DMF.adcBSell.BeginTrans;

                qryRecipts.Post;
                qryReciptItems.Post;

                if DMF.adcBSell.InTransaction then
                  DMF.adcBSell.CommitTrans;
              except
                on E: Exception do
                begin
                  DMF.adcBSell.RollbackTrans;
                  grdUtilEcE.Enabled := True;
                  Warn2(E.Message);

                end;
              end;

            SaveForms(ReciptID);
            FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
            FreeReservedCodes(DMF.adcBSell, 'recipts', 'reciptnumber');

          except
            on E: Exception do
            begin
              qryReciptItems.Cancel;
              qryRecipts.Cancel;
              add2log(E.Message);
              grdUtilEcE.Enabled := True;

            end;
          end;
        end;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
        Next;
      end;

    finally
      if DoWhile then
      begin
        Warn(PostCount.ToString + ' انتقال انجام شد.‏  ' + #13#10 +
          PostCount2.ToString + '  فرم خزانه داری ثبت شد.  ' + #13#10 +
          CustomersInsert.ToString + '  مشتری جدید ثبت شد.  ', mtInformation);
        CloseMessage;
      end
      else
        Warn('عمليات متوقف  شد.!!!‏', mtConfirmation);

      EnableControls;
      lblCount.Visible := False;
      pnlTruckNumber.Visible := mmo1.Lines.Count > 0;
      grdUtilEcE.Enabled := True;
      qryUtilEcE.EnableControls;

    end;

end;

procedure TExcelComparisonExcel2F.BitBtn1Click(Sender: TObject);
var
  S: string;
begin
  with qryUtilEcE do
  begin
    First;
    while not Eof do
    begin
      S := CorrectFarsiChars2(qryUtilEcEExcelFieldName.AsString);
      if qryExcel1.FindField(S) = nil then
      begin
        Warn2('ستون ' + QuotedStr(S) + 'در اکسل  کارخانه وجود ندارد');
        Break;
      end;
      Next;
    end;

  end;
end;

function TExcelComparisonExcel2F.GetNote: string;
begin
  Result := GetUtilEcENote('NotePart1') + qryExcel1.FieldByName(NotePart1)
    .AsString + GetUtilEcENote('NotePart2') + qryExcel1.FieldByName(NotePart2)
    .AsString + GetUtilEcENote('NotePart3') + qryExcel1.FieldByName
    (NotePart3).AsString;
  if Length(Result) > 400 then
    Warn2('توضیحات بیش از  400 کاراکتر است');
  Result := LeftStr(Result, 400);
end;

procedure TExcelComparisonExcel2F.AddCustomersKindF1;
begin
  ItmString.DelimitedText := qryExcel1.FieldByName(CustNameNationalID).AsString;
  if ItmString.Count = 3 then
  begin
    if qryCustomers.Locate('NationalID;ReagentName',
      VarArrayOf([FixNationalID(ItmString[2]),
      qryExcel1.FieldByName(ReagentName).AsString.Trim]), []) then
    begin
      qryRecipts.FieldByName('PersonID1').AsInteger :=
        qryCustomersCustID.AsInteger;
    end
    else
    begin
      qryCustomers.Insert;
      qryCustomersCustomerGrpID.AsInteger :=
        qryinitR.FieldByName('CustomerGrpID4Add2Customers1').AsInteger;
      qryCustomersCustID.AsInteger := GetANewCode(Self.Name,
        'Select max(CustID) from Customers where CustomerGrpID =' +
        qryCustomersCustomerGrpID.AsString, 'CustID');

      qryCustomersCustName.AsString := ItmString[0];
      qryCustomersNationalID.AsString := FixNationalID(ItmString[2]);

      qryCustomersReagentName.AsString := qryExcel1.FieldByName(ReagentName)
        .AsString;;
      qryCustomersAddress.AsString :=
        qryExcel1.FieldByName(AddressPart1).AsString;
      qryCustomersCity.AsString := qryExcel1.FieldByName(FCity).AsString;

      qryCustomersModifyDate.AsDateTime := Now;
      qryCustomers.Post;
      Inc(CustomersInsert);
      qryRecipts.FieldByName('PersonID1').AsInteger :=
        qryCustomersCustID.AsInteger;
      FreeReservedCodes(DMF.adcBSell, 'customers', '', Self.Name);
    end;
  end;
end;

procedure TExcelComparisonExcel2F.AddCustomersKindF3;
var
  S: string;
begin
  S := qryExcel1.FieldByName(CustNameNationalID).AsString;
  qryCustomers.First;
  if qryCustomers.Locate('NationalID;ReagentName',
    VarArrayOf([FixNationalID(S), qryExcel1.FieldByName(ReagentName)
    .AsString.Trim]), []) then
  begin
    qryRecipts.FieldByName('PersonID1').AsInteger :=
      qryCustomersCustID.AsInteger;
  end
  // else if qryCustomers.Locate('NationalID', FixNationalID(S), []) then
  // begin
  // qryRecipts.FieldByName('PersonID1').AsInteger :=
  // qryCustomersCustID.AsInteger;
  // end
  else
  begin
    qryCustomers.Insert;
    qryCustomersCustomerGrpID.AsInteger :=
      qryinitR.FieldByName('CustomerGrpID4Add2Customers1').AsInteger;
    qryCustomersCustID.AsInteger := GetANewCode(Self.Name,
      'Select max(CustID) from Customers where CustomerGrpID =' +
      qryCustomersCustomerGrpID.AsString, 'CustID');

    qryCustomersCustFirstName.AsString :=
      qryExcel1.FieldByName(FCustFirstName).AsString;
    qryCustomersCustName.AsString := qryExcel1.FieldByName(FCustName).AsString;
    qryCustomersNationalID.AsString := FixNationalID(S);

    qryCustomersEconomicNumber.AsString :=
      qryExcel1.FieldByName(ParvenehKasb).AsString;
    qryCustomersRegisterNumber.AsString :=
      qryExcel1.FieldByName(ParvenehKasb).AsString;

    qryCustomersReagentName.AsString := qryExcel1.FieldByName(ReagentName)
      .AsString;;

    S := qryExcel1.FieldByName(AddressPart1).AsString;

    if qryExcel1.FindField(AddressPart2) <> nil then
      S := S + ' ' + qryExcel1.FieldByName(AddressPart2).AsString;
    if qryExcel1.FindField(AddressPart3) <> nil then
      S := S + ' ' + qryExcel1.FieldByName(AddressPart3).AsString;
    if qryExcel1.FindField(AddressPart4) <> nil then
      S := S + ' ' + qryExcel1.FieldByName(AddressPart4).AsString;

    qryCustomersAddress.AsString := S;

    qryCustomersCity.AsString := qryExcel1.FieldByName(FCity).AsString;

    qryCustomersModifyDate.AsDateTime := Now;
    qryCustomers.Post;
    Inc(CustomersInsert);
    qryRecipts.FieldByName('PersonID1').AsInteger :=
      qryCustomersCustID.AsInteger;
    FreeReservedCodes(DMF.adcBSell, 'customers', '', Self.Name);
  end;

end;

function TExcelComparisonExcel2F.Excel1NationalID(): string;
begin
  // 2730098356-01
  Result := qryExcel1.FieldByName(F10NationalID).AsString.Trim;
  Result := Result.Replace('-', '', [rfReplaceAll]);
  Result := Result.Replace('_', '', [rfReplaceAll]);
end;

procedure TExcelComparisonExcel2F.AddCustomersKindF2;
var
  i: Integer;
  ExcelFieldName, S: string;
begin
  if qryCustomers.Locate('NationalID', Excel1NationalID, []) then
  begin
    qryRecipts.FieldByName('PersonID1').AsInteger :=
      qryCustomersCustID.AsInteger;
  end
  else
  begin
    qryCustomers.Insert;
    qryCustomersCustomerGrpID.AsInteger :=
      qryinitR.FieldByName('CustomerGrpID4Add2Customers1').AsInteger;
    qryCustomersCustID.AsInteger := GetANewCode(Self.Name,
      'Select max(CustID) from Customers where CustomerGrpID =' +
      qryCustomersCustomerGrpID.AsString, 'CustID');

    qryCustomersCustName.AsString := qryExcel1.FieldByName(FCustName).AsString;
    qryCustomersNationalID.AsString := Excel1NationalID;

    qryCustomersReagentName.AsString :=
      qryExcel1.FieldByName(OnvanDoreh).AsString;
    S := qryExcel1.FieldByName(AddressPart1).AsString;

    if qryExcel1.FindField(AddressPart2) <> nil then
      S := S + ' ' + qryExcel1.FieldByName(AddressPart2).AsString;
    if qryExcel1.FindField(AddressPart3) <> nil then
      S := S + ' ' + qryExcel1.FieldByName(AddressPart3).AsString;
    if qryExcel1.FindField(AddressPart4) <> nil then
      S := S + ' ' + qryExcel1.FieldByName(AddressPart4).AsString;

    qryCustomersAddress.AsString := S;
    qryCustomersCity.AsString := qryExcel1.FieldByName(FCity).AsString;

    if cmbFieldName.ItemIndex in [2, 5] then
      with qryUtilEcE do
      begin
        DisableControls;
        First;
        while not Eof do
        begin
          if (qryCustomers.FindField(qryUtilEcESystemFieldName.AsString) <> nil)
            and (qryExcel1.FindField(qryUtilEcEExcelFieldName.AsString) <> nil)
          then
          begin
            ExcelFieldName := qryUtilEcEExcelFieldName.AsString;

            SetFieldValue(qryCustomers.FieldByName
              (qryUtilEcESystemFieldName.AsString),
              qryExcel1.FieldByName(ExcelFieldName), False);
          end;
          Next;
        end;
        EnableControls;
      end;
    // for i := 0 to tsField.Count - 1 do
    // begin
    // if (qryCustomers.FindField(tsField.KeyNames[i]) <> nil) and
    // (qryExcel1.FindField(tsField.ValueFromIndex[i]) <> nil) then
    // SetFieldValue(qryCustomers.FieldByName(tsField.KeyNames[i]),
    // qryExcel1.FieldByName(tsField.ValueFromIndex[i]), False);
    // end;

    qryCustomersModifyDate.AsDateTime := Now;
    qryCustomers.Post;
    Inc(CustomersInsert);
    qryRecipts.FieldByName('PersonID1').AsInteger :=
      qryCustomersCustID.AsInteger;
    FreeReservedCodes(DMF.adcBSell, 'customers', '', Self.Name);
  end;

end;

function TExcelComparisonExcel2F.CheckFormula(ExcelFld: string): Boolean;
var
  ix, i: Integer;
  ts: TStringList;
  r: Real;
  k: Largeint;
  S: string;
const
  CHARS = ['+', '-', '*', '/'];
begin
  ts := TStringList.Create;
  try
    ix := 0;
    ts.Add(EmptyStr);
    ts[ix] := EmptyStr;
    SetLength(ExcelFld, Length(ExcelFld));
    for i := 0 to Length(ExcelFld) do
    begin
      if ExcelFld[i] in CHARS then
      begin
        Inc(ix);
        ts.Add(ExcelFld[i]);
        Inc(ix);
        ts.Add(EmptyStr);
      end
      else
      begin
        ts[ix] := ts[ix] + Trim(ExcelFld[i]);
      end;
    end;

    r := 0;
    if ts.Count = 1 then
    begin
      if qryReciptItems.FieldByName(qryUtilEcESystemFieldName.AsString) is TNumericField
      then
      begin
        S := ts[0];
        if TryStrToInt64(S, k) then
          qryReciptItems.FieldByName(qryUtilEcESystemFieldName.AsString)
            .AsLargeInt := k;
      end
      else
        qryReciptItems.FieldByName(qryUtilEcESystemFieldName.AsString)
          .AsString := ts[0]

    end
    else
    begin

      for i := 0 to ts.Count - 1 do
      begin
        if ts[i + 1] = '+' then
          r := qryExcel1.FieldByName(ts[i]).AsFloat + qryExcel1.FieldByName
            (ts[i + 2]).AsFloat
        else if ts[i + 1] = '-' then
          r := qryExcel1.FieldByName(ts[i]).AsFloat - qryExcel1.FieldByName
            (ts[i + 2]).AsFloat
        else if ts[i + 1] = '*' then
          r := qryExcel1.FieldByName(ts[i]).AsFloat * qryExcel1.FieldByName
            (ts[i + 2]).AsFloat
        else if ts[i + 1] = '/' then
          r := qryExcel1.FieldByName(ts[i]).AsFloat / qryExcel1.FieldByName
            (ts[i + 2]).AsFloat;
        Break;
        // i := i + 3;
      end;

      qryReciptItems.FieldByName(qryUtilEcESystemFieldName.AsString)
        .AsFloat := r;
    end;

  finally
    ts.Free;
  end;

end;

function TExcelComparisonExcel2F.FixNationalID(NationalID: string): string;
begin
  NationalID := NationalID.Replace('-', '', [rfReplaceAll]);
  NationalID := NationalID.Replace('_', '', [rfReplaceAll]).Trim;

  if cmbFieldName.ItemIndex in [6] then
  begin
    Result := LeftStr(NationalID.Trim, 10)
  end
  else
  begin
    if Length(NationalID) < 11 then
      Result := RightStr('0000' + NationalID.Trim, 10)
    else
      Result := NationalID;
  end;
end;

procedure TExcelComparisonExcel2F.btnFactoriClick(Sender: TObject);
begin
  actOpenExcel.Tag := 1;
  actOpenExcel.Execute;

end;

procedure TExcelComparisonExcel2F.BitBtn2Click(Sender: TObject);
begin
  if get_response('آیا برای اضافه کردن پیش فرض ها مطمن هستید') <> mrYes then
    Exit;

  AddToUtilEcE(0, 'شماره پیگیری', 'ShomarePay', 'F17');
  AddToUtilEcE(1, 'شماره پیگیری', 'ShomarePay', 'F17');
  AddToUtilEcE(2, 'شماره پیگیری', 'ShomarePay', 'F8');

  AddToUtilEcE(0, 'نام فایل', 'FileFieldName', 'F2');
  AddToUtilEcE(1, 'نام فایل', 'FileFieldName', 'F8'); // F16
  AddToUtilEcE(2, 'نام فایل', 'FileFieldName', 'F9');

  AddToUtilEcE(0, 'مبلغ', 'PriceAmount', 'F2');
  AddToUtilEcE(1, 'مبلغ', 'PriceAmount', 'F2');
  AddToUtilEcE(2, ' مبلغ فرم خزانه', 'PriceAmount', 'F24');

  AddToUtilEcE(0, 'تاریخ فرم', 'ReciptDate', 'F7');
  AddToUtilEcE(1, 'تاریخ فرم', 'ReciptDate', 'F7');
  AddToUtilEcE(2, 'تاریخ فرم', 'ReciptDate', 'F28');

  AddToUtilEcE(0, 'کد ملی', 'NationalID', 'F10');
  AddToUtilEcE(1, 'کد ملی', 'NationalID', 'F10');
  AddToUtilEcE(2, 'کد ملی', 'NationalID', 'F14');

  AddToUtilEcE(0, 'مشخصات فنی', 'c_StuffTecInfo', 'F13');
  AddToUtilEcE(1, 'مشخصات فنی', 'c_StuffTecInfo', 'F13');
  AddToUtilEcE(2, 'مشخصات فنی', 'c_StuffTecInfo', 'F18');

  AddToUtilEcE(0, 'سند کارخانه نوع آرد', 'NoeArd_Sanad', 'F13');
  AddToUtilEcE(1, 'سند کارخانه نوع آرد', 'NoeArd_Sanad', 'F13');

  AddToUtilEcE(0, ' مبلغ در Excel کارخانه', 'Excel1Price', 'F2');
  AddToUtilEcE(1, ' مبلغ در Excel کارخانه', 'Excel1Price', 'F2');

  AddToUtilEcE(0, ' مبلغ در Excel بانک', 'Excel2Price', 'F12');
  AddToUtilEcE(1, ' مبلغ در Excel بانک', 'Excel2Price', 'F13');

  AddToUtilEcE(0, 'شناسه پرداخت', 'Excel2Shenase', 'F2');
  AddToUtilEcE(1, 'شناسه پرداخت', 'Excel2Shenase', 'F8');

  AddToUtilEcE(0, 'شماره سند', 'Excel2ShomareSanad', 'F15');
  AddToUtilEcE(1, 'شماره سند', 'Excel2ShomareSanad', 'F11');

  AddToUtilEcE(0, 'کد کاردکس', 'CardexCode', 'F8');
  AddToUtilEcE(1, 'کد کاردکس', 'CardexCode', 'F8');

  AddToUtilEcE(0, 'کد دوره', 'CodeDoreh', 'F14');
  AddToUtilEcE(1, 'کد دوره', 'CodeDoreh', 'F14');

  AddToUtilEcE(0, 'ردیف', 'Radif', 'F16');
  AddToUtilEcE(1, 'ردیف', 'Radif', 'F16');
  AddToUtilEcE(2, 'ردیف', 'Radif', 'F8');

  AddToUtilEcE(0, 'وزن و مقدار', 'Weight_Entity', 'F3');
  AddToUtilEcE(1, 'وزن و مقدار', 'Weight_Entity', 'F3');

  AddToUtilEcE(0, 'وزن', 'Weight', 'F20');
  AddToUtilEcE(1, 'وزن', 'Weight', 'F20');
  AddToUtilEcE(2, 'وزن', 'Weight', 'F20');

  AddToUtilEcE(0, 'مقدار', 'Entity', 'F21');
  AddToUtilEcE(1, 'مقدار', 'Entity', 'F21');
  AddToUtilEcE(2, 'مقدار', 'Entity', 'F21');

  AddToUtilEcE(0, 'فی', 'UnitSellPrice', 'F24');
  AddToUtilEcE(1, 'فی', 'UnitSellPrice', 'F24');
  AddToUtilEcE(2, 'فی', 'UnitSellPrice', 'F24');

  AddToUtilEcE(0, 'تاریخ کمکی', 'AidDate', 'F28');
  AddToUtilEcE(1, 'تاریخ کمکی', 'AidDate', 'F28');
  AddToUtilEcE(2, 'تاریخ کمکی', 'AidDate', 'F29');

  AddToUtilEcE(0, 'نام مشتری', 'CustName', 'F4');
  AddToUtilEcE(1, 'نام مشتری', 'CustName', 'F4');
  AddToUtilEcE(2, 'نام مشتری', 'CustName', 'F4');

  AddToUtilEcE(0, 'شماره ثبت', 'ReagentName', 'F8');
  AddToUtilEcE(1, 'شماره ثبت', 'ReagentName', 'F8');
  AddToUtilEcE(2, 'شماره ثبت', 'ReagentName', 'F7');

  AddToUtilEcE(0, 'عنوان دوره', 'OnvanDoreh', 'F1');
  AddToUtilEcE(1, 'عنوان دوره', 'OnvanDoreh', 'F1');
  AddToUtilEcE(2, 'عنوان دوره', 'OnvanDoreh', 'F7');

  AddToUtilEcE(0, 'آدرس 1', 'AddressPart1', 'F10');
  AddToUtilEcE(1, 'آدرس 1', 'AddressPart1', 'F10');
  AddToUtilEcE(2, 'آدرس 1', 'AddressPart1', 'F11');

  AddToUtilEcE(0, 'آدرس 2', 'AddressPart2', 'F10');
  AddToUtilEcE(1, 'آدرس 2', 'AddressPart2', 'F10');
  AddToUtilEcE(2, 'آدرس 2', 'AddressPart2', 'F10');

  AddToUtilEcE(0, 'آدرس 3', 'AddressPart3', 'F4');
  AddToUtilEcE(1, 'آدرس 3', 'AddressPart3', 'F4');
  AddToUtilEcE(2, 'آدرس 3', 'AddressPart3', 'F4');

  AddToUtilEcE(0, 'آدرس 4', 'AddressPart4', 'F13');
  AddToUtilEcE(1, 'آدرس 4', 'AddressPart4', 'F13');
  AddToUtilEcE(2, 'آدرس 4', 'AddressPart4', 'F13');

  AddToUtilEcE(0, 'شهر', 'City', 'F11');
  AddToUtilEcE(1, 'شهر', 'City', 'F11');
  AddToUtilEcE(2, 'شهر', 'City', 'F10');

  AddToUtilEcE(0, 'پروانه کسب', 'ParvenehKasb', 'F1');
  AddToUtilEcE(1, 'پروانه کسب', 'ParvenehKasb', 'F1');
  AddToUtilEcE(2, 'پروانه کسب', 'ParvenehKasb', 'F15');

  AddToUtilEcE(0, 'توضیحات 1', 'NotePart1', 'F18');
  AddToUtilEcE(1, 'توضیحات 1', 'NotePart1', 'F18');
  AddToUtilEcE(2, 'توضیحات 1', 'NotePart1', 'F15',
    'شماره بهره برداری / پروانه کسب=');

  AddToUtilEcE(0, 'توضیحات 2', 'NotePart2', 'F7', ' عنوان دوره=');
  AddToUtilEcE(1, 'توضیحات 2', 'NotePart2', 'F7', ' عنوان دوره=');
  AddToUtilEcE(2, 'توضیحات 2', 'NotePart2', 'F7', ' عنوان دوره=');

  AddToUtilEcE(0, 'توضیحات 3', 'NotePart3', 'F17', ' کد پیگیری سفارش=');
  AddToUtilEcE(1, 'توضیحات 3', 'NotePart3', 'F17', ' کد پیگیری سفارش=');
  AddToUtilEcE(2, 'توضیحات 3', 'NotePart3', 'F17', ' کد پیگیری سفارش=');

  AddToUtilEcE(0, 'نام مشتری و کدملی', 'CustNameNationalID', 'F15');
  AddToUtilEcE(1, 'نام مشتری و کدملی', 'CustNameNationalID', 'F15');

  AddToUtilEcE(1, 'کليد مقايسه در اکسل 2 بانک', 'KeyValue4Locate', 'F8');
  AddToUtilEcE(1, 'کليد ثبت در اکسل 2 بانک', 'KeyValue4TruckNumber', 'F8');

  AddToUtilEcE(3, ' کد پيگيري در Excel2 بانک', 'Excel2PayGiri', 'F9', '');
  AddToUtilEcE(3, ' مبلغ در Excel2 بانک', 'Excel2Price', 'F13', '');
  AddToUtilEcE(3, ' تاريخ در Excel2 بانک', 'Excel2Tarikh', 'F3', '');
  AddToUtilEcE(3, 'کليد مقايسه در اکسل 2 بانک', 'KeyValue4Locate', 'F9', '');
  AddToUtilEcE(3, 'کليد ثبت در اکسل 2 بانک', 'KeyValue4TruckNumber', 'F9', '');
  AddToUtilEcE(3, 'شناسه پرداخت', 'Excel2Shenase', 'F15', '');
  AddToUtilEcE(3, 'شماره سند', 'Excel2ShomareSanad', 'F8', '');
  AddToUtilEcE(3, 'مشخصات فني', 'c_StuffTecInfo', 'محصول',
    'از مشخصات فنی کد کالا بدست میاد');
  AddToUtilEcE(3, 'شماره پيگيري', 'ShomarePay', 'کد پيگيري سفارش', '');
  AddToUtilEcE(3, 'مبلغ', 'PriceAmount', 'مجموع قيمت (ريال)', '');
  AddToUtilEcE(3, 'تاريخ فرم', 'ReciptDate', 'تاريخ و ساعت پرداخت', '');
  AddToUtilEcE(3, 'کد ملي', 'NationalID', 'کد/ شناسه ملي خريدار', '');
  AddToUtilEcE(3, 'کد پيگيري سفارش', 'NoeArd_Sanad', 'کد پيگيري سفارش', '');
  AddToUtilEcE(3, 'رديف', 'Radif', 'کد پيگيري سفارش', '');
  AddToUtilEcE(3, 'توضيحات 1', 'NotePart1', 'وضعيت پرداخت', '');
  AddToUtilEcE(3, 'توضيحات 2', 'NotePart2', 'دوره', ' عنوان دوره=');
  AddToUtilEcE(3, 'توضيحات 3', 'NotePart3', 'کد پيگيري سفارش',
    ' کد پیگیری سفارش=');
  AddToUtilEcE(3, 'نام فايل', 'FileFieldName', 'محصول', '');
  AddToUtilEcE(3, ' مبلغ در Excel کارخانه', 'Excel1Price',
    'مجموع قيمت (ريال)', '');
  AddToUtilEcE(3, 'کد دوره', 'CodeDoreh', 'دوره', '');
  AddToUtilEcE(3, 'وزن', 'Weight', 'حجم سفارش(کيلوگرم)', '');
  AddToUtilEcE(3, 'مقدار', 'Entity', 'تعداد بسته درخواستي', '');
  AddToUtilEcE(3, 'في', 'UnitSellPrice', 'قيمت واحد محصولات (ريال)', '');
  AddToUtilEcE(3, 'تاريخ کمکي', 'AidDate', 'تاريخ و ساعت سفارش', '');
  AddToUtilEcE(3, 'نام مشتري', 'CustName', 'خريدار', '');
  AddToUtilEcE(3, 'شماره ثبت', 'ReagentName',
    'شماره بهره‌برداري/پروانه کسب', '');
  AddToUtilEcE(3, 'عنوان دوره', 'OnvanDoreh', 'دوره', '');
  AddToUtilEcE(3, 'آدرس 1', 'AddressPart1', 'استان خريدار', '');
  AddToUtilEcE(3, 'آدرس 2', 'AddressPart2', 'فروشنده', '');
  AddToUtilEcE(3, 'آدرس 3', 'AddressPart3', 'بسته‌بندي', '');
  AddToUtilEcE(3, 'آدرس 4', 'AddressPart4', 'کد پيگيري سفارش', '');
  AddToUtilEcE(3, 'شهر', 'City', 'استان خريدار', '');
  AddToUtilEcE(3, 'پروانه کسب', 'ParvenehKasb',
    'شماره بهره‌برداري/پروانه کسب', '');
  AddToUtilEcE(3, 'نام مشتري و کدملي', 'CustNameNationalID',
    'کد/ شناسه ملي خريدار', '');

  AddToUtilEcE(4, ' کد پيگيري در Excel2 بانک', 'Excel2PayGiri', 'F9', '');
  AddToUtilEcE(4, ' کد پيگيري در Excel2 بانک', 'Excel2PayGiri', 'F9', '');
  AddToUtilEcE(4, ' مبلغ در Excel2 بانک', 'Excel2Price', 'F13', '');
  AddToUtilEcE(4, ' تاريخ در Excel2 بانک', 'Excel2Tarikh', 'F3', '');
  AddToUtilEcE(4, 'کليد مقايسه در اکسل 2 بانک', 'KeyValue4Locate', 'F9', '');
  AddToUtilEcE(4, 'کليد ثبت در اکسل 2 بانک', 'KeyValue4TruckNumber', 'F9', '');
  AddToUtilEcE(4, 'شناسه پرداخت', 'Excel2Shenase', 'F15', '');
  AddToUtilEcE(4, 'شماره سند', 'Excel2ShomareSanad', 'F8', '');
  AddToUtilEcE(4, 'مشخصات فني', 'c_StuffTecInfo', 'محصول',
    'از مشخصات فنی کد کالا بدست میاد');
  AddToUtilEcE(4, 'شماره پيگيري', 'ShomarePay', 'کد پيگيري سفارش', '');
  AddToUtilEcE(4, 'مبلغ', 'PriceAmount', 'قيمت کل (ريال)', '');
  AddToUtilEcE(4, 'تاريخ فرم', 'ReciptDate', 'تاريخ پرداخت', '');
  AddToUtilEcE(4, 'کد ملي', 'NationalID', 'کد ملي / شناسه ملي', '');
  AddToUtilEcE(4, 'کد پيگيري سفارش', 'NoeArd_Sanad', 'کد پيگيري سفارش', '');
  AddToUtilEcE(4, 'رديف', 'Radif', 'کد پيگيري سفارش', '');
  AddToUtilEcE(4, 'توضيحات 1', 'NotePart1', 'وضعيت سفارش', '');
  AddToUtilEcE(4, 'توضيحات 2', 'NotePart2', 'کد دوره', ' عنوان دوره=');
  AddToUtilEcE(4, 'توضيحات 3', 'NotePart3', 'کد پيگيري سفارش',
    ' کد پیگیری سفارش=');
  AddToUtilEcE(4, 'نام فايل', 'FileFieldName', 'محصول', '');
  AddToUtilEcE(4, ' مبلغ در Excel کارخانه', 'Excel1Price',
    'قيمت کل (ريال)', '');
  AddToUtilEcE(4, 'کد دوره', 'CodeDoreh', 'کد دوره', '');
  AddToUtilEcE(4, 'وزن', 'Weight', 'حجم کيسه (کيلوگرم)', '');
  AddToUtilEcE(4, 'مقدار', 'Entity', 'تعداد کيسه درخواستي', '');
  AddToUtilEcE(4, 'في', 'UnitSellPrice', 'قيمت واحد محصول (ريال)', '');
  AddToUtilEcE(4, 'تاريخ کمکي', 'AidDate', 'تاريخ سفارش', '');
  AddToUtilEcE(4, 'نام مشتري', 'CustName', 'نام خريدار', '');
  AddToUtilEcE(4, 'شماره ثبت', 'ReagentName',
    'شماره بهره برداري / پروانه کسب', '');
  AddToUtilEcE(4, 'عنوان دوره', 'OnvanDoreh', 'کد دوره', '');
  AddToUtilEcE(4, 'آدرس 1', 'AddressPart1', 'استان خريدار', '');
  AddToUtilEcE(4, 'آدرس 2', 'AddressPart2', 'نام خريدار', '');
  AddToUtilEcE(4, 'آدرس 3', 'AddressPart3', 'بسته‌بندي', '');
  AddToUtilEcE(4, 'آدرس 4', 'AddressPart4', 'کد پيگيري سفارش', '');
  AddToUtilEcE(4, 'شهر', 'City', 'استان خريدار', '');
  AddToUtilEcE(4, 'پروانه کسب', 'ParvenehKasb',
    'شماره بهره برداري / پروانه کسب', '');
  AddToUtilEcE(4, 'نام مشتري و کدملي', 'CustNameNationalID',
    'کد ملي / شناسه ملي', '');

  AddToUtilEcE(6, 'حذف سطر خاص مشخص در توضيحات', 'DeleteRow1', 'وضعيت سفارش',
    'منقضی شده');
  AddToUtilEcE(6, 'حذف سطر خاص مشخص در توضيحات', 'DeleteRow2', 'وضعيت سفارش',
    'پذیرش و زمانبندی شده');
  AddToUtilEcE(6, 'حذف سطر خاص مشخص در توضيحات', 'DeleteRow3',
    'وضعيت سفارش', '...');

  AddToUtilEcE(6, 'مشخصات فني', 'c_StuffTecInfo', 'محصول',
    'از مشخصات فنی کد کالا بدست میاد');
  AddToUtilEcE(6, 'شماره پيگيري', 'ShomarePay', 'کد پيگيري سفارش', '');
  AddToUtilEcE(6, 'کد پيگيري سفارش', 'NoeArd_Sanad', 'کد پيگيري سفارش', '');
  AddToUtilEcE(6, 'رديف', 'Radif', 'کد پيگيري سفارش', '');

  AddToUtilEcE(6, 'مبلغ', 'PriceAmount', 'مبلغ سفارش(ريال)', '');
  AddToUtilEcE(6, ' مبلغ در Excel کارخانه', 'Excel1Price',
    'مبلغ سفارش(ريال)', '');
  AddToUtilEcE(6, 'وزن', 'Weight', 'حجم بسته', '');
  AddToUtilEcE(6, 'مقدار', 'Entity', 'ميزان سفارش', '');
  AddToUtilEcE(6, 'في', 'UnitSellPrice', 'قيمت واحد محصولات (ريال)', '');

  AddToUtilEcE(6, 'تاريخ فرم', 'ReciptDate', 'تاريخ ثبت سفارش', '');
  AddToUtilEcE(6, 'تاريخ کمکي', 'AidDate', 'تاريخ ثبت سفارش', '');

  AddToUtilEcE(6, 'کد ملي', 'NationalID', 'شناسه ملي خريدار', '');
  AddToUtilEcE(6, 'پروانه کسب', 'ParvenehKasb',
    'شماره بهره‌برداري/پروانه کسب', '');
  AddToUtilEcE(6, 'نام مشتري و کدملي', 'CustNameNationalID',
    'کد/شناسه ملي خريدار', '');

  AddToUtilEcE(6, 'توضيحات 1', 'NotePart1', 'وضعيت سفارش', '');
  AddToUtilEcE(6, 'توضيحات 2', 'NotePart2', 'دوره', ' عنوان دوره=');
  AddToUtilEcE(6, 'توضيحات 3', 'NotePart3', 'کد پيگيري سفارش',
    ' کد پیگیری سفارش=');
  AddToUtilEcE(6, 'نام فايل', 'FileFieldName', 'محصول', '');
  AddToUtilEcE(6, 'کد دوره', 'CodeDoreh', 'دوره', '');

  AddToUtilEcE(6, 'نام مشتري', 'CustName', 'خريدار', '');
  AddToUtilEcE(6, 'FCustFirstName', 'CustFirstName', 'خريدار', '');
  AddToUtilEcE(6, 'شهر', 'City', 'شهرستان خريدار', '');

  AddToUtilEcE(6, 'شماره ثبت', 'ReagentName', 'کد خريدار', '');
  AddToUtilEcE(6, 'عنوان دوره', 'OnvanDoreh', 'دوره', '');
  AddToUtilEcE(6, 'آدرس 1', 'AddressPart1', 'استان خريدار', '');
  AddToUtilEcE(6, 'آدرس 2', 'AddressPart2', 'شهرستان خريدار', '');
  AddToUtilEcE(6, 'آدرس 3', 'AddressPart3', 'آدرس', '');
  AddToUtilEcE(6, 'آدرس 4', 'AddressPart4', 'کد خريدار', '');

  // SELECT        ID, ReciptType, FileKind, Caption, SystemFieldName, ExcelFieldName, Note
  // ,  'AddToUtilEcE('+ltrim(FileKind)+', '''+Caption+''','+''''+ SystemFieldName+''','+''''+ ISNULL(ExcelFieldName,'')+''','+''''+ ISNULL(Note,'')+''');'
  // FROM            Util.ExcelComparisonExcel
  // WHERE        (FileKind = 3)

end;

procedure TExcelComparisonExcel2F.AddToUtilEcE(FileKind: Integer;
  Caption, SystemFieldName, ExcelFieldName: string; Note: string = '');
begin
  if FileKind = cmbFieldName.ItemIndex then
    with qryUtilEcE do
    begin
      Insert;
      qryUtilEcECaption.AsString := Caption;
      qryUtilEcESystemFieldName.AsString := SystemFieldName;
      qryUtilEcEExcelFieldName.AsString := ExcelFieldName;
      qryUtilEcENote.AsString := Note;
      Post;
    end;
end;

procedure TExcelComparisonExcel2F.btnDelClick(Sender: TObject);
begin
  if get_response('آیا برای حذف کردن پیش فرض ها مطمن هستید') <> mrYes then
    Exit;
  qryUtilEcE.Delete;
end;

procedure TExcelComparisonExcel2F.btnPOSTClick(Sender: TObject);
begin
  if (qryUtilEcE.State in dsEditModes) then
    qryUtilEcE.Post;
end;

procedure TExcelComparisonExcel2F.btnBankClick(Sender: TObject);
begin
  actOpenExcel.Tag := 2;
  actOpenExcel.Execute
end;

procedure TExcelComparisonExcel2F.btnDeleteClick(Sender: TObject);
var
  S: string;
begin
  With qry4Del do
  begin
    Active := False;
    Parameters := qryUtilEcE.Parameters;
    Active := True;
    while not Eof do
    begin
      try
        qryExcel1.DisableControls;
        qryExcel1.First;
        while not qryExcel1.Eof do
        begin
          S := CorrectFarsiChars2(qry4DelExcelFieldName.AsString);
          if qryExcel1.FieldByName(S).AsString.Trim = qry4DelNote.AsString.Trim
          then
            qryExcel1.Delete
          else
            qryExcel1.Next;
        end;
      finally
        qryExcel1.EnableControls;
      end;
      Next;
    end;
  end;

  if not cmbFieldName.ItemIndex in [6] then
    With qryExcel1 do
      try
        DisableControls;
        First;
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

  if not cmbFieldName.ItemIndex in [2, 5] then
    With qryExcel2 do
      try
        DisableControls;
        First;
        while not Eof do
        begin
          Edit;
          FieldByName(Excel2Price).AsString :=
            RemoveComma(FieldByName(Excel2Price).AsString);
          Post;
          Next;
        end;
        First;
      finally
        EnableControls;
      end
  else
    With qryExcel1 do
      try
        First;
        DisableControls;
        while not Eof do
        begin
          if (Fields[0].AsString = EmptyStr) or
            (Fields[0].AsString = 'عنوان دوره') then
            Delete
          else
            Next;
        end;
      finally
        EnableControls;
      end;

  actCompareExcelwithInfo.Enabled := True;
  actCompareExcelwithInfo.Visible := True;

  if cmbFieldName.ItemIndex = 6 then
  Begin
    actCompareExcelwithInfo.Visible := False;
    btnPostAll.Visible := True;
    btnPostAll.Enabled := True;
  End;

  Warn2('حذف سطرهای خالی انجام شد.');
end;

// procedure TExcelComparisonExcel2F.cmbSheetName1Change(Sender: TObject);
//
// var
// T_a_g: Integer;
// begin
// T_a_g := (Sender as TAction).Tag;
// with qryExcel(T_a_g) do
// begin
// Close;
// SQL.Text := 'select * from [' + cmbSheetName(T_a_g)
// .Items[cmbSheetName(T_a_g).ItemIndex] + ']';
// Open;
// GetFieldNames(lstExcel(T_a_g).Items);
// end;
// end;
//
// function TExcelComparisonExcel2F.lstExcel(T_a_g: Integer): TListBox;
// begin
// end;

function TExcelComparisonExcel2F.GetqryExcel(T_a_g: Integer): TADOQuery;
begin
  Result := qryExcel1;
  if T_a_g = 2 then
    Result := qryExcel2;
end;

function TExcelComparisonExcel2F.FileFieldName: string;
begin
  Result := UtilEcE('FileFieldName'); // 'F27';
end;

function TExcelComparisonExcel2F.UtilEcE(FieldName: string): string;
begin
  if qryUtilEcE.Locate('SystemFieldName', FieldName, []) then
    Result := qryUtilEcEExcelFieldName.AsString
  else
  begin
    Result := qryUtilEcESystemFieldName.AsString;
    Warn2(FieldName + ' یافت نشد', 2000);
  end;
  Result := CorrectFarsiChars2(Result);
end;

function TExcelComparisonExcel2F.GetUtilEcENote(FieldName: string): string;
begin
  if qryUtilEcE.Locate('SystemFieldName', FieldName, []) then
    Result := qryUtilEcENote.AsString
end;

procedure TExcelComparisonExcel2F.grdUtilEcEDblClick(Sender: TObject);
begin
  qryUtilEcE.EnableControls;
  grdUtilEcE.Enabled := True

end;

function TExcelComparisonExcel2F.PriceAmount: string;
begin
  Result := qryExcel1.FieldByName(UtilEcE('PriceAmount')).AsString;
end;

function TExcelComparisonExcel2F.F17ShomarePay: string;
begin
  case cmbFieldName.ItemIndex of
    2, 3, 4, 5, 6:
      Result := UtilEcE('ShomarePay'); // F2
  else
    Result := 'F17';
  end;

end;

function TExcelComparisonExcel2F.F10NationalID: string;
begin
  Result := UtilEcE('NationalID'); // F10

end;

function TExcelComparisonExcel2F.Radif: string;
begin
  Result := UtilEcE('Radif'); // F16

end;

function TExcelComparisonExcel2F.FCustName: string;
begin
  Result := UtilEcE('CustName'); // F10

end;

function TExcelComparisonExcel2F.FCustFirstName: string;
begin
  Result := UtilEcE('CustFirstName');
end;

function TExcelComparisonExcel2F.AddressPart1: string;
begin
  Result := UtilEcE('AddressPart1');

end;

function TExcelComparisonExcel2F.AddressPart2: string;
begin
  Result := UtilEcE('AddressPart2');

end;

function TExcelComparisonExcel2F.AddressPart3: string;
begin
  Result := UtilEcE('AddressPart3');

end;

function TExcelComparisonExcel2F.AddressPart4: string;
begin
  Result := UtilEcE('AddressPart4');

end;

function TExcelComparisonExcel2F.NotePart1: string;
begin
  Result := UtilEcE('NotePart1');

end;

function TExcelComparisonExcel2F.NotePart2: string;
begin
  Result := UtilEcE('NotePart2');
end;

function TExcelComparisonExcel2F.NotePart3: string;
begin
  Result := UtilEcE('NotePart3');
end;

function TExcelComparisonExcel2F.CustNameNationalID: string;
begin
  Result := UtilEcE('CustNameNationalID');
end;

function TExcelComparisonExcel2F.KeyValue4Locate: string;
begin
  Result := UtilEcE('KeyValue4Locate');
end;

function TExcelComparisonExcel2F.KeyValue4TruckNumber: string;
begin
  Result := UtilEcE('KeyValue4TruckNumber');
end;

function TExcelComparisonExcel2F.ParvenehKasb: string;
begin
  Result := UtilEcE('ParvenehKasb');

end;

function TExcelComparisonExcel2F.OnvanDoreh: string;
begin
  Result := UtilEcE('OnvanDoreh');

end;

function TExcelComparisonExcel2F.ReagentName: string;
begin
  Result := UtilEcE('ReagentName');

end;

function TExcelComparisonExcel2F.FCity: string;
begin
  Result := UtilEcE('City');

end;

function TExcelComparisonExcel2F.F16c_StuffTecInfo: string;
begin
  Result := UtilEcE('c_StuffTecInfo'); // F16
end;

function TExcelComparisonExcel2F.Weight_Entity: string;
begin
  Result := UtilEcE('Weight_Entity');
end;

function TExcelComparisonExcel2F.F20Weight: string;
begin
  Result := UtilEcE('Weight'); // F20
end;

function TExcelComparisonExcel2F.F19Entity: string;
begin
  Result := UtilEcE('Entity'); // F19
end;

function TExcelComparisonExcel2F.F13UnitSellPrice: string;
begin
  Result := UtilEcE('UnitSellPrice'); // F13
end;

function TExcelComparisonExcel2F.F28AidDate: string;
begin
  Result := UtilEcE('AidDate'); // F28
end;

function TExcelComparisonExcel2F.F7ReciptDate: string;
begin
  Result := UtilEcE('ReciptDate'); // 'F28';
end;

function TExcelComparisonExcel2F.NoeArd_Sanad: string;
begin
  Result := UtilEcE('NoeArd_Sanad'); // 'F13';

end;

function TExcelComparisonExcel2F.Excel1Price: string;
begin
  Result := UtilEcE('Excel1Price'); // 'F2';
end;

function TExcelComparisonExcel2F.Excel2Price: string;
begin
  Result := UtilEcE('Excel2Price'); // 'F12';
end;

function TExcelComparisonExcel2F.Excel2Shenase: string;
begin
  Result := UtilEcE('Excel2Shenase'); // 'F2';
end;

function TExcelComparisonExcel2F.Excel2ShomareSanad: string;
begin
  Result := UtilEcE('Excel2ShomareSanad'); // 'F15';
end;

function TExcelComparisonExcel2F.CardexCode: string;
begin
  Result := UtilEcE('CardexCode'); // 'F8';
end;

function TExcelComparisonExcel2F.CodeDoreh: string;
begin
  Result := UtilEcE('CodeDoreh'); // 'F14';
end;

procedure TExcelComparisonExcel2F.cmbFieldNameChange(Sender: TObject);
begin
  btnBank.Visible := not(cmbFieldName.ItemIndex in [2, 5, 6]);
  // lblBank.Visible := btnBank.Visible;
  cmbSheetName2.Visible := btnBank.Visible;
  pnlExcel2.Visible := btnBank.Visible;
  TabSheet1.Visible := btnBank.Visible;
  actCompareExcelwithInfo.Visible := btnBank.Visible;
  btnCompareExcelwithInfo.Left := 4000;
  InitExcelComparisonExcel;

end;

procedure TExcelComparisonExcel2F.InitExcelComparisonExcel;
begin
  With qryUtilEcE do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Parameters.ParamByName('FileKind').Value := cmbFieldName.ItemIndex;
    Active := True;
  end;
end;

procedure TExcelComparisonExcel2F.cmbFieldNameEnter(Sender: TObject);
begin
  cmbFieldName.DroppedDown := True;
end;

function TExcelComparisonExcel2F.cmbSheetName(T_a_g: Integer): TComboBox;
begin
  Result := cmbSheetName1;
  if T_a_g = 2 then
    Result := cmbSheetName2;
end;

function TExcelComparisonExcel2F.SaveForms(RelatedRecipts: Integer): Boolean;
var
  Ftype, i: Integer;
  FcustomerID: Integer;
  FormDate: string;
begin
  // BigMessage('2‏- در حال ثبت اطلاعات خزانه داری  ...‏', 0);
  Ftype := Integer(cmbFormType.Items.Objects[cmbFormType.ItemIndex]);
  FcustomerID := Integer(cmbBank.Items.Objects[cmbBank.ItemIndex]);

  with qryinitF do
  begin
    Parameters.ParamByName('FormType').Value := Ftype;
    Open;
  end;

  try

    with qryForms do
    begin
      Open;
      if (qryExcel1.FieldByName(F17ShomarePay).AsString <> EmptyStr) and
        not ChkExists(qryTruckNumberForms) then
      begin
        Append;
        FieldByName('formtype').AsInteger := Ftype;
        FieldByName('customerID1').AsInteger := FcustomerID;

        FieldByName('SellsEmporium').AsInteger := FSellsEmporium;

        if cmbFieldName.ItemIndex in [2, 4, 5] then
        begin
          FieldByName('RelatedRecipts').AsInteger := RelatedRecipts;
          if qryCustomers.Locate('NationalID',
            FixNationalID(qryExcel1.FieldByName(F10NationalID).AsString), [])
          then
          begin
            FieldByName('customerID2').AsInteger :=
              qryCustomersCustID.AsInteger;
          end
        end
        else if cmbFieldName.ItemIndex in [6] then
        begin
          if qryCustomers.Locate('NationalID;ReagentName',
            VarArrayOf([FixNationalID(qryExcel1.FieldByName(F10NationalID)
            .AsString), qryExcel1.FieldByName(ReagentName).AsString]), []) then
          begin
            FieldByName('customerID2').AsInteger :=
              qryCustomersCustID.AsInteger;
          end

        end
        else
        begin
          ItmString.DelimitedText := qryExcel1.FieldByName
            (CustNameNationalID).AsString;
          if ItmString.Count = 3 then
          begin

            if qryCustomers.Locate('NationalID;ReagentName',
              VarArrayOf([FixNationalID(ItmString[2]),
              qryExcel1.FieldByName(ReagentName).AsString]), []) then
            begin
              FieldByName('customerID2').AsInteger :=
                qryCustomersCustID.AsInteger;
            end
          end;
        end;

        FieldByName('Amount').AsString := PriceAmount;

        // FieldByName('TruckNumber').AsString :=
        // qryExcel1.FieldByName(F17ShomarePay).AsString;

        if cmbFieldName.ItemIndex = 5 then
          FieldByName('TruckNumber').AsString :=
            qryExcel1.FieldByName(F17ShomarePay).AsString + '_' +
            IntToStr(GlobalPro.GetHashCode(qryExcel1.FieldByName(F16c_StuffTecInfo)
            .AsString))
        else
          FieldByName('TruckNumber').AsString :=
            qryExcel1.FieldByName(F17ShomarePay).AsString;

        FormDate := qryExcel1.FieldByName(F7ReciptDate).AsString;
        FieldByName('FormDate').AsString := FormDate;
        FieldByName('OperatorID').AsInteger := User.id;
        FieldByName('FirstUser').AsString := User.Name;

        if cmbFieldName.ItemIndex in [2, 5, 6] then
          FieldByName('FomNote').AsString := GetNote
        else
          FieldByName('FomNote').AsString :=
            qryExcel1.FieldByName(NotePart1).AsString;

        FieldByName('FormID').AsInteger := GetanewID(qryForms, IntToStr(Ftype),
          'Forms', 'FormID', nil, 1);
        GetFormNumber(IntToStr(Ftype), qryinitF, qryForms);
        Inc(PostCount2);

        if cmbFieldName.ItemIndex in [2, 5] then
          with qryUtilEcE do
          begin
            DisableControls;
            First;
            while not Eof do
            begin
              if (qryForms.FindField(qryUtilEcESystemFieldName.AsString) <> nil)
                and (qryExcel1.FindField(qryUtilEcEExcelFieldName.AsString)
                <> nil) then
                SetFieldValue
                  (qryForms.FieldByName(qryUtilEcESystemFieldName.AsString),
                  qryExcel1.FieldByName
                  (qryUtilEcEExcelFieldName.AsString), False);
              Next;
            end;
            EnableControls;
          end;
        // for i := 0 to tsField.Count - 1 do
        // begin
        // if (qryForms.FindField(tsField.KeyNames[i]) <> nil) and
        // (qryExcel1.FindField(tsField.ValueFromIndex[i]) <> nil) then
        // SetFieldValue(qryForms.FieldByName(tsField.KeyNames[i]),
        // qryExcel1.FieldByName(tsField.ValueFromIndex[i]), False);
        // end;

        Post;

      end;

    end;
    Result := True;
    FreeReservedCodes(DMF.adcBSell, 'forms', 'formnumber');
    FreeReservedCodes(DMF.adcBSell, 'forms', 'formid');

  except
    Result := False;
  end;
end;

procedure TExcelComparisonExcel2F.ShowImPortExcel(Recipt_Type,
  Store_ID: Integer; Form_InOut: string; TSecondType: TStrings);
begin
  with TExcelComparisonExcel2F.Create(Application) do
    try
      ItmString := TStringList.Create;
      ItmString.Delimiter := #$A;
      ItmString.StrictDelimiter := True;
      ReciptType := Recipt_Type;
      qryinitR.Close;
      qryinitR.Parameters.ParamByName('ReciptType').Value := ReciptType;
      qryinitR.Open;

      // tsField.Text := qryinitR.FieldByName('FieldInTheFieldXls').AsString;
      // lstFieldInTheFieldXls.strings.Text :=
      // qryinitR.FieldByName('FieldInTheFieldXls').AsString;

      cmbSecondType.Items := TSecondType;

      FormInOut := Form_InOut;

      UniqueName := 'ReciptType' + ReciptType.ToString;

      _Filepath1 := ReadConfig('', UniqueName + '_Filepath1', '');
      _Filepath2 := ReadConfig('', UniqueName + '_Filepath2', '');

      if not FileExists(_Filepath1) then
        _Filepath1 := EmptyStr;
      if _Filepath1 <> EmptyStr then
        ExcelToList(1, _Filepath1);

      if not FileExists(_Filepath2) then
        _Filepath2 := EmptyStr;
      if _Filepath2 <> EmptyStr then
        ExcelToList(2, _Filepath2);

      cmbStore.Items.IndexOfObject(TObject(Store_ID));

      cmbStore.ItemIndex := ReadConfig('', UniqueName + '_cmbStore', '0')
        .ToInteger;
      cmbSecondType.ItemIndex := ReadConfig('', UniqueName + '_cmbSecondType',
        '0').ToInteger;
      cmbBank.ItemIndex := ReadConfig('', UniqueName + '_cmbBank', '0')
        .ToInteger;
      cmbFormType.ItemIndex := ReadConfig('', UniqueName + '_cmbFormType', '0')
        .ToInteger;

      cmbSellsEmporium.ItemIndex :=
        ReadConfig('', UniqueName + '_SellsEmporium', '1').ToInteger;

      ShowModal;
    finally
      qryExcel1.Close;
      qryExcel2.Close;
      // sitem1.Free;
      // sitem2.Free;
      // sitem.Free;
      Free;
      ItmString.Free;

    end;
end;

procedure TExcelComparisonExcel2F.actCompareExcelwithInfoExecute
  (Sender: TObject);
begin
  try
    grdUtilEcE.Enabled := False;
    CompareExcelwithInfo;
  finally
    grdUtilEcE.Enabled := True;
    btnPostAll.Enabled := True;
  end;

end;

// procedure TExcelComparisonExcel2F.addLinks(lstS1, lstS2, lstDesti: TListBox;
// qry1, qry2: TADOQuery);
// var
// I, INDX: Integer;
// begin
// lstDesti.Clear;
// for I := 0 to lstS1.Count - 1 do
// begin
// INDX := lstS2.Items.IndexOf(lstS1.Items[I]);
// lstS1.Selected[I] := True;;
// if INDX <> -1 then
// begin
// lstS2.Selected[INDX] := True;
// end;
// end;
//
// end;

procedure TExcelComparisonExcel2F.ExcelToList(T_a_g: Integer;
  Fname: String = '');

var
  S: String;
begin
  if ExtractFileExt(Fname) = '.xlsx' then
    S := Format
      ('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Extended Properties=Excel 12.0;Persist Security Info=False',
      [Fname])
  else
    S := Format
      ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Extended Properties=excel 8.0;Persist Security Info=False',
      [Fname]);

  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := S;
      LoginPrompt := False;
      try
        Open;
      except
        on E: Exception do
        begin
          SaveConfig('', UniqueName + '_Filepath1', '');
          SaveConfig('', UniqueName + '_Filepath2', '');
          Warn2('اشکال در باز کردن فایل' + #10 + E.Message);
          add2log(E.Message);
        end;

      end;

      GetTableNames(cmbSheetName(T_a_g).Items);
      // pnlSheet.Visible := cmbSheetName.Items.Count > 1;
      if pnlSheet.Visible then
        cmbSheetName(T_a_g).ItemIndex := 0;
    finally
      Free;
    end;
  with GetqryExcel(T_a_g) do
  begin
    Close;
    EnableControls;
    ConnectionString := S;
    SQL.Text := 'select * from [' + cmbSheetName(T_a_g).Items[0] + ']';
    Open;
    // qryExcel(T_a_g).GetFieldNames(lstExcel(T_a_g).Items);
  end;
end;

procedure TExcelComparisonExcel2F.FormCreate(Sender: TObject);
begin
  // tsField := TStringList.Create;
  InitCombos(cmbStore, 'SELECT n_StoreID,c_StoreName FROM Stores');
  InitCombos(cmbBank,
    'SELECT custid, custname FROM Customers WHERE (CustID <> 0) AND (CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGroup WHERE GroupType=1))');
  InitCombos(cmbFormType,
    'SELECT FormType, FormCaption FROM FormTypes WHERE (DisplayFormType in(0,7))');

  InitCombos(cmbSellsEmporium,
    'SELECT SellsEmporium,SellsEmporiumName FROM SellsEmporiums ');

  DMF.adcBSell.Execute('INSERT INTO Util.ExcelComparisonExcel' +
    ' (ReciptType, FileKind, Caption, SystemFieldName, ExcelFieldName, Note)' +
    ' SELECT ReciptType,5 FileKind, Caption, SystemFieldName, ExcelFieldName, Note'
    + ' FROM Util.ExcelComparisonExcel AS ExcelComparisonExcel_1' +
    ' WHERE (FileKind = 2)' + ' and ReciptType not in (SELECT ReciptType' +
    ' FROM Util.ExcelComparisonExcel AS ExcelComparisonExcel_1' +
    ' WHERE (FileKind = 5))');

  // DMF.adcBSell.Execute('INSERT INTO Util.ExcelComparisonExcel' +
  // ' (ReciptType, FileKind, Caption, SystemFieldName, ExcelFieldName, Note)' +
  // ' SELECT ReciptType,6 FileKind, Caption, SystemFieldName, ExcelFieldName, Note'
  // + ' FROM Util.ExcelComparisonExcel AS ExcelComparisonExcel_1' +
  // ' WHERE (FileKind = 4)' + ' and ReciptType not in (SELECT ReciptType' +
  // ' FROM Util.ExcelComparisonExcel AS ExcelComparisonExcel_1' +
  // ' WHERE (FileKind = 6))');
  //
  // AddToUtilEcE(6, 'نام کوچک مشتري', 'CustFirstName', 'خريدار', '');

  mmo1.Lines.Clear;
end;

procedure TExcelComparisonExcel2F.FormDestroy(Sender: TObject);
begin
  // tsField.Free;
  if cmbStore.ItemIndex <> -1 then
    SaveConfig('', UniqueName + '_cmbStore', cmbStore.ItemIndex.ToString);
  if cmbSecondType.ItemIndex <> -1 then
    SaveConfig('', UniqueName + '_cmbSecondType',
      cmbSecondType.ItemIndex.ToString);
  if cmbBank.ItemIndex <> -1 then
    SaveConfig('', UniqueName + '_cmbBank', cmbBank.ItemIndex.ToString);
  if cmbFormType.ItemIndex <> -1 then
    SaveConfig('', UniqueName + '_cmbFormType', cmbFormType.ItemIndex.ToString);
  if cmbSellsEmporium.ItemIndex <> -1 then
    SaveConfig('', UniqueName + '_SellsEmporium',
      cmbSellsEmporium.ItemIndex.ToString);
end;

procedure TExcelComparisonExcel2F.FormResize(Sender: TObject);
begin
  dbgrd1.setSizeColDBGrid
end;

procedure TExcelComparisonExcel2F.actCloseExecute(Sender: TObject);
begin
  Close
end;

function TExcelComparisonExcel2F.ChkPrice: Boolean;
var
  F2Price, F13Price: string;
begin
  F2Price := qryExcel1.FieldByName(Excel1Price).AsString.Trim;
  F2Price := ReplaceStr(F2Price, ''#$200D, '').Trim;
  F13Price := qryExcel2.FieldByName(Excel2Price).AsString.Trim;
  Result := F2Price = F13Price;
end;

procedure TExcelComparisonExcel2F.CompareExcelwithInfo;
var
  // ix: Integer;
  DoWhile, b1, b2, b3, b4, b: Boolean;
  sF2, NoeArdSanad: string;
  PayGiri, Tarikh, Mablagh, sFilter: string;
const
  IRR = '1-99-695-IRR-';
begin
  if cmbFieldName.ItemIndex = -1 then
  begin
    Warn2('فایل بانک مشخص نشده است');
    Exit;
  end;
  qryExcel1.DisableControls;
  qryExcel2.DisableControls;
  DoWhile := True;
  qryExcel1.First;
  if qryExcel2.Active then
  begin
    qryExcel2.First;
    if cmbFieldName.ItemIndex = 1 then
      while (not qryExcel2.Eof and DoWhile) do
      begin
        qryExcel2.Edit;
        qryExcel2.FieldByName(Excel2Price).AsString :=
          RemoveComma(qryExcel2.FieldByName(Excel2Price).AsString);
        qryExcel2.Next;
      end;
    qryExcel2.First;
  end
  else
    Warn2('اکسل دوم انتخاب نشده');

  lblCount.Visible := True;

  NoeArdSanad := CorrectFarsiChars2(NoeArd_Sanad);

  try
    btnClose.Visible := False;
    while (not qryExcel1.Eof and DoWhile) do
    begin
      if cmbFieldName.ItemIndex <> 5 then
      begin

        ItmString.DelimitedText := qryExcel1.FieldByName(NoeArdSanad).AsString;
        if ItmString.Count > 0 then
        begin
          KeyValue_Locate := ReplaceStr(ItmString[0], IRR, '');
        end
        else
          KeyValue_Locate := ItmString.DelimitedText;
      end;

      case cmbFieldName.ItemIndex of
        1:
          begin
            // if qryExcel1.FieldByName('F16').AsString = '36' then
            // Warn('ddddddddddddddddddd');

            sF2 := qryExcel1.FieldByName(Excel1Price).AsString;
            b1 := (KeyValue_Locate <> EmptyStr) and (ItmString.Count = 3);
            // b2 := qryExcel2.Locate(FileFieldName, IRR + KeyValue_Locate, []);
            b2 := qryExcel2.Locate(Excel2Shenase, IRR + KeyValue_Locate, []);

            b3 := qryExcel2.Locate(Excel2Price, sF2, []);
            b4 := MYLOCATE2(qryExcel2, Excel2ShomareSanad,
              qryExcel1.FieldByName(CardexCode).AsString);

            b := b1 and ((b2 and b3) or (b3 and b4));
            /// and ChkPrice     in b3
            if b then
            begin
              // qryExcel2.Locate(KeyValue4Locate, IRR + KeyValue_Locate, []);
              qryExcel1.Edit;
              qryExcel1.FieldByName(F17ShomarePay).AsString :=
                qryExcel2.FieldByName(KeyValue4TruckNumber).AsString;
              // + StufName;
              // KeyValue_Locate;
              qryExcel1.FieldByName(NotePart1).AsString :=
                qryExcel1.FieldByName(NoeArd_Sanad).AsString + 'كد كاردكس' +
                qryExcel1.FieldByName(CardexCode).AsString + 'کد دوره' +
                qryExcel1.FieldByName(CodeDoreh).AsString + 'شناسه پرداخت' +
                qryExcel2.FieldByName(FileFieldName).AsString + 'شماره سند' +
                qryExcel2.FieldByName(Excel2Shenase).AsString;

              qryExcel1.Post;
            end;
          end;
        2, 5:
          begin

          end;

        3, 4, 6:
          begin

            PayGiri := qryExcel1.FieldByName(NoeArdSanad).AsString;

            sFilter := UtilEcE('Excel2PayGiri') + ' = ' + PayGiri;
            Mablagh := PriceAmount;
            if cmbFieldName.ItemIndex = 3 then
              sFilter := sFilter + ' AND ' + UtilEcE('Excel2Price') + ' = '
                + Mablagh;
            Tarikh := qryExcel1.FieldByName(F7ReciptDate).AsString;
            Tarikh := LeftStr(Tarikh, 10);
            sFilter := sFilter + ' AND ' + UtilEcE('Excel2Tarikh') + ' = ' +
              QuotedStr(Tarikh);

            qryExcel2.Filter := sFilter;
            qryExcel2.Filtered := True;

            if qryExcel2.RecordCount = 1 then
            begin
              qryExcel1.Edit;
              qryExcel1.FieldByName(F17ShomarePay).AsString := KeyValue_Locate;
              qryExcel1.FieldByName(NotePart1).AsString :=
                qryExcel1.FieldByName(NoeArd_Sanad).AsString + ' کد دوره ' +
                qryExcel1.FieldByName(CodeDoreh).AsString + ' شناسه پرداخت ' +
                qryExcel2.FieldByName(Excel2ShomareSanad).AsString;

              qryExcel1.FieldByName(F20Weight).AsString :=
                ReplaceStr(qryExcel1.FieldByName(F20Weight).AsString,
                'کیلوگرم', '');

              qryExcel1.Post;
            end

            else
            begin
              qryExcel1.Edit;
              qryExcel1.FieldByName(F17ShomarePay).AsString := EmptyStr;
              qryExcel1.FieldByName(NotePart1).AsString := KeyValue_Locate +
                ' یافت نشد ';

              qryExcel1.Post;
            end

          end;

      else
        begin
          if ((KeyValue_Locate <> EmptyStr) and
            ((qryExcel2.Locate(FileFieldName, KeyValue_Locate, [])) or
            (qryExcel2.Locate(Excel2ShomareSanad, KeyValue_Locate, [])))) or
            (qryExcel2.Locate(Excel2ShomareSanad,
            qryExcel1.FieldByName(CardexCode).AsString, [])) then
          begin
            qryExcel1.Edit;
            qryExcel1.FieldByName(F17ShomarePay).AsString := KeyValue_Locate;
            qryExcel1.FieldByName(NotePart1).AsString :=
              qryExcel1.FieldByName(NoeArd_Sanad).AsString + 'كد كاردكس' +
              qryExcel1.FieldByName(CardexCode).AsString + 'کد دوره' +
              qryExcel1.FieldByName(CodeDoreh).AsString + 'شناسه پرداخت' +
              qryExcel2.FieldByName(FileFieldName).AsString + 'شماره سند' +
              qryExcel2.FieldByName(Excel2ShomareSanad).AsString;

            qryExcel1.Post;
          end
          else
          begin
            qryExcel1.Edit;
            qryExcel1.FieldByName(F17ShomarePay).AsString := EmptyStr;
            qryExcel1.FieldByName(NotePart1).AsString :=
              qryExcel1.FieldByName(F17ShomarePay).AsString + 'یافت نشد';
            qryExcel1.Post;
          end

        end;
      end;

      lblCount.Caption := 'رديف:‏' + IntToStr(qryExcel1.RecNo) + ' Esc';
      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      qryExcel1.Next;
    end;
  finally
    qryExcel2.Filtered := False;
    qryExcel1.EnableControls;
    qryExcel2.EnableControls;
    // DataToExcel(cliNewExcel);
    lblCount.Visible := False;
    btnClose.Visible := True;
    Warn('مقايسه در فايل اكسل جديد انجام شد.‏' + #13#10, mtInformation);
  end
end;

function TExcelComparisonExcel2F.MYLOCATE(Qry: TADOQuery;
  fldNmae, Value4: string): Boolean;
var
  S, sF2: string;
begin
  sF2 := qryExcel1.FieldByName(Excel1Price).AsString;
  With Qry do
  begin
    First;
    DisableControls;
    if Value4 <> EmptyStr then
      while ((Pos(Value4, Qry.FieldByName(fldNmae).AsString) = 0) and
        (Qry.FieldByName(Excel2Price).AsString <> sF2)) or Eof do
      begin
        Next;
      end;
    Result := (Pos(Value4, Qry.FieldByName(fldNmae).AsString) > 0) and
      (Qry.FieldByName(Excel2Price).AsString = sF2);
    EnableControls;
  end;
end;

function TExcelComparisonExcel2F.MYLOCATE2(Qry: TADOQuery;
  fldNmae, Value4: string): Boolean;
var
  S, sF2: string;
begin
  sF2 := qryExcel1.FieldByName(Excel1Price).AsString;
  With Qry do
  begin
    First;
    DisableControls;
    if Value4 <> EmptyStr then
      while not Eof do
      begin
        Result := (Pos(Value4, Qry.FieldByName(fldNmae).AsString) > 0) and
          (Qry.FieldByName(Excel2Price).AsString = sF2);
        if Result then
          Break;
        Next;
      end;
    EnableControls;
  end;
end;

procedure TExcelComparisonExcel2F.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if cmbFieldName.ItemIndex > 3 then
    Exit;
  if not(gdSelected in State) then
  begin
    if qryUtilEcE.Active then
      if qryExcel1.FindField(F17ShomarePay) <> nil then
        if qryExcel1.FieldByName(F17ShomarePay).AsString <> EmptyStr then
          dbgrd1.Canvas.Brush.Color := const_Currency_columns_color;
    // clMoneyGreen;
  end;
  dbgrd1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TExcelComparisonExcel2F.qryExcel1AfterOpen(DataSet: TDataSet);

var
  i: Integer;
begin
  lblEcxel1.Caption := ExtractFileName(_Filepath1);
  for i := 0 to dbgrd1.Columns.Count - 1 do
    dbgrd1.Columns[i].Width := dbgrd1.Width div dbgrd1.Columns.Count;

  grdUtilEcE.Columns[2].PickList.Clear;
  for i := 0 to qryExcel1.FieldCount - 1 do
    grdUtilEcE.Columns[2].PickList.Add(qryExcel1.Fields[i].FieldName);

  actCompareExcelwithInfo.Enabled := False;
  btnPostAll.Enabled := False;

end;

procedure TExcelComparisonExcel2F.qryExcel2AfterOpen(DataSet: TDataSet);

var
  i: Integer;
begin
  lblEcxel2.Caption := ExtractFileName(_Filepath2);
  for i := 0 to grd2.Columns.Count - 1 do
    grd2.Columns[i].Width := grd2.Width div grd2.Columns.Count;

end;

procedure TExcelComparisonExcel2F.qryUtilEcEAfterInsert(DataSet: TDataSet);
begin
  qryUtilEcEReciptType.AsInteger := ReciptType;
  qryUtilEcEFileKind.AsInteger := cmbFieldName.ItemIndex;
end;

end.
