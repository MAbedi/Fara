unit ReciptOnPersonel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Grids, Vcl.DBGrids, DBClient, Provider, ADODB, ComCtrls, ToolWin,
  Menus, System.ImageList, System.Actions;

type
  TBankName = class
  private
    fName: String;
  public
    constructor Create(BankName: String);
  protected
    property BankName: string read fName;
  end;

  TReciptOnPersonelF = class(Ttemplate2MDIF)
    qryReciprtAccount: TADOQuery;
    prvReciptAccount: TDataSetProvider;
    dbgrd1: TDBGrid;
    srcRecoptAccount: TDataSource;
    actFilter: TAction;
    btnFilter: TBitBtn;
    actMoveToSalary: TAction;
    btnFilter1: TBitBtn;
    actSort: TAction;
    btnSort: TBitBtn;
    actSelectAll: TAction;
    actReverseAll: TAction;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    actExcel: TAction;
    actOther: TAction;
    btnExcel: TBitBtn;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    imgOk: TImage;
    imgNotOk: TImage;
    actUpdate: TAction;
    N3: TMenuItem;
    cliReciptAccount: TClientDataSet;
    cliReciptAccount_Selected: TBooleanField;
    cliReciptAccountPersonID1: TIntegerField;
    cliReciptAccountCustName: TStringField;
    cliReciptAccountCustomerNote: TStringField;
    adcSalary: TADOConnection;
    qryPersonelDecExt: TADOQuery;
    pnl1: TPanel;
    grpGroup: TGroupBox;
    cmbGroup: TComboBox;
    grpKind: TRadioGroup;
    grpYear: TGroupBox;
    cmbYearBank: TComboBox;
    MyToolBar: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    btn6: TToolButton;
    btn7: TToolButton;
    btn8: TToolButton;
    btn9: TToolButton;
    btn10: TToolButton;
    btn11: TToolButton;
    btn12: TToolButton;
    cliReciptAccountacc_DetailCode: TStringField;
    lbl1: TLabel;
    cliReciptAccountPersonelNo: TIntegerField;
    cmbYearID: TComboBox;
    cliReciptAccountbalance: TFloatField;
    procedure qryReciprtAccountAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grpKindClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actOtherExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actReverseAllExecute(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure cmbYearBankChange(Sender: TObject);
    procedure qryPersonelDecExtAfterInsert(DataSet: TDataSet);
    procedure actMoveToSalaryExecute(Sender: TObject);
    procedure cmbYearBankEnter(Sender: TObject);
  private
    SalaryBankName: String;
    CurrentMonth: Byte;
    procedure UpdateFilter;
    function SetSQL(inx: Byte): String;
    procedure ToggleCheck; overLoad;
    procedure ToggleCheck(AllSel: boolean); overLoad;
    procedure initCombo(MackYear: boolean = True);
    function MoveToSalary: boolean;
    procedure InitComboYearID;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptOnPersonelF: TReciptOnPersonelF;

implementation

uses DM, GlobalPro, Math, search1, sort, Filters, filter_ADO,
  FilterClass_ADO, FormFunctions, mmessage, FaraConsts, Filter_ADO_Const;

{$R *.dfm}
{ TBankName }

constructor TBankName.Create(BankName: String);
begin
  fName := BankName;
end;

procedure TReciptOnPersonelF.qryReciprtAccountAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliReciptAccount.Close;
  cliReciptAccount.Open;
end;

procedure TReciptOnPersonelF.UpdateFilter;
var
  CheckSelected: String;
  DateFrom, DateTo: String;
begin

  CheckSelected := GetcFrom(myParams.ParamValues['GroupType'], ftString);
  If CheckSelected = EmptyStr then
    CheckSelected := '0';
  DateFrom := Format('%.4d/%.2d/%.2d', [APPBank.Year, CurrentMonth, 01]);
  DateTo := Format('%.4d/%.2d/%.2d', [APPBank.Year, CurrentMonth, 99]);
  with qryReciprtAccount do
  begin
    Close;
    SQL.Text := StringReplace(SetSQL(grpKind.ItemIndex), '%GroupID%',
      CheckSelected, [rfReplaceAll]);
    Parameters.ParamByName('Month').Value := CurrentMonth;
    if Parameters.FindParam('DateFrom') <> nil then
      Parameters.ParamByName('DateFrom').Value := DateFrom;
    Parameters.ParamByName('DateTo').Value := DateTo;
    Parameters.ParamByName('Month').Value := CurrentMonth;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);
    Open;
    ToggleCheck(True)
  end;
end;

procedure TReciptOnPersonelF.FormCreate(Sender: TObject);
begin
  inherited;
  CurrentMonth := var_glb_CurrentMonth;
  MyToolBar.Buttons[CurrentMonth - 1].Down := True;
  initCombo;

end;

procedure TReciptOnPersonelF.btn1Click(Sender: TObject);
begin
  inherited;
  CurrentMonth := (Sender as TToolButton).Tag;
  UpdateFilter;
end;

function TReciptOnPersonelF.SetSQL(inx: Byte): String;
begin
  Result := EmptyStr;
  case inx of
    0:
      begin
        Result := 'SELECT AllAcc.CustomerID1 AS PersonID1, Customers.CustName, Customers.CustomerNote ,'
          + ' SUM(AllAcc.bed - AllAcc.bes) AS balance,Customers.acc_DetailCode'
          + ' ,' + SalaryBankName + '.Pay.PersonelInfo.PersonelNo ' +
          ' FROM AllAccount(' +
          ' 10 ,-1 ,-1 ,-1 , 0 ,99999999 ,'''' , :DateTo ,' +
          ' '''' , :YearIDFrom , :YearIDTo   , :SellsMethodFrom , :SellsMethodTo , :SellsEmporiumFrom ,  :SellsEmporiumTo  ) AS AllAcc INNER JOIN'
          + ' Customers ON AllAcc.CustomerID1 = Customers.CustID INNER JOIN' +
          ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID'
          +

          ' LEFT OUTER JOIN ' + SalaryBankName +
          '.Pay.PersonelInfo ON Customers.acc_DetailCode ' + ' = ' +
          SalaryBankName + '.Pay.PersonelInfo.AccDetailCode ' +

          ' where (ABS(SUBSTRING(AllAcc.FormDate, 6, 2)) <= :Month) ' +
          ' and  (CustomersGroup.CustomerGrpID in(%GroupID%))' +
          ' GROUP BY AllAcc.CustomerID1, Customers.CustName,Customers.CustomerNote,Customers.acc_DetailCode'
          + ' ,' + SalaryBankName + '.Pay.PersonelInfo.PersonelNo ' +
          ' Having SUM(AllAcc.bed - AllAcc.bes) > 0 ';

      end; // 1
    1:
      begin
        Result := 'SELECT ReciptAccount_1.PersonID1, SUM(ReciptAccount_1.bed - ReciptAccount_1.bes) AS Balance,'
          + ' Customers.CustName, Customers.CustomerNote,Customers.acc_DetailCode'
          + ' ,' + SalaryBankName + '.Pay.PersonelInfo.PersonelNo ' +
          ' FROM ReciptAccount(DEFAULT, DEFAULT, DEFAULT, :DateFrom, :DateTo, :YearIDFrom, :YearIDTo   , :SellsMethodFrom , :SellsMethodTo , :SellsEmporiumFrom ,  :SellsEmporiumTo ) AS'
          + ' ReciptAccount_1 INNER JOIN' +
          ' Customers ON ReciptAccount_1.PersonID1 = Customers.CustID INNER JOIN'
          + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID'
          +

          ' LEFT OUTER JOIN ' + SalaryBankName +
          '.Pay.PersonelInfo ON Customers.acc_DetailCode ' + ' = ' +
          SalaryBankName + '.Pay.PersonelInfo.AccDetailCode ' +

          ' WHERE (ABS(SUBSTRING(ReciptAccount_1.ReciptDate, 6, 2)) = :Month)' +
          ' and  (CustomersGroup.CustomerGrpID in (%GroupID%)) ' +
          ' GROUP BY ReciptAccount_1.PersonID1, Customers.CustName, Customers.CustomerNote,Customers.acc_DetailCode'
          + ' ,' + SalaryBankName + '.Pay.PersonelInfo.PersonelNo ' +
          ' Having SUM(ReciptAccount_1.bed - ReciptAccount_1.bes) > 0 ';
      end; // 0
  end; // Case

end;

procedure TReciptOnPersonelF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrd1, 3);
end;

procedure TReciptOnPersonelF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(dbgrd1);
  SaveConfig(APPID, 'LastConnectSalary', IntToStr(cmbYearBank.ItemIndex))
end;

procedure TReciptOnPersonelF.grpKindClick(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TReciptOnPersonelF.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  grd: TDBGrid;
begin
  inherited;
  grd := (Sender as TDBGrid);
  // if UpperCase(Column.Field.FieldName) = 'BALANCE' then
  // if Column.Field.AsCurrency < 0 then
  // grd.Canvas.Brush.Color := $00BBBBFF;
  // grd.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if DataCol = 0 then
  begin
    grd.Canvas.Rectangle(Rect);
    if cliReciptAccount_Selected.AsBoolean then
      grd.Canvas.Draw(Rect.Left, Rect.Top, imgOk.Picture.Graphic)
    else
      grd.Canvas.Draw(Rect.Left, Rect.Top, imgNotOk.Picture.Graphic)
  end;
end;

procedure TReciptOnPersonelF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptOnPersonelF.ToggleCheck;
begin
  with cliReciptAccount do
  begin
    Edit;
    FieldByName('_Selected').AsBoolean := not FieldByName('_Selected')
      .AsBoolean;
    Post;
  end; // with
end;

procedure TReciptOnPersonelF.ToggleCheck(AllSel: boolean);
begin
  with cliReciptAccount do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_Selected').AsBoolean := (AllSel) or
        (not FieldByName('_Selected').AsBoolean);
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TReciptOnPersonelF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  ToggleCheck(True);
end;

procedure TReciptOnPersonelF.actReverseAllExecute(Sender: TObject);
begin
  inherited;
  ToggleCheck(False);
end;

procedure TReciptOnPersonelF.dbgrd1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TReciptOnPersonelF.N3Click(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TReciptOnPersonelF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliReciptAccount);
end;

procedure TReciptOnPersonelF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliReciptAccount);
end;

procedure TReciptOnPersonelF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrd1);
end;

procedure TReciptOnPersonelF.actFilterExecute(Sender: TObject);
const
  SqlTxt = 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup WHERE (GroupType in (0,6)) ORDER BY CustomerGrpID';
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(dmF.adcBSell, 'GroupType', 'ê—ÊÂ', 'ê—ÊÂ', ftUnknown, dvDefaults,
        'True', '', ciCheck, SqlTxt, '');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TReciptOnPersonelF.initCombo;
begin
  cmbGroup.Clear;
  if MackYear then
    with dmF.qryGlbTmpTmp do
      try
        Close;
        SQL.Text :=
          'SELECT Title +'' ''+ CompanyName +'' ''+ LTRIM(STR(MaliYear)), BankName FROM Sections WHERE  (SysID = 25)';
        Open;
        cmbYearBank.Clear;
        while not eof do
        begin
          cmbYearBank.AddItem(Fields[0].AsString,
            TBankName.Create(Fields[1].AsString));
          Next;
        end;
        try
          if (cmbYearBank.Items.Count > 0) then
            cmbYearBank.ItemIndex :=
              StrToInt(ReadConfig(APPID, 'LastConnectSalary', '0'));
        except
          cmbYearBank.ItemIndex := -1;
        end;
      finally
        Close;
      end;

  adcSalary.Close;
  SalaryBankName := (cmbYearBank.Items.Objects[cmbYearBank.ItemIndex]
    as TBankName).BankName;
  assignServerName(adcSalary, SalaryBankName);

  with TADOQuery.Create(nil) do
    try
      Connection := adcSalary;
      SQL.Text :=
        'SELECT  FormInfoID, InfoName_L1 FROM   FormsInfo WHERE (FormType = 23) ';
      Open;
      while not eof do
      begin
        cmbGroup.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Free;
    end;
  if cmbGroup.Items.Count > 0 then
    cmbGroup.ItemIndex := 0;
end;

procedure TReciptOnPersonelF.cmbYearBankChange(Sender: TObject);
begin
  inherited;
  if cmbYearBank.ItemIndex > -1 then
  begin
    initCombo(False);
    InitComboYearID;
  end;
  myParams.Clear;
  if actFilter.Execute then
    // if myParams.FindParam('GroupType') = nil then Close;
end;

function TReciptOnPersonelF.MoveToSalary: boolean;
begin
  Result := True;
  with qryPersonelDecExt do
    try
      Open;
      try
        cliReciptAccount.Filter := '_Selected = True';
        cliReciptAccount.Filtered := True;
        while not cliReciptAccount.eof do
        begin
          lbl1.Caption := cliReciptAccount.FieldByName('PersonID1').AsString +
            ' <> ' + cliReciptAccount.FieldByName('acc_DetailCode').AsString;
          Append;
          Post;
          cliReciptAccount.Next;
        end;
      finally
        cliReciptAccount.Filtered := False;
      end;
    except
      Result := False;
    end;
end;

procedure TReciptOnPersonelF.qryPersonelDecExtAfterInsert(DataSet: TDataSet);
var
  YearID: Integer;
begin
  inherited;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    Integer(cmbGroup.Items.Objects[cmbGroup.ItemIndex]);
  DataSet.FieldByName('DecExtID').AsInteger :=
    GetANewCode(Self.Name, 'PersonelDecExt', 'decExtID', adcSalary);
  DataSet.FieldByName('FirstMounth').AsInteger := CurrentMonth;
  DataSet.FieldByName('EndMounth').AsInteger := CurrentMonth;
  DataSet.FieldByName('PersonelNo').AsInteger := cliReciptAccount.FieldByName
    ('PersonelNo').AsInteger;
  DataSet.FieldByName('EmployeeAmount').AsCurrency :=
    cliReciptAccount.FieldByName('Balance').AsCurrency;

  YearID := APPBank.Year;
  if cmbYearID.ItemIndex > -1 then
    YearID := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);

  DataSet.FieldByName('YearID').AsInteger := YearID;
  DataSet.FieldByName('StartYear').AsInteger := YearID;

end;

procedure TReciptOnPersonelF.InitComboYearID;
begin
  cmbYearID.Clear;
  with TADOQuery.Create(nil) do
  begin
    Connection := adcSalary;
    SQL.Text := 'SELECT YearID FROM Util.MaliYear';
    SQL.Add('WHERE (Status = 0)');
    Active := True;
    while not eof do
    begin
      cmbYearID.Items.AddObject(Fields[0].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end;
    Free;
  end;
  cmbYearID.ItemIndex := cmbYearID.Items.IndexOfObject(TObject(APPBank.Year));
end;

procedure TReciptOnPersonelF.actMoveToSalaryExecute(Sender: TObject);
begin
  inherited;
  if MoveToSalary then
    BigMessage('»« „Ê›ﬁÌ  «—”«· ‘œ.', 1)
  else
  begin
    Warn('«‘ﬂ«· œ— À»  ');
    CloseMessage;
  end;
end;

procedure TReciptOnPersonelF.cmbYearBankEnter(Sender: TObject);
begin
  inherited;
  cmbYearBank.DroppedDown := True;
end;

end.
